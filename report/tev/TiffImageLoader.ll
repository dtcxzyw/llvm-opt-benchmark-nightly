Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 178
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESG_S4_S4_mSH_iENKUlvE_clEv":.from.
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !89
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !0

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
  call void @__clang_call_terminate(ptr %i.cq) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !97 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  store ptr %i.cu, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.ct, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend45

AfterCoroSuspend45:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 1, ptr %index.addr71, align 8
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !96  ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !89
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #44, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #44
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #44
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #48
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #34 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #47 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr49 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr49)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3942)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.43 ; 5 uses

.body.from.43:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr49) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !3943
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !89, !noalias !3943
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !3943
  store i32 2, ptr %i.g, align 8, !tbaa !91, !noalias !3943
  store ptr %i.f, ptr %i.d, align 8, !tbaa !95, !alias.scope !3944
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !96, !alias.scope !3944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !3945
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr49)
          to label %bb.b unwind label %bb.d, !noalias !3945

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !97, !alias.scope !3945
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !100, !noalias !3945
  store ptr %i.j, ptr %i.i, align 8, !tbaa !100, !alias.scope !3945
  store ptr null, ptr %4, align 8, !tbaa !100, !noalias !3945
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !96, !noalias !3945 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !97, !noalias !3945
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !97, !alias.scope !3945
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !3945 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48, !noalias !3945
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !3945
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !3945
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !3947, !nonnull !185, !align !446 ; 2 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !3949
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val20 = load ptr, ptr %i.u, align 8, !tbaa !3950 ; 14 uses
  %i.v = load ptr, ptr %.val, align 8, !tbaa !103 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !180  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !425  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !425 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !180 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !425 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val20, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val20, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val20, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val20, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val20, i64 20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val20, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val20, i64 28 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val20, i64 32 ; 2 uses
  %i.ap = sub nuw i64 %3, %2                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check, label %.from.39.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.from..lr.ph
  %ident.check = icmp ne i64 %i.y, 1
  %ident.check59 = icmp ne i64 %i.ac, 1
  %ident.check60 = icmp ne i64 %i.ag, 1
  %i.aq = or i1 %ident.check, %ident.check59
  %i.ar = or i1 %i.aq, %ident.check60
  br i1 %i.ar, label %.from.39.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.as = shl i64 %2, 2                           ; 3 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.as ; 3 uses
  %i.at = shl i64 %3, 2                           ; 3 uses
  %scevgep61 = getelementptr i8, ptr %i.w, i64 %i.at ; 3 uses
  %scevgep62 = getelementptr i8, ptr %i.aa, i64 %i.as ; 3 uses
  %scevgep63 = getelementptr i8, ptr %i.aa, i64 %i.at ; 3 uses
  %scevgep64 = getelementptr i8, ptr %i.ae, i64 %i.as ; 3 uses
  %scevgep65 = getelementptr i8, ptr %i.ae, i64 %i.at ; 3 uses
  %scevgep66 = getelementptr i8, ptr %.val20, i64 36 ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep63
  %bound1 = icmp ult ptr %scevgep62, %scevgep61
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %scevgep, %scevgep65
  %bound168 = icmp ult ptr %scevgep64, %scevgep61
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %bound070 = icmp ult ptr %scevgep, %scevgep66
  %bound171 = icmp ult ptr %.val20, %scevgep61
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  %bound074 = icmp ult ptr %scevgep62, %scevgep65
  %bound175 = icmp ult ptr %scevgep64, %scevgep63
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  %bound078 = icmp ult ptr %scevgep62, %scevgep66
  %bound179 = icmp ult ptr %.val20, %scevgep63
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx77, %found.conflict80
  %bound082 = icmp ult ptr %scevgep64, %scevgep66
  %bound183 = icmp ult ptr %.val20, %scevgep65
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br i1 %conflict.rdx85, label %.from.39.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, -4                      ; 3 uses
  %i.au = add i64 %2, %n.vec
  %i.av = load float, ptr %.val20, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.av, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = load float, ptr %i.ah, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert88 = insertelement <4 x float> poison, float %i.aw, i64 0
  %broadcast.splat89 = shufflevector <4 x float> %broadcast.splatinsert88, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = load float, ptr %i.ai, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert90 = insertelement <4 x float> poison, float %i.ax, i64 0
  %broadcast.splat91 = shufflevector <4 x float> %broadcast.splatinsert90, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ay = load float, ptr %i.aj, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert92 = insertelement <4 x float> poison, float %i.ay, i64 0
  %broadcast.splat93 = shufflevector <4 x float> %broadcast.splatinsert92, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = load float, ptr %i.ak, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert94 = insertelement <4 x float> poison, float %i.az, i64 0
  %broadcast.splat95 = shufflevector <4 x float> %broadcast.splatinsert94, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ba = load float, ptr %i.al, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert96 = insertelement <4 x float> poison, float %i.ba, i64 0
  %broadcast.splat97 = shufflevector <4 x float> %broadcast.splatinsert96, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = load float, ptr %i.am, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert98 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat99 = shufflevector <4 x float> %broadcast.splatinsert98, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = load float, ptr %i.an, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert100 = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat101 = shufflevector <4 x float> %broadcast.splatinsert100, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = load float, ptr %i.ao, align 4, !tbaa !79, !alias.scope !3951
  %broadcast.splatinsert102 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat103 = shufflevector <4 x float> %broadcast.splatinsert102, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = add nuw i64 %2, %index                  ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.be ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bf, align 4, !tbaa !79, !alias.scope !3952, !noalias !3953 ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.be ; 2 uses
  %wide.load86 = load <4 x float>, ptr %i.bg, align 4, !tbaa !79, !alias.scope !3954, !noalias !3955 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.be ; 2 uses
  %wide.load87 = load <4 x float>, ptr %i.bh, align 4, !tbaa !79, !alias.scope !3956, !noalias !3951 ; 3 uses
  %i.bi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> zeroinitializer)
  %i.bj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat89, <4 x float> %wide.load, <4 x float> zeroinitializer)
  %i.bk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat91, <4 x float> %wide.load, <4 x float> zeroinitializer)
  %i.bl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat93, <4 x float> %wide.load86, <4 x float> %i.bi)
  %i.bm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat95, <4 x float> %wide.load86, <4 x float> %i.bj)
  %i.bn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat97, <4 x float> %wide.load86, <4 x float> %i.bk)
  %i.bo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat99, <4 x float> %wide.load87, <4 x float> %i.bl)
  %i.bp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat101, <4 x float> %wide.load87, <4 x float> %i.bm)
  %i.bq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat103, <4 x float> %wide.load87, <4 x float> %i.bn)
  store <4 x float> %i.bo, ptr %i.bf, align 4, !tbaa !79, !alias.scope !3952, !noalias !3953
  store <4 x float> %i.bp, ptr %i.bg, align 4, !tbaa !79, !alias.scope !3954, !noalias !3955
  store <4 x float> %i.bq, ptr %i.bh, align 4, !tbaa !79, !alias.scope !3956, !noalias !3951
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !3939

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.from.39.preheader

.from.39.preheader:                               ; preds = %vector.memcheck, %vector.scevcheck, %.from..lr.ph, %middle.block
  %.023.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %vector.scevcheck ], [ %2, %.from..lr.ph ], [ %i.au, %middle.block ]
  br label %.from.39

._crit_edge:                                      ; preds = %.from.39, %middle.block, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr49)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #48
  unreachable

.from.39:                                         ; preds = %.from.39.preheader, %.from.39
  %.023 = phi i64 [ %i.cj, %.from.39 ], [ %.023.ph, %.from.39.preheader ] ; 4 uses
  %i.bu = mul i64 %.023, %i.y
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bu ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !79 ; 3 uses
  %i.bx = mul i64 %.023, %i.ac
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bx ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !79 ; 3 uses
  %i.ca = mul i64 %.023, %i.ag
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ca ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !79 ; 3 uses
  %i.cd = load float, ptr %.val20, align 4, !tbaa !79
  %i.ce = call float @llvm.fmuladd.f32(float %i.cd, float %i.bw, float 0.000000e+00)
  %i.cf = load float, ptr %i.ah, align 4, !tbaa !79
  %i.cg = call float @llvm.fmuladd.f32(float %i.cf, float %i.bw, float 0.000000e+00)
  %i.ch = load float, ptr %i.ai, align 4, !tbaa !79
  %i.ci = call float @llvm.fmuladd.f32(float %i.ch, float %i.bw, float 0.000000e+00)
  %5 = load float, ptr %i.aj, align 4, !tbaa !79
  %6 = call float @llvm.fmuladd.f32(float %5, float %i.bz, float %i.ce)
  %7 = load float, ptr %i.ak, align 4, !tbaa !79
  %8 = call float @llvm.fmuladd.f32(float %7, float %i.bz, float %i.cg)
  %9 = load float, ptr %i.al, align 4, !tbaa !79
  %10 = call float @llvm.fmuladd.f32(float %9, float %i.bz, float %i.ci)
  %11 = load float, ptr %i.am, align 4, !tbaa !79
  %12 = call float @llvm.fmuladd.f32(float %11, float %i.cc, float %6)
  %13 = load float, ptr %i.an, align 4, !tbaa !79
  %14 = call float @llvm.fmuladd.f32(float %13, float %i.cc, float %8)
  %15 = load float, ptr %i.ao, align 4, !tbaa !79
  %16 = call float @llvm.fmuladd.f32(float %15, float %i.cc, float %10)
  store float %12, ptr %i.bv, align 4, !tbaa !79
  store float %14, ptr %i.by, align 4, !tbaa !79
  store float %16, ptr %i.cb, align 4, !tbaa !79
  %i.cj = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, %3
  br i1 %exitcond.not, label %._crit_edge, label %.from.39, !llvm.loop !3940

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = atomicrmw add ptr %i.cl, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !117 ; 7 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !128
  %i.cr = and i32 %i.cq, 8
  %.not.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !129 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ct, %.from..lr.ph.i.i.i.i.i ], [ %i.dl, %.noexc2.i.i ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.db = load i8, ptr %i.cw, align 8             ; 2 uses
  %i.dc = trunc i8 %i.db to i1                    ; 2 uses
  %i.dd = load ptr, ptr %i.cx, align 8
  %i.de = select i1 %i.dc, ptr %i.dd, ptr %i.cy
  %i.df = load i64, ptr %i.cz, align 8
  %i.dg = lshr i8 %i.db, 1
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = select i1 %i.dc, i64 %i.df, i64 %i.dh
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !89
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr %i.de, i64 %i.di, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, %i.cv
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

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
  %i.dm = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.dm) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dn = icmp slt i32 %i.cm, 2
  br i1 %i.dn, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !97 ; 2 uses
  %i.dq = inttoptr i64 %i.dp to ptr               ; 3 uses
  store ptr %i.dq, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr50 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr50, align 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr nonnull %i.dq)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !96  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = atomicrmw add ptr %i.dt, i64 -1 acq_rel, align 8
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !89
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(24) %i.ds) #44, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr49) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.43, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.43 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  resume { ptr, i32 } %.merged18
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog6Logger3logIJRtS2_RfEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.935", align 16 ; 7 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !128
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44, !noalias !3963
  %i.d = load i16, ptr %4, align 2, !tbaa !82, !noalias !3963
  %i.e = zext i16 %i.d to i32
  store i32 %i.e, ptr %9, align 16, !tbaa !80, !noalias !3963
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = load i16, ptr %5, align 2, !tbaa !82, !noalias !3963
  %i.h = zext i16 %i.g to i32
  store i32 %i.h, ptr %i.f, align 16, !tbaa !80, !noalias !3963
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.j = load float, ptr %6, align 4, !tbaa !79, !noalias !3963
  store float %i.j, ptr %i.i, align 16, !tbaa !80, !noalias !3963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3964)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44, !noalias !3964
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.m, align 8, !noalias !3964
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.l, align 8, !tbaa !481, !noalias !3964
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !482, !noalias !3964
  store i64 500, ptr %i.k, align 8, !tbaa !483, !noalias !3964
  %i.o = icmp eq i64 %3, 2
  br i1 %i.o, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = load i16, ptr %2, align 1
  %i.q = icmp ne i16 %i.p, 32123
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %9, align 16, !tbaa !80, !noalias !3964 ; 2 uses
  %i.t = trunc i128 %.sroa.0.0.copyload.sink66.i to i32 ; 4 uses
  %i.u = or i32 %i.t, 1
  %i.v = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.u, i1 true)
  %i.w = xor i32 %i.v, 31
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !87
  %i.aa = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw i64 %i.ad to i32              ; 2 uses
  %i.af = ashr i64 %i.ac, 32                      ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 500
  br i1 %i.ag, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.d
  %..i = call i64 @llvm.umax.i64(i64 %i.af, i64 750) ; 2 uses
  %i.ah = call noalias ptr @malloc(i64 noundef %..i) #50 ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.ah, null
end_hunk_0
begin_hunk_1_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_10yCbCrToRgbILb0EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfSC_EUlTymE_EES8_RS0_S4_S4_mT0_iEUlmmE_EES8_S4_S4_mSF_iENKUlvE_clEv:.from.
  br i1 %i.ag, label %bb.i, label %_ZN3tev5Latch9countDownEv.exit.i

bb.i:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !117 ; 7 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !128
  %i.ak = and i32 %i.aj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !129 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.am, %.from..lr.ph.i.i.i.i.i ], [ %i.be, %.noexc2.i.i ] ; 2 uses
  %i.at = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.au = load i8, ptr %i.ap, align 8             ; 2 uses
  %i.av = trunc i8 %i.au to i1                    ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8
  %i.ax = select i1 %i.av, ptr %i.aw, ptr %i.ar
  %i.ay = load i64, ptr %i.as, align 8
  %i.az = lshr i8 %i.au, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = select i1 %i.av, i64 %i.ay, i64 %i.ba
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !89
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr %i.ax, i64 %i.bb, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ao
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

.from..loopexit.split-lp.i.i:                     ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bf = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bf) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bg = icmp slt i32 %i.af, 2
  br i1 %i.bg, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.j, %_ZN3tev5Latch9countDownEv.exit.i
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !97 ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  store ptr %i.bj, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr38 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr38, align 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr nonnull %i.bj)
  br label %AfterCoroEnd

bb.l:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.35 unwind label %bb.o

.from.31:                                         ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.35

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !96  ; 5 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = atomicrmw add ptr %i.bo, i64 -1 acq_rel, align 8
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !89
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #44, !inline_history !2
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.m, %bb.n
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr37) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.35:                                    ; preds = %bb.l, %.from.31
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.31 ], [ %i.bl, %bb.l ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #44
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr37) #44
  br label %.body

.body:                                            ; preds = %.body.from.35, %.body.from.33, %.body.from.
  %.merged10 = phi { ptr, i32 } [ %.pn, %.body.from.35 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.33 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  resume { ptr, i32 } %.merged10

bb.o:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev7simdForITkNSt3__18integralEmRZNS_10yCbCrToRgbILb0EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS8_EUlTymE_EEvT_SB_OT0_(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #36 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %0, 4                            ; 2 uses
  %.not11 = icmp ugt i64 %i.a, %1
  br i1 %.not11, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !4502, !nonnull !185, !align !446
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103, !noalias !4503 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180, !noalias !4503 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !425, !noalias !4503 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180, !noalias !4503 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !425, !noalias !4503 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !180, !noalias !4503 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !425, !noalias !4503 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4504, !nonnull !185, !align !446
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !148  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4505, !nonnull !185, !align !446
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !148  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %0, %bb.a ], [ %i.bt, %bb.b ] ; 8 uses
  %i.y = icmp ult i64 %.0.lcssa, %1
  br i1 %i.y, label %.lr.ph14, label %._crit_edge

.lr.ph14:                                         ; preds = %.preheader
  %i.z = load ptr, ptr %2, align 8, !tbaa !4502, !nonnull !185, !align !446
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !425 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !180 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !425 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !180 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !425 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !4504, !nonnull !185, !align !446
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4505, !nonnull !185, !align !446
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !148 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 2 uses
  %i.aw = sub nuw i64 %1, %.0.lcssa               ; 3 uses
  %min.iters.check = icmp ult i64 %i.aw, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph14
  %ident.check = icmp ne i64 %i.ad, 1
  %ident.check16 = icmp ne i64 %i.ah, 1
  %ident.check17 = icmp ne i64 %i.al, 1
  %i.ax = or i1 %ident.check, %ident.check16
  %i.ay = or i1 %i.ax, %ident.check17
  br i1 %i.ay, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.az = shl i64 %.0.lcssa, 2                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.az ; 4 uses
  %i.ba = shl i64 %1, 2                           ; 3 uses
  %scevgep18 = getelementptr i8, ptr %i.ab, i64 %i.ba ; 4 uses
  %scevgep19 = getelementptr i8, ptr %i.af, i64 %i.az ; 4 uses
  %scevgep20 = getelementptr i8, ptr %i.af, i64 %i.ba ; 4 uses
  %scevgep21 = getelementptr i8, ptr %i.aj, i64 %i.az ; 4 uses
  %scevgep22 = getelementptr i8, ptr %i.aj, i64 %i.ba ; 4 uses
  %scevgep23 = getelementptr i8, ptr %i.ao, i64 8 ; 3 uses
  %scevgep24 = getelementptr i8, ptr %i.ar, i64 16 ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep20
  %bound1 = icmp ult ptr %scevgep19, %scevgep18
  %found.conflict = and i1 %bound0, %bound1
  %bound025 = icmp ult ptr %scevgep, %scevgep22
  %bound126 = icmp ult ptr %scevgep21, %scevgep18
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  %bound028 = icmp ult ptr %scevgep, %scevgep23
  %bound129 = icmp ult ptr %i.ao, %scevgep18
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %conflict.rdx, %found.conflict30
  %bound032 = icmp ult ptr %scevgep, %scevgep24
  %bound133 = icmp ult ptr %i.ar, %scevgep18
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx35 = or i1 %conflict.rdx31, %found.conflict34
  %bound036 = icmp ult ptr %scevgep19, %scevgep22
  %bound137 = icmp ult ptr %scevgep21, %scevgep20
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx35, %found.conflict38
  %bound040 = icmp ult ptr %scevgep19, %scevgep23
  %bound141 = icmp ult ptr %i.ao, %scevgep20
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  %bound044 = icmp ult ptr %scevgep19, %scevgep24
  %bound145 = icmp ult ptr %i.ar, %scevgep20
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx43, %found.conflict46
  %bound048 = icmp ult ptr %scevgep21, %scevgep23
  %bound149 = icmp ult ptr %i.ao, %scevgep22
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx47, %found.conflict50
  %bound052 = icmp ult ptr %scevgep21, %scevgep24
  %bound153 = icmp ult ptr %i.ar, %scevgep22
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx51, %found.conflict54
  br i1 %conflict.rdx55, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, -4                      ; 3 uses
  %i.bb = add i64 %.0.lcssa, %n.vec
  %i.bc = load float, ptr %i.ao, align 4, !tbaa !79, !alias.scope !4506
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = load float, ptr %i.as, align 4, !tbaa !79, !alias.scope !4506
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat59 = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = load float, ptr %i.ar, align 4, !tbaa !79, !alias.scope !4507
  %broadcast.splatinsert60 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat61 = shufflevector <4 x float> %broadcast.splatinsert60, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = load float, ptr %i.at, align 4, !tbaa !79, !alias.scope !4507
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = load float, ptr %i.au, align 4, !tbaa !79, !alias.scope !4507
  %broadcast.splatinsert64 = insertelement <4 x float> poison, float %i.bg, i64 0
  %broadcast.splat65 = shufflevector <4 x float> %broadcast.splatinsert64, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = load float, ptr %i.av, align 4, !tbaa !79, !alias.scope !4507
  %broadcast.splatinsert66 = insertelement <4 x float> poison, float %i.bh, i64 0
  %broadcast.splat67 = shufflevector <4 x float> %broadcast.splatinsert66, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = add nuw i64 %.0.lcssa, %index           ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bi ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bj, align 4, !tbaa !79, !alias.scope !4508, !noalias !4509 ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bi ; 2 uses
  %wide.load56 = load <4 x float>, ptr %i.bk, align 4, !tbaa !79, !alias.scope !4510, !noalias !4511
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bi ; 2 uses
  %wide.load57 = load <4 x float>, ptr %i.bl, align 4, !tbaa !79, !alias.scope !4512, !noalias !4513
  %i.bm = fsub <4 x float> %wide.load56, %broadcast.splat ; 2 uses
  %i.bn = fsub <4 x float> %wide.load57, %broadcast.splat59 ; 2 uses
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat61, <4 x float> %i.bn, <4 x float> %wide.load)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat63, <4 x float> %i.bm, <4 x float> %wide.load)
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat65, <4 x float> %i.bn, <4 x float> %i.bp)
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat67, <4 x float> %i.bm, <4 x float> %wide.load)
  store <4 x float> %i.bo, ptr %i.bj, align 4, !tbaa !79, !alias.scope !4508, !noalias !4509
  store <4 x float> %i.bq, ptr %i.bk, align 4, !tbaa !79, !alias.scope !4510, !noalias !4511
  store <4 x float> %i.br, ptr %i.bl, align 4, !tbaa !79, !alias.scope !4512, !noalias !4513
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !4496

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph14, %middle.block
  %.113.ph = phi i64 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %vector.scevcheck ], [ %.0.lcssa, %.lr.ph14 ], [ %i.bb, %middle.block ]
  br label %scalar.ph

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.bt = phi i64 [ %i.a, %.lr.ph ], [ %i.ej, %bb.b ] ; 3 uses
  %.012 = phi i64 [ %0, %.lr.ph ], [ %i.bt, %bb.b ] ; 6 uses
  %i.bu = add i64 %.012, 1                        ; 3 uses
  %i.bv = add i64 %.012, 2                        ; 3 uses
  %i.bw = add i64 %.012, 3                        ; 3 uses
  %i.bx = mul i64 %i.f, %.012
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bx ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.0.vec.insert.i.i.i = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.ca = mul i64 %i.f, %i.bu
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ca ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.4.vec.insert.i.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.cc, i64 1
  %i.cd = mul i64 %i.f, %i.bv
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cd ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.8.vec.insert.i.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.i.i, float %i.cf, i64 2
  %i.cg = mul i64 %i.f, %i.bw
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cg ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.12.vec.insert.i.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i.i, float %i.ci, i64 3 ; 3 uses
  %i.cj = mul i64 %i.j, %.012
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cj ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.0.vec.insert.i.1.i.i = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cm = mul i64 %i.j, %i.bu
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cm ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.4.vec.insert.i.1.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.1.i.i, float %i.co, i64 1
  %i.cp = mul i64 %i.j, %i.bv
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cp ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.8.vec.insert.i.1.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.1.i.i, float %i.cr, i64 2
  %i.cs = mul i64 %i.j, %i.bw
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.12.vec.insert.i.1.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.1.i.i, float %i.cu, i64 3
  %i.cv = mul i64 %i.n, %.012
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cv ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.0.vec.insert.i.2.i.i = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.cy = mul i64 %i.n, %i.bu
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cy ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.4.vec.insert.i.2.i.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i.2.i.i, float %i.da, i64 1
  %i.db = mul i64 %i.n, %i.bv
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.db ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.8.vec.insert.i.2.i.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i.2.i.i, float %i.dd, i64 2
  %i.de = mul i64 %i.n, %i.bw
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.de ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !79, !noalias !4503
  %.sroa.0.12.vec.insert.i.2.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.2.i.i, float %i.dg, i64 3
  %i.dh = load float, ptr %i.q, align 4, !tbaa !79, !noalias !4514
  %i.di = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = fsub <4 x float> %.sroa.0.12.vec.insert.i.1.i.i, %i.dj ; 2 uses
  %i.dl = load float, ptr %i.u, align 4, !tbaa !79, !noalias !4514
  %i.dm = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = fsub <4 x float> %.sroa.0.12.vec.insert.i.2.i.i, %i.dn ; 2 uses
  %i.dp = load float, ptr %i.t, align 4, !tbaa !79, !noalias !4514
  %i.dq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = fmul <4 x float> %i.do, %i.dr
  %i.dt = fadd <4 x float> %.sroa.0.12.vec.insert.i.i.i, %i.ds ; 4 uses
  %i.du = load float, ptr %i.v, align 4, !tbaa !79, !noalias !4514
  %i.dv = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = fmul <4 x float> %i.dk, %i.dw
  %i.dy = fadd <4 x float> %.sroa.0.12.vec.insert.i.i.i, %i.dx
  %i.dz = load float, ptr %i.w, align 4, !tbaa !79, !noalias !4514
  %i.ea = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = fmul <4 x float> %i.do, %i.eb
  %i.ed = fadd <4 x float> %i.dy, %i.ec           ; 4 uses
  %i.ee = load float, ptr %i.x, align 4, !tbaa !79, !noalias !4514
  %i.ef = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = fmul <4 x float> %i.dk, %i.eg
  %i.ei = fadd <4 x float> %.sroa.0.12.vec.insert.i.i.i, %i.eh ; 4 uses
  %.sroa.0.0.vec.extract12.i.i.i = extractelement <4 x float> %i.dt, i64 0
  store float %.sroa.0.0.vec.extract12.i.i.i, ptr %i.by, align 4, !tbaa !79
  %.sroa.0.4.vec.extract14.i.i.i = extractelement <4 x float> %i.dt, i64 1
  store float %.sroa.0.4.vec.extract14.i.i.i, ptr %i.cb, align 4, !tbaa !79
  %.sroa.0.8.vec.extract16.i.i.i = extractelement <4 x float> %i.dt, i64 2
  store float %.sroa.0.8.vec.extract16.i.i.i, ptr %i.ce, align 4, !tbaa !79
  %.sroa.0.12.vec.extract18.i.i.i = extractelement <4 x float> %i.dt, i64 3
  store float %.sroa.0.12.vec.extract18.i.i.i, ptr %i.ch, align 4, !tbaa !79
  %.sroa.0.0.vec.extract12.i.1.i.i = extractelement <4 x float> %i.ed, i64 0
  store float %.sroa.0.0.vec.extract12.i.1.i.i, ptr %i.ck, align 4, !tbaa !79
  %.sroa.0.4.vec.extract14.i.1.i.i = extractelement <4 x float> %i.ed, i64 1
  store float %.sroa.0.4.vec.extract14.i.1.i.i, ptr %i.cn, align 4, !tbaa !79
  %.sroa.0.8.vec.extract16.i.1.i.i = extractelement <4 x float> %i.ed, i64 2
  store float %.sroa.0.8.vec.extract16.i.1.i.i, ptr %i.cq, align 4, !tbaa !79
  %.sroa.0.12.vec.extract18.i.1.i.i = extractelement <4 x float> %i.ed, i64 3
  store float %.sroa.0.12.vec.extract18.i.1.i.i, ptr %i.ct, align 4, !tbaa !79
  %.sroa.0.0.vec.extract12.i.2.i.i = extractelement <4 x float> %i.ei, i64 0
  store float %.sroa.0.0.vec.extract12.i.2.i.i, ptr %i.cw, align 4, !tbaa !79
  %.sroa.0.4.vec.extract14.i.2.i.i = extractelement <4 x float> %i.ei, i64 1
  store float %.sroa.0.4.vec.extract14.i.2.i.i, ptr %i.cz, align 4, !tbaa !79
  %.sroa.0.8.vec.extract16.i.2.i.i = extractelement <4 x float> %i.ei, i64 2
  store float %.sroa.0.8.vec.extract16.i.2.i.i, ptr %i.dc, align 4, !tbaa !79
  %.sroa.0.12.vec.extract18.i.2.i.i = extractelement <4 x float> %i.ei, i64 3
  store float %.sroa.0.12.vec.extract18.i.2.i.i, ptr %i.df, align 4, !tbaa !79
  %i.ej = add i64 %i.bt, 4                        ; 2 uses
  %.not = icmp ugt i64 %i.ej, %1
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !4499

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.113 = phi i64 [ %i.ew, %scalar.ph ], [ %.113.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ek = mul i64 %i.ad, %.113
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ek ; 2 uses
  %3 = load float, ptr %i.el, align 4, !tbaa !79  ; 3 uses
  %i.em = mul i64 %i.ah, %.113
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.em ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !79
  %i.ep = mul i64 %i.al, %.113
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ep ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !79
  %i.es = load float, ptr %i.ao, align 4, !tbaa !79
  %4 = fsub float %i.eo, %i.es                    ; 2 uses
  %i.et = load float, ptr %i.as, align 4, !tbaa !79
  %5 = fsub float %i.er, %i.et                    ; 2 uses
  %6 = load float, ptr %i.ar, align 4, !tbaa !79
  %i.eu = tail call float @llvm.fmuladd.f32(float %6, float %5, float %3)
  %7 = load float, ptr %i.at, align 4, !tbaa !79
  %i.ev = tail call float @llvm.fmuladd.f32(float %7, float %4, float %3)
  %8 = load float, ptr %i.au, align 4, !tbaa !79
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %5, float %i.ev)
  %10 = load float, ptr %i.av, align 4, !tbaa !79
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %4, float %3)
  store float %i.eu, ptr %i.el, align 4, !tbaa !79
  store float %9, ptr %i.en, align 4, !tbaa !79
  store float %11, ptr %i.eq, align 4, !tbaa !79
  %i.ew = add nuw i64 %.113, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ew, %1
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !4500

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog6Logger3logIJRN7nanogui5ArrayIiLm3EEES5_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.898", align 16 ; 8 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !128
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44, !noalias !4521
  store ptr %4, ptr %10, align 16, !tbaa !80, !noalias !4521
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm3EEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.d, align 8, !tbaa !80, !noalias !4521
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %5, ptr %i.e, align 16, !tbaa !80, !noalias !4521
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm3EEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.f, align 8, !tbaa !80, !noalias !4521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44, !noalias !4522
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !noalias !4522
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.h, align 8, !tbaa !481, !noalias !4522
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !482, !noalias !4522
  store i64 500, ptr %i.g, align 8, !tbaa !483, !noalias !4522
  %i.k = icmp eq i64 %3, 2
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %2, align 1
  %i.m = icmp ne i16 %i.l, 32123
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %10, align 16, !tbaa !80, !noalias !4522 ; 2 uses
  %i.p = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.q = lshr i128 %.sroa.0.0.copyload.sink66.i, 64
  %i.r = trunc nuw i128 %i.q to i64
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.p to ptr
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i.i = inttoptr i64 %i.r to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44, !noalias !4522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false), !noalias !4522
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44, !noalias !4522
  store ptr %9, ptr %7, align 8, !tbaa !488, !noalias !4522
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false), !noalias !4522
  invoke void %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i.i(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc11 unwind label %bb.j, !inline_history !623

.noexc11:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !4522
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44, !noalias !4522
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44, !noalias !4522
  store ptr %2, ptr %8, align 8, !tbaa !183, !noalias !4522
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !87, !noalias !4522
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !486, !noalias !4522
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %9, ptr %i.u, align 8, !tbaa !488, !noalias !4522
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 255, ptr %i.v, align 8, !tbaa !490, !noalias !4522
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %10, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !80, !noalias !4522
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr null, ptr %i.w, align 8, !tbaa !97, !noalias !4522
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %.noexc12 unwind label %bb.j

.noexc12:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44, !noalias !4522
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %.noexc12, %.noexc11
  call void @llvm.experimental.noalias.scope.decl(metadata !4523)
  %i.x = load i64, ptr %i.i, align 8, !tbaa !491, !noalias !4524 ; 8 uses
  %i.y = icmp ult i64 %i.x, -9
  call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %9, align 8, !tbaa !482, !noalias !4524
  %i.aa = icmp ult i64 %i.x, 23
  br i1 %i.aa, label %bb.f, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.ab = or i64 %i.x, 7                          ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 23
  %i.ad = add nuw i64 %i.ab, 1
  %i.ae = select i1 %i.ac, i64 25, i64 %i.ad      ; 2 uses
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #46
          to label %.noexc.i unwind label %bb.j, !noalias !4522 ; 2 uses

.noexc.i:                                         ; preds = %.thread.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !80, !alias.scope !4524
  %i.ah = or i64 %i.ae, 1
  store i64 %i.ah, ptr %11, align 8, !alias.scope !4524
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.x, ptr %i.ai, align 8, !tbaa !80, !alias.scope !4524
  br label %bb.g

bb.f:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.aj = trunc nuw nsw i64 %i.x to i8
  %i.ak = shl nuw nsw i8 %i.aj, 1
  store i8 %i.ak, ptr %11, align 8, !alias.scope !4524
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc.i
  %.017.i.i.i.i = phi ptr [ %i.af, %.noexc.i ], [ %i.al, %bb.f ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.z, i64 %i.x, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.018.i.i.i.i = phi ptr [ %i.al, %bb.f ], [ %.017.i.i.i.i, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.x
  store i8 0, ptr %i.am, align 1, !tbaa !80
  %i.an = load ptr, ptr %9, align 8, !tbaa !482, !noalias !4522 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.j
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.an) #44, !noalias !4522
  br label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.j:                                             ; preds = %bb.e, %bb.d, %.thread.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %9, align 8, !tbaa !482, !noalias !4522 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ap, %i.j
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.ap) #44, !noalias !4522
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %i.cd, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44, !noalias !4522
  br label %common.resume

_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44, !noalias !4522
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44, !noalias !4521
  %i.aq = load i8, ptr %11, align 8               ; 4 uses
  %i.ar = trunc i8 %i.aq to i1                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.av = select i1 %i.ar, ptr %i.at, ptr %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = lshr i8 %i.aq, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.ar, i64 %i.ax, i64 %i.az
  %i.bb = load i32, ptr %0, align 8, !tbaa !128
  %i.bc = and i32 %i.bb, %1
  %i.bd = icmp eq i32 %i.bc, %1
  br i1 %i.bd, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !129 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130 ; 2 uses
  %.not12.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not12.i, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %.lr.ph.i
end_hunk_1
