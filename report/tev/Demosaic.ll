Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Demosaic?download=true
inline.NumInlined: 6129
inline.NumDeleted: 2285
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 81
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_L13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENS2_4spanIKhLm18446744073709551615EEEdiiE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii":.from.
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.from.38
  %.022 = phi i32 [ %i.w, %.lr.ph.from.38 ], [ %2, %bb.e ] ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !1447, !nonnull !206, !align !208
  invoke fastcc void @"_ZZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdiiENK3$_0clEi"(ptr noundef nonnull align 8 dereferenceable(88) %i.v, i32 noundef %.022)
          to label %.lr.ph.from.38 unwind label %bb.g

.lr.ph.from.38:                                   ; preds = %.lr.ph
  %i.w = add i32 %.022, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1440

bb.g:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #33 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr53)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.47

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge, %bb.h
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %_ZN3tev5Latch9countDownEv.exit.i

bb.i:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !91
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !92 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !93 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.aj, %.from..lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc2.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !96 ; 2 uses
  %i.ar = load i8, ptr %i.am, align 8             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = select i1 %i.as, ptr %i.at, ptr %i.ao
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = lshr i8 %i.ar, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.as, i64 %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.3, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.i
  %lpad.loopexit.split-lp65 = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %lpad.loopexit.split-lp65, 0
  call void @__clang_call_terminate(ptr %i.bc) #34
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bd = icmp slt i32 %i.ac, 2
  br i1 %i.bd, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.j, %_ZN3tev5Latch9countDownEv.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !74 ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr               ; 3 uses
  store ptr %i.bg, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr54 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr54, align 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr nonnull %i.bg)
  br label %AfterCoroEnd

bb.k:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.51 unwind label %bb.n

.from.47:                                         ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.51

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !73  ; 5 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 acq_rel, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #33, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #33
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.l, %bb.m
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr53) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #33
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.51:                                    ; preds = %bb.k, %.from.47
  %.pn = phi { ptr, i32 } [ %i.bj, %.from.47 ], [ %i.bi, %bb.k ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #33
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr53) #33
  br label %.body

.body:                                            ; preds = %.body.from.51, %.body.from.49, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.51 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.49 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #33
  resume { ptr, i32 } %.merged18

bb.n:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdiiENK3$_0clEi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1589, !nonnull !206, !align !208
  %i.b = sext i32 %1 to i64
  %.val2435 = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val2435, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1591 ; 25 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1592 ; 29 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(1448767) ptr @_Znwm(i64 noundef 1448767) #32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1448767) %i.g, i8 0, i64 1448767, i1 false), !tbaa !57
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, 63
  %i.j = and i64 %i.i, -64
  %i.k = inttoptr i64 %i.j to ptr                 ; 236 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 102528 ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 205056 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 307584 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 410112 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 512640 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 615168 ; 23 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 717696 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 820224 ; 32 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 922880 ; 21 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 871552 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 974208 ; 22 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 1076736 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 1179264 ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 1230592 ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 1281920 ; 208 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 461440 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 1384448 ; 14 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1397376 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 1384688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12320) %i.ad, i8 0, i64 12320, i1 false)
  %i.ae = add i32 %i.d, 160                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1593, !nonnull !206, !align !259 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !78 ; 6 uses
  %i.aj = add i32 %i.ai, 16
  %.sroa.speculated2528 = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ae)
  %i.ak = add i32 %i.f, 160                       ; 2 uses
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !78 ; 51 uses
  %i.am = add i32 %i.al, 16
  %.sroa.speculated2522 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ak) ; 7 uses
  %i.an = sub i32 %.sroa.speculated2528, %i.d     ; 21 uses
  %i.ao = sub i32 %.sroa.speculated2522, %i.f     ; 20 uses
  %i.ap = icmp slt i32 %i.d, 0                    ; 4 uses
  %i.aq = select i1 %i.ap, i32 16, i32 0          ; 4 uses
  %i.ar = icmp slt i32 %i.f, 0                    ; 4 uses
  %i.as = select i1 %i.ar, i32 16, i32 0          ; 6 uses
  %i.at = icmp sgt i32 %i.ae, %i.ai
  %i.au = sub nsw i32 %i.ai, %i.d
  %i.av = select i1 %i.at, i32 %i.au, i32 %i.an   ; 8 uses
  %i.aw = icmp sgt i32 %i.ak, %i.al
  %i.ax = sub nsw i32 %i.al, %i.f
  %i.ay = select i1 %i.aw, i32 %i.ax, i32 %i.ao   ; 10 uses
  %i.az = icmp slt i32 %i.as, %i.ay
  %or.cond3219 = select i1 %i.ap, i1 %i.az, i1 false
  br i1 %or.cond3219, label %.preheader2598.split, label %.loopexit2599.split

.preheader2598.split:                             ; preds = %bb.a
  %reass.sub2407 = add nsw i32 %i.d, 32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1594, !nonnull !206, !align !208
  %.val2444 = load ptr, ptr %i.bb, align 8, !tbaa !403 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2444, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !78
  %i.be = sext i32 %i.bd to i64                   ; 16 uses
  %i.bf = load ptr, ptr %.val2444, align 8, !tbaa !390 ; 96 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2444, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !391 ; 64 uses
  %i.bi = zext nneg i32 %i.as to i64              ; 112 uses
  %i.bj = sext i32 %i.f to i64                    ; 32 uses
  %i.bk = sext i32 %reass.sub2407 to i64
  %i.bl = mul nsw i64 %i.be, %i.bk                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ay to i64   ; 112 uses
  %invariant.op = add i64 %i.bl, %i.bj            ; 4 uses
  %i.bm = sub nsw i64 %wide.trip.count, %i.bi     ; 2 uses
  %min.iters.check = icmp ugt i64 %i.bm, 19
  %ident.check.not = icmp eq i64 %i.bh, 1
  %or.cond3751.a = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond3751.a, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader2598.split
  %i.bn = shl nuw nsw i64 %i.bi, 2
  %i.bo = getelementptr i8, ptr %i.k, i64 %i.bn
  %i.bp = shl nuw nsw i64 %wide.trip.count, 2
  %i.bq = getelementptr i8, ptr %i.k, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 1281920
  %i.bs = add i64 %i.bl, %i.bj                    ; 2 uses
  %i.bt = add i64 %i.bs, %i.bi
  %i.bu = shl i64 %i.bt, 2
  %i.bv = getelementptr i8, ptr %i.bf, i64 %i.bu
  %i.bw = add i64 %i.bs, %wide.trip.count
  %i.bx = shl i64 %i.bw, 2
  %i.by = getelementptr i8, ptr %i.bf, i64 %i.bx
  %bound0 = icmp ult ptr %i.bo, %i.by
  %bound1 = icmp ult ptr %i.bv, %i.br
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bz = and i64 %wide.trip.count, 7             ; 2 uses
  %n.vec = sub nsw i64 %i.bm, %i.bz               ; 2 uses
  %i.ca = add nsw i64 %n.vec, %i.bi
  %invariant.gep3824 = getelementptr [4 x i8], ptr %i.bf, i64 %invariant.op
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = add nuw i64 %index, %i.bi               ; 3 uses
  %gep3825 = getelementptr [4 x i8], ptr %invariant.gep3824, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %gep3825, i64 16
  %wide.load = load <4 x float>, ptr %gep3825, align 4, !tbaa !111, !alias.scope !1595 ; 2 uses
  %wide.load3253 = load <4 x float>, ptr %i.cc, align 4, !tbaa !111, !alias.scope !1595 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cb ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x float> %wide.load, ptr %i.cd, align 32, !tbaa !111, !alias.scope !1596, !noalias !1595
  store <4 x float> %wide.load3253, ptr %i.ce, align 16, !tbaa !111, !alias.scope !1596, !noalias !1595
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cb ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x float> %wide.load, ptr %i.cf, align 32, !tbaa !111, !alias.scope !1596, !noalias !1595
  store <4 x float> %wide.load3253, ptr %i.cg, align 16, !tbaa !111, !alias.scope !1596, !noalias !1595
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !1451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, 0
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader2598.split, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bi, %vector.memcheck ], [ %i.bi, %.preheader2598.split ], [ %i.ca, %middle.block ] ; 7 uses
  %i.ci = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ci, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.reass3183.prol.a = add i64 %indvars.iv.ph, %invariant.op
  %i.cj = mul i64 %.reass3183.prol.a, %i.bh
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !111 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.ph
  store float %i.cl, ptr %i.cm, align 4, !tbaa !111
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.ph
  store float %i.cl, ptr %i.cn, align 4, !tbaa !111
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.co = add nsw i64 %wide.trip.count, -1
  %i.cp = icmp eq i64 %indvars.iv.ph, %i.co
  br i1 %i.cp, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cq = add nsw i32 %i.d, 31
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.be, %i.cr                ; 2 uses
  %invariant.op3184.a = add i64 %i.cs, %i.bj      ; 4 uses
  %i.ct = sub nsw i64 %wide.trip.count, %i.bi     ; 2 uses
  %min.iters.check3264 = icmp ugt i64 %i.ct, 19
  %ident.check3255.not = icmp eq i64 %i.bh, 1
  %or.cond3752.a = select i1 %min.iters.check3264, i1 %ident.check3255.not, i1 false
  br i1 %or.cond3752.a, label %vector.memcheck3265, label %scalar.ph3263.preheader

vector.memcheck3265:                              ; preds = %._crit_edge
  %i.cu = shl nuw nsw i64 %i.bi, 2
  %i.cv = getelementptr i8, ptr %i.k, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 640
  %i.cx = shl nuw nsw i64 %wide.trip.count, 2
  %i.cy = getelementptr i8, ptr %i.k, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 1282560
  %i.da = add i64 %i.cs, %i.bj                    ; 2 uses
  %i.db = add i64 %i.da, %i.bi
  %i.dc = shl i64 %i.db, 2
  %i.dd = getelementptr i8, ptr %i.bf, i64 %i.dc
  %i.de = add i64 %i.da, %wide.trip.count
  %i.df = shl i64 %i.de, 2
  %i.dg = getelementptr i8, ptr %i.bf, i64 %i.df
  %bound03266 = icmp ult ptr %i.cw, %i.dg
  %bound13267 = icmp ult ptr %i.dd, %i.cz
  %found.conflict3268 = and i1 %bound03266, %bound13267
  br i1 %found.conflict3268, label %scalar.ph3263.preheader, label %vector.ph3269

vector.ph3269:                                    ; preds = %vector.memcheck3265
  %i.dh = and i64 %wide.trip.count, 7             ; 2 uses
  %n.vec3270 = sub nsw i64 %i.ct, %i.dh           ; 2 uses
  %i.di = add nsw i64 %n.vec3270, %i.bi
  %invariant.gep3826 = getelementptr [4 x i8], ptr %i.bf, i64 %invariant.op3184.a
  br label %vector.body3271

vector.body3271:                                  ; preds = %vector.body3271, %vector.ph3269
  %index3272 = phi i64 [ 0, %vector.ph3269 ], [ %index.next3275, %vector.body3271 ] ; 2 uses
  %i.dj = add nuw i64 %index3272, %i.bi           ; 2 uses
  %gep3827 = getelementptr [4 x i8], ptr %invariant.gep3826, i64 %i.dj ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep3827, i64 16
  %wide.load3273 = load <4 x float>, ptr %gep3827, align 4, !tbaa !111, !alias.scope !1597 ; 2 uses
  %wide.load3274 = load <4 x float>, ptr %i.dk, align 4, !tbaa !111, !alias.scope !1597 ; 2 uses
  %i.dl = add nuw nsw i64 %i.dj, 160              ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x float> %wide.load3273, ptr %i.dm, align 32, !tbaa !111, !alias.scope !1598, !noalias !1597
  store <4 x float> %wide.load3274, ptr %i.dn, align 16, !tbaa !111, !alias.scope !1598, !noalias !1597
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dl ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x float> %wide.load3273, ptr %i.do, align 32, !tbaa !111, !alias.scope !1598, !noalias !1597
  store <4 x float> %wide.load3274, ptr %i.dp, align 16, !tbaa !111, !alias.scope !1598, !noalias !1597
  %index.next3275 = add nuw i64 %index3272, 8     ; 2 uses
  %i.dq = icmp eq i64 %index.next3275, %n.vec3270
  br i1 %i.dq, label %middle.block3276, label %vector.body3271, !llvm.loop !1455

middle.block3276:                                 ; preds = %vector.body3271
  %cmp.n3277 = icmp eq i64 %i.dh, 0
  br i1 %cmp.n3277, label %._crit_edge.1, label %scalar.ph3263.preheader

scalar.ph3263.preheader:                          ; preds = %vector.memcheck3265, %._crit_edge, %middle.block3276
  %indvars.iv.1.ph = phi i64 [ %i.bi, %vector.memcheck3265 ], [ %i.bi, %._crit_edge ], [ %i.di, %middle.block3276 ] ; 6 uses
  %i.dr = sub nsw i64 %wide.trip.count, %indvars.iv.1.ph
  %xtraiter3787.a = and i64 %i.dr, 1
  %lcmp.mod3788.not.a = icmp eq i64 %xtraiter3787.a, 0
  br i1 %lcmp.mod3788.not.a, label %scalar.ph3263.prol.loopexit, label %scalar.ph3263.prol

scalar.ph3263.prol:                               ; preds = %scalar.ph3263.preheader
  %.reass3185.prol.a = add i64 %indvars.iv.1.ph, %invariant.op3184.a
  %i.ds = mul i64 %.reass3185.prol.a, %i.bh
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ds
end_hunk_0
begin_hunk_1_@"_ZZN3tevL13amazeDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEdiiENK3$_0clEi":bb.a
  %i.bna = sext i32 %i.bmz to i64
  %i.bnb = load ptr, ptr %.val2436, align 8, !tbaa !390 ; 16 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %.val2436, i64 8
  %i.bnd = load i64, ptr %i.bnc, align 8, !tbaa !391 ; 16 uses
  %i.bne = sext i32 %i.av to i64
  br label %.preheader2578

.preheader2578:                                   ; preds = %.preheader2579, %.preheader2578
  %indvars.iv2895 = phi i64 [ 0, %.preheader2579 ], [ %indvars.iv.next2896, %.preheader2578 ] ; 3 uses
  %i.bnf = trunc nuw nsw i64 %indvars.iv2895 to i32
  %i.bng = sub i32 %i.bmx, %i.bnf
  %i.bnh = sext i32 %i.bng to i64
  %i.bni = mul nsw i64 %i.bna, %i.bnh             ; 16 uses
  %i.bnj = add nsw i64 %indvars.iv2895, %i.bne
  %i.bnk = mul nsw i64 %i.bnj, 160                ; 17 uses
  %i.bnl = add nsw i64 %i.bni, 32
  %i.bnm = mul i64 %i.bnl, %i.bnd
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bnm
  %i.bno = load float, ptr %i.bnn, align 4, !tbaa !111 ; 2 uses
  %i.bnp = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bnk
  store float %i.bno, ptr %i.bnp, align 64, !tbaa !111
  %i.bnq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bnk
  store float %i.bno, ptr %i.bnq, align 64, !tbaa !111
  %i.bnr = add nsw i64 %i.bni, 31
  %i.bns = mul i64 %i.bnr, %i.bnd
  %i.bnt = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bns
  %i.bnu = load float, ptr %i.bnt, align 4, !tbaa !111 ; 2 uses
  %i.bnv = or disjoint i64 %i.bnk, 1              ; 2 uses
  %i.bnw = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bnv
  store float %i.bnu, ptr %i.bnw, align 4, !tbaa !111
  %i.bnx = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bnv
  store float %i.bnu, ptr %i.bnx, align 4, !tbaa !111
  %i.bny = add nsw i64 %i.bni, 30
  %i.bnz = mul i64 %i.bny, %i.bnd
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bnz
  %i.bob = load float, ptr %i.boa, align 4, !tbaa !111 ; 2 uses
  %i.boc = or disjoint i64 %i.bnk, 2              ; 2 uses
  %i.bod = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.boc
  store float %i.bob, ptr %i.bod, align 8, !tbaa !111
  %i.boe = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.boc
  store float %i.bob, ptr %i.boe, align 8, !tbaa !111
  %i.bof = add nsw i64 %i.bni, 29
  %i.bog = mul i64 %i.bof, %i.bnd
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bog
  %i.boi = load float, ptr %i.boh, align 4, !tbaa !111 ; 2 uses
  %i.boj = or disjoint i64 %i.bnk, 3              ; 2 uses
  %i.bok = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.boj
  store float %i.boi, ptr %i.bok, align 4, !tbaa !111
  %i.bol = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.boj
  store float %i.boi, ptr %i.bol, align 4, !tbaa !111
  %i.bom = add nsw i64 %i.bni, 28
  %i.bon = mul i64 %i.bom, %i.bnd
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bon
  %i.bop = load float, ptr %i.boo, align 4, !tbaa !111 ; 2 uses
  %i.boq = or disjoint i64 %i.bnk, 4              ; 2 uses
  %i.bor = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.boq
  store float %i.bop, ptr %i.bor, align 16, !tbaa !111
  %i.bos = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.boq
  store float %i.bop, ptr %i.bos, align 16, !tbaa !111
  %i.bot = add nsw i64 %i.bni, 27
  %i.bou = mul i64 %i.bot, %i.bnd
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bou
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !111 ; 2 uses
  %i.box = or disjoint i64 %i.bnk, 5              ; 2 uses
  %i.boy = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.box
  store float %i.bow, ptr %i.boy, align 4, !tbaa !111
  %i.boz = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.box
  store float %i.bow, ptr %i.boz, align 4, !tbaa !111
  %i.bpa = add nsw i64 %i.bni, 26
  %i.bpb = mul i64 %i.bpa, %i.bnd
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bpb
  %i.bpd = load float, ptr %i.bpc, align 4, !tbaa !111 ; 2 uses
  %i.bpe = or disjoint i64 %i.bnk, 6              ; 2 uses
  %i.bpf = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bpe
  store float %i.bpd, ptr %i.bpf, align 8, !tbaa !111
  %i.bpg = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bpe
  store float %i.bpd, ptr %i.bpg, align 8, !tbaa !111
  %i.bph = add nsw i64 %i.bni, 25
  %i.bpi = mul i64 %i.bph, %i.bnd
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bpi
  %i.bpk = load float, ptr %i.bpj, align 4, !tbaa !111 ; 2 uses
  %i.bpl = or disjoint i64 %i.bnk, 7              ; 2 uses
  %i.bpm = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bpl
  store float %i.bpk, ptr %i.bpm, align 4, !tbaa !111
  %i.bpn = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bpl
  store float %i.bpk, ptr %i.bpn, align 4, !tbaa !111
  %i.bpo = add nsw i64 %i.bni, 24
  %i.bpp = mul i64 %i.bpo, %i.bnd
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bpp
  %i.bpr = load float, ptr %i.bpq, align 4, !tbaa !111 ; 2 uses
  %i.bps = or disjoint i64 %i.bnk, 8              ; 2 uses
  %i.bpt = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bps
  store float %i.bpr, ptr %i.bpt, align 32, !tbaa !111
  %i.bpu = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bps
  store float %i.bpr, ptr %i.bpu, align 32, !tbaa !111
  %i.bpv = add nsw i64 %i.bni, 23
  %i.bpw = mul i64 %i.bpv, %i.bnd
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bpw
  %i.bpy = load float, ptr %i.bpx, align 4, !tbaa !111 ; 2 uses
  %i.bpz = or disjoint i64 %i.bnk, 9              ; 2 uses
  %i.bqa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bpz
  store float %i.bpy, ptr %i.bqa, align 4, !tbaa !111
  %i.bqb = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bpz
  store float %i.bpy, ptr %i.bqb, align 4, !tbaa !111
  %i.bqc = add nsw i64 %i.bni, 22
  %i.bqd = mul i64 %i.bqc, %i.bnd
  %i.bqe = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bqd
  %i.bqf = load float, ptr %i.bqe, align 4, !tbaa !111 ; 2 uses
  %i.bqg = or disjoint i64 %i.bnk, 10             ; 2 uses
  %i.bqh = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bqg
  store float %i.bqf, ptr %i.bqh, align 8, !tbaa !111
  %i.bqi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bqg
  store float %i.bqf, ptr %i.bqi, align 8, !tbaa !111
  %i.bqj = add nsw i64 %i.bni, 21
  %i.bqk = mul i64 %i.bqj, %i.bnd
  %i.bql = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bqk
  %i.bqm = load float, ptr %i.bql, align 4, !tbaa !111 ; 2 uses
  %i.bqn = or disjoint i64 %i.bnk, 11             ; 2 uses
  %i.bqo = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bqn
  store float %i.bqm, ptr %i.bqo, align 4, !tbaa !111
  %i.bqp = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bqn
  store float %i.bqm, ptr %i.bqp, align 4, !tbaa !111
  %i.bqq = add nsw i64 %i.bni, 20
  %i.bqr = mul i64 %i.bqq, %i.bnd
  %i.bqs = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bqr
  %i.bqt = load float, ptr %i.bqs, align 4, !tbaa !111 ; 2 uses
  %i.bqu = or disjoint i64 %i.bnk, 12             ; 2 uses
  %i.bqv = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bqu
  store float %i.bqt, ptr %i.bqv, align 16, !tbaa !111
  %i.bqw = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bqu
  store float %i.bqt, ptr %i.bqw, align 16, !tbaa !111
  %i.bqx = add nsw i64 %i.bni, 19
  %i.bqy = mul i64 %i.bqx, %i.bnd
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bqy
  %i.bra = load float, ptr %i.bqz, align 4, !tbaa !111 ; 2 uses
  %i.brb = or disjoint i64 %i.bnk, 13             ; 2 uses
  %i.brc = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.brb
  store float %i.bra, ptr %i.brc, align 4, !tbaa !111
  %i.brd = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.brb
  store float %i.bra, ptr %i.brd, align 4, !tbaa !111
  %i.bre = add nsw i64 %i.bni, 18
  %i.brf = mul i64 %i.bre, %i.bnd
  %i.brg = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.brf
  %i.brh = load float, ptr %i.brg, align 4, !tbaa !111 ; 2 uses
  %i.bri = or disjoint i64 %i.bnk, 14             ; 2 uses
  %i.brj = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bri
  store float %i.brh, ptr %i.brj, align 8, !tbaa !111
  %i.brk = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bri
  store float %i.brh, ptr %i.brk, align 8, !tbaa !111
  %i.brl = add nsw i64 %i.bni, 17
  %i.brm = mul i64 %i.brl, %i.bnd
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.brm
  %i.bro = load float, ptr %i.brn, align 4, !tbaa !111 ; 2 uses
  %i.brp = or disjoint i64 %i.bnk, 15             ; 2 uses
  %i.brq = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.brp
  store float %i.bro, ptr %i.brq, align 4, !tbaa !111
  %i.brr = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.brp
  store float %i.bro, ptr %i.brr, align 4, !tbaa !111
  %indvars.iv.next2896 = add nuw nsw i64 %indvars.iv2895, 1 ; 2 uses
  %exitcond2898.not = icmp eq i64 %indvars.iv.next2896, 16
  br i1 %exitcond2898.not, label %.loopexit2580, label %.preheader2578, !llvm.loop !1545

.loopexit2580:                                    ; preds = %.preheader2578, %.loopexit2583
  %i.brs = icmp sgt i32 %i.an, 4
  br i1 %i.brs, label %.lr.ph2640, label %.preheader2575.thread

.lr.ph2640:                                       ; preds = %.loopexit2580
  %i.brt = icmp sgt i32 %i.ao, 4
  br i1 %i.brt, label %.lr.ph2636.preheader, label %.preheader2577

.lr.ph2636.preheader:                             ; preds = %.lr.ph2640
  %i.bru = add i32 %.sroa.speculated2522, 318
  %i.brv = sub i32 %i.bru, %i.f
  %i.brw = add nsw i32 %i.an, -3
  br label %.lr.ph2636

.preheader2577:                                   ; preds = %._crit_edge2637, %.lr.ph2640
  %i.brx = add nsw i32 %i.an, -4                  ; 2 uses
  %i.bry = icmp sgt i32 %i.an, 8
  br i1 %i.bry, label %.lr.ph2648, label %.preheader2575.thread

.lr.ph2648:                                       ; preds = %.preheader2577
  %i.brz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bsa = load ptr, ptr %i.brz, align 8, !tbaa !1631, !nonnull !206, !align !208
  %.val2433 = load ptr, ptr %i.bsa, align 8, !tbaa !405
  %i.bsb = icmp sgt i32 %i.ao, 8
  br i1 %i.bsb, label %.lr.ph2648.split, label %.preheader2575

.lr.ph2648.split:                                 ; preds = %.lr.ph2648
  %i.bsc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !1632, !nonnull !206, !align !259
  %i.bse = add i32 %.sroa.speculated2522, 636
  %i.bsf = sub i32 %i.bse, %i.f
  br label %.lr.ph2645

.lr.ph2636:                                       ; preds = %.lr.ph2636.preheader, %._crit_edge2637
  %indvars.iv2904 = phi i32 [ %i.brv, %.lr.ph2636.preheader ], [ %indvars.iv.next2905, %._crit_edge2637 ] ; 2 uses
  %indvars.iv2899 = phi i32 [ 320, %.lr.ph2636.preheader ], [ %indvars.iv.next2900, %._crit_edge2637 ] ; 3 uses
  %.023022638 = phi i32 [ 2, %.lr.ph2636.preheader ], [ %i.btx, %._crit_edge2637 ] ; 2 uses
  %i.bsg = or disjoint i32 %indvars.iv2899, 2
  %i.bsh = zext i32 %i.bsg to i64                 ; 4 uses
  %wide.trip.count2906 = zext i32 %indvars.iv2904 to i64 ; 2 uses
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.z, i64 %i.bsh
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !111 ; 2 uses
  %i.bsi = zext i32 %indvars.iv2899 to i64
  %i.bsj = add nsw i64 %wide.trip.count2906, -2   ; 2 uses
  %i.bsk = sub nsw i64 %i.bsj, %i.bsi             ; 2 uses
  %min.iters.check3686 = icmp ult i64 %i.bsk, 4
  br i1 %min.iters.check3686, label %scalar.ph3685.preheader, label %vector.ph3687

vector.ph3687:                                    ; preds = %.lr.ph2636
  %i.bsl = and i64 %i.bsj, 3                      ; 2 uses
  %n.vec3688 = sub nuw nsw i64 %i.bsk, %i.bsl     ; 2 uses
  %i.bsm = add nsw i64 %n.vec3688, %i.bsh
  %vector.recur.init = insertelement <4 x float> poison, float %.pre, i64 3
  br label %vector.body3689

vector.body3689:                                  ; preds = %vector.body3689, %vector.ph3687
  %index3690 = phi i64 [ 0, %vector.ph3687 ], [ %index.next3699, %vector.body3689 ] ; 2 uses
  %vector.recur = phi <4 x float> [ %vector.recur.init, %vector.ph3687 ], [ %wide.load3691.a, %vector.body3689 ]
  %i.bsn = add nuw i64 %index3690, %i.bsh         ; 5 uses
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bsn
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 4
  %wide.load3691.a = load <4 x float>, ptr %i.bsp, align 4, !tbaa !111 ; 4 uses
  %2 = shufflevector <4 x float> %vector.recur, <4 x float> %wide.load3691.a, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 4 uses
  %i.bsq = getelementptr [4 x i8], ptr %i.z, i64 %i.bsn ; 7 uses
  %i.bsr = getelementptr i8, ptr %i.bsq, i64 -4
  %wide.load3692.a = load <4 x float>, ptr %i.bsr, align 4, !tbaa !111
  %i.bss = fsub <4 x float> %wide.load3691.a, %wide.load3692.a ; 3 uses
  %i.bst = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bss)
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsq, i64 640
  %wide.load3693.a = load <4 x float>, ptr %i.bsu, align 8, !tbaa !111
  %i.bsv = getelementptr i8, ptr %i.bsq, i64 -640
  %wide.load3694.a = load <4 x float>, ptr %i.bsv, align 8, !tbaa !111
  %i.bsw = fsub <4 x float> %wide.load3693.a, %wide.load3694.a ; 3 uses
  %i.bsx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bsw)
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsq, i64 1280
  %wide.load3695.a = load <4 x float>, ptr %i.bsy, align 8, !tbaa !111
  %i.bsz = fsub <4 x float> %wide.load3695.a, %2
  %i.bta = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bsz)
  %i.btb = fadd <4 x float> %i.bta, splat (float f0x3727C5AC)
  %i.btc = getelementptr i8, ptr %i.bsq, i64 -1280
  %wide.load3696.a = load <4 x float>, ptr %i.btc, align 8, !tbaa !111
  %i.btd = fsub <4 x float> %2, %wide.load3696.a
  %i.bte = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.btd)
  %i.btf = fadd <4 x float> %i.btb, %i.bte
  %i.btg = fadd <4 x float> %i.bsx, %i.btf
  %i.bth = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bsn
  store <4 x float> %i.btg, ptr %i.bth, align 8, !tbaa !111
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bsq, i64 8
  %wide.load3697.a = load <4 x float>, ptr %i.bti, align 16, !tbaa !111
  %i.btj = fsub <4 x float> %wide.load3697.a, %2
  %i.btk = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.btj)
  %i.btl = fadd <4 x float> %i.btk, splat (float f0x3727C5AC)
  %i.btm = getelementptr i8, ptr %i.bsq, i64 -8
  %wide.load3698 = load <4 x float>, ptr %i.btm, align 16, !tbaa !111
  %i.btn = fsub <4 x float> %2, %wide.load3698
  %i.bto = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.btn)
  %i.btp = fadd <4 x float> %i.btl, %i.bto
  %i.btq = fadd <4 x float> %i.bst, %i.btp
  %i.btr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bsn
  store <4 x float> %i.btq, ptr %i.btr, align 8, !tbaa !111
  %i.bts = fmul <4 x float> %i.bss, %i.bss
  %i.btt = fmul <4 x float> %i.bsw, %i.bsw
  %i.btu = fadd <4 x float> %i.bts, %i.btt
  %i.btv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bsn
  store <4 x float> %i.btu, ptr %i.btv, align 8, !tbaa !111
  %index.next3699 = add nuw i64 %index3690, 4     ; 2 uses
  %i.btw = icmp eq i64 %index.next3699, %n.vec3688
  br i1 %i.btw, label %middle.block3700, label %vector.body3689, !llvm.loop !1546

middle.block3700:                                 ; preds = %vector.body3689
  %vector.recur.extract = extractelement <4 x float> %wide.load3691.a, i64 3
  %cmp.n3701 = icmp eq i64 %i.bsl, 0
  br i1 %cmp.n3701, label %._crit_edge2637, label %scalar.ph3685.preheader

scalar.ph3685.preheader:                          ; preds = %.lr.ph2636, %middle.block3700
  %.ph = phi float [ %.pre, %.lr.ph2636 ], [ %vector.recur.extract, %middle.block3700 ]
  %indvars.iv2901.ph = phi i64 [ %i.bsh, %.lr.ph2636 ], [ %i.bsm, %middle.block3700 ]
  br label %scalar.ph3685

._crit_edge2637:                                  ; preds = %scalar.ph3685, %middle.block3700
  %i.btx = add nuw nsw i32 %.023022638, 1
  %indvars.iv.next2900 = add i32 %indvars.iv2899, 160
  %indvars.iv.next2905 = add i32 %indvars.iv2904, 160
  %exitcond2908.not = icmp eq i32 %.023022638, %i.brw
  br i1 %exitcond2908.not, label %.preheader2577, label %.lr.ph2636, !llvm.loop !1547

scalar.ph3685:                                    ; preds = %scalar.ph3685.preheader, %scalar.ph3685
  %3 = phi float [ %i.btz, %scalar.ph3685 ], [ %.ph, %scalar.ph3685.preheader ] ; 4 uses
  %indvars.iv2901 = phi i64 [ %indvars.iv.next2902, %scalar.ph3685 ], [ %indvars.iv2901.ph, %scalar.ph3685.preheader ] ; 5 uses
  %indvars.iv.next2902 = add nuw nsw i64 %indvars.iv2901, 1 ; 3 uses
  %i.bty = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next2902
  %i.btz = load float, ptr %i.bty, align 4, !tbaa !111 ; 2 uses
  %i.bua = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv2901 ; 7 uses
  %4 = getelementptr i8, ptr %i.bua, i64 -4
  %5 = load float, ptr %4, align 4, !tbaa !111
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bua, i64 640
  %i.buc = load float, ptr %i.bub, align 4, !tbaa !111
  %6 = getelementptr i8, ptr %i.bua, i64 -640
  %7 = load float, ptr %6, align 4, !tbaa !111
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bua, i64 1280
  %i.bue = load float, ptr %i.bud, align 4, !tbaa !111
  %i.buf = getelementptr i8, ptr %i.bua, i64 -1280
  %i.bug = load float, ptr %i.buf, align 4, !tbaa !111
  %8 = insertelement <4 x float> poison, float %i.btz, i64 0
  %9 = insertelement <4 x float> %8, float %i.buc, i64 1
  %10 = insertelement <4 x float> %9, float %i.bue, i64 2
  %11 = insertelement <4 x float> %10, float %3, i64 3
  %12 = insertelement <4 x float> poison, float %5, i64 0
  %13 = insertelement <4 x float> %12, float %7, i64 1
  %14 = insertelement <4 x float> %13, float %3, i64 2
  %15 = insertelement <4 x float> %14, float %i.bug, i64 3
  %16 = fsub <4 x float> %11, %15                 ; 2 uses
  %17 = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %16) ; 4 uses
  %18 = extractelement <4 x float> %17, i64 2
  %19 = fadd float %18, f0x3727C5AC
  %20 = extractelement <4 x float> %17, i64 3
  %i.buh = fadd float %19, %20
  %21 = extractelement <4 x float> %17, i64 1
  %i.bui = fadd float %21, %i.buh
  %i.buj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv2901
  store float %i.bui, ptr %i.buj, align 4, !tbaa !111
  %i.buk = getelementptr inbounds nuw i8, ptr %i.bua, i64 8
  %i.bul = load float, ptr %i.buk, align 4, !tbaa !111
  %i.bum = fsub float %i.bul, %3
  %i.bun = tail call float @llvm.fabs.f32(float %i.bum)
  %i.buo = fadd float %i.bun, f0x3727C5AC
  %i.bup = getelementptr i8, ptr %i.bua, i64 -8
  %i.buq = load float, ptr %i.bup, align 4, !tbaa !111
  %i.bur = fsub float %3, %i.buq
  %i.bus = tail call float @llvm.fabs.f32(float %i.bur)
  %i.but = fadd float %i.buo, %i.bus
  %22 = extractelement <4 x float> %17, i64 0
  %i.buu = fadd float %22, %i.but
  %i.buv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv2901
  store float %i.buu, ptr %i.buv, align 4, !tbaa !111
  %23 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %24 = fmul <2 x float> %23, %23                 ; 2 uses
  %shift = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %24, %shift
  %25 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv2901
  store float %25, ptr %i.buw, align 4, !tbaa !111
  %exitcond2907.not = icmp eq i64 %indvars.iv.next2902, %wide.trip.count2906
  br i1 %exitcond2907.not, label %._crit_edge2637, label %scalar.ph3685, !llvm.loop !1548

.preheader2575.thread:                            ; preds = %.loopexit2580, %.preheader2577
  %i.bux = add i32 %i.an, -6
  br label %._crit_edge2691..loopexit2572_crit_edge

.lr.ph2656:                                       ; preds = %._crit_edge2646
  %i.buy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !1631, !nonnull !206, !align !208
  %.val2432 = load ptr, ptr %i.buz, align 8, !tbaa !405
  %i.bva = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bvb = add i32 %.sroa.speculated2522, 636
  %i.bvc = sub i32 %i.bvb, %i.f
  br label %.lr.ph2653

.lr.ph2645:                                       ; preds = %.lr.ph2648.split, %._crit_edge2646
  %indvars.iv2913 = phi i32 [ %i.bsf, %.lr.ph2648.split ], [ %indvars.iv.next2914, %._crit_edge2646 ] ; 2 uses
  %indvars.iv2909 = phi i32 [ 640, %.lr.ph2648.split ], [ %indvars.iv.next2910, %._crit_edge2646 ] ; 2 uses
  %.022992647 = phi i32 [ 4, %.lr.ph2648.split ], [ %i.bvk, %._crit_edge2646 ] ; 2 uses
  %i.bvd = or disjoint i32 %indvars.iv2909, 4
  %i.bve = sext i32 %i.bvd to i64                 ; 3 uses
  %i.bvf = and i32 %.022992647, 1
  %i.bvg = zext nneg i32 %i.bvf to i64
  %i.bvh = getelementptr inbounds nuw [8 x i8], ptr %.val2433, i64 %i.bvg
  %i.bvi = load i32, ptr %i.bvh, align 4, !tbaa !78
  %i.bvj = trunc i32 %i.bvi to i1
  %wide.trip.count2915 = sext i32 %indvars.iv2913 to i64
  %.phi.trans.insert3062.a = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bve
  %.pre3063.a = load float, ptr %.phi.trans.insert3062.a, align 16, !tbaa !111
  %.phi.trans.insert3064 = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bve
  %.pre3065.a = load float, ptr %.phi.trans.insert3064, align 16, !tbaa !111
  br label %bb.c

._crit_edge2646:                                  ; preds = %bb.e
  %i.bvk = add nuw nsw i32 %.022992647, 1         ; 2 uses
  %indvars.iv.next2910 = add i32 %indvars.iv2909, 160
  %indvars.iv.next2914 = add i32 %indvars.iv2913, 160
  %exitcond2917.not = icmp eq i32 %i.bvk, %i.brx
  br i1 %exitcond2917.not, label %.lr.ph2656, label %.lr.ph2645, !llvm.loop !1549

bb.c:                                             ; preds = %.lr.ph2645, %bb.e
  %i.bvl = phi float [ %.pre3065.a, %.lr.ph2645 ], [ %i.byg, %bb.e ]
  %i.bvm = phi float [ %.pre3063.a, %.lr.ph2645 ], [ %i.cah, %bb.e ] ; 2 uses
  %indvars.iv2911 = phi i64 [ %i.bve, %.lr.ph2645 ], [ %indvars.iv.next2912, %bb.e ] ; 16 uses
  %.022982641 = phi i1 [ %i.bvj, %.lr.ph2645 ], [ %i.bzi, %bb.e ] ; 2 uses
  %i.bvn = add nsw i64 %indvars.iv2911, -160      ; 2 uses
  %i.bvo = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bvn
  %i.bvp = load float, ptr %i.bvo, align 4, !tbaa !111
  %i.bvq = add nsw i64 %indvars.iv2911, -320      ; 2 uses
  %i.bvr = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bvq
  %i.bvs = load float, ptr %i.bvr, align 4, !tbaa !111
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv2911
  %i.bvu = load float, ptr %i.bvt, align 4, !tbaa !111 ; 2 uses
  %i.bvv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv2911
  %i.bvw = fadd float %i.bvm, f0x3727C5AC
  %i.bvx = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bvq
  %i.bvy = load float, ptr %i.bvx, align 4, !tbaa !111
  %i.bvz = add nuw nsw i64 %indvars.iv2911, 160   ; 2 uses
  %i.bwa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bvz
  %i.bwb = load float, ptr %i.bwa, align 4, !tbaa !111
  %i.bwc = add nuw nsw i64 %indvars.iv2911, 320   ; 2 uses
  %i.bwd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bwc
  %i.bwe = load float, ptr %i.bwd, align 4, !tbaa !111 ; 2 uses
  %i.bwf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bwc
  %i.bwg = load float, ptr %i.bwf, align 4, !tbaa !111
  %i.bwh = add nsw i64 %indvars.iv2911, -2        ; 2 uses
  %i.bwi = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bwh
  %i.bwj = load float, ptr %i.bwi, align 4, !tbaa !111
  %i.bwk = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bwh
  %indvars.iv.next2912 = add nsw i64 %indvars.iv2911, 1 ; 4 uses
  %i.bwl = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next2912
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv2911
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwm, i64 8
  %i.bwo = load float, ptr %i.bwn, align 4, !tbaa !111 ; 2 uses
  %i.bwp = load <2 x float>, ptr %i.bwk, align 4, !tbaa !111
  %i.bwq = insertelement <4 x float> poison, float %i.bvs, i64 0
  %i.bwr = insertelement <4 x float> %i.bwq, float %i.bwj, i64 1 ; 2 uses
  %i.bws = insertelement <4 x float> %i.bwr, float %i.bvu, i64 2
  %i.bwt = insertelement <4 x float> %i.bws, float %i.bwo, i64 3
  %i.bwu = insertelement <4 x float> poison, float %i.bvu, i64 0
  %i.bwv = insertelement <4 x float> %i.bwu, float %i.bvl, i64 1 ; 2 uses
  %i.bww = insertelement <4 x float> %i.bwv, float %i.bwe, i64 2
  %i.bwx = shufflevector <4 x float> %i.bww, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bwy = fadd <4 x float> %i.bwt, %i.bwx
  %i.bwz = load <2 x float>, ptr %i.bwl, align 4, !tbaa !111 ; 2 uses
  %i.bxa = shufflevector <2 x float> %i.bwp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bxb = insertelement <4 x float> %i.bxa, float %i.bvp, i64 0
  %i.bxc = shufflevector <2 x float> %i.bwz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bxd = shufflevector <4 x float> %i.bxb, <4 x float> %i.bxc, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.bxe = insertelement <4 x float> %i.bxd, float %i.bwb, i64 2 ; 2 uses
  %i.bxf = fmul <4 x float> %i.bxe, %i.bwy
  %i.bxg = insertelement <4 x float> poison, float %i.bvy, i64 0
  %i.bxh = shufflevector <4 x float> %i.bxg, <4 x float> %i.bxa, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bxi = shufflevector <4 x float> %i.bxh, <4 x float> %i.bxc, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.bxj = insertelement <4 x float> %i.bxi, float %i.bwg, i64 2 ; 2 uses
  %i.bxk = fadd <4 x float> %i.bxj, splat (float f0x3727C5AC)
  %i.bxl = shufflevector <4 x float> %i.bwv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bxm = fmul <4 x float> %i.bxl, %i.bxk
  %i.bxn = insertelement <4 x float> %i.bwr, float %i.bwe, i64 2
  %i.bxo = insertelement <4 x float> %i.bxn, float %i.bwo, i64 3
  %i.bxp = insertelement <4 x float> poison, float %i.bvw, i64 0
  %i.bxq = shufflevector <4 x float> %i.bxp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bxo, <4 x float> %i.bxq, <4 x float> %i.bxm)
  %i.bxs = fdiv <4 x float> %i.bxf, %i.bxr        ; 2 uses
  %i.bxt = insertelement <4 x float> poison, float %i.bvm, i64 0
  %i.bxu = shufflevector <4 x float> %i.bxt, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bxv = fsub <4 x float> %i.bxu, %i.bxj
  %i.bxw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bxv, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bxe) ; 8 uses
  %i.bxx = fsub <4 x float> splat (float 1.000000e+00), %i.bxs
  %i.bxy = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bxx)
  %i.bxz = fcmp olt <4 x float> %i.bxy, splat (float 7.500000e-01)
  %i.bya = fmul <4 x float> %i.bxu, %i.bxs
  %i.byb = select <4 x i1> %i.bxz, <4 x float> %i.bya, <4 x float> %i.bxw ; 3 uses
  %i.byc = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv2911
  %i.byd = getelementptr i8, ptr %i.byc, i64 -4
  %i.bye = load float, ptr %i.byd, align 4, !tbaa !111
  %i.byf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next2912
  %i.byg = load float, ptr %i.byf, align 4, !tbaa !111 ; 2 uses
  %i.byh = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bvn
  %i.byi = load float, ptr %i.byh, align 4, !tbaa !111
  %i.byj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bvz
  %i.byk = load float, ptr %i.byj, align 4, !tbaa !111
  %i.byl = insertelement <2 x float> poison, float %i.byi, i64 0
  %i.bym = insertelement <2 x float> %i.byl, float %i.bye, i64 1 ; 2 uses
  %i.byn = insertelement <2 x float> poison, float %i.byk, i64 0
  %i.byo = insertelement <2 x float> %i.byn, float %i.byg, i64 1
  %i.byp = fadd <2 x float> %i.bym, %i.byo
  %i.byq = fdiv <2 x float> %i.bym, %i.byp
  %i.byr = shufflevector <2 x float> %i.byq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bys = fsub <4 x float> splat (float 1.000000e+00), %i.byr
  %i.byt = shufflevector <4 x float> %i.byb, <4 x float> %i.bxw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.byu = fmul <4 x float> %i.bys, %i.byt
  %i.byv = shufflevector <4 x float> %i.byb, <4 x float> %i.bxw, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.byw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.byr, <4 x float> %i.byv, <4 x float> %i.byu) ; 4 uses
  %i.byx = fsub <4 x float> %i.bxu, %i.byw
  %i.byy = fsub <4 x float> %i.byw, %i.bxu
  %i.byz = select i1 %.022982641, <4 x float> %i.byx, <4 x float> %i.byy ; 4 uses
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv2911 ; 2 uses
  %i.bzb = extractelement <4 x float> %i.byz, i64 0
  store float %i.bzb, ptr %i.bza, align 4, !tbaa !111
  %i.bzc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv2911 ; 2 uses
  %i.bzd = extractelement <4 x float> %i.byz, i64 1
  store float %i.bzd, ptr %i.bzc, align 4, !tbaa !111
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv2911
  %i.bzf = extractelement <4 x float> %i.byz, i64 2 ; 2 uses
  store float %i.bzf, ptr %i.bze, align 4, !tbaa !111
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv2911
  %i.bzh = extractelement <4 x float> %i.byz, i64 3 ; 2 uses
  store float %i.bzh, ptr %i.bzg, align 4, !tbaa !111
  %i.bzi = xor i1 %.022982641, true
  %i.bzj = load float, ptr %i.bvv, align 4, !tbaa !111
  %i.bzk = load float, ptr %i.bsd, align 4, !tbaa !111 ; 3 uses
  %i.bzl = fcmp ogt float %i.bzj, %i.bzk
  %i.bzm = extractelement <4 x float> %i.byw, i64 2
  %i.bzn = fcmp ogt float %i.bzm, %i.bzk
  %or.cond2417 = select i1 %i.bzl, i1 true, i1 %i.bzn
  %i.bzo = extractelement <4 x float> %i.byw, i64 3
  %i.bzp = fcmp ogt float %i.bzo, %i.bzk
  %or.cond2418 = select i1 %or.cond2417, i1 true, i1 %i.bzp
  br i1 %or.cond2418, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.bzf, ptr %i.bza, align 4, !tbaa !111
  store float %i.bzh, ptr %i.bzc, align 4, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bzq = phi <4 x float> [ %i.bxw, %bb.d ], [ %i.byb, %bb.c ] ; 4 uses
  %i.bzr = shufflevector <4 x float> %i.bzq, <4 x float> %i.bxw, <2 x i32> <i32 0, i32 4>
  %i.bzs = shufflevector <4 x float> %i.bzq, <4 x float> %i.bxw, <2 x i32> <i32 2, i32 6>
  %i.bzt = fsub <2 x float> %i.bzr, %i.bzs        ; 2 uses
  %i.bzu = fmul <2 x float> %i.bzt, %i.bzt        ; 2 uses
  %i.bzv = extractelement <2 x float> %i.bzu, i64 0 ; 2 uses
  %i.bzw = extractelement <2 x float> %i.bzu, i64 1 ; 2 uses
  %i.bzx = fcmp olt float %i.bzv, %i.bzw
  %.sroa.speculated2517 = select i1 %i.bzx, float %i.bzv, float %i.bzw
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv2911
  store float %.sroa.speculated2517, ptr %i.bzy, align 4, !tbaa !111
  %i.bzz = shufflevector <4 x float> %i.bzq, <4 x float> %i.bxw, <2 x i32> <i32 1, i32 5>
  %i.caa = shufflevector <4 x float> %i.bzq, <4 x float> %i.bxw, <2 x i32> <i32 3, i32 7>
  %i.cab = fsub <2 x float> %i.bzz, %i.caa        ; 2 uses
  %i.cac = fmul <2 x float> %i.cab, %i.cab        ; 2 uses
  %i.cad = extractelement <2 x float> %i.cac, i64 0 ; 2 uses
  %i.cae = extractelement <2 x float> %i.cac, i64 1 ; 2 uses
  %i.caf = fcmp olt float %i.cad, %i.cae
  %.sroa.speculated2515 = select i1 %i.caf, float %i.cad, float %i.cae
  %i.cag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv2911
  store float %.sroa.speculated2515, ptr %i.cag, align 4, !tbaa !111
  %exitcond2916.not = icmp eq i64 %indvars.iv.next2912, %wide.trip.count2915
  %i.cah = extractelement <2 x float> %i.bwz, i64 0
  br i1 %exitcond2916.not, label %._crit_edge2646, label %bb.c, !llvm.loop !1550

.preheader2575:                                   ; preds = %._crit_edge2654, %.lr.ph2648
  %i.cai = add nsw i32 %i.an, -6                  ; 7 uses
  %i.caj = icmp sgt i32 %i.an, 12
  br i1 %i.caj, label %.lr.ph2663, label %._crit_edge2691..loopexit2572_crit_edge

.lr.ph2663:                                       ; preds = %.preheader2575
  %i.cak = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
