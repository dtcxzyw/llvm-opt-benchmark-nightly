Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 183
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESG_S4_S4_mSH_iENKUlvE_clEv":.from.
  br label %.from..noexc2.i.i23

.from..noexc2.i.i23:                              ; preds = %.noexc2.i.i23, %.from..lr.ph.i.i.i.i.i21
  %.sroa.09.013.i.i.i.i.i22 = phi ptr [ %i.bx, %.from..lr.ph.i.i.i.i.i21 ], [ %i.cp, %.noexc2.i.i23 ] ; 2 uses
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i22, align 8, !tbaa !133 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !89
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i23 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i16.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i23:                                    ; preds = %.from..noexc2.i.i23
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i22, i64 16 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i.i.i.i.i24, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i23

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i16.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i23, %bb.p
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %lpad.loopexit.split-lp94, 0
  call void @__clang_call_terminate(ptr %i.cq) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i23, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i18, %bb.q, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !97 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  store ptr %i.cu, ptr %.reload.addr, align 8
  %.not.i25 = icmp eq i64 %i.ct, 0
  br i1 %.not.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend48

AfterCoroSuspend48:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 1, ptr %index.addr74, align 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr nonnull %i.cu)
  br label %AfterCoroEnd

bb.r:                                             ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.69 unwind label %bb.u

.from.65:                                         ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.69

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !96  ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.t, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !89
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #44, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.s, %bb.t
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr72) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend48, %AfterCoroSave
  ret void

.body.from.69:                                    ; preds = %bb.r, %.from.65
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.65 ], [ %i.cw, %bb.r ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #44
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr72) #44
  br label %.body

.body:                                            ; preds = %.body.from.69, %.body.from.67, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.69 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.67 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44
  resume { ptr, i32 } %.merged11

bb.u:                                             ; preds = %bb.r
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #48
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #47 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr45 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr45)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.39 ; 5 uses

.body.from.39:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !3474
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !89, !noalias !3474
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !3474
  store i32 2, ptr %i.g, align 8, !tbaa !91, !noalias !3474
  store ptr %i.f, ptr %i.d, align 8, !tbaa !95, !alias.scope !3475
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !96, !alias.scope !3475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !3476
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr45)
          to label %bb.b unwind label %bb.d, !noalias !3476

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !97, !alias.scope !3476
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !100, !noalias !3476
  store ptr %i.j, ptr %i.i, align 8, !tbaa !100, !alias.scope !3476
  store ptr null, ptr %4, align 8, !tbaa !100, !noalias !3476
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !96, !noalias !3476 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !97, !noalias !3476
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !97, !alias.scope !3476
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !3476 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48, !noalias !3476
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !3476
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !3476
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !3478, !nonnull !185, !align !446 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3480, !nonnull !185, !align !448
  %i.v = load i32, ptr %i.u, align 4, !tbaa !151  ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  %wide.trip.count.i = zext i32 %i.v to i64       ; 4 uses
  br i1 %i.w, label %.preheader.lr.ph.i.from..lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.i.from..lr.ph.split:             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3481, !nonnull !185, !align !448 ; 8 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !3482, !nonnull !185, !align !446
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 9 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !151 ; 2 uses
  %.pre13.i = load ptr, ptr %i.ab, align 8, !tbaa !180 ; 4 uses
  %.phi.trans.insert14.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre15.i = load i64, ptr %.phi.trans.insert14.i, align 8, !tbaa !425 ; 2 uses
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.phi.trans.insert17.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.pre18.i = load i32, ptr %.phi.trans.insert17.i, align 8, !tbaa !151 ; 2 uses
  %.pre20.i = load ptr, ptr %.phi.trans.insert16.i, align 8, !tbaa !180 ; 4 uses
  %.phi.trans.insert22.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.pre23.i = load i64, ptr %.phi.trans.insert22.i, align 8, !tbaa !425 ; 2 uses
  %.phi.trans.insert24.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.pre26.i = load i32, ptr %.phi.trans.insert25.i, align 8, !tbaa !151 ; 2 uses
  %.pre28.i = load ptr, ptr %.phi.trans.insert24.i, align 8, !tbaa !180 ; 4 uses
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %.pre31.i = load i64, ptr %.phi.trans.insert30.i, align 8, !tbaa !425 ; 2 uses
  %i.ac = sext i32 %.pre.i to i64                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ae = sext i32 %.pre18.i to i64               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ag = sext i32 %.pre26.i to i64               ; 3 uses
  %i.ah = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %3 to i64           ; 2 uses
  %i.ai = mul nsw i64 %i.ac, %i.ah
  %i.aj = shl i64 %i.ai, 2
  %scevgep = getelementptr i8, ptr %.pre13.i, i64 %i.aj ; 3 uses
  %i.ak = shl nsw i64 %wide.trip.count, 2
  %i.al = add nsw i64 %i.ak, -4                   ; 3 uses
  %i.am = mul i64 %i.al, %i.ac
  %i.an = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.ao = getelementptr i8, ptr %.pre13.i, i64 %i.am
  %scevgep58 = getelementptr i8, ptr %i.ao, i64 %i.an ; 3 uses
  %i.ap = mul nsw i64 %i.ae, %i.ah
  %i.aq = shl i64 %i.ap, 2
  %scevgep59 = getelementptr i8, ptr %.pre20.i, i64 %i.aq ; 3 uses
  %i.ar = mul i64 %i.al, %i.ae
  %i.as = getelementptr i8, ptr %.pre20.i, i64 %i.ar
  %scevgep60 = getelementptr i8, ptr %i.as, i64 %i.an ; 3 uses
  %i.at = mul nsw i64 %i.ag, %i.ah
  %i.au = shl i64 %i.at, 2
  %scevgep61 = getelementptr i8, ptr %.pre28.i, i64 %i.au ; 3 uses
  %i.av = mul i64 %i.al, %i.ag
  %i.aw = getelementptr i8, ptr %.pre28.i, i64 %i.av
  %scevgep62 = getelementptr i8, ptr %i.aw, i64 %i.an ; 3 uses
  %scevgep63 = getelementptr i8, ptr %i.z, i64 12 ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 12
  %ident.check = icmp ne i64 %.pre15.i, 1
  %ident.check56 = icmp ne i64 %.pre23.i, 1
  %ident.check57 = icmp ne i64 %.pre31.i, 1
  %i.ax = or i1 %ident.check, %ident.check56
  %i.ay = or i1 %i.ax, %ident.check57
  %bound0 = icmp ult ptr %scevgep, %scevgep60
  %bound1 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  %5 = or i32 %.pre18.i, %.pre.i
  %6 = icmp slt i32 %5, 0
  %7 = or i1 %found.conflict, %6
  %bound070 = icmp ult ptr %scevgep, %scevgep62
  %bound171 = icmp ult ptr %scevgep61, %scevgep58
  %found.conflict72 = and i1 %bound070, %bound171
  %stride.check73 = icmp slt i32 %.pre26.i, 0
  %i.az = or i1 %found.conflict72, %stride.check73
  %conflict.rdx74 = or i1 %7, %i.az
  %bound075 = icmp ult ptr %scevgep, %scevgep63
  %bound176 = icmp ult ptr %i.z, %scevgep58
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx72 = or i1 %conflict.rdx74, %found.conflict77
  %bound073 = icmp ult ptr %scevgep59, %scevgep62
  %bound174 = icmp ult ptr %scevgep61, %scevgep60
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx80.a = or i1 %conflict.rdx72, %found.conflict75
  %bound081.a = icmp ult ptr %scevgep59, %scevgep63
  %bound182.a = icmp ult ptr %i.z, %scevgep60
  %found.conflict83.a = and i1 %bound081.a, %bound182.a
  %conflict.rdx85 = or i1 %conflict.rdx80.a, %found.conflict83.a
  %bound086 = icmp ult ptr %scevgep61, %scevgep63
  %bound187 = icmp ult ptr %i.z, %scevgep62
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx90 = or i1 %conflict.rdx85, %found.conflict88
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i.from..preheader.lr.ph.i

._crit_edge.split:                                ; preds = %"_ZZN3tev11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiENK3$_2clEi.exit.loopexit", %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr45)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge.split
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #48
  unreachable

.preheader.i.from..preheader.lr.ph.i:             ; preds = %"_ZZN3tev11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiENK3$_2clEi.exit.loopexit", %.preheader.lr.ph.i.from..lr.ph.split
  %indvars.iv = phi i64 [ %i.ah, %.preheader.lr.ph.i.from..lr.ph.split ], [ %indvars.iv.next, %"_ZZN3tev11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiENK3$_2clEi.exit.loopexit" ] ; 4 uses
  %i.bc = mul nsw i64 %indvars.iv, %i.ac          ; 2 uses
  %i.bd = mul nsw i64 %indvars.iv, %i.ae          ; 2 uses
  %i.be = mul nsw i64 %indvars.iv, %i.ag          ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ay
  %brmerge102 = select i1 %brmerge, i1 true, i1 %conflict.rdx90
  br i1 %brmerge102, label %.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.from..preheader.lr.ph.i
  %i.bf = load float, ptr %i.z, align 4, !tbaa !79, !alias.scope !3483
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = load float, ptr %i.ad, align 4, !tbaa !79, !alias.scope !3483
  %broadcast.splatinsert92 = insertelement <4 x float> poison, float %i.bg, i64 0
  %broadcast.splat93 = shufflevector <4 x float> %broadcast.splatinsert92, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = load float, ptr %i.af, align 4, !tbaa !79, !alias.scope !3483
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.bh, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr [4 x i8], ptr %.pre13.i, i64 %i.bc
  %invariant.gep98 = getelementptr [4 x i8], ptr %.pre20.i, i64 %i.bd
  %invariant.gep100 = getelementptr [4 x i8], ptr %.pre28.i, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !79, !alias.scope !3484, !noalias !3485
  %i.bi = fmul <4 x float> %broadcast.splat, %wide.load
  store <4 x float> %i.bi, ptr %gep, align 4, !tbaa !79, !alias.scope !3484, !noalias !3485
  %gep99 = getelementptr [4 x i8], ptr %invariant.gep98, i64 %index ; 2 uses
  %wide.load91 = load <4 x float>, ptr %gep99, align 4, !tbaa !79, !alias.scope !3486, !noalias !3487
  %i.bj = fmul <4 x float> %broadcast.splat93, %wide.load91
  store <4 x float> %i.bj, ptr %gep99, align 4, !tbaa !79, !alias.scope !3486, !noalias !3487
  %gep101 = getelementptr [4 x i8], ptr %invariant.gep100, i64 %index ; 2 uses
  %wide.load94 = load <4 x float>, ptr %gep101, align 4, !tbaa !79, !alias.scope !3488, !noalias !3483
  %i.bk = fmul <4 x float> %broadcast.splat96, %wide.load94
  store <4 x float> %i.bk, ptr %gep101, align 4, !tbaa !79, !alias.scope !3488, !noalias !3483
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !3469

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZZN3tev11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiENK3$_2clEi.exit.loopexit", label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.from..preheader.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i.from..preheader.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 4 uses
  %i.bm = load float, ptr %i.z, align 4, !tbaa !79
  %i.bn = add nsw i64 %indvars.iv.i, %i.bc
  %i.bo = mul i64 %i.bn, %.pre15.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre13.i, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !79
  %i.br = fmul float %i.bm, %i.bq
  store float %i.br, ptr %i.bp, align 4, !tbaa !79
  %i.bs = load float, ptr %i.ad, align 4, !tbaa !79
  %i.bt = add nsw i64 %indvars.iv.i, %i.bd
  %i.bu = mul i64 %i.bt, %.pre23.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.pre20.i, i64 %i.bu ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !79
  %i.bx = fmul float %i.bs, %i.bw
  store float %i.bx, ptr %i.bv, align 4, !tbaa !79
  %i.by = load float, ptr %i.af, align 4, !tbaa !79
  %i.bz = add nsw i64 %indvars.iv.i, %i.be
  %i.ca = mul i64 %i.bz, %.pre31.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.pre28.i, i64 %i.ca ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !79
  %i.cd = fmul float %i.by, %i.cc
  store float %i.cd, ptr %i.cb, align 4, !tbaa !79
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %"_ZZN3tev11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiENK3$_2clEi.exit.loopexit", label %.preheader.i, !llvm.loop !3470

"_ZZN3tev11demosaicCfaEP4tiffNS_11ChannelViewIfEERKNS_16MultiChannelViewIfEEiENK3$_2clEi.exit.loopexit": ; preds = %.preheader.i, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader.i.from..preheader.lr.ph.i, !llvm.loop !3471

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge.split
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.g
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !117 ; 7 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !128
  %i.cl = and i32 %i.ck, 8
  %.not.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !129 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 33
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cn, %.from..lr.ph.i.i.i.i.i ], [ %i.df, %.noexc2.i.i ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.cv = load i8, ptr %i.cq, align 8             ; 2 uses
  %i.cw = trunc i8 %i.cv to i1                    ; 2 uses
  %i.cx = load ptr, ptr %i.cr, align 8
  %i.cy = select i1 %i.cw, ptr %i.cx, ptr %i.cs
  %i.cz = load i64, ptr %i.ct, align 8
  %i.da = lshr i8 %i.cv, 1
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = select i1 %i.cw, i64 %i.cz, i64 %i.db
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !89
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr %i.cy, i64 %i.dc, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.df, %i.cp
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.g
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %lpad.loopexit.split-lp97, 0
  call void @__clang_call_terminate(ptr %i.dg) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dh = icmp slt i32 %i.cg, 2
  br i1 %i.dh, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !97 ; 2 uses
  %i.dk = inttoptr i64 %i.dj to ptr               ; 3 uses
  store ptr %i.dk, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr46 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr46, align 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr nonnull %i.dk)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !96  ; 5 uses
  %.not.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.j, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !89
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #44, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.i, %bb.j
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr45) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %AfterCoroEnd
end_hunk_0
begin_hunk_1_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvEUlmE_EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm":.from.
.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !5788, !nonnull !185, !align !446 ; 11 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !5790, !nonnull !185, !align !446
  %i.v = load i64, ptr %i.u, align 8, !tbaa !87   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !5791, !nonnull !185, !align !447
  %i.y = load i16, ptr %i.x, align 2, !tbaa !82
  %i.z = icmp eq i16 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !5792, !nonnull !185, !align !446
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !87 ; 17 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5793, !nonnull !185, !align !446
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !87 ; 9 uses
  %i.ag = icmp ult i64 %i.ac, %i.af               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  br i1 %i.z, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ag, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !5794, !nonnull !185, !align !447
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !82 ; 4 uses
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %.not.i.us = icmp eq i16 %i.ap, 0
  br i1 %.not.i.us, label %._crit_edge, label %.lr.ph27.i.us.from..lr.ph30.i.us.preheader

.lr.ph27.i.us.from..lr.ph30.i.us.preheader:       ; preds = %.lr.ph.split.us.split
  %xtraiter100 = and i64 %i.aq, 1
  %i.ar = icmp eq i16 %i.ap, 1
  %unroll_iter = and i64 %i.aq, 65534
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  %lcmp.mod102 = trunc i16 %i.ap to i1
  br label %.lr.ph27.i.us.from..lr.ph30.i.us

.lr.ph27.i.us.from..lr.ph30.i.us:                 ; preds = %.lr.ph27.i.us.from..lr.ph30.i.us.preheader, %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us"
  %.024.us = phi i64 [ %i.dg, %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us" ], [ %2, %.lr.ph27.i.us.from..lr.ph30.i.us.preheader ] ; 3 uses
  %i.as = sub i64 %.024.us, %i.v
  %i.at = shl i64 %i.as, 32
  %i.au = ashr exact i64 %i.at, 32                ; 3 uses
  %i.av = load ptr, ptr %i.ak, align 8, !nonnull !185, !align !448 ; 3 uses
  %i.aw = load ptr, ptr %i.am, align 8, !nonnull !185, !align !448
  %i.ax = load ptr, ptr %i.al, align 8, !nonnull !185, !align !446
  %i.ay = load ptr, ptr %i.aj, align 8, !nonnull !185, !align !446
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !833 ; 3 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !148
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !151
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %.024.us, %i.bc
  br label %.from..lr.ph27.i.us

.from..lr.ph27.i.us:                              ; preds = %._crit_edge.i.us, %.lr.ph27.i.us.from..lr.ph30.i.us
  %.028.i.us = phi i64 [ %i.ac, %.lr.ph27.i.us.from..lr.ph30.i.us ], [ %i.df, %._crit_edge.i.us ] ; 3 uses
  %i.be = sub nuw i64 %.028.i.us, %i.ac
  %i.bf = shl i64 %i.be, 32
  %i.bg = ashr exact i64 %i.bf, 32                ; 3 uses
  %i.bh = add i64 %.028.i.us, %i.bd
  %i.bi = mul i64 %i.bh, %i.aq
  %i.bj = getelementptr [4 x i8], ptr %i.ba, i64 %i.bi ; 3 uses
  br i1 %i.ar, label %.from.52.epil.preheader, label %.from.52

.from.52:                                         ; preds = %.from..lr.ph27.i.us, %.from.52
  %.02326.i.us = phi i64 [ %i.cp, %.from.52 ], [ 0, %.from..lr.ph27.i.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.from.52 ], [ 0, %.from..lr.ph27.i.us ]
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.02326.i.us ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !151
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.au, %i.bn
  %i.bp = add nsw i64 %i.bo, %i.bg
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !180
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !425
  %i.bt = mul i64 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !79
  %i.bw = load float, ptr %i.av, align 4, !tbaa !79
  %i.bx = fmul float %i.bv, %i.bw
  %i.by = getelementptr [4 x i8], ptr %i.bj, i64 %.02326.i.us
  store float %i.bx, ptr %i.by, align 4, !tbaa !79
  %i.bz = or disjoint i64 %.02326.i.us, 1         ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !151
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul nsw i64 %i.au, %i.cd
  %i.cf = add nsw i64 %i.ce, %i.bg
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !180
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !425
  %i.cj = mul i64 %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !79
  %i.cm = load float, ptr %i.av, align 4, !tbaa !79
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr [4 x i8], ptr %i.bj, i64 %i.bz
  store float %i.cn, ptr %i.co, align 4, !tbaa !79
  %i.cp = add nuw nsw i64 %.02326.i.us, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.us.unr-lcssa, label %.from.52, !llvm.loop !5773

._crit_edge.i.us.unr-lcssa:                       ; preds = %.from.52
  br i1 %lcmp.mod101.not, label %._crit_edge.i.us, label %.from.52.epil.preheader

.from.52.epil.preheader:                          ; preds = %._crit_edge.i.us.unr-lcssa, %.from..lr.ph27.i.us
  %.02326.i.us.epil.init = phi i64 [ 0, %.from..lr.ph27.i.us ], [ %i.cp, %._crit_edge.i.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.02326.i.us.epil.init ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !151
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.au, %i.ct
  %i.cv = add nsw i64 %i.cu, %i.bg
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !180
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !425
  %i.cz = mul i64 %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !79
  %i.dc = load float, ptr %i.av, align 4, !tbaa !79
  %i.dd = fmul float %i.db, %i.dc
  %i.de = getelementptr [4 x i8], ptr %i.bj, i64 %.02326.i.us.epil.init
  store float %i.dd, ptr %i.de, align 4, !tbaa !79
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.unr-lcssa, %.from.52.epil.preheader
  %i.df = add nuw i64 %.028.i.us, 1               ; 2 uses
  %exitcond33.not.i.us = icmp eq i64 %i.df, %i.af
  br i1 %exitcond33.not.i.us, label %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us", label %.from..lr.ph27.i.us, !llvm.loop !5774

"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us": ; preds = %._crit_edge.i.us
  %i.dg = add nuw i64 %.024.us, 1                 ; 2 uses
  %exitcond28.not = icmp eq i64 %i.dg, %3
  br i1 %exitcond28.not, label %._crit_edge, label %.lr.ph27.i.us.from..lr.ph30.i.us, !llvm.loop !5775

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.ag, label %.lr.ph.i.from..lr.ph.split.split, label %._crit_edge

.lr.ph.i.from..lr.ph.split.split:                 ; preds = %.lr.ph.split
  %i.dh = load ptr, ptr %i.ah, align 8, !tbaa !5795, !nonnull !185, !align !446
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !87
  %i.dj = load ptr, ptr %i.ai, align 8, !tbaa !5796, !nonnull !185, !align !446
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !87
  %i.dl = udiv i64 %i.di, %i.dk                   ; 3 uses
  %i.dm = load ptr, ptr %i.aj, align 8, !tbaa !5797, !nonnull !185, !align !446
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !833 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !151
  %i.dq = sext i32 %i.dp to i64                   ; 3 uses
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !180 ; 9 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !425 ; 9 uses
  %i.du = load ptr, ptr %i.ak, align 8, !tbaa !5798, !nonnull !185, !align !448 ; 6 uses
  %i.dv = load ptr, ptr %i.al, align 8, !tbaa !5799, !nonnull !185, !align !446
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !148 ; 3 uses
  %i.dx = load ptr, ptr %i.am, align 8, !tbaa !5800, !nonnull !185, !align !448
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !151 ; 2 uses
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %i.ea = load ptr, ptr %i.an, align 8, !tbaa !5794, !nonnull !185, !align !447
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !82 ; 2 uses
  %i.ec = zext i16 %i.eb to i64                   ; 3 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.dw, i64 %i.dl ; 4 uses
  %i.ed = mul i64 %2, %i.dz                       ; 2 uses
  %i.ee = add i64 %i.ac, %i.ed
  %i.ef = add i64 %i.dl, %i.ee
  %i.eg = shl i64 %i.ef, 2
  %scevgep = getelementptr i8, ptr %i.dw, i64 %i.eg ; 2 uses
  %i.eh = xor i64 %2, -1
  %i.ei = add i64 %3, %i.eh
  %i.ej = mul i64 %i.ei, %i.dz
  %i.ek = add i64 %i.af, %i.dl
  %i.el = add i64 %i.ek, %i.ed
  %i.em = add i64 %i.ej, %i.el
  %i.en = shl i64 %i.em, 2
  %scevgep89 = getelementptr i8, ptr %i.dw, i64 %i.en ; 2 uses
  %scevgep90 = getelementptr i8, ptr %i.du, i64 4
  %i.eo = mul i64 %i.dt, %i.dq
  %i.ep = shl i64 %i.eo, 2
  %i.eq = trunc i64 %2 to i32
  %i.er = trunc i64 %i.v to i32
  %i.es = sub i32 %i.eq, %i.er
  %invariant.op107 = sub i64 %i.af, %i.ac
  %i.et = sub i64 %i.af, %i.ac                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.et, 8
  %ident.check = icmp ne i16 %i.eb, 1
  %i.eu = sub i64 %i.ac, %i.af
  %i.ev = icmp ult i64 %i.eu, -2147483648
  %i.ew = or i1 %ident.check, %i.ev
  %bound0 = icmp ult ptr %scevgep, %scevgep90
  %bound1 = icmp ult ptr %i.du, %scevgep89
  %found.conflict = and i1 %bound0, %bound1
  %stride.check97 = icmp slt i32 %i.dy, 0
  %invariant.op109 = or i1 %found.conflict, %stride.check97
  %n.vec = and i64 %i.et, -4                      ; 3 uses
  %i.ex = add i64 %i.ac, %n.vec
  %invariant.op = sub i64 1, %i.ac
  %invariant.op103 = sub i64 2, %i.ac
  %invariant.op105 = sub i64 3, %i.ac
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br label %.from..lr.ph.i

._crit_edge:                                      ; preds = %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us", %.lr.ph.split.us.split, %.lr.ph.split.us, %.lr.ph.split, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr68)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #48
  unreachable

.from..lr.ph.i:                                   ; preds = %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", %.lr.ph.i.from..lr.ph.split.split
  %indvar = phi i32 [ %indvar.next, %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23" ], [ 0, %.lr.ph.i.from..lr.ph.split.split ] ; 2 uses
  %.024 = phi i64 [ %i.if, %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23" ], [ %2, %.lr.ph.i.from..lr.ph.split.split ] ; 3 uses
  %i.fa = add i32 %i.es, %indvar
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = mul i64 %i.ep, %i.fb
  %scevgep91 = getelementptr i8, ptr %i.dr, i64 %i.fc ; 4 uses
  %i.fd = mul nsw i64 %i.dq, %i.fb
  %.reass108 = add i64 %i.fd, %invariant.op107
  %reass.sub = shl i64 %.reass108, 2
  %i.fe = add i64 %reass.sub, -4
  %i.ff = mul i64 %i.dt, %i.fe
  %scevgep92 = getelementptr i8, ptr %i.dr, i64 %i.ff ; 4 uses
  %i.fg = icmp ult ptr %scevgep91, %scevgep92
  %umin = select i1 %i.fg, ptr %scevgep91, ptr %scevgep92
  %i.fh = icmp ugt ptr %scevgep91, %scevgep92
  %umax = select i1 %i.fh, ptr %scevgep91, ptr %scevgep92
  %scevgep93 = getelementptr i8, ptr %umax, i64 4
  %i.fi = sub i64 %.024, %i.v
  %i.fj = shl i64 %i.fi, 32
  %i.fk = ashr exact i64 %i.fj, 32
  %i.fl = mul nsw i64 %i.fk, %i.dq                ; 7 uses
  %i.fm = mul i64 %.024, %i.dz                    ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ew
  br i1 %brmerge, label %.from.57.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.from..lr.ph.i
  %bound094 = icmp ult ptr %scevgep, %scevgep93
  %bound195 = icmp ult ptr %umin, %scevgep89
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx.reass = or i1 %invariant.op109, %found.conflict96
  br i1 %conflict.rdx.reass, label %.from.57.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fn = load float, ptr %i.du, align 4, !tbaa !79, !alias.scope !5801
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fo = add nuw i64 %i.ac, %index               ; 4 uses
  %.reass = add i64 %i.fo, %invariant.op
  %.reass104 = add i64 %i.fo, %invariant.op103
  %.reass106 = add i64 %i.fo, %invariant.op105
  %i.fp = shl i64 %index, 32
  %i.fq = shl i64 %.reass, 32
  %i.fr = shl i64 %.reass104, 32
  %i.fs = shl i64 %.reass106, 32
  %i.ft = ashr exact i64 %i.fp, 32
  %i.fu = ashr exact i64 %i.fq, 32
  %i.fv = ashr exact i64 %i.fr, 32
  %i.fw = ashr exact i64 %i.fs, 32
  %i.fx = add nsw i64 %i.ft, %i.fl
  %i.fy = add nsw i64 %i.fu, %i.fl
  %i.fz = add nsw i64 %i.fv, %i.fl
  %i.ga = add nsw i64 %i.fw, %i.fl
  %i.gb = mul i64 %i.fx, %i.dt
  %i.gc = mul i64 %i.fy, %i.dt
  %i.gd = mul i64 %i.fz, %i.dt
  %i.ge = mul i64 %i.ga, %i.dt
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.gb
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.gc
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.gd
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ge
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !79, !alias.scope !5802
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !79, !alias.scope !5802
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !79, !alias.scope !5802
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !79, !alias.scope !5802
  %i.gn = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 1
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 2
  %i.gq = insertelement <4 x float> %i.gp, float %i.gm, i64 3
  %i.gr = fmul <4 x float> %i.gq, %broadcast.splat
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fo
  store <4 x float> %i.gr, ptr %gep, align 4, !tbaa !79, !alias.scope !5803, !noalias !5804
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !5780

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", label %.from.57.preheader

.from.57.preheader:                               ; preds = %.from..lr.ph.i, %vector.memcheck, %middle.block
  %.02225.i.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ex, %middle.block ], [ %i.ac, %.from..lr.ph.i ] ; 6 uses
  %i.gt = sub i64 %i.af, %.02225.i.ph
  %.neg = add i64 %.02225.i.ph, 1
  %xtraiter = and i64 %i.gt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.from.57.prol.loopexit, label %.from.57.prol

.from.57.prol:                                    ; preds = %.from.57.preheader
  %i.gu = sub nuw i64 %.02225.i.ph, %i.ac
  %i.gv = shl i64 %i.gu, 32
  %i.gw = ashr exact i64 %i.gv, 32
  %i.gx = add nsw i64 %i.gw, %i.fl
  %i.gy = mul i64 %i.gx, %i.dt
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.gy
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !79
  %i.hb = load float, ptr %i.du, align 4, !tbaa !79
  %i.hc = fmul float %i.ha, %i.hb
  %i.hd = add i64 %.02225.i.ph, %i.fm
  %i.he = mul i64 %i.hd, %i.ec
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.he
  store float %i.hc, ptr %gep.i.prol, align 4, !tbaa !79
  %i.hf = add nuw i64 %.02225.i.ph, 1
  br label %.from.57.prol.loopexit

.from.57.prol.loopexit:                           ; preds = %.from.57.prol, %.from.57.preheader
  %.02225.i.unr = phi i64 [ %.02225.i.ph, %.from.57.preheader ], [ %i.hf, %.from.57.prol ]
  %i.hg = icmp eq i64 %i.af, %.neg
  br i1 %i.hg, label %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", label %.from.57

.from.57:                                         ; preds = %.from.57.prol.loopexit, %.from.57
  %.02225.i = phi i64 [ %i.ie, %.from.57 ], [ %.02225.i.unr, %.from.57.prol.loopexit ] ; 4 uses
  %i.hh = sub nuw i64 %.02225.i, %i.ac
  %i.hi = shl i64 %i.hh, 32
  %i.hj = ashr exact i64 %i.hi, 32
  %i.hk = add nsw i64 %i.hj, %i.fl
  %i.hl = mul i64 %i.hk, %i.dt
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !79
  %i.ho = load float, ptr %i.du, align 4, !tbaa !79
  %i.hp = fmul float %i.hn, %i.ho
  %i.hq = add i64 %.02225.i, %i.fm
  %i.hr = mul i64 %i.hq, %i.ec
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hr
  store float %i.hp, ptr %gep.i, align 4, !tbaa !79
  %i.hs = add nuw i64 %.02225.i, 1                ; 2 uses
  %i.ht = sub nuw i64 %i.hs, %i.ac
  %i.hu = shl i64 %i.ht, 32
  %i.hv = ashr exact i64 %i.hu, 32
  %i.hw = add nsw i64 %i.hv, %i.fl
  %i.hx = mul i64 %i.hw, %i.dt
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !79
  %i.ia = load float, ptr %i.du, align 4, !tbaa !79
  %i.ib = fmul float %i.hz, %i.ia
  %i.ic = add i64 %i.hs, %i.fm
  %i.id = mul i64 %i.ic, %i.ec
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.id
  store float %i.ib, ptr %gep.i.1, align 4, !tbaa !79
  %i.ie = add nuw i64 %.02225.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ie, %i.af
  br i1 %exitcond.not.i.1, label %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", label %.from.57, !llvm.loop !5781

"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23": ; preds = %.from.57.prol.loopexit, %.from.57, %middle.block
  %i.if = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.if, %3
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge, label %.from..lr.ph.i, !llvm.loop !5775

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = atomicrmw add ptr %i.ih, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ij = icmp slt i32 %i.ii, 1
  br i1 %i.ij, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.g
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !117 ; 7 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !128
  %i.in = and i32 %i.im, 8
  %.not.i.i.i.i = icmp eq i32 %i.in, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !129 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ip, %i.ir
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 33
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ip, %.from..lr.ph.i.i.i.i.i ], [ %i.jh, %.noexc2.i.i ] ; 2 uses
  %i.iw = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.ix = load i8, ptr %i.is, align 8             ; 2 uses
  %i.iy = trunc i8 %i.ix to i1                    ; 2 uses
  %i.iz = load ptr, ptr %i.it, align 8
  %i.ja = select i1 %i.iy, ptr %i.iz, ptr %i.iu
  %i.jb = load i64, ptr %i.iv, align 8
  %i.jc = lshr i8 %i.ix, 1
  %i.jd = zext nneg i8 %i.jc to i64
  %i.je = select i1 %i.iy, i64 %i.jb, i64 %i.jd
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !89
  %i.jg = load ptr, ptr %i.jf, align 8
  invoke void %i.jg(ptr noundef nonnull align 8 dereferenceable(8) %i.iw, ptr %i.ja, i64 %i.je, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jh, %i.ir
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.g
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          catch ptr null
  %i.ji = extractvalue { ptr, i32 } %lpad.loopexit.split-lp98, 0
  call void @__clang_call_terminate(ptr %i.ji) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.jj = icmp slt i32 %i.ii, 2
  br i1 %i.jj, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.jk = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !97 ; 2 uses
  %i.jm = inttoptr i64 %i.jl to ptr               ; 3 uses
  store ptr %i.jm, ptr %.reload.addr, align 8
  %.not.i20 = icmp eq i64 %i.jl, 0
  br i1 %.not.i20, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr69, align 8
  %i.jn = load ptr, ptr %i.jm, align 8
end_hunk_1
