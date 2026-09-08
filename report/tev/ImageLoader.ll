Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2674
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi:.from.

.from.238:                                        ; preds = %bb.at
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0, i64 %.043145
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !132 ; 2 uses
  %i.ha = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gz) #31
  br label %bb.au

.from.236:                                        ; preds = %bb.at
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.he = load i8, ptr %i.gw, align 8             ; 2 uses
  %i.hf = trunc i8 %i.he to i1                    ; 2 uses
  %i.hg = load i64, ptr %i.hb, align 8
  %i.hh = lshr i8 %i.he, 1
  %i.hi = zext nneg i8 %i.hh to i64
  %i.hj = select i1 %i.hf, i64 %i.hg, i64 %i.hi
  %i.hk = load ptr, ptr %i.hd, align 8
  %i.hl = select i1 %i.hf, ptr %i.hk, ptr %i.hc
  %i.hm = add nsw i64 %i.gu, -1
  %i.hn = icmp eq i64 %.043145, %i.hm
  %or.cond = select i1 %2, i1 %i.hn, i1 false     ; 2 uses
  %spec.select = select i1 %or.cond, i64 1, i64 %i.hj
  %spec.select130 = select i1 %or.cond, ptr @.str.40, ptr %i.hl
  br label %bb.au

bb.au:                                            ; preds = %.from.236, %.from.238
  %.sroa.7.0 = phi i64 [ %i.ha, %.from.238 ], [ %spec.select, %.from.236 ]
  %.sroa.05.0 = phi ptr [ %i.gz, %.from.238 ], [ %spec.select130, %.from.236 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZN3tev7Channel14joinIfNonemptyENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %12, ptr %.sroa.030.0.copyload, i64 %.sroa.5.0.copyload, ptr %.sroa.05.0, i64 %.sroa.7.0)
          to label %bb.av unwind label %_ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92.from.251

bb.av:                                            ; preds = %bb.au
  %i.ho = load i8, ptr %12, align 8               ; 2 uses
  %i.hp = trunc i8 %i.ho to i1                    ; 2 uses
  %i.hq = load i64, ptr %i.fi, align 8
  %i.hr = lshr i8 %i.ho, 1
  %i.hs = zext nneg i8 %i.hr to i64
  %i.ht = select i1 %i.hp, i64 %i.hq, i64 %i.hs
  %i.hu = load ptr, ptr %i.fg, align 8
  %i.hv = select i1 %i.hp, ptr %i.hu, ptr %i.fh
  %i.hw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(72) %i.gw, ptr noundef %i.hv, i64 noundef %i.ht)
          to label %_ZN3tev7Channel7setNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit unwind label %bb.ax ; 0 uses

_ZN3tev7Channel7setNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %bb.av
  %i.hx = load i8, ptr %12, align 8
  %i.hy = trunc i8 %i.hx to i1
  br i1 %i.hy, label %bb.aw, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit89

bb.aw:                                            ; preds = %_ZN3tev7Channel7setNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %i.hz = load ptr, ptr %i.fg, align 8, !tbaa !119
  %i.ia = load i64, ptr %12, align 8
  %i.ib = and i64 %i.ia, -2
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ib) #33
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit89

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit89: ; preds = %_ZN3tev7Channel7setNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.ic = add nuw i64 %.043145, 1                 ; 2 uses
  %i.id = load ptr, ptr %i.ev, align 8, !tbaa !155
  %i.ie = load ptr, ptr %.reload.addr, align 8, !tbaa !158 ; 2 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = sdiv exact i64 %i.ih, 72                ; 2 uses
  %i.ij = icmp ult i64 %i.ic, %i.ii
  br i1 %i.ij, label %bb.at, label %._crit_edge148, !llvm.loop !459

_ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92.from.251: ; preds = %bb.au
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  br label %.body103.from._ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92

bb.ax:                                            ; preds = %bb.av
  %i.il = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.im = load i8, ptr %12, align 8
  %i.in = trunc i8 %i.im to i1
  br i1 %i.in, label %_ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92.from., label %.body103.from._ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92

_ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92.from.: ; preds = %bb.ax
  %i.io = load ptr, ptr %i.fg, align 8, !tbaa !119
  %i.ip = load i64, ptr %12, align 8
  %i.iq = and i64 %i.ip, -2
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.iq) #33
  br label %.body103.from._ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92

.body103.from._ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92: ; preds = %_ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92.from.251, %_ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92.from., %bb.ax
  %.pn52 = phi { ptr, i32 } [ %i.ik, %_ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92.from.251 ], [ %i.il, %_ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92.from. ], [ %i.il, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0, i64 noundef %i.fe) #33
  br label %.from..body103

.from..body103:                                   ; preds = %.body103.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70, %.body103.from..body.i102, %.body103.from., %.body103.from._ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKcNS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i, %.body103.from._ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92, %.body103.from._ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKcNS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i78, %.body103.from._ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKcNS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i83
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %.body103.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70 ], [ %i.eh, %.body103.from..body.i102 ], [ %i.ek, %.body103.from. ], [ %.pn52, %.body103.from._ZNSt3__16vectorIPKcNS_9allocatorIS2_EEED2B8ne180100Ev.exit92 ], [ %i.en, %.body103.from._ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKcNS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i ], [ %i.et, %.body103.from._ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKcNS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i83 ], [ %i.eq, %.body103.from._ZNSt3__128__exception_guard_exceptionsINS_6vectorIPKcNS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev.exit.i78 ]
  call void @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr298) #31
  br label %.from.276

.from.276:                                        ; preds = %.from.268, %.from.261, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63265, %.split126, %.from._ZN3tev11PixelBufferD2Ev.exit66, %.from..body103
  %.pn54.pn = phi { ptr, i32 } [ %.pn54125, %.from.268 ], [ %i.aj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63265 ], [ %i.am, %.split126 ], [ %i.bm, %.from.261 ], [ %.pn53.pn, %.from..body103 ], [ %.pn, %.from._ZN3tev11PixelBufferD2Ev.exit66 ]
  call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr) #31
  br label %.from..split269

.from..split269:                                  ; preds = %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit271, %.from.274, %.from.276
  %.pn55.pn = phi { ptr, i32 } [ %.pn55122, %.from.274 ], [ %i.t, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit271 ], [ %.pn54.pn, %.from.276 ], [ %i.w, %.split ]
  %.12 = extractvalue { ptr, i32 } %.pn55.pn, 0
  %i.ir = call ptr @__cxa_begin_catch(ptr %.12) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr306)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %.from..split269
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit unwind label %.from.286

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit, %bb.ay
  %i.is = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = atomicrmw add ptr %i.it, i32 -1 acq_rel, align 4 ; 2 uses
  %i.iv = icmp slt i32 %i.iu, 1
  br i1 %i.iv, label %bb.az, label %_ZN3tev5Latch9countDownEv.exit.i

bb.az:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.az
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !160 ; 7 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !171
  %i.iz = and i32 %i.iy, 8
  %.not.i.i.i.i93 = icmp eq i32 %i.iz, 0
  br i1 %.not.i.i.i.i93, label %bb.ba, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.ba:                                            ; preds = %.noexc.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !172 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.jb, %i.jd
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.ba
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ix, i64 33
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.jb, %.from..lr.ph.i.i.i.i.i ], [ %i.jt, %.noexc2.i.i ] ; 2 uses
  %i.ji = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.jj = load i8, ptr %i.je, align 8             ; 2 uses
  %i.jk = trunc i8 %i.jj to i1                    ; 2 uses
  %i.jl = load ptr, ptr %i.jf, align 8
  %i.jm = select i1 %i.jk, ptr %i.jl, ptr %i.jg
  %i.jn = load i64, ptr %i.jh, align 8
  %i.jo = lshr i8 %i.jj, 1
  %i.jp = zext nneg i8 %i.jo to i64
  %i.jq = select i1 %i.jk, i64 %i.jn, i64 %i.jp
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !68
  %i.js = load ptr, ptr %i.jr, align 8
  invoke void %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr %i.jm, i64 %i.jq, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jt, %i.jd
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bb

.from..loopexit.split-lp.i.i:                     ; preds = %bb.az
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bb

bb.bb:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ju = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ju) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit
  %i.jv = icmp slt i32 %i.iu, 2
  br i1 %i.jv, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.ba, %_ZN3tev5Latch9countDownEv.exit.i
  %i.jw = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !143 ; 2 uses
  %i.jy = inttoptr i64 %i.jx to ptr               ; 3 uses
  store ptr %i.jy, ptr %.reload.addr, align 8
  %.not.i94 = icmp eq i64 %i.jx, 0
  br i1 %.not.i94, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %i.b, align 8
  %index.addr307 = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i1 false, ptr %index.addr307, align 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr nonnull %i.jy)
  br label %AfterCoroEnd

bb.bc:                                            ; preds = %.from..split269
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.293 unwind label %bb.bf

.from.286:                                        ; preds = %bb.ay
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.293

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.kc = load ptr, ptr %i.l, align 8, !tbaa !142 ; 5 uses
  %.not.i.i95 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i95, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = atomicrmw add ptr %i.kd, i64 -1 acq_rel, align 8
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %bb.be, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.be:                                            ; preds = %bb.bd
  %i.kg = load ptr, ptr %i.kc, align 8, !tbaa !68
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(24) %i.kc) #31, !inline_history !4
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kc) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, %bb.bd, %bb.be
  call void @_ZNSt3__17promiseINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr306) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 160) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.293:                                   ; preds = %bb.bc, %.from.286
  %.pn56 = phi { ptr, i32 } [ %i.kb, %.from.286 ], [ %i.ka, %bb.bc ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr306) #31
  br label %.body

.body:                                            ; preds = %.body.from.293, %.body.from.290, %.body.from.
  %.merged58 = phi { ptr, i32 } [ %.pn56, %.body.from.293 ], [ %i.g, %.body.from. ], [ %i.f, %.body.from.290 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 160) #31
  resume { ptr, i32 } %.merged58

bb.bf:                                            ; preds = %bb.bc
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #36
  unreachable

bb.bg:                                            ; preds = %bb.i, %bb.d
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind noalias writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = load ptr, ptr %1, align 8, !tbaa !135, !noalias !472 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !182, !noalias !472 ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc1
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 1) #34
          to label %bb.e unwind label %bb.f, !noalias !472

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #31, !noalias !472
  br label %.body

bb.g:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !472 ; 0 uses
  %i.k = or disjoint i32 %i.f, 2
  store i32 %i.k, ptr %i.e, align 8, !tbaa !182, !noalias !472
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #31, !noalias !472
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !143
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !184
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142  ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !143
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEED2Ev.exit

_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEED2Ev.exit: ; preds = %bb.h, %bb.g
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.h, %bb.f ]
  %i.u = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.u) #36
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 8 uses
  %i.b = icmp ugt i64 %i.a, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 23
  br i1 %i.c, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.d = or i64 %i.a, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !119
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.k, align 8, !tbaa !119
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %i.a to i8
  %i.m = shl nuw nsw i8 %i.l, 1
  store i8 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.017.i = phi ptr [ %i.h, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit: ; preds = %bb.d, %bb.e
  %.018.i = phi ptr [ %i.n, %bb.d ], [ %.017.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.a
  store i8 0, ptr %i.o, align 1, !tbaa !119
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr
end_hunk_0
begin_hunk_1_@_ZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEi:.from.
  %.not.1.i117 = icmp eq i64 %i.ee, %.sroa.4169.0.extract.shift
  %.not.lcssa.i118 = and i1 %.not.i116, %.not.1.i117
  br i1 %.not.lcssa.i118, label %.from.385, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit126, !prof !563

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit126: ; preds = %.lr.ph
  %i.hd = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store ptr @.str.51, ptr %.reload.addr454, align 16, !tbaa !119, !noalias !581
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i32 230, ptr %i.he, align 16, !tbaa !119, !noalias !581
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i32 97, ptr %i.hf, align 16, !tbaa !119, !noalias !581
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr @.str.52, ptr %i.hg, align 16, !tbaa !119, !noalias !581
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %11, ptr nonnull @.str.57, i64 54, i64 49708, ptr nonnull %.reload.addr454)
          to label %bb.ah unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit127.thread

bb.ah:                                            ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit126
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.hd, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.be unwind label %.thread483

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit127.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit126
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.414.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.hi = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.hj = load i8, ptr %11, align 8
  %i.hk = trunc i8 %i.hj to i1
  br i1 %i.hk, label %.split232, label %.from.414.sink.split

.thread483:                                       ; preds = %bb.ai
  %i.hl = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.hm = load i8, ptr %11, align 8
  %i.hn = trunc i8 %i.hm to i1
  br i1 %i.hn, label %.split232, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit127411

.split232:                                        ; preds = %.thread483, %bb.aj
  %i.ho = phi { ptr, i32 } [ %i.hl, %.thread483 ], [ %i.hi, %bb.aj ] ; 2 uses
  %.0485 = phi i1 [ false, %.thread483 ], [ true, %bb.aj ]
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !119
  %i.hr = load i64, ptr %11, align 8
  %i.hs = and i64 %i.hr, -2
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hs) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br i1 %.0485, label %.from.414, label %.from..split227421

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit127411: ; preds = %.thread483
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.from..split227421

.from.414.sink.split:                             ; preds = %bb.aj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit127.thread
  %.pn37231.ph = phi { ptr, i32 } [ %i.hh, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit127.thread ], [ %i.hi, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.from.414

.from.414:                                        ; preds = %.from.414.sink.split, %.split232
  %.pn37231 = phi { ptr, i32 } [ %i.ho, %.split232 ], [ %.pn37231.ph, %.from.414.sink.split ]
  call void @__cxa_free_exception(ptr %i.hd) #31
  br label %.from..split227421

._crit_edge:                                      ; preds = %.from.385, %.cont.cont
  %sext = shl i64 %.sroa.0.0.copyload.i103, 32
  %i.ht = ashr exact i64 %sext, 32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.hv = ashr i64 %.sroa.0.0.copyload.i103, 32
  %i.hw = mul i64 %i.hv, %2
  %i.hx = mul i64 %i.hw, %i.ht
  %i.hy = sub nsw i32 %.pre-phi, %i.ge
  %i.hz = sub nsw i32 %.pre-phi264, %i.gg
  %i.ia = bitcast i64 %.sroa.0.0.copyload.i to <2 x i32>
  %i.ib = sitofp <2 x i32> %i.ia to <2 x float>
  %i.ic = call noundef i32 @llvm.smax.i32(i32 %i.hz, i32 0)
  %i.id = call noundef i32 @llvm.smax.i32(i32 %i.hy, i32 0)
  %i.ie = uitofp nneg i32 %i.ic to float
  %i.if = uitofp nneg i32 %i.id to float
  %i.ig = insertelement <2 x float> poison, float %i.if, i64 0
  %i.ih = insertelement <2 x float> %i.ig, float %i.ie, i64 1
  %i.ii = fdiv <2 x float> %i.ib, %i.ih           ; 2 uses
  %i.ij = extractelement <2 x float> %i.ii, i64 0
  store float %i.ij, ptr %.reload.addr453, align 8, !tbaa !65
  %i.ik = extractelement <2 x float> %i.ii, i64 1
  store float %i.ik, ptr %.reload.addr454, align 8, !tbaa !65
  %i.il = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.im = icmp eq i8 %i.il, 0
  br i1 %i.im, label %bb.ak, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !66

bb.ak:                                            ; preds = %._crit_edge
  %i.in = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #31
  %.not.i132 = icmp eq i32 %i.in, 0
  br i1 %.not.i132, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.am unwind label %.body133.from.406

bb.am:                                            ; preds = %bb.al
  %i.io = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #31 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #31
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body133.from.406:                                ; preds = %bb.al
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #31
  br label %.from..split227421

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.am, %bb.ak, %._crit_edge
  %i.iq = load i32, ptr %i.hu, align 4, !tbaa !185
  store <8 x ptr> %i.b, ptr %12, align 8, !tbaa !143
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.37") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.iq, i64 noundef %i.hx, ptr noundef nonnull byval(%class.anon.89) align 8 %12, i32 noundef %6)
          to label %bb.an unwind label %.body133.from.

bb.an:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.ir = load ptr, ptr %i.an, align 8, !tbaa !141
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load atomic i32, ptr %i.is acquire, align 4
  %i.iu = icmp slt i32 %i.it, 2
  br i1 %i.iu, label %bb.ao, label %AfterCoroSave

bb.ao:                                            ; preds = %bb.an
  %i.iv = load ptr, ptr %i.an, align 8, !tbaa !141
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = atomicrmw add ptr %i.iw, i32 -1 acq_rel, align 4
  %i.iy = icmp slt i32 %i.ix, 1
  br i1 %i.iy, label %bb.ap, label %.thread.sink.split

bb.ap:                                            ; preds = %bb.ao
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.ap
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !160 ; 7 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !171
  %i.jc = and i32 %i.jb, 8
  %.not.i.i.i.i135 = icmp eq i32 %i.jc, 0
  br i1 %.not.i.i.i.i135, label %bb.aq, label %.thread.sink.split

bb.aq:                                            ; preds = %.noexc.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !172 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.je, %i.jg
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.aq
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 33
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.je, %.from..lr.ph.i.i.i.i.i ], [ %i.jw, %.noexc2.i.i ] ; 2 uses
  %i.jl = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.jm = load i8, ptr %i.jh, align 8             ; 2 uses
  %i.jn = trunc i8 %i.jm to i1                    ; 2 uses
  %i.jo = load ptr, ptr %i.ji, align 8
  %i.jp = select i1 %i.jn, ptr %i.jo, ptr %i.jj
  %i.jq = load i64, ptr %i.jk, align 8
  %i.jr = lshr i8 %i.jm, 1
  %i.js = zext nneg i8 %i.jr to i64
  %i.jt = select i1 %i.jn, i64 %i.jq, i64 %i.js
  %i.ju = load ptr, ptr %i.jl, align 8, !tbaa !68
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr %i.jp, i64 %i.jt, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jw, %i.jg
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

.from..loopexit.split-lp.i.i:                     ; preds = %bb.ap
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

bb.ar:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.jx = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.jx) #36
  unreachable

AfterCoroSave:                                    ; preds = %bb.an
  %index.addr468 = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i1 false, ptr %index.addr468, align 8
  %i.jy = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #31
  br i1 %i.jy, label %AfterCoroEnd, label %bb.as

.body133.from.:                                   ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split227421

bb.as:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !216 ; 3 uses
  %.not.i136 = icmp eq ptr %.pr, null
  br i1 %.not.i136, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ka = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  invoke void %i.kb(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body133.from.409, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.at, %bb.aq, %.noexc.i.i, %bb.ao
  store ptr null, ptr %.reload.addr, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.as
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.body133.from.409

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  %i.kc = load ptr, ptr %.reload.addr459, align 8, !tbaa !211 ; 4 uses
  %.not.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  store ptr %i.kc, ptr %i.du, align 8, !tbaa !210
  %i.kd = load ptr, ptr %i.dv, align 8, !tbaa !212
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kc to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kg) #33
  br label %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.au
  %i.kh = load ptr, ptr %.reload.addr458, align 8, !tbaa !200 ; 4 uses
  %.not.i.i139 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i139, label %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  store ptr %i.kh, ptr %i.dg, align 8, !tbaa !199
  %i.ki = load ptr, ptr %i.dh, align 8, !tbaa !203
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.kl) #33
  br label %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit: ; preds = %bb.av, %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr467)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.aw

bb.aw:                                            ; preds = %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #36
  unreachable

.body133.from.409:                                ; preds = %bb.at, %.thread
  %i.ko = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  br label %.from..split227421

.from..split227421:                               ; preds = %.body133.from., %.body133.from.406, %.body133.from.409, %.split232, %.split227, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit114417, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit127411, %.from.414, %.from.420
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.ho, %.split232 ], [ %i.gw, %.split227 ], [ %.pn38226, %.from.420 ], [ %i.gt, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit114417 ], [ %.pn37231, %.from.414 ], [ %i.hl, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit127411 ], [ %i.ko, %.body133.from.409 ], [ %i.jz, %.body133.from. ], [ %i.ip, %.body133.from.406 ] ; 2 uses
  %i.kp = load ptr, ptr %.reload.addr459, align 8, !tbaa !211 ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i141, label %.body101, label %.body101.from.

.body101.from.:                                   ; preds = %.from..split227421
  store ptr %i.kp, ptr %i.du, align 8, !tbaa !210
  br label %.body101.sink.split

.body101.sink.split:                              ; preds = %.body101.from., %bb.ac
  %.sink565.in = phi ptr [ %i.an, %bb.ac ], [ %i.dv, %.body101.from. ]
  %.sink564 = phi ptr [ %i.gc, %bb.ac ], [ %i.kp, %.body101.from. ] ; 2 uses
  %.pn38.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.i60, %bb.ac ], [ %.pn38.pn.pn, %.body101.from. ]
  %.sink565 = load ptr, ptr %.sink565.in, align 8, !tbaa !212
  %i.kq = ptrtoint ptr %.sink565 to i64
  %i.kr = ptrtoint ptr %.sink564 to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %.sink564, i64 noundef %i.ks) #33
  br label %.body101

.body101:                                         ; preds = %.body101.sink.split, %.from..split227421, %.body.i59
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.i60, %.body.i59 ], [ %.pn38.pn.pn, %.from..split227421 ], [ %.pn38.pn.pn.pn.ph, %.body101.sink.split ] ; 2 uses
  %i.kt = load ptr, ptr %.reload.addr458, align 8, !tbaa !200 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i143, label %.from..split432, label %.body53.from.

.body53.from.:                                    ; preds = %.body101
  store ptr %i.kt, ptr %i.dg, align 8, !tbaa !199
  %i.ku = load ptr, ptr %i.dh, align 8, !tbaa !203
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kx) #33
  br label %.from..split432

.from..split432:                                  ; preds = %.body101, %bb.u, %.body.i, %.body53.from., %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit428, %.from.431
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %.split ], [ %.pn219, %.from.431 ], [ %i.ac, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit428 ], [ %.pn.pn.pn.pn.i, %bb.u ], [ %.pn38.pn.pn.pn, %.body53.from. ], [ %.pn.pn.pn.pn.i, %.body.i ], [ %.pn38.pn.pn.pn, %.body101 ]
  %.10 = extractvalue { ptr, i32 } %.pn38.pn.pn.pn.pn.pn, 0
  %i.ky = call ptr @__cxa_begin_catch(ptr %.10) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %7) #31
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr467, ptr nofree noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ax unwind label %.body470

.body470:                                         ; preds = %.from..split432
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  invoke void @__cxa_end_catch()
          to label %.body.from.450 unwind label %bb.bd

bb.ax:                                            ; preds = %.from..split432
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.443

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, %bb.j, %bb.ax
  %i.la = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = atomicrmw add ptr %i.lb, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ld = icmp slt i32 %i.lc, 1
  br i1 %i.ld, label %bb.ay, label %_ZN3tev5Latch9countDownEv.exit.i145

bb.ay:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i150 unwind label %.from..loopexit.split-lp.i.i147

.noexc.i.i150:                                    ; preds = %bb.ay
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !160 ; 7 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !171
  %i.lh = and i32 %i.lg, 8
  %.not.i.i.i.i151 = icmp eq i32 %i.lh, 0
  br i1 %.not.i.i.i.i151, label %bb.az, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.az:                                            ; preds = %.noexc.i.i150
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !172 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i152 = icmp eq ptr %i.lj, %i.ll
  br i1 %.not12.i.i.i.i.i152, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i153

.from..lr.ph.i.i.i.i.i153:                        ; preds = %bb.az
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 48
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lf, i64 33
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  br label %.from..noexc2.i.i157

.from..noexc2.i.i157:                             ; preds = %.noexc2.i.i157, %.from..lr.ph.i.i.i.i.i153
  %.sroa.09.013.i.i.i.i.i154 = phi ptr [ %i.lj, %.from..lr.ph.i.i.i.i.i153 ], [ %i.mb, %.noexc2.i.i157 ] ; 2 uses
  %i.lq = load ptr, ptr %.sroa.09.013.i.i.i.i.i154, align 8, !tbaa !176 ; 2 uses
  %i.lr = load i8, ptr %i.lm, align 8             ; 2 uses
  %i.ls = trunc i8 %i.lr to i1                    ; 2 uses
  %i.lt = load ptr, ptr %i.ln, align 8
  %i.lu = select i1 %i.ls, ptr %i.lt, ptr %i.lo
  %i.lv = load i64, ptr %i.lp, align 8
  %i.lw = lshr i8 %i.lr, 1
  %i.lx = zext nneg i8 %i.lw to i64
  %i.ly = select i1 %i.ls, i64 %i.lv, i64 %i.lx
  %i.lz = load ptr, ptr %i.lq, align 8, !tbaa !68
  %i.ma = load ptr, ptr %i.lz, align 8
  invoke void %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, ptr %i.lu, i64 %i.ly, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i157 unwind label %.from..loopexit.i.i155, !inline_history !3

.noexc2.i.i157:                                   ; preds = %.from..noexc2.i.i157
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i154, i64 16 ; 2 uses
  %.not.i.i.i.i.i158 = icmp eq ptr %i.mb, %i.ll
  br i1 %.not.i.i.i.i.i158, label %_ZN3tev5Latch9countDownEv.exit.i145, label %.from..noexc2.i.i157

.from..loopexit.i.i155:                           ; preds = %.from..noexc2.i.i157
  %lpad.loopexit.i.i156 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ba

.from..loopexit.split-lp.i.i147:                  ; preds = %bb.ay
  %lpad.loopexit.split-lp.i.i148 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ba

bb.ba:                                            ; preds = %.from..loopexit.split-lp.i.i147, %.from..loopexit.i.i155
  %lpad.phi.i.i149 = phi { ptr, i32 } [ %lpad.loopexit.i.i156, %.from..loopexit.i.i155 ], [ %lpad.loopexit.split-lp.i.i148, %.from..loopexit.split-lp.i.i147 ]
  %i.mc = extractvalue { ptr, i32 } %lpad.phi.i.i149, 0
  call void @__clang_call_terminate(ptr %i.mc) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i145:              ; preds = %.noexc2.i.i157, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.md = icmp slt i32 %i.lc, 2
  br i1 %i.md, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i150, %bb.az, %_ZN3tev5Latch9countDownEv.exit.i145
  %i.me = load ptr, ptr %i.e, align 8, !tbaa !141
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !143 ; 2 uses
  %i.mg = inttoptr i64 %i.mf to ptr               ; 3 uses
  store ptr %i.mg, ptr %.reload.addr458, align 8
  %.not.i159 = icmp eq i64 %i.mf, 0
  br i1 %.not.i159, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend311

AfterCoroSuspend311:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr469 = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i1 true, ptr %index.addr469, align 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr nonnull %i.mg)
  br label %AfterCoroEnd

.from.443:                                        ; preds = %bb.ax
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.450

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i145
  %i.mj = load ptr, ptr %i.i, align 8, !tbaa !142 ; 5 uses
  %.not.i.i160 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i160, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = atomicrmw add ptr %i.mk, i64 -1 acq_rel, align 8
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %bb.bc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.bc:                                            ; preds = %bb.bb
  %i.mn = load ptr, ptr %i.mj, align 8, !tbaa !68
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(24) %i.mj) #31, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mj) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.bb, %bb.bc
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr467) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 336) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend311, %AfterCoroSave
  ret void

.body.from.450:                                   ; preds = %.body470, %.from.443
  %.pn39 = phi { ptr, i32 } [ %i.mi, %.from.443 ], [ %i.kz, %.body470 ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr467) #31
  br label %.body

.body:                                            ; preds = %.body.from.450, %.body.from.447, %.body.from.
  %.merged41 = phi { ptr, i32 } [ %.pn39, %.body.from.450 ], [ %i.s, %.body.from. ], [ %i.d, %.body.from.447 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 336) #31
  resume { ptr, i32 } %.merged41

bb.bd:                                            ; preds = %.body470
  %i.mq = landingpad { ptr, i32 }
          catch ptr null
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0
  call void @__clang_call_terminate(ptr %i.mr) #36
  unreachable

bb.be:                                            ; preds = %bb.ai, %bb.af, %bb.g
  unreachable
}

declare void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%class.anon.89) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.39", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #35 ; 16 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !594
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #31
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !597
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !68, !noalias !597
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !597
  store i32 2, ptr %i.g, align 8, !tbaa !137, !noalias !597
  store ptr %i.f, ptr %i.d, align 8, !tbaa !141, !alias.scope !598
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !142, !alias.scope !598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !599
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.39") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !599

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !143, !alias.scope !599
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !194, !noalias !599
  store ptr %i.j, ptr %i.i, align 8, !tbaa !194, !alias.scope !599
  store ptr null, ptr %7, align 8, !tbaa !194, !noalias !599
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !142, !noalias !599 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !143, !noalias !599
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !143, !alias.scope !599
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !599 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #36, !noalias !599
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31, !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !599
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.37") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !141
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !141
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !160 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !171
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !172 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !68
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #36
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 false, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %i.a) #31
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #31
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #36
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #31
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !160 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !171
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !172 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i29 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i29, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i30

.from..lr.ph.i.i.i.i.i30:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i34

.from..noexc2.i.i34:                              ; preds = %.noexc2.i.i34, %.from..lr.ph.i.i.i.i.i30
  %.sroa.09.013.i.i.i.i.i31 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i30 ], [ %i.ck, %.noexc2.i.i34 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !176 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !68
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !3

.noexc2.i.i34:                                    ; preds = %.from..noexc2.i.i34
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i35, label %_ZN3tev5Latch9countDownEv.exit.i23, label %.from..noexc2.i.i34

.from..loopexit.i.i32:                            ; preds = %.from..noexc2.i.i34
  %lpad.loopexit.i.i33 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i24:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i24, %.from..loopexit.i.i32
  %lpad.phi.i.i26 = phi { ptr, i32 } [ %lpad.loopexit.i.i33, %.from..loopexit.i.i32 ], [ %lpad.loopexit.split-lp.i.i25, %.from..loopexit.split-lp.i.i24 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i26, 0
  call void @__clang_call_terminate(ptr %i.cl) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !143 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.co, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend53

AfterCoroSuspend53:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 true, ptr %index.addr80, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.74 unwind label %bb.w

.from.70:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.74

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !142 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #31, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #31
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #31
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !216
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.144, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #36
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  store ptr %1, ptr %i.c, align 8, !tbaa !143
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !160  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !171
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !172  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !173  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not12.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.noexc2.i, %.lr.ph.i.i.i.i
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ae, %.noexc2.i ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i unwind label %.loopexit.i, !inline_history !3

.noexc2.i:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.af = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.af) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !216
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !216
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160  ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !171
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !172  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_1
begin_hunk_2_@_ZN3tev11ImageLoader15resizeImageDataERNS_9ImageDataEN7nanogui5ArrayIiLm2EEERKNSt3__18optionalINS_3BoxIiLj2EEEEEi:.from.
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 acq_rel, align 8, !noalias !625
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !68, !noalias !625
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !625
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #31, !noalias !625, !inline_history !618
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #31, !noalias !625
  br label %bb.n

.body.i.from.98:                                  ; preds = %.from._ZN3tev7ChannelD2Ev.exit.i
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr138) #31, !noalias !625
  br label %.body26.from..body.i

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bw = load ptr, ptr %i.ap, align 8, !tbaa !155, !noalias !625 ; 6 uses
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !156, !noalias !625
  %i.by = icmp ult ptr %i.bw, %i.bx
  br i1 %i.by, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bw, ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr135, i64 24, i1 false), !noalias !625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr135, i8 0, i64 24, i1 false), !noalias !625
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false), !noalias !625
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cb = load <2 x ptr>, ptr %i.as, align 8, !tbaa !143, !noalias !625
  store <2 x ptr> %i.cb, ptr %i.ca, align 8, !tbaa !143, !noalias !625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !noalias !625
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !noalias !625
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store ptr %i.cd, ptr %i.ap, align 8, !tbaa !155, !noalias !625
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ce = invoke noundef ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr135)
          to label %bb.p unwind label %.body.i.from., !noalias !625

bb.p:                                             ; preds = %bb.o
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !148, !noalias !625 ; 5 uses
  store ptr %i.ce, ptr %i.ap, align 8, !tbaa !155, !noalias !625
  %.not.i.i21.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i21.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8, !noalias !625
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %.pre.i, align 8, !tbaa !68, !noalias !625
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !625
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %.pre.i) #31, !noalias !625, !inline_history !619
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre.i) #31, !noalias !625
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p, %.thread.i
  %i.cl = load i8, ptr %.reload.addr135, align 8, !noalias !625
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.s, label %_ZN3tev7ChannelD2Ev.exit.i

bb.s:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i
  %i.cn = load ptr, ptr %i.av, align 8, !tbaa !119, !noalias !625
  %i.co = load i64, ptr %.reload.addr135, align 8, !noalias !625
  %i.cp = and i64 %i.co, -2
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cp) #33, !noalias !625
  br label %_ZN3tev7ChannelD2Ev.exit.i

_ZN3tev7ChannelD2Ev.exit.i:                       ; preds = %bb.s, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.5.023.i, i64 72 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.am
  br i1 %i.cr, label %.loopexit.from..loopexit.loopexit, label %.from._ZN3tev7ChannelD2Ev.exit.i

.body.i.from.:                                    ; preds = %bb.o
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev7ChannelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.reload.addr135) #31, !noalias !625
  br label %.body26.from..body.i

.body26.from..body.i:                             ; preds = %.body.i.from.100, %.body.i.from.98, %.body.i.from.
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aw, %.body.i.from.100 ], [ %i.bv, %.body.i.from.98 ], [ %i.cs, %.body.i.from. ]
  call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31, !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !625
  br label %.from..body26

.loopexit.from..loopexit.loopexit:                ; preds = %_ZN3tev7ChannelD2Ev.exit.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !158
  %.pre62 = load ptr, ptr %i.ag, align 8, !tbaa !155
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.from..loopexit.loopexit
  %i.ct = phi ptr [ %.pre62, %.loopexit.from..loopexit.loopexit ], [ %i.al, %bb.j ]
  %i.cu = phi ptr [ %.pre, %.loopexit.from..loopexit.loopexit ], [ %i.al, %bb.j ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cx = load ptr, ptr %5, align 8, !tbaa !158, !noalias !625 ; 3 uses
  store ptr %i.cx, ptr %.reload.addr137, align 8, !tbaa !158, !alias.scope !625
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !156, !noalias !625
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !155, !noalias !625
  store <2 x ptr> %i.cz, ptr %i.cv, align 8, !tbaa !156, !alias.scope !625
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !625
  %i.db = ptrtoint ptr %i.ct to i64
  %i.dc = ptrtoint ptr %i.cu to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = sdiv exact i64 %i.dd, 72
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = ptrtoint ptr %i.cx to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 72
  invoke void @_ZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.37") align 8 %.reload.addr135, ptr %i.cu, i64 %i.de, ptr %i.cx, i64 %i.di, ptr noundef nonnull align 4 dereferenceable(17) %3, i32 noundef %4)
          to label %bb.t unwind label %.from.109

bb.t:                                             ; preds = %.loopexit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !141
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load atomic i32, ptr %i.dl acquire, align 4
  %i.dn = icmp slt i32 %i.dm, 2
  br i1 %i.dn, label %bb.u, label %AfterCoroSave

bb.u:                                             ; preds = %bb.t
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !141
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.dr = icmp slt i32 %i.dq, 1
  br i1 %i.dr, label %bb.v, label %.thread.sink.split

bb.v:                                             ; preds = %bb.u
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.v
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !160 ; 7 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !171
  %i.dv = and i32 %i.du, 8
  %.not.i.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.i.i, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %.noexc.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !172 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.dx, %i.dz
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.dx, %.from..lr.ph.i.i.i.i.i ], [ %i.ep, %.noexc2.i.i ] ; 2 uses
  %i.ee = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.ef = load i8, ptr %i.ea, align 8             ; 2 uses
  %i.eg = trunc i8 %i.ef to i1                    ; 2 uses
  %i.eh = load ptr, ptr %i.eb, align 8
  %i.ei = select i1 %i.eg, ptr %i.eh, ptr %i.ec
  %i.ej = load i64, ptr %i.ed, align 8
  %i.ek = lshr i8 %i.ef, 1
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = select i1 %i.eg, i64 %i.ej, i64 %i.el
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !68
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr %i.ei, i64 %i.em, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ep, %i.dz
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.from..loopexit.split-lp.i.i:                     ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.eq = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.eq) #36
  unreachable

AfterCoroSave:                                    ; preds = %bb.t
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i1 false, ptr %index.addr143, align 8
  %i.er = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr135, ptr nonnull %i.a) #31
  br i1 %i.er, label %AfterCoroEnd, label %bb.y

.from.109:                                        ; preds = %.loopexit
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  br label %.body26.from.

bb.y:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr135, align 8, !tbaa !216 ; 3 uses
  %.not.i28 = icmp eq ptr %.pr, null
  br i1 %.not.i28, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.107, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.z, %bb.w, %.noexc.i.i, %bb.u
  store ptr null, ptr %.reload.addr135, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %bb.aa unwind label %.from.107

bb.aa:                                            ; preds = %.thread
  %.reload134 = load ptr, ptr %.spill.addr, align 8, !tbaa !224
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr135) #31
  %i.ew = load ptr, ptr %.reload134, align 8, !tbaa !158 ; 5 uses
  %.not.i.i48 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i48, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !224 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.reload, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !155 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ew, %i.ey
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %bb.ab, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ez, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.ey, %bb.ab ] ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.fa = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !148 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i49
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = atomicrmw add ptr %i.fc, i64 -1 acq_rel, align 8
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.ad, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !68
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(24) %i.fb) #31, !inline_history !9
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fb) #31
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %.lr.ph.i.i.i.i.i49
  %i.fi = load i8, ptr %i.ez, align 8
  %i.fj = trunc i8 %i.fi to i1
  br i1 %i.fj, label %bb.ae, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.ae:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.fk = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !119
  %i.fm = load i64, ptr %i.ez, align 8
  %i.fn = and i64 %i.fm, -2
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fn) #33
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.ae, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i50 = icmp eq ptr %i.ew, %i.ez
  br i1 %.not.i.i.i.i.i50, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i49

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload132 = load ptr, ptr %.spill.addr, align 8, !tbaa !224 ; 2 uses
  %.pre.i.i = load ptr, ptr %.reload132, align 8, !tbaa !158
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.ab, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %.reload130 = phi ptr [ %.reload132, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %.reload, %bb.ab ] ; 3 uses
  %i.fo = phi ptr [ %.pre.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.ew, %bb.ab ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.reload130, i64 8
  store ptr %i.ew, ptr %i.fp, align 8, !tbaa !155
  %i.fq = getelementptr inbounds nuw i8, ptr %.reload130, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !156
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fo to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fu) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload130, i8 0, i64 24, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i
  %.reload128 = load ptr, ptr %.spill.addr, align 8, !tbaa !224 ; 2 uses
  %i.fv = load <2 x ptr>, ptr %.reload.addr137, align 8, !tbaa !156
  store <2 x ptr> %i.fv, ptr %.reload128, align 8, !tbaa !156
  %i.fw = load ptr, ptr %i.cw, align 8, !tbaa !156
  %i.fx = getelementptr inbounds nuw i8, ptr %.reload128, i64 16
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !156
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #36
  unreachable

.from.107:                                        ; preds = %bb.z, %.thread
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr135) #31
  br label %.body26.from.

.body26.from.:                                    ; preds = %.from.109, %.from.107
  %.pn = phi { ptr, i32 } [ %i.ga, %.from.107 ], [ %i.es, %.from.109 ]
  call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr137) #31
  br label %.from..body26

.from..body26:                                    ; preds = %.body26.from..body.i, %.body26.from., %.from.111
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %.from.111 ], [ %.pn, %.body26.from. ], [ %.pn.pn.pn.pn.i, %.body26.from..body.i ]
  %.215 = extractvalue { ptr, i32 } %.pn.pn.pn, 0
  %i.gb = call ptr @__cxa_begin_catch(ptr %.215) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %.from..body26
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32 unwind label %.from.119

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32: ; preds = %bb.f, %bb.af, %bb.ah
  %i.gc = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = atomicrmw add ptr %i.gd, i32 -1 acq_rel, align 4 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 1
  br i1 %i.gf, label %bb.ai, label %_ZN3tev5Latch9countDownEv.exit.i33

bb.ai:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i37 unwind label %.from..loopexit.split-lp.i.i34

.noexc.i.i37:                                     ; preds = %bb.ai
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !160 ; 7 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !171
  %i.gj = and i32 %i.gi, 8
  %.not.i.i.i.i38 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i.i.i38, label %bb.aj, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aj:                                            ; preds = %.noexc.i.i37
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !172 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i39 = icmp eq ptr %i.gl, %i.gn
  br i1 %.not12.i.i.i.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i40

.from..lr.ph.i.i.i.i.i40:                         ; preds = %bb.aj
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 33
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  br label %.from..noexc2.i.i44

.from..noexc2.i.i44:                              ; preds = %.noexc2.i.i44, %.from..lr.ph.i.i.i.i.i40
  %.sroa.09.013.i.i.i.i.i41 = phi ptr [ %i.gl, %.from..lr.ph.i.i.i.i.i40 ], [ %i.hd, %.noexc2.i.i44 ] ; 2 uses
  %i.gs = load ptr, ptr %.sroa.09.013.i.i.i.i.i41, align 8, !tbaa !176 ; 2 uses
  %i.gt = load i8, ptr %i.go, align 8             ; 2 uses
  %i.gu = trunc i8 %i.gt to i1                    ; 2 uses
  %i.gv = load ptr, ptr %i.gp, align 8
  %i.gw = select i1 %i.gu, ptr %i.gv, ptr %i.gq
  %i.gx = load i64, ptr %i.gr, align 8
  %i.gy = lshr i8 %i.gt, 1
  %i.gz = zext nneg i8 %i.gy to i64
  %i.ha = select i1 %i.gu, i64 %i.gx, i64 %i.gz
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !68
  %i.hc = load ptr, ptr %i.hb, align 8
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr %i.gw, i64 %i.ha, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i44 unwind label %.from..loopexit.i.i42, !inline_history !3

.noexc2.i.i44:                                    ; preds = %.from..noexc2.i.i44
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i41, i64 16 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.hd, %i.gn
  br i1 %.not.i.i.i.i.i45, label %_ZN3tev5Latch9countDownEv.exit.i33, label %.from..noexc2.i.i44

.from..loopexit.i.i42:                            ; preds = %.from..noexc2.i.i44
  %lpad.loopexit.i.i43 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ak

.from..loopexit.split-lp.i.i34:                   ; preds = %bb.ai
  %lpad.loopexit.split-lp.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ak

bb.ak:                                            ; preds = %.from..loopexit.split-lp.i.i34, %.from..loopexit.i.i42
  %lpad.phi.i.i36 = phi { ptr, i32 } [ %lpad.loopexit.i.i43, %.from..loopexit.i.i42 ], [ %lpad.loopexit.split-lp.i.i35, %.from..loopexit.split-lp.i.i34 ]
  %i.he = extractvalue { ptr, i32 } %lpad.phi.i.i36, 0
  call void @__clang_call_terminate(ptr %i.he) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i33:               ; preds = %.noexc2.i.i44, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32
  %i.hf = icmp slt i32 %i.ge, 2
  br i1 %i.hf, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i37, %bb.aj, %_ZN3tev5Latch9countDownEv.exit.i33
  %i.hg = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !143 ; 2 uses
  %i.hi = inttoptr i64 %i.hh to ptr               ; 3 uses
  store ptr %i.hi, ptr %.reload.addr137, align 8
  %.not.i46 = icmp eq i64 %i.hh, 0
  br i1 %.not.i46, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend91

AfterCoroSuspend91:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i1 true, ptr %index.addr144, align 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr nonnull %i.hi)
  br label %AfterCoroEnd

bb.al:                                            ; preds = %.from..body26
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.123 unwind label %bb.ao

.from.119:                                        ; preds = %bb.ah
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.123

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i33
  %i.hm = load ptr, ptr %i.h, align 8, !tbaa !142 ; 5 uses
  %.not.i.i47 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i47, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = atomicrmw add ptr %i.hn, i64 -1 acq_rel, align 8
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.an, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.hq = load ptr, ptr %i.hm, align 8, !tbaa !68
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(24) %i.hm) #31, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hm) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.am, %bb.an
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 184) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend91, %AfterCoroSave
  ret void

.body.from.123:                                   ; preds = %bb.al, %.from.119
  %.pn19 = phi { ptr, i32 } [ %i.hl, %.from.119 ], [ %i.hk, %bb.al ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #31
  br label %.body

.body:                                            ; preds = %.body.from.123, %.body.from.121, %.body.from.
  %.merged21 = phi { ptr, i32 } [ %.pn19, %.body.from.123 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.121 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 184) #31
  resume { ptr, i32 } %.merged21

bb.ao:                                            ; preds = %bb.al
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #36
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJPNS2_14ExrImageLoaderEEEEPS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = load ptr, ptr %0, align 8, !tbaa !117
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  unreachable

_ZNKSt3__16vectorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775800
  %i.n = ashr exact i64 %i.m, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !76  ; 3 uses
  %.pre8 = load ptr, ptr %0, align 8, !tbaa !117  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0.i ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %i.u, ptr %i.s, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.not30.i.i = icmp eq ptr %.pre, %.pre8
  br i1 %.not30.i.i, label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.123.031.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEEEDaRT_m.exit.i ]
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEEEDaRT_m.exit.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.sroa.123.031.i.i, i64 -8 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118
  store ptr null, ptr %i.y, align 8, !tbaa !118
  store ptr %i.z, ptr %i.x, align 8, !tbaa !80
  %.not.i.i = icmp eq ptr %i.y, %.pre8
  br i1 %.not.i.i, label %bb.d, label %.lr.ph.i.i, !llvm.loop !10

bb.d:                                             ; preds = %.lr.ph.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !77
  store ptr %i.v, ptr %i.b, align 8, !tbaa !77
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !77
  store ptr %i.t, ptr %i.a, align 8, !tbaa !77
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEE7destroyB8ne180100IS7_vvEEvRS8_PT_.exit.i.i.i.i
  %i.ab = phi ptr [ %i.ac, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEE7destroyB8ne180100IS7_vvEEvRS8_PT_.exit.i.i.i.i ], [ %.pre, %bb.d ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118 ; 3 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !118
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEE7destroyB8ne180100IS7_vvEEvRS8_PT_.exit.i.i.i.i, label %_ZNKSt3__114default_deleteIN3tev11ImageLoaderEEclB8ne180100EPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteIN3tev11ImageLoaderEEclB8ne180100EPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #31, !inline_history !11
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEE7destroyB8ne180100IS7_vvEEvRS8_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEE7destroyB8ne180100IS7_vvEEvRS8_PT_.exit.i.i.i.i: ; preds = %_ZNKSt3__114default_deleteIN3tev11ImageLoaderEEclB8ne180100EPS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.pre8, %i.ac
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i.critedge: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEEEDaRT_m.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !77
  store ptr %i.v, ptr %i.b, align 8, !tbaa !77
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !77
  store ptr %i.t, ptr %i.a, align 8, !tbaa !77
  br label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEE7destroyB8ne180100IS7_vvEEvRS8_PT_.exit.i.i.i.i, %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i.critedge
  %.sroa.16.0 = phi ptr [ %i.ah, %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i.critedge ], [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS4_EEEEEEE7destroyB8ne180100IS7_vvEEvRS8_PT_.exit.i.i.i.i ]
  %.not.i5 = icmp eq ptr %.pre8, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i
  %i.ai = ptrtoint ptr %.sroa.16.0 to i64
  %i.aj = ptrtoint ptr %.pre8 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre8, i64 noundef %i.ak) #33
  br label %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEERNS_9allocatorIS6_EEE5clearB8ne180100Ev.exit.i, %bb.e
  ret ptr %i.v
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_10unique_ptrIN3tev11ImageLoaderENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.59) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
end_hunk_2
begin_hunk_3_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_i":.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.ac unwind label %.thread184

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.137.sink.split

bb.i:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ax = load i8, ptr %8, align 8
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %.split, label %.from.137.sink.split

.thread184:                                       ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ba = load i8, ptr %8, align 8
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134

.split:                                           ; preds = %.thread184, %bb.i
  %i.bc = phi { ptr, i32 } [ %i.az, %.thread184 ], [ %i.aw, %bb.i ] ; 2 uses
  %.0186 = phi i1 [ false, %.thread184 ], [ true, %bb.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !119
  %i.bf = load i64, ptr %8, align 8
  %i.bg = and i64 %i.bf, -2
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.0186, label %.from.137, label %.from.156

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134: ; preds = %.thread184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.from.156

.from.137.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.av, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.from.137

.from.137:                                        ; preds = %.from.137.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.bc, %.split ], [ %.pn4284.ph, %.from.137.sink.split ]
  call void @__cxa_free_exception(ptr %i.ar) #31
  br label %.from.156

.lr.ph:                                           ; preds = %.from..lr.ph, %bb.f
  %i.bh = phi i32 [ %i.aq, %bb.f ], [ %i.ak, %.from..lr.ph ]
  %i.bi = phi i32 [ %i.ao, %bb.f ], [ 1, %.from..lr.ph ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %bb.f ], [ 0, %.from..lr.ph ]
  %i.bk = add nsw i32 %i.bh, %2
  %i.bl = add nsw i32 %i.bj, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store i32 %i.bl, ptr %10, align 8, !tbaa !395
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !396
  store ptr %.reload.addr179, ptr %i.af, align 8, !tbaa !143
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.37") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.132

bb.j:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !401 ; 6 uses
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !402
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bq = load i64, ptr %9, align 8, !tbaa !143
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !143
  %i.br = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !143
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !143
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !403
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !403
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !143
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.129

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bu, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bv, %bb.k ]
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !401
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %exitcond.not = icmp eq i32 %i.bi, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1278

.from.132:                                        ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.141

.from.129:                                        ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #31
  br label %.from.141

.from.141:                                        ; preds = %.from.132, %.from.129
  %.pn43 = phi { ptr, i32 } [ %i.bx, %.from.129 ], [ %i.bw, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.from.156

.from.156:                                        ; preds = %.from.141, %.from.137, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.141 ], [ %.pn4284, %.from.137 ], [ %i.az, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134 ], [ %i.bc, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #31
  br label %.from.158

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !141
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load atomic i32, ptr %i.ca acquire, align 4
  %i.cc = icmp slt i32 %i.cb, 2
  br i1 %i.cc, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !160 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !171
  %i.ck = and i32 %i.cj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !172 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cm, %.from..lr.ph.i.i.i.i.i ], [ %i.de, %.noexc2.i.i ] ; 2 uses
  %i.ct = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.cu = load i8, ptr %i.cp, align 8             ; 2 uses
  %i.cv = trunc i8 %i.cu to i1                    ; 2 uses
  %i.cw = load ptr, ptr %i.cq, align 8
  %i.cx = select i1 %i.cv, ptr %i.cw, ptr %i.cr
  %i.cy = load i64, ptr %i.cs, align 8
  %i.cz = lshr i8 %i.cu, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = select i1 %i.cv, i64 %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr %i.cx, i64 %i.db, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.de, %i.co
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.from..loopexit.split-lp.i.i:                     ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.df = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.df) #36
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 false, ptr %index.addr182, align 8
  %i.dg = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #31
  br i1 %i.dg, label %AfterCoroEnd, label %bb.q

.from.150:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.158

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !216 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.147, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.147

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  %i.dl = load ptr, ptr %.reload.addr178, align 8, !tbaa !404 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !401 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dn, %bb.s ]
  %i.do = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.do) #31
  %.not.i.i.i.i57 = icmp eq ptr %i.dl, %i.do
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !404
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dp = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dl, %bb.s ] ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !401
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !402
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.du) #33
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #36
  unreachable

.from.147:                                        ; preds = %bb.r, %.thread
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  br label %.from.158

.from.158:                                        ; preds = %.from.147, %.from.150, %.from.153, %.from.156
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.al, %.from.153 ], [ %.pn43.pn, %.from.156 ], [ %i.dx, %.from.147 ], [ %i.dh, %.from.150 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #31
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dy = call ptr @__cxa_begin_catch(ptr %.6) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.158
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !160 ; 7 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !171
  %i.eg = and i32 %i.ef, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !172 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.ei, %.from..lr.ph.i.i.i.i.i65 ], [ %i.fa, %.noexc2.i.i69 ] ; 2 uses
  %i.ep = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !176 ; 2 uses
  %i.eq = load i8, ptr %i.el, align 8             ; 2 uses
  %i.er = trunc i8 %i.eq to i1                    ; 2 uses
  %i.es = load ptr, ptr %i.em, align 8
  %i.et = select i1 %i.er, ptr %i.es, ptr %i.en
  %i.eu = load i64, ptr %i.eo, align 8
  %i.ev = lshr i8 %i.eq, 1
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = select i1 %i.er, i64 %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !68
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr %i.et, i64 %i.ex, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !3

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.fa, %i.ek
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.fb = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  call void @__clang_call_terminate(ptr %i.fb) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fc = icmp slt i32 %i.eb, 2
  br i1 %i.fc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !143 ; 2 uses
  %i.ff = inttoptr i64 %i.fe to ptr               ; 3 uses
  store ptr %i.ff, ptr %.reload.addr178, align 8
  %.not.i71 = icmp eq i64 %i.fe, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend109

AfterCoroSuspend109:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 true, ptr %index.addr183, align 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr nonnull %i.ff)
  br label %AfterCoroEnd

bb.y:                                             ; preds = %.from.158
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.174 unwind label %bb.ab

.from.167:                                        ; preds = %bb.u
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.174

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !142 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = atomicrmw add ptr %i.fk, i64 -1 acq_rel, align 8
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !68
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #31, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend109, %AfterCoroSave
  ret void

.body.from.174:                                   ; preds = %bb.y, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.fi, %.from.167 ], [ %i.fh, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr181) #31
  br label %.body

.body:                                            ; preds = %.body.from.174, %.body.from.171, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.174 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.171 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #31
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #36
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.39", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35 ; 15 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #31
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1299
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !68, !noalias !1299
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1299
  store i32 2, ptr %i.g, align 8, !tbaa !137, !noalias !1299
  store ptr %i.f, ptr %i.d, align 8, !tbaa !141, !alias.scope !1300
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !142, !alias.scope !1300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !1301
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.39") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1301

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !143, !alias.scope !1301
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !194, !noalias !1301
  store ptr %i.j, ptr %i.i, align 8, !tbaa !194, !alias.scope !1301
  store ptr null, ptr %4, align 8, !tbaa !194, !noalias !1301
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !142, !noalias !1301 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !143, !noalias !1301
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !143, !alias.scope !1301
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1301 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #36, !noalias !1301
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #31, !noalias !1301
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !1301
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !143
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSO_PS0_iE_clESO_ST_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.37") align 8 %.reload.addr, ptr nonnull align 1 poison, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !141
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !141
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !160 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !171
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !172 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !68
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #36
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 false, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #31
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #36
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !160 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !171
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !172 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i26 ], [ %i.ck, %.noexc2.i.i30 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !176 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !68
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !3

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  call void @__clang_call_terminate(ptr %i.cl) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !143 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.co, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend49

AfterCoroSuspend49:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 true, ptr %index.addr76, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.70 unwind label %bb.w

.from.66:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.70

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !142 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #31, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #31
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #31
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind writable sret(%"class.tev::Task.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.39", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #35 ; 20 uses
  store ptr @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy, ptr %destroy.addr, align 8
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 8 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.a unwind label %.body.from.126 ; 5 uses

.body.from.126:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #31
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1312
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !68, !noalias !1312
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1312
  store i32 2, ptr %i.g, align 8, !tbaa !137, !noalias !1312
  store ptr %i.f, ptr %i.d, align 8, !tbaa !141, !alias.scope !1313
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !142, !alias.scope !1313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !1314
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.39") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.b unwind label %bb.d, !noalias !1314

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !143, !alias.scope !1314
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !194, !noalias !1314
  store ptr %i.j, ptr %i.i, align 8, !tbaa !194, !alias.scope !1314
  store ptr null, ptr %2, align 8, !tbaa !194, !noalias !1314
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !142, !noalias !1314 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !143, !noalias !1314
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !143, !alias.scope !1314
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1314 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #36, !noalias !1314
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #31, !noalias !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !1314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !404    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !401  ; 2 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr %i.u, ptr %.spill.addr, align 8
  %.not51.not63 = icmp eq ptr %i.s, %i.u
  br i1 %.not51.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.sroa.041.064.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 5 uses
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.041.064 = phi ptr [ %i.bo, %bb.o ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  store ptr %.sroa.041.064, ptr %.sroa.041.064.spill.addr, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.041.064, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !141
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i32, ptr %i.x acquire, align 4
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %AfterCoroSave

bb.f:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !141
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !160 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !171
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !172 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.aj, %.from..lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc2.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.ar = load i8, ptr %i.am, align 8             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = select i1 %i.as, ptr %i.at, ptr %i.ao
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = lshr i8 %i.ar, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.as, i64 %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !68
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.al
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bc = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bc) #36
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i1 false, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !406
  %i.bd = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %i.a) #31
  br i1 %i.bd, label %AfterCoroEnd, label %bb.j

bb.j:                                             ; preds = %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !406 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.l, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !406 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.bh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, i32 } %i.bh, 1
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %.loopexit52

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bi) #31 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #31
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #31
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %.from.104

bb.o:                                             ; preds = %bb.n, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !406
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !406
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.bo, %.reload
  br i1 %.not51.not, label %._crit_edge.from.._crit_edge.loopexit, label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #31
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.af

.from.104:                                        ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bq, %.from.104 ], [ %i.bp, %bb.p ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge.from.._crit_edge.loopexit:            ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !411
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !412
  %i.br = ptrtoint ptr %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.from.._crit_edge.loopexit
  %i.bs = phi ptr [ %.pre70, %._crit_edge.from.._crit_edge.loopexit ], [ null, %bb.e ] ; 2 uses
  %i.bt = phi i64 [ %i.br, %._crit_edge.from.._crit_edge.loopexit ], [ 0, %bb.e ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bt, %i.bv                    ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 8
  br i1 %i.bx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #31
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #34
          to label %bb.r unwind label %.loopexit52.from.115

bb.r:                                             ; preds = %bb.q
  unreachable

.loopexit52.from.115:                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #31
  br label %.loopexit52

bb.s:                                             ; preds = %._crit_edge
  %i.ca = icmp ugt i64 %i.bw, 8
  br i1 %i.ca, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @__cxa_allocate_exception(i64 40) #31 ; 3 uses
  %i.cc = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 2 uses
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !411
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr %i.cc, i64 %i.ch)
          to label %bb.u unwind label %.loopexit52.from.113

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #34
          to label %bb.ag unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__cxa_free_exception(ptr nonnull %i.cb) #31
  br label %.loopexit52

.loopexit52.from.111:                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  br label %.loopexit52

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #36
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.v
  %i.co = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 5 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !411 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cp, %bb.x ]
  %i.cq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #31
  %.not.i.i.i.i24 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !412
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.x, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.cr = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.co, %bb.x ] ; 2 uses
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !411
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !413
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cw) #33
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.l, %.loopexit52.from.110, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115
  %.213 = phi ptr [ %i.bz, %.loopexit52.from.115 ], [ %i.cl, %.loopexit52.from.111 ], [ %i.cj, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.bi, %bb.l ]
  call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #31
  %i.cx = call ptr @__cxa_begin_catch(ptr %.213) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.y
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4 ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %bb.z, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.z:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.z
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !160 ; 7 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !171
  %i.df = and i32 %i.de, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aa:                                            ; preds = %.noexc.i.i29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !172 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i31 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not12.i.i.i.i.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i32

.from..lr.ph.i.i.i.i.i32:                         ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 33
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  br label %.from..noexc2.i.i36

.from..noexc2.i.i36:                              ; preds = %.noexc2.i.i36, %.from..lr.ph.i.i.i.i.i32
  %.sroa.09.013.i.i.i.i.i33 = phi ptr [ %i.dh, %.from..lr.ph.i.i.i.i.i32 ], [ %i.dz, %.noexc2.i.i36 ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !176 ; 2 uses
  %i.dp = load i8, ptr %i.dk, align 8             ; 2 uses
  %i.dq = trunc i8 %i.dp to i1                    ; 2 uses
  %i.dr = load ptr, ptr %i.dl, align 8
  %i.ds = select i1 %i.dq, ptr %i.dr, ptr %i.dm
  %i.dt = load i64, ptr %i.dn, align 8
  %i.du = lshr i8 %i.dp, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = select i1 %i.dq, i64 %i.dt, i64 %i.dv
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !68
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr %i.ds, i64 %i.dw, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !3

.noexc2.i.i36:                                    ; preds = %.from..noexc2.i.i36
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dz, %i.dj
  br i1 %.not.i.i.i.i.i37, label %_ZN3tev5Latch9countDownEv.exit.i25, label %.from..noexc2.i.i36

.from..loopexit.i.i34:                            ; preds = %.from..noexc2.i.i36
  %lpad.loopexit.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

.from..loopexit.split-lp.i.i26:                   ; preds = %bb.z
  %lpad.loopexit.split-lp.i.i27 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %.from..loopexit.split-lp.i.i26, %.from..loopexit.i.i34
  %lpad.phi.i.i28 = phi { ptr, i32 } [ %lpad.loopexit.i.i35, %.from..loopexit.i.i34 ], [ %lpad.loopexit.split-lp.i.i27, %.from..loopexit.split-lp.i.i26 ]
  %i.ea = extractvalue { ptr, i32 } %lpad.phi.i.i28, 0
  call void @__clang_call_terminate(ptr %i.ea) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.eb = icmp slt i32 %i.da, 2
  br i1 %i.eb, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i29, %bb.aa, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !143 ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  store ptr %i.ee, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.ed, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend91

AfterCoroSuspend91:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i1 true, ptr %index.addr144, align 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr nonnull %i.ee)
  br label %AfterCoroEnd

bb.ac:                                            ; preds = %.loopexit52
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.128 unwind label %bb.af

.from.124:                                        ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.128

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !142 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !68
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #31, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ad, %bb.ae
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend91
  ret void

.body.from.128:                                   ; preds = %bb.ac, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.eh, %.from.124 ], [ %i.eg, %bb.ac ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #31
  br label %.body

.body:                                            ; preds = %.body.from.128, %.body.from.126, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.128 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.126 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #31
  resume { ptr, i32 } %.merged20

bb.af:                                            ; preds = %bb.ac, %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #36
  unreachable

bb.ag:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !404    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !401  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #31
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !404
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !401
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !402
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #33
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() local_unnamed_addr #14

declare void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !401
  %i.d = load ptr, ptr %0, align 8, !tbaa !404
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  unreachable

_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !402
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775776
  %i.n = ashr exact i64 %i.m, 4
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 576460752303423487 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 576460752303423487
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !143
  store i64 %i.v, ptr %i.s, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !143
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !403
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !403
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !143
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !401 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !404   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !143
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !143
  store ptr null, ptr %i.ag, align 8, !tbaa !143
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !143
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !143
  store ptr null, ptr %i.aj, align 8, !tbaa !1316
  store ptr null, ptr %i.ak, align 8, !tbaa !1317
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !403
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !403
  store ptr null, ptr %i.an, align 8, !tbaa !403
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1315

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !402
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !402
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !402
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !402
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !402
  store ptr %i.t, ptr %i.a, align 8, !tbaa !402
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #31
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #33
  br label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.59) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSO_PS0_iE_clESO_ST_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.37") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, i64 %2, ptr %3, ptr noundef %4, i32 noundef %5) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %6 = alloca %"struct.std::__1::coroutine_handle.9", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.39", align 8 ; 4 uses
  %8 = alloca %"class.std::__1::future.39", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #35 ; 13 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSO_PS0_iE_clESO_ST_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSO_PS0_iE_clESO_ST_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %2, ptr %.reload.addr78, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !143
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.a unwind label %.body.from.74 ; 5 uses

.body.from.74:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #31
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1328
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !68, !noalias !1328
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1328
  store i32 2, ptr %i.g, align 8, !tbaa !137, !noalias !1328
  store ptr %i.f, ptr %i.d, align 8, !tbaa !141, !alias.scope !1329
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !142, !alias.scope !1329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !1330
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.39") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.b unwind label %bb.d, !noalias !1330

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !143, !alias.scope !1330
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %8, align 8, !tbaa !194, !noalias !1330
  store ptr %i.j, ptr %i.i, align 8, !tbaa !194, !alias.scope !1330
  store ptr null, ptr %8, align 8, !tbaa !194, !noalias !1330
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !142, !noalias !1330 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !143, !noalias !1330
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !143, !alias.scope !1330
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1330 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #36, !noalias !1330
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #31, !noalias !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !1330
  store ptr %4, ptr %.reload.addr, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr82 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i2 0, ptr %index.addr82, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %6, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.39") align 8 %7, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %5, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #36
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void

.body:                                            ; preds = %.body.from.74, %.body.from.
  %.merged16 = phi { ptr, i32 } [ %i.c, %.body.from.74 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #31
  resume { ptr, i32 } %.merged16
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_iENKUlvE_clEv"(ptr dead_on_unwind writable sret(%"class.tev::Task.37") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.39", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35 ; 15 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #31
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1341
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !68, !noalias !1341
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1341
  store i32 2, ptr %i.g, align 8, !tbaa !137, !noalias !1341
  store ptr %i.f, ptr %i.d, align 8, !tbaa !141, !alias.scope !1342
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !142, !alias.scope !1342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !1343
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.39") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1343

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !143, !alias.scope !1343
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !194, !noalias !1343
  store ptr %i.j, ptr %i.i, align 8, !tbaa !194, !alias.scope !1343
  store ptr null, ptr %2, align 8, !tbaa !194, !noalias !1343
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !142, !noalias !1343 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !143, !noalias !1343
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !143, !alias.scope !1343
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1343 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #36, !noalias !1343
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #31, !noalias !1343
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !1343
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1344, !nonnull !186, !align !277
  %i.u = load i32, ptr %1, align 8, !tbaa !395
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !396
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.37") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.u, i32 noundef %i.w)
          to label %bb.f unwind label %.from.54

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp slt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !160 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !171
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !172 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.al, %.from..lr.ph.i.i.i.i.i ], [ %i.bd, %.noexc2.i.i ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.at = load i8, ptr %i.ao, align 8             ; 2 uses
  %i.au = trunc i8 %i.at to i1                    ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = select i1 %i.au, ptr %i.av, ptr %i.aq
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i8 %i.at, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.au, i64 %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !68
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.an
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.be = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.be) #36
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 false, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #31
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #36
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !160 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !171
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !172 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i21 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not12.i.i.i.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i22

.from..lr.ph.i.i.i.i.i22:                         ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  br label %.from..noexc2.i.i26

.from..noexc2.i.i26:                              ; preds = %.noexc2.i.i26, %.from..lr.ph.i.i.i.i.i22
  %.sroa.09.013.i.i.i.i.i23 = phi ptr [ %i.bx, %.from..lr.ph.i.i.i.i.i22 ], [ %i.cp, %.noexc2.i.i26 ] ; 2 uses
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !176 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !68
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !3

.noexc2.i.i26:                                    ; preds = %.from..noexc2.i.i26
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i.i.i.i.i27, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i26

.from..loopexit.i.i24:                            ; preds = %.from..noexc2.i.i26
  %lpad.loopexit.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i16:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i17 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i16, %.from..loopexit.i.i24
  %lpad.phi.i.i18 = phi { ptr, i32 } [ %lpad.loopexit.i.i25, %.from..loopexit.i.i24 ], [ %lpad.loopexit.split-lp.i.i17, %.from..loopexit.split-lp.i.i16 ]
  %i.cq = extractvalue { ptr, i32 } %lpad.phi.i.i18, 0
  call void @__clang_call_terminate(ptr %i.cq) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !143 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  store ptr %i.cu, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.ct, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend45

AfterCoroSuspend45:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 true, ptr %index.addr71, align 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr nonnull %i.cu)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.66 unwind label %bb.w

.from.62:                                         ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.66

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !142 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !68
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #31, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #31
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #31
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.448", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future.39", align 8 ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.449, align 8            ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #32, !noalias !1355 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !1355
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !68, !noalias !1355
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !68, !noalias !1355
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !143, !noalias !1355
  store i64 %i.g, ptr %i.f, align 8, !tbaa !143, !noalias !1355
  store ptr %i.d, ptr %i.e, align 16, !tbaa !417, !noalias !1355
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !1355

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #31, !noalias !1355
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #31, !noalias !1355
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #33, !noalias !1355
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !420, !alias.scope !1356
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !421, !alias.scope !1356
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.39") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1377, !range !214, !noundef !186
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN10moodycamel20LightweightSemaphore6signalEl.exit, label %bb.c

bb.b:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.c:                                             ; preds = %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr %i.d, ptr %9, align 8, !tbaa !420
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !421
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !420
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !421
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !428
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !431
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !1378
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !432  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !433
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !428
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !428 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 16 dereferenceable(53) %i.z)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #36
  unreachable

_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.ak, ptr noundef nonnull align 16 dereferenceable(5) %i.w, i64 5, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  br label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.am = invoke noundef ptr @_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE21__push_back_slow_pathIS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 16 dereferenceable(53) %8)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i unwind label %bb.m

_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i: ; preds = %bb.g, %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i
  %.0.i.i = phi ptr [ %i.al, %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i ], [ %i.am, %bb.g ] ; 3 uses
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !432
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !434 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !428 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
end_hunk_3
begin_hunk_4_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii":.from.
  %.sroa.speculated73.i = call i32 @llvm.smax.i32(i32 %i.cs, i32 0) ; 3 uses
  %i.ct = extractelement <2 x float> %i.cp, i64 1 ; 2 uses
  %i.cu = call noundef float @llvm.floor.f32(float %i.ct)
  %i.cv = fptosi float %i.cu to i32
  %.sroa.speculated68.i = call i32 @llvm.smax.i32(i32 %i.cv, i32 0) ; 3 uses
  %i.cw = uitofp nneg i32 %.sroa.speculated73.i to float
  %i.cx = fsub float %i.cq, %i.cw                 ; 3 uses
  %i.cy = uitofp nneg i32 %.sroa.speculated68.i to float
  %i.cz = fsub float %i.ct, %i.cy                 ; 3 uses
  %i.da = fsub float 1.000000e+00, %i.cx          ; 2 uses
  %i.db = fsub float 1.000000e+00, %i.cz          ; 2 uses
  %i.dc = fmul float %i.da, %i.db
  %i.dd = fmul float %i.cx, %i.db
  %i.de = fmul float %i.da, %i.cz
  %i.df = fmul float %i.cx, %i.cz
  %i.dg = load i64, ptr %i.ar, align 8, !tbaa !128 ; 2 uses
  %.not85.i = icmp eq i64 %i.dg, 0
  br i1 %.not85.i, label %.loopexit.i, label %.from..lr.ph.i

.from..lr.ph.i:                                   ; preds = %bb.l
  %i.dh = load i32, ptr %i.aq, align 4, !tbaa !185
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = add nuw nsw i32 %.sroa.speculated68.i, 1
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.di, i32 %i.dj)
  %i.dk = load i32, ptr %i.ap, align 4, !tbaa !185
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = add nuw nsw i32 %.sroa.speculated73.i, 1
  %.sroa.speculated63.i = call i32 @llvm.smin.i32(i32 %i.dl, i32 %i.dm)
  %i.dn = load ptr, ptr %i.as, align 8, !tbaa !200
  %i.do = zext nneg i32 %.sroa.speculated73.i to i64 ; 2 uses
  %i.dp = zext nneg i32 %.sroa.speculated68.i to i64
  %i.dq = sext i32 %.sroa.speculated63.i to i64   ; 2 uses
  %i.dr = sext i32 %.sroa.speculated.i to i64
  %i.ds = load ptr, ptr %i.at, align 8, !tbaa !211
  br label %.from.46

.from.46:                                         ; preds = %.from.46, %.from..lr.ph.i
  %.05779.i = phi i64 [ 0, %.from..lr.ph.i ], [ %i.fh, %.from.46 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %.05779.i ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !185
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = mul nsw i64 %i.dw, %i.dp                ; 2 uses
  %i.dy = add nsw i64 %i.dx, %i.do
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !1421 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1422 ; 4 uses
  %i.ec = mul i64 %i.dy, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !65
  %i.ef = add nsw i64 %i.dx, %i.dq
  %i.eg = mul i64 %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !65
  %i.ej = mul nsw i64 %i.dw, %i.dr                ; 2 uses
  %i.ek = add nsw i64 %i.ej, %i.do
  %i.el = mul i64 %i.ek, %i.eb
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !65
  %i.eo = add nsw i64 %i.ej, %i.dq
  %i.ep = mul i64 %i.eo, %i.eb
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !65
  %i.es = fmul float %i.dd, %i.ei
  %i.et = call float @llvm.fmuladd.f32(float %i.dc, float %i.ee, float %i.es)
  %i.eu = call float @llvm.fmuladd.f32(float %i.de, float %i.en, float %i.et)
  %i.ev = call float @llvm.fmuladd.f32(float %i.df, float %i.er, float %i.eu)
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %.05779.i ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !185
  %i.ez = sext i32 %i.ey to i64
  %i.fa = mul nsw i64 %indvars.iv, %i.ez
  %i.fb = add nsw i64 %i.fa, %indvars.iv.i
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !1418
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !1419
  %i.ff = mul i64 %i.fb, %i.fe
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ff
  store float %i.ev, ptr %i.fg, align 4, !tbaa !65
  %i.fh = add nuw i64 %.05779.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fh, %i.dg
  br i1 %exitcond.not.i, label %.loopexit.i, label %.from.46, !llvm.loop !1404

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.from.43
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.from.43.epil.preheader

.from.43.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.from..lr.ph81.i
  %.05680.i.epil.init = phi i64 [ 0, %.from..lr.ph81.i ], [ %i.cd, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod74)
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.05680.i.epil.init ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !185
  %i.fl = sext i32 %i.fk to i64
  %i.fm = mul nsw i64 %indvars.iv, %i.fl
  %i.fn = add nsw i64 %i.fm, %indvars.iv.i
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !1418
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !1419
  %i.fr = mul i64 %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fr
  store float 0.000000e+00, ptr %i.fs, align 4, !tbaa !65
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.from.46, %.from.43.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond90.not.i, label %"_ZZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEiENK3$_2clEi.exit.loopexit", label %bb.g, !llvm.loop !1405

"_ZZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEiENK3$_2clEi.exit.loopexit": ; preds = %.loopexit.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.from..lr.ph84.i, !llvm.loop !1406

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge.split
  %i.ft = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = atomicrmw add ptr %i.fu, i32 -1 acq_rel, align 4 ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 1
  br i1 %i.fw, label %bb.m, label %_ZN3tev5Latch9countDownEv.exit.i

bb.m:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !160 ; 7 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !171
  %i.ga = and i32 %i.fz, 8
  %.not.i.i.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !172 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.gc, %i.ge
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.n
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 33
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.gc, %.from..lr.ph.i.i.i.i.i ], [ %i.gu, %.noexc2.i.i ] ; 2 uses
  %i.gj = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.gk = load i8, ptr %i.gf, align 8             ; 2 uses
  %i.gl = trunc i8 %i.gk to i1                    ; 2 uses
  %i.gm = load ptr, ptr %i.gg, align 8
  %i.gn = select i1 %i.gl, ptr %i.gm, ptr %i.gh
  %i.go = load i64, ptr %i.gi, align 8
  %i.gp = lshr i8 %i.gk, 1
  %i.gq = zext nneg i8 %i.gp to i64
  %i.gr = select i1 %i.gl, i64 %i.go, i64 %i.gq
  %i.gs = load ptr, ptr %i.gj, align 8, !tbaa !68
  %i.gt = load ptr, ptr %i.gs, align 8
  invoke void %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr %i.gn, i64 %i.gr, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gu, %i.ge
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

.from..loopexit.split-lp.i.i:                     ; preds = %bb.m
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.o:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.gv = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.gv) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.gw = icmp slt i32 %i.fv, 2
  br i1 %i.gw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.n, %_ZN3tev5Latch9countDownEv.exit.i
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !143 ; 2 uses
  %i.gz = inttoptr i64 %i.gy to ptr               ; 3 uses
  store ptr %i.gz, ptr %.reload.addr, align 8
  %.not.i20 = icmp eq i64 %i.gy, 0
  br i1 %.not.i20, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr58 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i1 false, ptr %index.addr58, align 8
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr nonnull %i.gz)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.hb = load ptr, ptr %i.h, align 8, !tbaa !142 ; 5 uses
  %.not.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = atomicrmw add ptr %i.hc, i64 -1 acq_rel, align 8
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !68
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(24) %i.hb) #31, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hb) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.p, %bb.q
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr57) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #31
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.51, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.51 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #31
  resume { ptr, i32 } %.merged18
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nounwind
declare void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #25

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !413
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]  ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !411
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -8
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.530", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3tev17CompoundException12buildMessageENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr %1, i64 %2)
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %4, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.e = load i64, ptr %4, align 8
  %i.f = and i64 %i.e, -2
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.f) #33
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev17CompoundExceptionE, i64 16), ptr %0, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.idx8 = shl nuw nsw i64 %2, 3                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.g, ptr %3, align 8, !tbaa !1426, !alias.scope !1427
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !438, !alias.scope !1427
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx8) #32
          to label %bb.d unwind label %.body      ; 6 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !412
  store ptr %i.l, ptr %i.i, align 8, !tbaa !411
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx8
  store ptr %i.m, ptr %i.j, align 8, !tbaa !413
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.026.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %1, %bb.d ] ; 2 uses
  %.02325.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.02325.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.026.i.i.i.i.i) #31
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02325.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1425

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.i, align 8, !tbaa !411
  br label %bb.e

.body:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.f:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i8, ptr %4, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !119
  %i.z = load i64, ptr %4, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #33
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.h

bb.h:                                             ; preds = %.body, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.t, %.body ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !412  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #31
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIiLm2EEERS4_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %common.resume
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi.resume(ptr nofree nonnull readnone align 16 captures(none) %0) #29 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi.destroy(ptr noundef nonnull align 16 dereferenceable(160) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !142 ; 5 uses
  %.not.i.i95 = icmp eq ptr %i.b, null
  br i1 %.not.i.i95, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31, !inline_history !4
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr306 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr306) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #4 personality ptr @__gxx_personality_v0 {
resume.0:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.041.064.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %index.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.j
  store ptr %i.at, ptr %.sroa.041.064.reload.addr136, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !171
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !172  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !173  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.o, %.from..lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc2.i.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.from..loopexit.split-lp.i.i:                     ; preds = %bb.b
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ah = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i1 false, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !406
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #31
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !406 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !406 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #31 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #31
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #31
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !406 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !406
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #31
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.ac

.from.104:                                        ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %.from.104 ], [ %i.au, %bb.k ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !411
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #31
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #34
          to label %bb.m unwind label %.loopexit52.from.115

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit52.from.115:                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #31
  br label %.loopexit52

bb.n:                                             ; preds = %._crit_edge
  %i.bc = icmp ugt i64 %i.ay, 8
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 40) #31 ; 3 uses
  %i.be = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 2 uses
  %i.bf = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !411
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr %i.be, i64 %i.bj)
          to label %bb.p unwind label %.loopexit52.from.113

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #34
          to label %bb.ad unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #31
  br label %.loopexit52

.loopexit52.from.111:                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  br label %.loopexit52

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #36
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.q
  %i.bq = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.br = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !411 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.br, %bb.s ]
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #31
  %.not.i.i.i.i24 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !412
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.bt = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  store ptr %i.bq, ptr %.phi.trans.insert, align 8, !tbaa !411
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !413
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #33
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.g, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115, %.loopexit52.from.110
  %.213 = phi ptr [ %i.bb, %.loopexit52.from.115 ], [ %i.bn, %.loopexit52.from.111 ], [ %i.bl, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.an, %bb.g ]
  tail call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #31
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %.213) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !141
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.u:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !160 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !171
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i30, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.v:                                             ; preds = %.noexc.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !172 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not12.i.i.i.i.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i32

.from..lr.ph.i.i.i.i.i32:                         ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  br label %.from..noexc2.i.i36

.from..noexc2.i.i36:                              ; preds = %.noexc2.i.i36, %.from..lr.ph.i.i.i.i.i32
  %.sroa.09.013.i.i.i.i.i33 = phi ptr [ %i.ck, %.from..lr.ph.i.i.i.i.i32 ], [ %i.dc, %.noexc2.i.i36 ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !176 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !68
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !3

.noexc2.i.i36:                                    ; preds = %.from..noexc2.i.i36
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dc, %i.cm
  br i1 %.not.i.i.i.i.i37, label %_ZN3tev5Latch9countDownEv.exit.i25, label %.from..noexc2.i.i36

.from..loopexit.i.i34:                            ; preds = %.from..noexc2.i.i36
  %lpad.loopexit.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.from..loopexit.split-lp.i.i26:                   ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i27 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.w:                                             ; preds = %.from..loopexit.split-lp.i.i26, %.from..loopexit.i.i34
  %lpad.phi.i.i28 = phi { ptr, i32 } [ %lpad.loopexit.i.i35, %.from..loopexit.i.i34 ], [ %lpad.loopexit.split-lp.i.i27, %.from..loopexit.split-lp.i.i26 ]
  %i.dd = extractvalue { ptr, i32 } %lpad.phi.i.i28, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.de = icmp slt i32 %i.cd, 2
  br i1 %i.de, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %bb.v, %.noexc.i.i29
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !141
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !143 ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  store ptr %i.dh, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.dg, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i1 true, ptr %index.addr143, align 8
  %i.di = load ptr, ptr %i.dh, align 8
  musttail call void %i.di(ptr nonnull %i.dh)
  ret void

bb.y:                                             ; preds = %.loopexit52
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

.from.124:                                        ; preds = %bb.t
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !142 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !68
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aa, %bb.z, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #31
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.y, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.dk, %.from.124 ], [ %i.dj, %bb.y ]
  store ptr null, ptr %0, align 8
  store i1 true, ptr %index.addr143, align 8
  resume { ptr, i32 } %.pn18

bb.ac:                                            ; preds = %bb.y, %bb.k
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  tail call void @__clang_call_terminate(ptr %i.du) #36
  unreachable

bb.ad:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy(ptr noundef nonnull align 8 dereferenceable(104) %0) #6 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !1443

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr138, align 8, !tbaa !412 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !411  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #31
  %.not.i.i.i.i24 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !412
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !411
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !413
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #33
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %resume.entry
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !142  ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.l, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.resume"(ptr nofree nonnull readnone align 8 captures(none) %0) #30 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.destroy"(ptr noundef nonnull align 8 dereferenceable(56) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr57 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr57) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_iENKUlvE_clEv.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !7

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !171
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !172  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 2 uses
  %.not12.i.i.i.i.i21 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i22

.from..lr.ph.i.i.i.i.i22:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i26

.from..noexc2.i.i26:                              ; preds = %.noexc2.i.i26, %.from..lr.ph.i.i.i.i.i22
  %.sroa.09.013.i.i.i.i.i23 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i22 ], [ %i.aj, %.noexc2.i.i26 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !176 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !3

.noexc2.i.i26:                                    ; preds = %.from..noexc2.i.i26
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i27, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i26

.from..loopexit.i.i24:                            ; preds = %.from..noexc2.i.i26
  %lpad.loopexit.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i16:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i17 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i16, %.from..loopexit.i.i24
  %lpad.phi.i.i18 = phi { ptr, i32 } [ %lpad.loopexit.i.i25, %.from..loopexit.i.i24 ], [ %lpad.loopexit.split-lp.i.i17, %.from..loopexit.split-lp.i.i16 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i18, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.an = load i64, ptr %i.am, align 8, !tbaa !143 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.an, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr71, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.62:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !142 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #31
  ret void

bb.n:                                             ; preds = %bb.k, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.ar, %.from.62 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn9

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #36
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_iENKUlvE_clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !439

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSO_PS0_iE_clESO_ST_i.resume"(ptr noundef nonnull align 8 dereferenceable(96) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend51, !prof !1444

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_iENKUlvE_clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.37") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr78)
          to label %bb.a unwind label %.from.64

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave49

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread35.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !160  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !171
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread35.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !173  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not12.i.i.i.i.i, label %.thread35.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.p, %.from..lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc2.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !3

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i.i, label %.thread35.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

.from..loopexit.split-lp.i.i:                     ; preds = %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

bb.e:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #36
  unreachable

AfterCoroSave49:                                  ; preds = %bb.a
  store i2 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %0) #31
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend51

.from.64:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread35, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend51
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread35.sink.split unwind label %.from.62, !inline_history !7

.thread35.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !216
  br label %.thread35

.thread35:                                        ; preds = %.thread35.sink.split, %AfterCoroSuspend51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.62

bb.g:                                             ; preds = %.thread35
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr81)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #36
  unreachable

.from.62:                                         ; preds = %bb.f, %.thread35
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  br label %bb.i

bb.i:                                             ; preds = %.from.62, %.from.64
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.62 ], [ %i.ak, %.from.64 ]
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.09) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.72

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !141
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i20

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i24 unwind label %.from..loopexit.split-lp.i.i21

.noexc.i.i24:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !171
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !172 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i26 = icmp eq ptr %i.bc, %i.be
  br i1 %.not12.i.i.i.i.i26, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i27

.from..lr.ph.i.i.i.i.i27:                         ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  br label %.from..noexc2.i.i31

.from..noexc2.i.i31:                              ; preds = %.noexc2.i.i31, %.from..lr.ph.i.i.i.i.i27
  %.sroa.09.013.i.i.i.i.i28 = phi ptr [ %i.bc, %.from..lr.ph.i.i.i.i.i27 ], [ %i.bu, %.noexc2.i.i31 ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i28, align 8, !tbaa !176 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !68
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i31 unwind label %.from..loopexit.i.i29, !inline_history !3

.noexc2.i.i31:                                    ; preds = %.from..noexc2.i.i31
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i28, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i32, label %_ZN3tev5Latch9countDownEv.exit.i20, label %.from..noexc2.i.i31

.from..loopexit.i.i29:                            ; preds = %.from..noexc2.i.i31
  %lpad.loopexit.i.i30 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i21:                   ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i22 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i21, %.from..loopexit.i.i29
  %lpad.phi.i.i23 = phi { ptr, i32 } [ %lpad.loopexit.i.i30, %.from..loopexit.i.i29 ], [ %lpad.loopexit.split-lp.i.i22, %.from..loopexit.split-lp.i.i21 ]
  %i.bv = extractvalue { ptr, i32 } %lpad.phi.i.i23, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i20:               ; preds = %.noexc2.i.i31, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %bb.l, %.noexc.i.i24
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !141
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !143 ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  store ptr %i.bz, ptr %.reload.addr, align 8
  %.not.i33 = icmp eq i64 %i.by, 0
  br i1 %.not.i33, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  musttail call void %i.ca(ptr nonnull %i.bz)
  ret void

bb.o:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

.from.72:                                         ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !142 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !68
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #31
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSave49
  ret void

bb.r:                                             ; preds = %bb.o, %.from.72
  %.pn14 = phi { ptr, i32 } [ %i.cc, %.from.72 ], [ %i.cb, %bb.o ]
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn14

bb.s:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSO_PS0_iE_clESO_ST_i.destroy"(ptr noundef nonnull align 8 dereferenceable(96) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !1445

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142  ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !7

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !171
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !172  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i26 ], [ %i.aj, %.noexc2.i.i30 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !176 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !3

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.an = load i64, ptr %i.am, align 8, !tbaa !143 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.an, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr76, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.66:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !142 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #31
  ret void

bb.n:                                             ; preds = %bb.k, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.ar, %.from.66 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn13

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_11ImageLoader19resizeChannelsAsyncENS3_4spanIKNS_7ChannelELm18446744073709551615EEENS8_IS9_Lm18446744073709551615EEERKNS3_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESL_S5_S5_mSM_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !439

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_i.resume"(ptr noundef nonnull align 16 dereferenceable(144) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr177, align 16, !tbaa !216 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !7

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr177, align 16, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #31
  %i.d = load ptr, ptr %.reload.addr178, align 8, !tbaa !404 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !401 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #31
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !404
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !401
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !402
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #33
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #36
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #31
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #31
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !160  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !171
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !172 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.ab, %.from..lr.ph.i.i.i.i.i65 ], [ %i.at, %.noexc2.i.i69 ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !176 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !68
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !3

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.au = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  tail call void @__clang_call_terminate(ptr %i.au) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !143 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  store ptr %i.ay, ptr %.reload.addr178, align 8
  %.not.i71 = icmp eq i64 %i.ax, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr183 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr183, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  musttail call void %i.az(ptr nonnull %i.ay)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.167:                                        ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !142 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !68
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #31
  ret void

bb.n:                                             ; preds = %bb.k, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.bb, %.from.167 ], [ %i.ba, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn44

bb.o:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_i.destroy"(ptr noundef nonnull align 16 dereferenceable(144) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !1446

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #31
  %i.a = load ptr, ptr %.reload.addr178, align 8, !tbaa !404 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !401 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #31
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !404
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !401
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !402
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #33
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !142 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_i.resume"(ptr noundef nonnull align 8 dereferenceable(144) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !216 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !7

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #31
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #31
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !171
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !172  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 2 uses
  %.not12.i.i.i.i.i29 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i29, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i30

.from..lr.ph.i.i.i.i.i30:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i34

.from..noexc2.i.i34:                              ; preds = %.noexc2.i.i34, %.from..lr.ph.i.i.i.i.i30
  %.sroa.09.013.i.i.i.i.i31 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i30 ], [ %i.aj, %.noexc2.i.i34 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !176 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !3

.noexc2.i.i34:                                    ; preds = %.from..noexc2.i.i34
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i35, label %_ZN3tev5Latch9countDownEv.exit.i23, label %.from..noexc2.i.i34

.from..loopexit.i.i32:                            ; preds = %.from..noexc2.i.i34
  %lpad.loopexit.i.i33 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i24:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i24, %.from..loopexit.i.i32
  %lpad.phi.i.i26 = phi { ptr, i32 } [ %lpad.loopexit.i.i33, %.from..loopexit.i.i32 ], [ %lpad.loopexit.split-lp.i.i25, %.from..loopexit.split-lp.i.i24 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i26, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.an = load i64, ptr %i.am, align 8, !tbaa !143 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr80, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.70:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !142 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #31
  ret void

bb.n:                                             ; preds = %bb.k, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.ar, %.from.70 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(144) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !439

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEi.resume(ptr noundef nonnull align 16 dereferenceable(336) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr455 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr458 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.reload.addr459 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.reload.addr467 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr455, align 16, !tbaa !216 ; 3 uses
  %.not.i136 = icmp eq ptr %.pr, null
  br i1 %.not.i136, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.f, !inline_history !7

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr455, align 16, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.f

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr455) #31
  %i.d = load ptr, ptr %.reload.addr459, align 16, !tbaa !211 ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.d, ptr %i.f, align 8, !tbaa !210
  %i.g = load ptr, ptr %i.e, align 16, !tbaa !212
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.j) #33
  br label %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %bb.c, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.k = load ptr, ptr %.reload.addr458, align 8, !tbaa !200 ; 4 uses
  %.not.i.i139 = icmp eq ptr %i.k, null
  br i1 %.not.i.i139, label %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.m, align 16, !tbaa !199
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !203
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.q) #33
  br label %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.d
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr467)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #36
  unreachable

bb.f:                                             ; preds = %.thread, %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr455) #31
  %i.u = load ptr, ptr %.reload.addr459, align 16, !tbaa !211 ; 4 uses
  %.not.i.i141 = icmp eq ptr %i.u, null
  br i1 %.not.i.i141, label %.body101, label %.body101.from.

.body101.from.:                                   ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.u, ptr %i.w, align 8, !tbaa !210
  %i.x = load ptr, ptr %i.v, align 16, !tbaa !212
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.aa) #33
  br label %.body101

.body101:                                         ; preds = %bb.f, %.body101.from.
  %i.ab = load ptr, ptr %.reload.addr458, align 8, !tbaa !200 ; 4 uses
  %.not.i.i143 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i143, label %.from..body53, label %.body53.from.

.body53.from.:                                    ; preds = %.body101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ab, ptr %i.ad, align 16, !tbaa !199
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !203
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ah) #33
  br label %.from..body53

.from..body53:                                    ; preds = %.body101, %.body53.from.
  %.10 = extractvalue { ptr, i32 } %i.t, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %.10) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr467)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %.from..body53
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.443

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.g, %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !141
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = atomicrmw add ptr %i.al, i32 -1 acq_rel, align 4 ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.h, label %_ZN3tev5Latch9countDownEv.exit.i145

bb.h:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i150 unwind label %.from..loopexit.split-lp.i.i147

.noexc.i.i150:                                    ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !160 ; 7 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !171
  %i.ar = and i32 %i.aq, 8
  %.not.i.i.i.i151 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i151, label %bb.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.i:                                             ; preds = %.noexc.i.i150
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !172 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i152 = icmp eq ptr %i.at, %i.av
  br i1 %.not12.i.i.i.i.i152, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i153

.from..lr.ph.i.i.i.i.i153:                        ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  br label %.from..noexc2.i.i157

.from..noexc2.i.i157:                             ; preds = %.noexc2.i.i157, %.from..lr.ph.i.i.i.i.i153
  %.sroa.09.013.i.i.i.i.i154 = phi ptr [ %i.at, %.from..lr.ph.i.i.i.i.i153 ], [ %i.bl, %.noexc2.i.i157 ] ; 2 uses
  %i.ba = load ptr, ptr %.sroa.09.013.i.i.i.i.i154, align 8, !tbaa !176 ; 2 uses
  %i.bb = load i8, ptr %i.aw, align 8             ; 2 uses
  %i.bc = trunc i8 %i.bb to i1                    ; 2 uses
  %i.bd = load ptr, ptr %i.ax, align 8
  %i.be = select i1 %i.bc, ptr %i.bd, ptr %i.ay
  %i.bf = load i64, ptr %i.az, align 8
  %i.bg = lshr i8 %i.bb, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = select i1 %i.bc, i64 %i.bf, i64 %i.bh
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr %i.be, i64 %i.bi, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i157 unwind label %.from..loopexit.i.i155, !inline_history !3

.noexc2.i.i157:                                   ; preds = %.from..noexc2.i.i157
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i154, i64 16 ; 2 uses
  %.not.i.i.i.i.i158 = icmp eq ptr %i.bl, %i.av
  br i1 %.not.i.i.i.i.i158, label %_ZN3tev5Latch9countDownEv.exit.i145, label %.from..noexc2.i.i157

.from..loopexit.i.i155:                           ; preds = %.from..noexc2.i.i157
  %lpad.loopexit.i.i156 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i147:                  ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i148 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i147, %.from..loopexit.i.i155
  %lpad.phi.i.i149 = phi { ptr, i32 } [ %lpad.loopexit.i.i156, %.from..loopexit.i.i155 ], [ %lpad.loopexit.split-lp.i.i148, %.from..loopexit.split-lp.i.i147 ]
  %i.bm = extractvalue { ptr, i32 } %lpad.phi.i.i149, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i145:              ; preds = %.noexc2.i.i157, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = icmp slt i32 %i.am, 2
  br i1 %i.bn, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i145, %bb.i, %.noexc.i.i150
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !141
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !143 ; 2 uses
  %i.bq = inttoptr i64 %i.bp to ptr               ; 3 uses
  store ptr %i.bq, ptr %.reload.addr458, align 8
  %.not.i159 = icmp eq i64 %i.bp, 0
  br i1 %.not.i159, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr469 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i1 true, ptr %index.addr469, align 16
  %i.br = load ptr, ptr %i.bq, align 8
  musttail call void %i.br(ptr nonnull %i.bq)
  ret void

bb.l:                                             ; preds = %.from..body53
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.from.443:                                        ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i145, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !142 ; 5 uses
  %.not.i.i160 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i160, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 acq_rel, align 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !68
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.bv) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bv) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.n, %bb.m, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr467) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #31
  ret void

bb.o:                                             ; preds = %bb.l, %.from.443
  %.pn39 = phi { ptr, i32 } [ %i.bt, %.from.443 ], [ %i.bs, %bb.l ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i1 true, ptr %index.addr1, align 16
  resume { ptr, i32 } %.pn39

bb.p:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEi.destroy(ptr noundef nonnull align 16 dereferenceable(336) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr458 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 320
  %index = load i1, ptr %index.addr, align 16
  br i1 %index, label %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !1447

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr459 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.reload.addr455 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr455) #31
  %i.a = load ptr, ptr %.reload.addr459, align 16, !tbaa !211 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.a, ptr %i.c, align 8, !tbaa !210
  %i.d = load ptr, ptr %i.b, align 16, !tbaa !212
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.g) #33
  br label %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.h = load ptr, ptr %.reload.addr458, align 8, !tbaa !200 ; 4 uses
  %.not.i.i139 = icmp eq ptr %i.h, null
  br i1 %.not.i.i139, label %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.h, ptr %i.j, align 16, !tbaa !199
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !203
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.n) #33
  br label %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZNSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !142 ; 5 uses
  %.not.i.i160 = icmp eq ptr %i.p, null
  br i1 %.not.i.i160, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 -1 acq_rel, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.d, %bb.c, %_ZNSt3__16vectorIN3tev11ChannelViewIKfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %.reload.addr467 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr467) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev11ImageLoader15resizeImageDataERNS_9ImageDataEN7nanogui5ArrayIiLm2EEERKNSt3__18optionalINS_3BoxIiLj2EEEEEi.resume(ptr noundef nonnull align 8 dereferenceable(184) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr137 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr136, align 8, !tbaa !216 ; 3 uses
  %.not.i28 = icmp eq ptr %.pr, null
  br i1 %.not.i28, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.j, !inline_history !7

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr136, align 8, !tbaa !216
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %.thread
  %.reload.addr133 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %.reload134 = load ptr, ptr %.reload.addr133, align 8, !tbaa !224
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr136) #31
  %i.d = load ptr, ptr %.reload134, align 8, !tbaa !158 ; 5 uses
  %.not.i.i48 = icmp eq ptr %i.d, null
  br i1 %.not.i.i48, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.reload = load ptr, ptr %.reload.addr133, align 8, !tbaa !224 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.reload, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155  ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.g, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.f, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148  ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i49
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 -1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #31, !inline_history !9
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #31
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i49
  %i.p = load i8, ptr %i.g, align 8
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.t = load i64, ptr %i.g, align 8
  %i.u = and i64 %i.t, -2
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.u) #33
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i50 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i.i50, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i49

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload132 = load ptr, ptr %.reload.addr133, align 8, !tbaa !224 ; 2 uses
  %.pre.i.i = load ptr, ptr %.reload132, align 8, !tbaa !158
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.d, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %.reload130 = phi ptr [ %.reload132, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %.reload, %bb.d ] ; 3 uses
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.reload130, i64 8
  store ptr %i.d, ptr %i.w, align 8, !tbaa !155
  %i.x = getelementptr inbounds nuw i8, ptr %.reload130, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.ab) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload130, i8 0, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, %bb.c
  %.reload128 = load ptr, ptr %.reload.addr133, align 8, !tbaa !224 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load <2 x ptr>, ptr %.reload.addr137, align 8, !tbaa !156
  store <2 x ptr> %i.ad, ptr %.reload128, align 8, !tbaa !156
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !156
  %i.af = getelementptr inbounds nuw i8, ptr %.reload128, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !156
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable

bb.j:                                             ; preds = %.thread, %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr136) #31
  tail call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr137) #31
  %.215 = extractvalue { ptr, i32 } %i.ai, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.215) #31 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32 unwind label %.from.119

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32: ; preds = %bb.k, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !141
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_ZN3tev5Latch9countDownEv.exit.i33

bb.l:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i37 unwind label %.from..loopexit.split-lp.i.i34

.noexc.i.i37:                                     ; preds = %bb.l
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 7 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !171
  %i.as = and i32 %i.ar, 8
  %.not.i.i.i.i38 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i38, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.m:                                             ; preds = %.noexc.i.i37
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !172 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !173 ; 2 uses
  %.not12.i.i.i.i.i39 = icmp eq ptr %i.au, %i.aw
  br i1 %.not12.i.i.i.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i40

.from..lr.ph.i.i.i.i.i40:                         ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  br label %.from..noexc2.i.i44

.from..noexc2.i.i44:                              ; preds = %.noexc2.i.i44, %.from..lr.ph.i.i.i.i.i40
  %.sroa.09.013.i.i.i.i.i41 = phi ptr [ %i.au, %.from..lr.ph.i.i.i.i.i40 ], [ %i.bm, %.noexc2.i.i44 ] ; 2 uses
  %i.bb = load ptr, ptr %.sroa.09.013.i.i.i.i.i41, align 8, !tbaa !176 ; 2 uses
  %i.bc = load i8, ptr %i.ax, align 8             ; 2 uses
  %i.bd = trunc i8 %i.bc to i1                    ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8
  %i.bf = select i1 %i.bd, ptr %i.be, ptr %i.az
  %i.bg = load i64, ptr %i.ba, align 8
  %i.bh = lshr i8 %i.bc, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = select i1 %i.bd, i64 %i.bg, i64 %i.bi
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !68
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr %i.bf, i64 %i.bj, i32 noundef 8, ptr nonnull @.str.109, i64 36)
          to label %.noexc2.i.i44 unwind label %.from..loopexit.i.i42, !inline_history !3

.noexc2.i.i44:                                    ; preds = %.from..noexc2.i.i44
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i41, i64 16 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i.i.i.i45, label %_ZN3tev5Latch9countDownEv.exit.i33, label %.from..noexc2.i.i44

.from..loopexit.i.i42:                            ; preds = %.from..noexc2.i.i44
  %lpad.loopexit.i.i43 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

.from..loopexit.split-lp.i.i34:                   ; preds = %bb.l
  %lpad.loopexit.split-lp.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.n:                                             ; preds = %.from..loopexit.split-lp.i.i34, %.from..loopexit.i.i42
  %lpad.phi.i.i36 = phi { ptr, i32 } [ %lpad.loopexit.i.i43, %.from..loopexit.i.i42 ], [ %lpad.loopexit.split-lp.i.i35, %.from..loopexit.split-lp.i.i34 ]
  %i.bn = extractvalue { ptr, i32 } %lpad.phi.i.i36, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #36
  unreachable

_ZN3tev5Latch9countDownEv.exit.i33:               ; preds = %.noexc2.i.i44, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit32
  %i.bo = icmp slt i32 %i.an, 2
  br i1 %i.bo, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i33, %bb.m, %.noexc.i.i37
  %i.bp = load ptr, ptr %i.ak, align 8, !tbaa !141
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !143 ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 3 uses
  store ptr %i.br, ptr %.reload.addr137, align 8
  %.not.i46 = icmp eq i64 %i.bq, 0
  br i1 %.not.i46, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i1 true, ptr %index.addr144, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  musttail call void %i.bs(ptr nonnull %i.br)
  ret void

bb.p:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

.from.119:                                        ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i33, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !142 ; 5 uses
  %.not.i.i47 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i47, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = atomicrmw add ptr %i.bx, i64 -1 acq_rel, align 8
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.r, %bb.q, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #31
  ret void

bb.s:                                             ; preds = %bb.p, %.from.119
  %.pn19 = phi { ptr, i32 } [ %i.bu, %.from.119 ], [ %i.bt, %bb.p ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn19

bb.t:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev11ImageLoader15resizeImageDataERNS_9ImageDataEN7nanogui5ArrayIiLm2EEERKNSt3__18optionalINS_3BoxIiLj2EEEEEi.destroy(ptr noundef nonnull align 8 dereferenceable(184) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr137 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit.thread87, label %AfterCoroSuspend, !prof !1448

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr136) #31
  %.pr59 = load ptr, ptr %.reload.addr137, align 8, !tbaa !158 ; 5 uses
  %.not.i.i = icmp eq ptr %.pr59, null
  br i1 %.not.i.i, label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit.thread87, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %.pr59, %i.b
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.c, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -72 ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148  ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 -1 acq_rel, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #31, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #31
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i
  %i.l = load i8, ptr %i.c, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.p = load i64, ptr %i.c, align 8
  %i.q = and i64 %i.p, -2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.q) #33
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.d, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i31 = icmp eq ptr %.pr59, %i.c
  br i1 %.not.i.i.i.i31, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr137, align 8, !tbaa !158
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.r = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %.pr59, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.pr59, ptr %i.a, align 8, !tbaa !155
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !156
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.w) #33
  br label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit.thread87

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit.thread87: ; preds = %resume.entry, %AfterCoroSuspend, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !142  ; 5 uses
  %.not.i.i47 = icmp eq ptr %i.y, null
  br i1 %.not.i.i47, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit.thread87
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = atomicrmw add ptr %i.z, i64 -1 acq_rel, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #31, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #31
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.f, %bb.e, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit.thread87
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #31
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind memory(none) }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn }
attributes #35 = { allocsize(0) }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind allocsize(0) }

!llvm.module.flags = !{!54, !55, !56, !57}
!llvm.ident = !{!58}
!llvm.errno.tbaa = !{!63}

!0 = distinct !{null}
!1 = distinct !{ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!2 = distinct !{ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev, null, null, null, null, null, ptr @_ZN3tev7ChannelD2Ev, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!3 = distinct !{null}
!4 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_7ChannelENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!5 = distinct !{null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{null}
!8 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!9 = distinct !{null, null, null, null, null, null, null, ptr @_ZN3tev7ChannelD2Ev, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!10 = distinct !{!10, !157}
!11 = distinct !{null, null, null, null, null, null, null, null, null}
!12 = distinct !{null, null}
!13 = distinct !{!13, !157}
!14 = distinct !{!14, !157}
!15 = distinct !{!15, !157}
!16 = distinct !{null, null}
!17 = distinct !{null, null, null}
!18 = distinct !{null, null}
!19 = distinct !{!19, !157}
!20 = distinct !{!20, !157}
!21 = distinct !{!21, !157}
!22 = distinct !{!22, !157}
!23 = distinct !{null, null}
!24 = distinct !{null, null}
!25 = distinct !{!25, !157}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{!28, !157}
!29 = distinct !{!29, !157}
!30 = distinct !{!30, !157}
!31 = distinct !{null, null, null, null}
!32 = distinct !{!32, !157}
!33 = distinct !{null, null}
!34 = distinct !{null}
!35 = distinct !{null, null}
!36 = distinct !{!36, !157}
!37 = distinct !{!37, !157}
!38 = distinct !{!38, !157}
!39 = distinct !{null}
!40 = distinct !{null, null, null, null}
!41 = distinct !{null, null, null}
!42 = distinct !{null}
!43 = distinct !{!43, !157}
!44 = distinct !{!44, !157}
!45 = distinct !{null, null, null, null}
!46 = distinct !{null, null, null, null, null}
!47 = distinct !{!47, !157}
!48 = distinct !{ptr @_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEED2Ev, null, null, null, null, null, ptr @_ZN3tev7ChannelD2Ev, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!49 = distinct !{!49, !157}
!50 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!51 = distinct !{null, null, null}
!52 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!53 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!54 = !{i32 1, !"long-double-type", !"x86_fp80"}
!55 = !{i32 8, !"PIC Level", i32 2}
!56 = !{i32 7, !"PIE Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 2}
!58 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
end_hunk_5
begin_hunk_6_@llvm.fmuladd.v2f32
!239 = !{!238, !238, i64 0}
!240 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !238, i64 0, !60, i64 8}
!241 = !{!240, !238, i64 0}
!242 = !{!"_ZTSN3fmt3v1211basic_specsE", !61, i64 0, !60, i64 4}
!243 = !{!242, !61, i64 0}
!244 = !{!"_ZTSN3fmt3v1212format_specsE", !242, i64 0, !61, i64 8, !61, i64 12}
!245 = !{!244, !61, i64 12}
!246 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !127, i64 0, !61, i64 8}
!247 = !{!246, !127, i64 0}
!248 = !{!246, !61, i64 8}
!249 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !69, i64 0}
!250 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !249, i64 0, !61, i64 8}
!251 = !{!250, !61, i64 8}
!252 = !{!"llvm.loop.isvectorized", i32 1}
!253 = !{!"llvm.loop.unroll.runtime.disable"}
!254 = !{!"branch_weights", i32 4, i32 28}
!255 = !{!"llvm.loop.unroll.disable"}
!256 = !{ptr @_ZN3fmt3v1212format_facetINSt3__16localeEED2Ev}
!257 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !213, i64 0, !60, i64 1}
!258 = !{!257, !213, i64 0}
!259 = !{!257, !60, i64 1}
!260 = !{!244, !61, i64 8}
!261 = !{i64 0, i64 24, !119}
!262 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !69, i64 0}
!263 = !{!262, !262, i64 0}
!264 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !60, i64 0}
!265 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !264, i64 0, !231, i64 16}
!266 = !{!265, !231, i64 16}
!267 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !233, i64 0}
!268 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !267, i64 0, !262, i64 8, !169, i64 16, !169, i64 40, !169, i64 64}
!269 = !{!268, !262, i64 8}
!270 = !{i64 4}
!271 = !{!"p1 int", !69, i64 0}
!272 = !{!271, !271, i64 0}
!273 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !69, i64 0}
!274 = !{!273, !273, i64 0}
!275 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !69, i64 0}
!276 = !{!275, !275, i64 0}
!277 = !{i64 8}
!278 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !131, i64 0, !131, i64 8, !61, i64 16}
!279 = !{!278, !131, i64 0}
!280 = !{!278, !131, i64 8}
!281 = !{!278, !61, i64 16}
!282 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !271, i64 0, !127, i64 8, !127, i64 16, !69, i64 24}
!283 = !{!282, !271, i64 0}
!284 = !{!282, !127, i64 16}
!285 = !{!282, !127, i64 8}
!286 = !{!235, !131, i64 0}
!287 = !{!235, !127, i64 8}
!288 = !{!"_ZTSN3fmt3v124signE", !60, i64 0}
!289 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !288, i64 0, !131, i64 8}
!290 = !{!289, !288, i64 0}
!291 = !{!289, !131, i64 8}
!292 = !{!288, !288, i64 0}
!293 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !61, i64 0, !61, i64 4}
!294 = !{!293, !61, i64 4}
!295 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !69, i64 0}
!296 = !{!295, !295, i64 0}
!297 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !69, i64 0}
!298 = !{!297, !297, i64 0}
!299 = !{!213, !213, i64 0}
!300 = !{!"p1 bool", !69, i64 0}
!301 = !{!300, !300, i64 0}
!302 = !{!293, !61, i64 0}
!303 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !127, i64 0, !61, i64 8}
!304 = !{!303, !61, i64 8}
!305 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !69, i64 0}
!306 = !{!305, !305, i64 0}
!307 = !{!303, !127, i64 0}
!308 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !131, i64 0, !61, i64 8, !61, i64 12}
!309 = !{!308, !131, i64 0}
!310 = !{!308, !61, i64 8}
!311 = !{!308, !61, i64 12}
!312 = !{!"__int128", !60, i64 0}
!313 = !{!312, !312, i64 0}
!314 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !271, i64 0, !127, i64 8, !127, i64 16, !69, i64 24}
!315 = !{!314, !69, i64 24}
!316 = !{!314, !271, i64 0}
!317 = !{!314, !127, i64 16}
!318 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !314, i64 0, !60, i64 32}
!319 = !{!"_ZTSN3fmt3v126detail6bigintE", !318, i64 0, !61, i64 160}
!320 = !{!319, !61, i64 160}
!321 = !{!314, !127, i64 8}
!322 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !288, i64 0, !308, i64 8, !61, i64 24, !60, i64 28, !61, i64 32, !60, i64 36, !61, i64 40}
!323 = !{!322, !288, i64 0}
!324 = !{!322, !61, i64 24}
!325 = !{!322, !60, i64 28}
!326 = !{!322, !61, i64 32}
!327 = !{!322, !60, i64 36}
!328 = !{!322, !61, i64 40}
!329 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !69, i64 0}
!330 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !169, i64 0, !60, i64 24}
!331 = !{!330, !60, i64 24}
!332 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !69, i64 0}
!333 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !332, i64 0, !127, i64 8}
!334 = !{!333, !127, i64 8}
!335 = !{!333, !332, i64 0}
!336 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !131, i64 0, !61, i64 8}
!337 = !{!336, !131, i64 0}
!338 = !{!336, !61, i64 8}
!339 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !60, i64 0}
!340 = !{!339, !339, i64 0}
!341 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !69, i64 0}
!342 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !69, i64 0}
!343 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !288, i64 0, !303, i64 8, !61, i64 24, !60, i64 28, !61, i64 32, !60, i64 36, !61, i64 40}
!344 = !{!343, !288, i64 0}
!345 = !{!343, !61, i64 24}
!346 = !{!343, !60, i64 28}
!347 = !{!343, !61, i64 32}
!348 = !{!343, !60, i64 36}
!349 = !{!343, !61, i64 40}
!350 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !69, i64 0}
!351 = !{!350, !350, i64 0}
!352 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !213, i64 0, !127, i64 8, !235, i64 16}
!353 = !{!352, !213, i64 0}
!354 = !{!352, !127, i64 8}
!355 = !{!"branch_weights", i32 8, i32 24}
!356 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !226, i64 0, !60, i64 32, !127, i64 288}
!357 = !{!356, !127, i64 288}
!358 = !{!"p1 _ZTSNSt3__19allocatorIN3tev7ChannelEEE", !69, i64 0}
!359 = !{!358, !358, i64 0}
!360 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorIN3tev7ChannelEEELi1ELb0EEE", !358, i64 0}
!361 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev7ChannelERNS_9allocatorIS2_EEEE", !152, i64 0, !360, i64 8}
!362 = !{!"_ZTSNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEEE", !151, i64 0, !151, i64 8, !151, i64 16, !361, i64 24}
!363 = !{!362, !151, i64 0}
!364 = !{!362, !151, i64 16}
!365 = !{!362, !151, i64 8}
!366 = !{!"p1 _ZTSN4tlog13ConsoleOutputE", !69, i64 0}
!367 = !{!"_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEEE", !366, i64 0, !139, i64 8}
!368 = !{!367, !139, i64 8}
!369 = !{!175, !139, i64 8}
!370 = !{!"p1 _ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !69, i64 0}
!371 = !{!370, !370, i64 0}
!372 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorE", !370, i64 0}
!373 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEE", !372, i64 0, !213, i64 8}
!374 = !{!373, !213, i64 8}
!375 = !{!162, !162, i64 0}
!376 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !69, i64 0}
!377 = !{!"_ZTSN4tlog7IOutputE"}
!378 = !{!"_ZTSN4tlog13ConsoleOutputE", !377, i64 0, !213, i64 8, !376, i64 16, !179, i64 24}
!379 = !{!378, !213, i64 8}
!380 = !{!"any p2 pointer", !69, i64 0}
!381 = !{!"_ZTSNSt3__18ios_baseE", !61, i64 8, !127, i64 16, !127, i64 24, !61, i64 32, !61, i64 36, !69, i64 40, !69, i64 48, !380, i64 56, !271, i64 64, !127, i64 72, !127, i64 80, !219, i64 88, !127, i64 96, !127, i64 104, !380, i64 112, !127, i64 120, !127, i64 128}
!382 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !381, i64 0, !376, i64 136, !61, i64 144}
!383 = !{!382, !61, i64 144}
!384 = !{!"p1 _ZTSNSt3__16locale5__impE", !69, i64 0}
!385 = !{!"_ZTSNSt3__16localeE", !384, i64 0}
!386 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !385, i64 8, !131, i64 16, !131, i64 24, !131, i64 32, !131, i64 40, !131, i64 48, !131, i64 56}
!387 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !386, i64 0, !169, i64 64, !131, i64 88, !61, i64 96}
!388 = !{!387, !61, i64 96}
!389 = !{!387, !131, i64 88}
!390 = !{!386, !131, i64 48}
!391 = !{!386, !131, i64 32}
!392 = !{!"_ZTSSt9type_info", !131, i64 8}
!393 = !{!392, !131, i64 8}
!394 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS7_IS8_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESK_S4_S4_mSL_iEUlvE_", !61, i64 0, !61, i64 4, !69, i64 8}
!395 = !{!394, !61, i64 0}
!396 = !{!394, !61, i64 4}
!397 = !{!"p1 _ZTSN3tev4TaskIvEE", !69, i64 0}
!398 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev4TaskIvEELi0ELb0EEE", !397, i64 0}
!399 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev4TaskIvEENS_9allocatorIS3_EEEE", !398, i64 0}
!400 = !{!"_ZTSNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEEE", !397, i64 0, !397, i64 8, !399, i64 16}
!401 = !{!400, !397, i64 8}
!402 = !{!397, !397, i64 0}
!403 = !{!139, !139, i64 0}
!404 = !{!400, !397, i64 0}
!405 = !{!"_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.Frame Slot", !59, i64 0}
!406 = !{!405, !405, i64 0}
!407 = !{!"p1 _ZTSSt13exception_ptr", !69, i64 0}
!408 = !{!"_ZTSNSt3__122__compressed_pair_elemIPSt13exception_ptrLi0ELb0EEE", !407, i64 0}
!409 = !{!"_ZTSNSt3__117__compressed_pairIPSt13exception_ptrNS_9allocatorIS1_EEEE", !408, i64 0}
!410 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !407, i64 0, !407, i64 8, !409, i64 16}
!411 = !{!410, !407, i64 8}
!412 = !{!410, !407, i64 0}
!413 = !{!407, !407, i64 0}
!414 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !60, i64 0}
!415 = !{!"p1 _ZTSNSt3__120__packaged_task_baseIFvvEEE", !69, i64 0}
!416 = !{!"_ZTSNSt3__124__packaged_task_functionIFvvEEE", !414, i64 0, !415, i64 32}
!417 = !{!416, !415, i64 32}
!418 = !{!"p1 _ZTSNSt3__113packaged_taskIFvvEEE", !69, i64 0}
!419 = !{!"_ZTSNSt3__110shared_ptrINS_13packaged_taskIFvvEEEEE", !418, i64 0, !139, i64 8}
!420 = !{!419, !418, i64 0}
!421 = !{!419, !139, i64 8}
!422 = !{!"p1 _ZTSN3tev10ThreadPool10QueuedTaskE", !69, i64 0}
!423 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10ThreadPool10QueuedTaskELi0ELb0EEE", !422, i64 0}
!424 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !423, i64 0}
!425 = !{!"_ZTSNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !422, i64 0, !422, i64 8, !424, i64 16}
!426 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !69, i64 0}
!427 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !414, i64 0, !426, i64 32}
!428 = !{!427, !426, i64 32}
!429 = !{!"_ZTSNSt3__18functionIFvvEEE", !427, i64 0}
!430 = !{!"_ZTSN3tev10ThreadPool10QueuedTaskE", !429, i64 0, !61, i64 48, !213, i64 52}
!431 = !{!430, !61, i64 48}
!432 = !{!425, !422, i64 8}
!433 = !{!422, !422, i64 0}
!434 = !{!425, !422, i64 0}
!435 = !{!"p1 _ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !69, i64 0}
!436 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorE", !435, i64 0}
!437 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEE", !436, i64 0, !213, i64 8}
!438 = !{!437, !213, i64 8}
!439 = !{!"branch_weights", i32 -693363755, i32 -1546098377}
!440 = distinct !{null, null, null, null, null, null, null, null}
!441 = !{i64 0, i64 560, !119}
!442 = distinct !{!442, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!443 = distinct !{!443, !442, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!444 = distinct !{!444, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!445 = distinct !{!445, !444, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!446 = distinct !{!446, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!447 = distinct !{!447, !446, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!448 = distinct !{!448, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!449 = distinct !{!449, !448, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!450 = distinct !{!450, !"_ZNSt3__111make_sharedB8ne180100IN3tev11PixelBufferEJS2_EvEENS_10shared_ptrIT_EEDpOT0_"}
!451 = distinct !{!451, !450, !"_ZNSt3__111make_sharedB8ne180100IN3tev11PixelBufferEJS2_EvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!452 = distinct !{!452, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev11PixelBufferENS_9allocatorIS2_EEJS2_EvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!453 = distinct !{!453, !452, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev11PixelBufferENS_9allocatorIS2_EEJS2_EvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!454 = distinct !{!454, !"_ZNSt3__110shared_ptrIN3tev11PixelBufferEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!455 = distinct !{!455, !454, !"_ZNSt3__110shared_ptrIN3tev11PixelBufferEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!456 = distinct !{null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!457 = distinct !{!457, !157}
!458 = distinct !{null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!459 = distinct !{!459, !157}
!460 = !{!443}
!461 = !{!445}
!462 = !{!445, !443}
!463 = !{!447, !445, !443}
!464 = !{!449}
!465 = !{!451}
!466 = !{!453}
!467 = !{!453, !451}
!468 = !{!144, !69, i64 0}
!469 = !{!455, !453, !451}
!470 = distinct !{!470, !"_ZNSt3__17promiseINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE10get_futureEv"}
!471 = distinct !{!471, !470, !"_ZNSt3__17promiseINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE10get_futureEv: argument 0"}
!472 = !{!471}
!473 = distinct !{!473, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!474 = distinct !{!474, !473, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!475 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!476 = !{!474}
!477 = !{!190, !127, i64 16}
!478 = !{!190, !127, i64 24}
!479 = distinct !{null, null, null, null, null, ptr @_ZN3tev7ChannelD2Ev, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!480 = distinct !{null, null}
!481 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskINS_6vectorINS1_7ChannelENS_9allocatorIS5_EEEEEES8_EEEE", !69, i64 0}
!482 = !{!481, !69, i64 0}
!483 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!484 = distinct !{!484, !157}
!485 = distinct !{!485, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!486 = distinct !{!486, !485, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!487 = distinct !{!487, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!488 = distinct !{!488, !487, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!489 = distinct !{!489, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!490 = distinct !{!490, !489, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!491 = distinct !{!491, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!492 = distinct !{!492, !491, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!493 = distinct !{!493, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!494 = distinct !{!494, !493, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!495 = distinct !{!495, !"_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanIKNS_7ChannelELm18446744073709551615EEEZNS_11ImageLoader19resizeChannelsAsyncES8_NS5_IS6_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_0EEEEDaOT_NS0_12to_vector_fnINS2_6vectorEEE"}
!496 = distinct !{!496, !495, !"_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanIKNS_7ChannelELm18446744073709551615EEEZNS_11ImageLoader19resizeChannelsAsyncES8_NS5_IS6_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_0EEEEDaOT_NS0_12to_vector_fnINS2_6vectorEEE: argument 0"}
!497 = distinct !{!497, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEES8_S8_EENS_4pairIT0_T2_EESA_T1_SB_"}
!498 = distinct !{!498, !497, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEES8_S8_EENS_4pairIT0_T2_EESA_T1_SB_: argument 0"}
!499 = distinct !{!499, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESB_SB_EENS_4pairIT2_T4_EESD_T3_SE_"}
!500 = distinct !{!500, !499, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESB_SB_EENS_4pairIT2_T4_EESD_T3_SE_: argument 0"}
!501 = distinct !{!501, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESD_SD_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISF_SH_EESF_SG_SH_"}
!502 = distinct !{!502, !501, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESD_SD_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISF_SH_EESF_SG_SH_: argument 0"}
!503 = distinct !{!503, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESA_SA_EENS_4pairIT_T1_EESC_T0_SD_"}
!504 = distinct !{!504, !503, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESA_SA_EENS_4pairIT_T1_EESC_T0_SD_: argument 0"}
!505 = distinct !{!505, !157}
!506 = distinct !{!506, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS_4spanIKN3tev7ChannelELm18446744073709551615EEEZNS3_11ImageLoader19resizeChannelsAsyncES6_NS2_IS4_Lm18446744073709551615EEERKNS_8optionalINS3_3BoxIiLj2EEEEEiE3$_0E10__iteratorILb0EEdeB8ne180100Ev"}
!507 = distinct !{!507, !506, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS_4spanIKN3tev7ChannelELm18446744073709551615EEEZNS3_11ImageLoader19resizeChannelsAsyncES6_NS2_IS4_Lm18446744073709551615EEERKNS_8optionalINS3_3BoxIiLj2EEEEEiE3$_0E10__iteratorILb0EEdeB8ne180100Ev: argument 0"}
!508 = distinct !{!508, !"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageLoader19resizeChannelsAsyncENS_4spanIKNS1_7ChannelELm18446744073709551615EEENS3_IS4_Lm18446744073709551615EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_0JRS5_EEENS_13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_"}
!509 = distinct !{!509, !508, !"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageLoader19resizeChannelsAsyncENS_4spanIKNS1_7ChannelELm18446744073709551615EEENS3_IS4_Lm18446744073709551615EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_0JRS5_EEENS_13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_: argument 0"}
!510 = distinct !{!510, !"_ZNSt3__18__invokeB8ne180100IRZN3tev11ImageLoader19resizeChannelsAsyncENS_4spanIKNS1_7ChannelELm18446744073709551615EEENS3_IS4_Lm18446744073709551615EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_0JRS5_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSH_DpOSI_"}
!511 = distinct !{!511, !510, !"_ZNSt3__18__invokeB8ne180100IRZN3tev11ImageLoader19resizeChannelsAsyncENS_4spanIKNS1_7ChannelELm18446744073709551615EEENS3_IS4_Lm18446744073709551615EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_0JRS5_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSH_DpOSI_: argument 0"}
!512 = distinct !{!512, !"_ZZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEiENK3$_0clERS4_"}
!513 = distinct !{!513, !512, !"_ZZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEiENK3$_0clERS4_: argument 0"}
!514 = distinct !{!514, !"_ZNKR3tev7Channel4viewIKfEENS_11ChannelViewIT_EEv"}
!515 = distinct !{!515, !514, !"_ZNKR3tev7Channel4viewIKfEENS_11ChannelViewIT_EEv: argument 0"}
!516 = distinct !{!516, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEES8_S8_EENS_4pairIT0_T2_EESA_T1_SB_"}
!517 = distinct !{!517, !516, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEES8_S8_EENS_4pairIT0_T2_EESA_T1_SB_: argument 0"}
!518 = distinct !{!518, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESB_SB_EENS_4pairIT2_T4_EESD_T3_SE_"}
!519 = distinct !{!519, !518, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESB_SB_EENS_4pairIT2_T4_EESD_T3_SE_: argument 0"}
!520 = distinct !{!520, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESD_SD_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISF_SH_EESF_SG_SH_"}
!521 = distinct !{!521, !520, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESD_SD_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISF_SH_EESF_SG_SH_: argument 0"}
!522 = distinct !{!522, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESA_SA_EENS_4pairIT_T1_EESC_T0_SD_"}
!523 = distinct !{!523, !522, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIKfEEEESA_SA_EENS_4pairIT_T1_EESC_T0_SD_: argument 0"}
!524 = distinct !{!524, !"_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_11ImageLoader19resizeChannelsAsyncENS5_IKS6_Lm18446744073709551615EEES7_RKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_1EEEEDaOT_NS0_12to_vector_fnINS2_6vectorEEE"}
!525 = distinct !{!525, !524, !"_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_11ImageLoader19resizeChannelsAsyncENS5_IKS6_Lm18446744073709551615EEES7_RKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_1EEEEDaOT_NS0_12to_vector_fnINS2_6vectorEEE: argument 0"}
!526 = distinct !{!526, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!527 = distinct !{!527, !526, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!528 = distinct !{!528, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!529 = distinct !{!529, !528, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!530 = distinct !{!530, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!531 = distinct !{!531, !530, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!532 = distinct !{!532, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!533 = distinct !{!533, !532, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!534 = distinct !{!534, !157}
!535 = distinct !{!535, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS_4spanIN3tev7ChannelELm18446744073709551615EEEZNS3_11ImageLoader19resizeChannelsAsyncENS2_IKS4_Lm18446744073709551615EEES5_RKNS_8optionalINS3_3BoxIiLj2EEEEEiE3$_1E10__iteratorILb0EEdeB8ne180100Ev"}
!536 = distinct !{!536, !535, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS_4spanIN3tev7ChannelELm18446744073709551615EEEZNS3_11ImageLoader19resizeChannelsAsyncENS2_IKS4_Lm18446744073709551615EEES5_RKNS_8optionalINS3_3BoxIiLj2EEEEEiE3$_1E10__iteratorILb0EEdeB8ne180100Ev: argument 0"}
!537 = distinct !{!537, !"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageLoader19resizeChannelsAsyncENS_4spanIKNS1_7ChannelELm18446744073709551615EEENS3_IS4_Lm18446744073709551615EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_1JRS4_EEENS_13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_"}
!538 = distinct !{!538, !537, !"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageLoader19resizeChannelsAsyncENS_4spanIKNS1_7ChannelELm18446744073709551615EEENS3_IS4_Lm18446744073709551615EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_1JRS4_EEENS_13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_: argument 0"}
!539 = distinct !{!539, !"_ZNSt3__18__invokeB8ne180100IRZN3tev11ImageLoader19resizeChannelsAsyncENS_4spanIKNS1_7ChannelELm18446744073709551615EEENS3_IS4_Lm18446744073709551615EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_1JRS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSH_DpOSI_"}
!540 = distinct !{!540, !539, !"_ZNSt3__18__invokeB8ne180100IRZN3tev11ImageLoader19resizeChannelsAsyncENS_4spanIKNS1_7ChannelELm18446744073709551615EEENS3_IS4_Lm18446744073709551615EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_1JRS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSH_DpOSI_: argument 0"}
!541 = distinct !{!541, !"_ZZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEiENK3$_1clERS3_"}
!542 = distinct !{!542, !541, !"_ZZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEiENK3$_1clERS3_: argument 0"}
!543 = distinct !{!543, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!544 = distinct !{!544, !543, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!545 = distinct !{!545, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!546 = distinct !{!546, !545, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!547 = distinct !{!547, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!548 = distinct !{!548, !547, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!549 = distinct !{!549, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!550 = distinct !{!550, !549, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!551 = distinct !{!551, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!552 = distinct !{!552, !551, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!553 = distinct !{!553, !157}
!554 = distinct !{!554, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!555 = distinct !{!555, !554, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!556 = distinct !{!556, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!557 = distinct !{!557, !556, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!558 = !{!486}
!559 = !{!488}
!560 = !{!488, !486}
!561 = !{!490, !488, !486}
!562 = !{!492}
!563 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!564 = !{!494}
!565 = !{!496}
!566 = !{i64 0, i64 8, !202, i64 8, i64 8, !128, i64 16, i64 8, !119}
!567 = !{!504, !502, !500, !498}
!568 = !{!515, !513, !511, !509, !507, !496}
!569 = !{!205, !127, i64 64}
!570 = !{!205, !127, i64 56}
!571 = !{!523, !521, !519, !517}
!572 = !{!525}
!573 = !{!533, !531, !529, !527}
!574 = !{!"_ZTSNSt3__124__optional_destruct_baseIN3tev3BoxIiLj2EEELb1EEE", !60, i64 0, !213, i64 16}
!575 = !{!574, !213, i64 16}
!576 = !{!544, !542, !540, !538, !536, !525}
!577 = !{!552, !550, !548, !546}
!578 = !{!"branch_weights", i32 127, i32 1}
!579 = !{!"branch_weights", i32 255873, i32 127}
!580 = !{!555}
!581 = !{!557}
!582 = distinct !{!582, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!583 = distinct !{!583, !582, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!584 = distinct !{!584, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!585 = distinct !{!585, !584, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!586 = distinct !{!586, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!587 = distinct !{!587, !586, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!588 = distinct !{!588, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!589 = distinct !{!589, !588, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!590 = !{!217, !217, i64 0}
!591 = !{!218, !218, i64 0}
!592 = !{!221, !221, i64 0}
!593 = !{!222, !222, i64 0}
!594 = !{i64 0, i64 8, !590, i64 8, i64 8, !591, i64 16, i64 8, !220, i64 24, i64 8, !592, i64 32, i64 8, !202, i64 40, i64 8, !202, i64 48, i64 8, !590, i64 56, i64 8, !593}
!595 = !{!583}
!596 = !{!585}
!597 = !{!585, !583}
!598 = !{!587, !585, !583}
!599 = !{!589}
!600 = distinct !{!600, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!601 = distinct !{!601, !600, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!602 = distinct !{!602, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!603 = distinct !{!603, !602, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!604 = distinct !{!604, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!605 = distinct !{!605, !604, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!606 = distinct !{!606, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!607 = distinct !{!607, !606, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!608 = distinct !{!608, !"_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS3_8ref_viewINS2_6vectorINS_7ChannelENS2_9allocatorIS7_EEEEEEZNS_11ImageLoader15resizeImageDataERNS_9ImageDataEN7nanogui5ArrayIiLm2EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_0EEEEDaOT_NS0_12to_vector_fnIS6_EE"}
!609 = distinct !{!609, !608, !"_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS3_8ref_viewINS2_6vectorINS_7ChannelENS2_9allocatorIS7_EEEEEEZNS_11ImageLoader15resizeImageDataERNS_9ImageDataEN7nanogui5ArrayIiLm2EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_0EEEEDaOT_NS0_12to_vector_fnIS6_EE: argument 0"}
!610 = distinct !{!610, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS0_8ref_viewINS_6vectorIN3tev7ChannelENS_9allocatorIS5_EEEEEEZNS4_11ImageLoader15resizeImageDataERNS4_9ImageDataEN7nanogui5ArrayIiLm2EEERKNS_8optionalINS4_3BoxIiLj2EEEEEiE3$_0E10__iteratorILb0EEdeB8ne180100Ev"}
!611 = distinct !{!611, !610, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS0_8ref_viewINS_6vectorIN3tev7ChannelENS_9allocatorIS5_EEEEEEZNS4_11ImageLoader15resizeImageDataERNS4_9ImageDataEN7nanogui5ArrayIiLm2EEERKNS_8optionalINS4_3BoxIiLj2EEEEEiE3$_0E10__iteratorILb0EEdeB8ne180100Ev: argument 0"}
!612 = distinct !{!612, !"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageLoader15resizeImageDataERNS1_9ImageDataEN7nanogui5ArrayIiLm2EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_0JRNS1_7ChannelEEEENS_13invoke_resultIT_JDpT0_EE4typeEOSJ_DpOSK_"}
!613 = distinct !{!613, !612, !"_ZNSt3__16invokeB8ne180100IRZN3tev11ImageLoader15resizeImageDataERNS1_9ImageDataEN7nanogui5ArrayIiLm2EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_0JRNS1_7ChannelEEEENS_13invoke_resultIT_JDpT0_EE4typeEOSJ_DpOSK_: argument 0"}
!614 = distinct !{!614, !"_ZNSt3__18__invokeB8ne180100IRZN3tev11ImageLoader15resizeImageDataERNS1_9ImageDataEN7nanogui5ArrayIiLm2EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_0JRNS1_7ChannelEEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_"}
!615 = distinct !{!615, !614, !"_ZNSt3__18__invokeB8ne180100IRZN3tev11ImageLoader15resizeImageDataERNS1_9ImageDataEN7nanogui5ArrayIiLm2EEERKNS_8optionalINS1_3BoxIiLj2EEEEEiE3$_0JRNS1_7ChannelEEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSI_DpOSJ_: argument 0"}
!616 = distinct !{!616, !"_ZZN3tev11ImageLoader15resizeImageDataERNS_9ImageDataEN7nanogui5ArrayIiLm2EEERKNSt3__18optionalINS_3BoxIiLj2EEEEEiENK3$_0clERKNS_7ChannelE"}
!617 = distinct !{!617, !616, !"_ZZN3tev11ImageLoader15resizeImageDataERNS_9ImageDataEN7nanogui5ArrayIiLm2EEERKNSt3__18optionalINS_3BoxIiLj2EEEEEiENK3$_0clERKNS_7ChannelE: argument 0"}
!618 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!619 = distinct !{null, ptr @_ZN3tev7ChannelD2Ev, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!620 = !{!601}
!621 = !{!603}
!622 = !{!603, !601}
!623 = !{!605, !603, !601}
!624 = !{!607}
!625 = !{!609}
!626 = !{!617, !615, !613, !611, !609}
!627 = !{!205, !129, i64 32}
!628 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev}
!629 = distinct !{!629, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_"}
!630 = distinct !{!630, !629, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_: argument 0"}
!631 = distinct !{null}
!632 = !{!630}
!633 = !{!"p1 _ZTSNSt3__114error_categoryE", !69, i64 0}
!634 = !{!633, !633, i64 0}
!635 = !{i64 0, i64 4, !185, i64 8, i64 8, !634}
!636 = distinct !{null, null}
!637 = distinct !{!637, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!638 = distinct !{!638, !637, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!639 = !{!638}
end_hunk_6
begin_hunk_7_@llvm.fmuladd.v2f32
!1243 = !{!1206}
!1244 = !{!1208}
!1245 = !{!1210}
!1246 = !{!1212}
!1247 = !{!1214}
!1248 = !{!1216}
!1249 = !{!1218}
!1250 = !{!1220}
!1251 = !{!1222}
!1252 = !{!1224}
!1253 = !{!1226}
!1254 = !{!1228}
!1255 = !{!1230}
!1256 = !{!1232}
!1257 = !{!1234}
!1258 = !{!1236}
!1259 = !{!1238}
!1260 = distinct !{null}
!1261 = !{!366, !366, i64 0}
!1262 = !{!372, !370, i64 0}
!1263 = distinct !{!1263, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_"}
!1264 = distinct !{!1264, !1263, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_: argument 0"}
!1265 = !{!1264}
!1266 = !{!161, !161, i64 0}
!1267 = distinct !{null, ptr @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!1268 = distinct !{null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!1269 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev11PixelBufferENS_9allocatorIS2_EEED2Ev}
!1270 = distinct !{!1270, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1271 = distinct !{!1271, !1270, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1272 = distinct !{!1272, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1273 = distinct !{!1273, !1272, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1274 = distinct !{!1274, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1275 = distinct !{!1275, !1274, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1276 = distinct !{!1276, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1277 = distinct !{!1277, !1276, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1278 = distinct !{!1278, !157}
!1279 = distinct !{!1279, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1280 = distinct !{!1280, !1279, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1281 = !{!1271}
!1282 = !{!1273}
!1283 = !{!1273, !1271}
!1284 = !{!1275, !1273, !1271}
!1285 = !{!1277}
!1286 = !{!"branch_weights", i32 1, i32 127}
!1287 = !{!"branch_weights", i32 127, i32 255873}
!1288 = !{!1280}
!1289 = distinct !{!1289, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1290 = distinct !{!1290, !1289, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1291 = distinct !{!1291, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1292 = distinct !{!1292, !1291, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1293 = distinct !{!1293, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1294 = distinct !{!1294, !1293, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1295 = distinct !{!1295, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1296 = distinct !{!1296, !1295, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1297 = !{!1290}
!1298 = !{!1292}
!1299 = !{!1292, !1290}
!1300 = !{!1294, !1292, !1290}
!1301 = !{!1296}
!1302 = distinct !{!1302, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1303 = distinct !{!1303, !1302, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1304 = distinct !{!1304, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1305 = distinct !{!1305, !1304, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1306 = distinct !{!1306, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1307 = distinct !{!1307, !1306, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1308 = distinct !{!1308, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1309 = distinct !{!1309, !1308, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1310 = !{!1303}
!1311 = !{!1305}
!1312 = !{!1305, !1303}
!1313 = !{!1307, !1305, !1303}
!1314 = !{!1309}
!1315 = distinct !{!1315, !157}
!1316 = !{!192, !192, i64 0}
!1317 = !{!138, !138, i64 0}
!1318 = distinct !{!1318, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1319 = distinct !{!1319, !1318, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1320 = distinct !{!1320, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1321 = distinct !{!1321, !1320, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1322 = distinct !{!1322, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1323 = distinct !{!1323, !1322, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1324 = distinct !{!1324, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1325 = distinct !{!1325, !1324, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1326 = !{!1319}
!1327 = !{!1321}
!1328 = !{!1321, !1319}
!1329 = !{!1323, !1321, !1319}
!1330 = !{!1325}
!1331 = distinct !{!1331, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1332 = distinct !{!1332, !1331, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1333 = distinct !{!1333, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1334 = distinct !{!1334, !1333, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1335 = distinct !{!1335, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1336 = distinct !{!1336, !1335, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1337 = distinct !{!1337, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1338 = distinct !{!1338, !1337, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1339 = !{!1332}
!1340 = !{!1334}
!1341 = !{!1334, !1332}
!1342 = !{!1336, !1334, !1332}
!1343 = !{!1338}
!1344 = !{!394, !69, i64 8}
!1345 = distinct !{!1345, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1346 = distinct !{!1346, !1345, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1347 = distinct !{!1347, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1348 = distinct !{!1348, !1347, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1349 = distinct !{!1349, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1350 = distinct !{!1350, !1349, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1351 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1352 = distinct !{!1352, !157}
!1353 = !{!1346}
!1354 = !{!1348}
!1355 = !{!1348, !1346}
!1356 = !{!1350, !1348, !1346}
!1357 = !{!"p1 _ZTSNSt3__16threadE", !69, i64 0}
!1358 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1357, i64 0}
!1359 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1358, i64 0}
!1360 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1357, i64 0, !1357, i64 8, !1359, i64 16}
!1361 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1362 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !425, i64 0, !1361, i64 24}
!1363 = !{!"_ZTSNSt3__115recursive_mutexE", !60, i64 0}
!1364 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !60, i64 0}
!1365 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1364, i64 0}
!1366 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1365, i64 0}
!1367 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1366, i64 0}
!1368 = !{!"_ZTSNSt3__16atomicIlEE", !1367, i64 0}
!1369 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !60, i64 0}
!1370 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1368, i64 0, !1369, i64 8, !61, i64 40}
!1371 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !60, i64 0}
!1372 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1371, i64 0}
!1373 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1372, i64 0}
!1374 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1373, i64 0}
!1375 = !{!"_ZTSNSt3__16atomicImEE", !1374, i64 0}
!1376 = !{!"_ZTSN3tev10ThreadPoolE", !213, i64 8, !1360, i64 16, !1362, i64 40, !1363, i64 72, !1370, i64 112, !1363, i64 160, !1375, i64 200, !1375, i64 208}
!1377 = !{!1376, !213, i64 8}
!1378 = !{!430, !213, i64 52}
!1379 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1380 = distinct !{null, null, null}
!1381 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !69, i64 0}
!1382 = !{!1381, !69, i64 0}
!1383 = distinct !{!1383, !157}
!1384 = distinct !{null, null, null, null, null, null, null, null, null}
!1385 = distinct !{null, null, null, null}
!1386 = distinct !{null}
!1387 = distinct !{!1387, !157}
!1388 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1389 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1390 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1391 = distinct !{null}
!1392 = !{!"_ZTSNSt3__17promiseIvEE", !192, i64 0}
!1393 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !416, i64 0, !1392, i64 48}
!1394 = !{!1393, !192, i64 48}
!1395 = distinct !{!1395, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1396 = distinct !{!1396, !1395, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1397 = distinct !{!1397, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1398 = distinct !{!1398, !1397, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1399 = distinct !{!1399, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1400 = distinct !{!1400, !1399, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1401 = distinct !{!1401, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1402 = distinct !{!1402, !1401, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1403 = distinct !{!1403, !157}
!1404 = distinct !{!1404, !157}
!1405 = distinct !{!1405, !157}
!1406 = distinct !{!1406, !157}
!1407 = !{!1396}
!1408 = !{!1398}
!1409 = !{!1398, !1396}
!1410 = !{!1400, !1398, !1396}
!1411 = !{!1402}
!1412 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11ImageLoader19resizeChannelsAsyncENS2_4spanIKNS_7ChannelELm18446744073709551615EEENS6_IS7_Lm18446744073709551615EEERKNS2_8optionalINS_3BoxIiLj2EEEEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_", !69, i64 0}
!1413 = !{!1412, !69, i64 0}
!1414 = !{!"_ZTSZN3tev11ImageLoader19resizeChannelsAsyncENSt3__14spanIKNS_7ChannelELm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEERKNS1_8optionalINS_3BoxIiLj2EEEEEiE3$_2", !217, i64 0, !218, i64 8, !219, i64 16, !221, i64 24, !201, i64 32, !201, i64 40, !217, i64 48, !222, i64 56}
!1415 = !{!1414, !217, i64 0}
!1416 = !{!1414, !218, i64 8}
!1417 = !{!"_ZTSN3tev11ChannelViewIfEE", !201, i64 0, !127, i64 8, !204, i64 16}
!1418 = !{!1417, !201, i64 0}
!1419 = !{!1417, !127, i64 8}
!1420 = !{!"_ZTSN3tev11ChannelViewIKfEE", !201, i64 0, !127, i64 8, !204, i64 16}
!1421 = !{!1420, !201, i64 0}
!1422 = !{!1420, !127, i64 8}
!1423 = distinct !{!1423, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1424 = distinct !{!1424, !1423, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1425 = distinct !{!1425, !157}
!1426 = !{!435, !435, i64 0}
!1427 = !{!1424}
!1428 = distinct !{!1428, !157}
!1429 = !{!436, !435, i64 0}
!1430 = distinct !{null, null}
!1431 = distinct !{!1431, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEERS4_EEENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_"}
!1432 = distinct !{!1432, !1431, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEERS4_EEENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_: argument 0"}
!1433 = distinct !{!1433, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1434 = distinct !{!1434, !1433, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1435 = distinct !{!1435, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1436 = distinct !{!1436, !1435, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1437 = distinct !{null}
!1438 = !{!1432}
!1439 = !{!1434}
!1440 = !{ptr @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE}
!1441 = !{!1436}
!1442 = !{!1436, !1434}
!1443 = !{!"branch_weights", i32 118691432, i32 -2004248167}
!1444 = !{!"branch_weights", i32 -171659984, i32 343608614}
!1445 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!1446 = !{!"branch_weights", i32 -1751137347, i32 -840054308}
!1447 = !{!"branch_weights", i32 -1319291495, i32 1664633832}
!1448 = !{!"branch_weights", i32 -1818821258, i32 859006156}
end_hunk_7
