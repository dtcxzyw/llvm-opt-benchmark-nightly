Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES9_SB_EUlmE_EESH_S4_S4_mSA_iEUlmmE_EESH_S4_S4_mSA_iENKUlvE_clEv":.from.
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !201 ; 2 uses
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !200 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !193
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #44, !inline_history !6
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
  call void @__clang_call_terminate(ptr %i.dg) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4720)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.54 ; 5 uses

.body.from.54:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr60) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !4721
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !4721
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !4721
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !4721
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !4722
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !4722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4723)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !4723
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %bb.b unwind label %bb.d, !noalias !4723

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !4723
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !204, !noalias !4723
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !4723
  store ptr null, ptr %4, align 8, !tbaa !204, !noalias !4723
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !4723 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !4723
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !4723
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !4723 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49, !noalias !4723
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !4723
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !4723
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !4725, !nonnull !175, !align !773 ; 2 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !985 ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val17 = load ptr, ptr %i.u, align 8, !tbaa !986 ; 4 uses
  %i.v = sub nuw i64 %3, %2                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.from..lr.ph
  %i.w = shl i64 %2, 1
  %i.x = getelementptr i8, ptr %.val17, i64 %i.w
  %i.y = shl i64 %3, 1
  %i.z = getelementptr i8, ptr %.val17, i64 %i.y
  %i.aa = getelementptr nuw i8, ptr %.val, i64 %2
  %i.ab = getelementptr i8, ptr %.val, i64 %3
  %bound0 = icmp ult ptr %i.x, %i.ab
  %bound1 = icmp ult ptr %i.aa, %i.z
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.ac = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %2, %index                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ad
  %wide.load = load <8 x i8>, ptr %i.ae, align 1, !tbaa !126, !alias.scope !4726
  %i.af = uitofp <8 x i8> %wide.load to <8 x float>
  %i.ag = fdiv <8 x float> %i.af, splat (float 2.550000e+02)
  %i.ah = bitcast <8 x float> %i.ag to <8 x i32>  ; 11 uses
  %i.ai = add nsw <8 x i32> %i.ah, splat (i32 -855638017)
  %i.aj = icmp ult <8 x i32> %i.ai, splat (i32 92274687) ; 2 uses
  %i.ak = lshr <8 x i32> %i.ah, splat (i32 23)    ; 2 uses
  %i.al = sub nuw nsw <8 x i32> splat (i32 126), %i.ak
  %i.am = and <8 x i32> %i.ah, splat (i32 8388607)
  %i.an = or disjoint <8 x i32> %i.am, splat (i32 8388608) ; 2 uses
  %i.ao = add nsw <8 x i32> %i.ak, splat (i32 -94)
  %i.ap = shl <8 x i32> %i.an, %i.ao              ; 2 uses
  %i.aq = lshr <8 x i32> %i.an, %i.al             ; 2 uses
  %i.ar = trunc nuw nsw <8 x i32> %i.aq to <8 x i16> ; 2 uses
  %i.as = icmp ugt <8 x i32> %i.ap, splat (i32 -2147483648)
  %i.at = icmp eq <8 x i32> %i.ap, splat (i32 -2147483648)
  %i.au = trunc <8 x i32> %i.aq to <8 x i1>
  %i.av = select <8 x i1> %i.aj, <8 x i1> %i.at, <8 x i1> zeroinitializer
  %i.aw = select <8 x i1> %i.av, <8 x i1> %i.au, <8 x i1> zeroinitializer
  %5 = or <8 x i1> %i.as, %i.aw
  %6 = select <8 x i1> %i.aj, <8 x i1> %5, <8 x i1> zeroinitializer
  %i.ax = add nuw nsw <8 x i16> %i.ar, splat (i16 1)
  %i.ay = add nsw <8 x i32> %i.ah, splat (i32 -2139095040)
  %.not = icmp ult <8 x i32> %i.ay, splat (i32 -1191182336)
  %i.az = icmp samesign ugt <8 x i32> %i.ah, splat (i32 1199566847)
  %i.ba = add nsw <8 x i32> %i.ah, splat (i32 -1199566848)
  %.not83 = icmp ult <8 x i32> %i.ba, splat (i32 -251654144)
  %i.bb = add nuw nsw <8 x i32> %i.ah, splat (i32 134221823)
  %i.bc = lshr <8 x i32> %i.ah, splat (i32 13)    ; 2 uses
  %i.bd = and <8 x i32> %i.bc, splat (i32 1)
  %i.be = add nuw nsw <8 x i32> %i.bb, %i.bd
  %i.bf = lshr <8 x i32> %i.be, splat (i32 13)
  %i.bg = trunc <8 x i32> %i.bf to <8 x i16>
  %i.bh = icmp eq <8 x i32> %i.ah, splat (i32 2139095040)
  %i.bi = icmp samesign ugt <8 x i32> %i.ah, splat (i32 2139095040)
  %i.bj = and <8 x i32> %i.bc, splat (i32 1023)   ; 2 uses
  %i.bk = icmp eq <8 x i32> %i.bj, zeroinitializer
  %i.bl = zext <8 x i1> %i.bk to <8 x i16>
  %i.bm = trunc nuw nsw <8 x i32> %i.bj to <8 x i16>
  %i.bn = or <8 x i16> %i.bm, %i.bl
  %i.bo = or disjoint <8 x i16> %i.bn, splat (i16 31744)
  %.not82 = icmp samesign ugt <8 x i32> %i.ah, splat (i32 855638016)
  %i.bp = select <8 x i1> %.not, <8 x i1> %i.bh, <8 x i1> %i.az
  %predphi = select <8 x i1> %.not82, <8 x i16> %i.ar, <8 x i16> zeroinitializer
  %predphi76 = select <8 x i1> %i.bp, <8 x i16> splat (i16 31744), <8 x i16> %predphi
  %predphi77 = select <8 x i1> %i.bi, <8 x i16> %i.bo, <8 x i16> %predphi76
  %predphi78 = select <8 x i1> %.not83, <8 x i16> %predphi77, <8 x i16> %i.bg
  %predphi79 = select <8 x i1> %6, <8 x i16> %i.ax, <8 x i16> %predphi78
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.val17, i64 %i.ad
  store <8 x i16> %predphi79, ptr %i.bq, align 2, !tbaa !576, !alias.scope !4727, !noalias !4726
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !4717

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.from..lr.ph, %middle.block
  %.021.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.from..lr.ph ], [ %i.ac, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", %middle.block, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr60)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #49
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = atomicrmw add ptr %i.bv, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !240 ; 7 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !247
  %i.cb = and i32 %i.ca, 8
  %.not.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !248 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !249 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cd, %.from..lr.ph.i.i.i.i.i ], [ %i.cv, %.noexc2.i.i ] ; 2 uses
  %i.ck = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  %i.cl = load i8, ptr %i.cg, align 8             ; 2 uses
  %i.cm = trunc i8 %i.cl to i1                    ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8
  %i.co = select i1 %i.cm, ptr %i.cn, ptr %i.ci
  %i.cp = load i64, ptr %i.cj, align 8
  %i.cq = lshr i8 %i.cl, 1
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = select i1 %i.cm, i64 %i.cp, i64 %i.cr
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !193
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr %i.co, i64 %i.cs, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cv, %i.cf
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
  %i.cw = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.cw) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cx = icmp slt i32 %i.bw, 2
  br i1 %i.cx, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !201 ; 2 uses
  %i.da = inttoptr i64 %i.cz to ptr               ; 3 uses
  store ptr %i.da, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

scalar.ph:                                        ; preds = %scalar.ph.preheader, %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"
  %.021 = phi i64 [ %i.el, %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit" ], [ %.021.ph, %scalar.ph.preheader ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 %.021
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !126
  %i.dd = uitofp i8 %i.dc to float
  %i.de = fdiv float %i.dd, 2.550000e+02
  %i.df = bitcast float %i.de to i32              ; 10 uses
  %i.dg = icmp samesign ugt i32 %i.df, 947912703
  br i1 %i.dg, label %bb.j, label %bb.m

bb.j:                                             ; preds = %scalar.ph
  %i.dh = icmp samesign ugt i32 %i.df, 2139095039
  br i1 %i.dh, label %bb.k, label %bb.l, !prof !495

bb.k:                                             ; preds = %bb.j
  %i.di = icmp eq i32 %i.df, 2139095040
  br i1 %i.di, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.42"

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.42": ; preds = %bb.k
  %i.dj = lshr i32 %i.df, 13
  %i.dk = and i32 %i.dj, 1023                     ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i16
  %i.dn = trunc nuw nsw i32 %i.dk to i16
  %i.do = or i16 %i.dn, %i.dm
  %i.dp = or disjoint i16 %i.do, 31744
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

bb.l:                                             ; preds = %bb.j
  %i.dq = icmp samesign ugt i32 %i.df, 1199566847
  br i1 %i.dq, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.46", !prof !495

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.46": ; preds = %bb.l
  %i.dr = add nuw nsw i32 %i.df, 134221823
  %i.ds = lshr i32 %i.df, 13
  %i.dt = and i32 %i.ds, 1
  %i.du = add nuw nsw i32 %i.dr, %i.dt
  %i.dv = lshr i32 %i.du, 13
  %i.dw = trunc i32 %i.dv to i16
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

bb.m:                                             ; preds = %scalar.ph
  %i.dx = icmp samesign ult i32 %i.df, 855638017
  br i1 %i.dx, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = lshr i32 %i.df, 23                      ; 2 uses
  %i.dz = sub nuw nsw i32 126, %i.dy
  %i.ea = and i32 %i.df, 8388607
  %i.eb = or disjoint i32 %i.ea, 8388608          ; 2 uses
  %i.ec = add nsw i32 %i.dy, -94
  %i.ed = shl i32 %i.eb, %i.ec                    ; 2 uses
  %i.ee = lshr i32 %i.eb, %i.dz                   ; 2 uses
  %i.ef = trunc nuw nsw i32 %i.ee to i16          ; 2 uses
  %i.eg = icmp ugt i32 %i.ed, -2147483648
  br i1 %i.eg, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.52", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = icmp ne i32 %i.ed, -2147483648
  %i.ei = and i32 %i.ee, 1
  %.not.i.i.i.i18 = icmp eq i32 %i.ei, 0
  %or.cond.i.i.i.i = select i1 %i.eh, i1 true, i1 %.not.i.i.i.i18
  br i1 %or.cond.i.i.i.i, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.52"

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIhN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.52": ; preds = %bb.n, %bb.o
  %i.ej = add nuw nsw i16 %i.ef, 1
end_hunk_0
begin_hunk_1_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES9_SB_EUlmE_EESH_S4_S4_mSA_iEUlmmE_EESH_S4_S4_mSA_iENKUlvE_clEv":.from.
  %lpad.phi.i.i18 = phi { ptr, i32 } [ %lpad.loopexit.i.i25, %.from..loopexit.i.i24 ], [ %lpad.loopexit.split-lp.i.i17, %.from..loopexit.split-lp.i.i16 ]
  %i.cq = extractvalue { ptr, i32 } %lpad.phi.i.i18, 0
  call void @__clang_call_terminate(ptr %i.cq) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !201 ; 2 uses
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !200 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !193
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #44, !inline_history !6
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
  call void @__clang_call_terminate(ptr %i.dg) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5526)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.54 ; 5 uses

.body.from.54:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr60) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !5527
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !5527
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !5527
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !5527
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !5528
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !5528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5529)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !5529
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %bb.b unwind label %bb.d, !noalias !5529

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !5529
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !204, !noalias !5529
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !5529
  store ptr null, ptr %4, align 8, !tbaa !204, !noalias !5529
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !5529 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !5529
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !5529
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !5529 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49, !noalias !5529
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !5529
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !5529
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !5531, !nonnull !175, !align !773 ; 2 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !1039 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val17 = load ptr, ptr %i.u, align 8, !tbaa !1040 ; 3 uses
  %i.v = sub nuw i64 %3, %2                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  %.val1773 = ptrtoaddr ptr %.val17 to i64
  %.val74 = ptrtoaddr ptr %.val to i64
  %i.w = sub i64 %.val74, %.val1773
  %diff.check = icmp ugt i64 %i.w, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.from..lr.ph
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.x = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add nuw i64 %2, %index                   ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %i.y
  %wide.load = load <8 x i16>, ptr %i.z, align 2, !tbaa !576
  %i.aa = uitofp <8 x i16> %wide.load to <8 x float>
  %i.ab = fdiv <8 x float> %i.aa, splat (float 6.553500e+04)
  %i.ac = bitcast <8 x float> %i.ab to <8 x i32>  ; 11 uses
  %i.ad = add nsw <8 x i32> %i.ac, splat (i32 -855638017)
  %i.ae = icmp ult <8 x i32> %i.ad, splat (i32 92274687) ; 2 uses
  %i.af = lshr <8 x i32> %i.ac, splat (i32 23)    ; 2 uses
  %i.ag = sub nuw nsw <8 x i32> splat (i32 126), %i.af
  %i.ah = and <8 x i32> %i.ac, splat (i32 8388607)
  %i.ai = or disjoint <8 x i32> %i.ah, splat (i32 8388608) ; 2 uses
  %i.aj = add nsw <8 x i32> %i.af, splat (i32 -94)
  %i.ak = shl <8 x i32> %i.ai, %i.aj              ; 2 uses
  %i.al = lshr <8 x i32> %i.ai, %i.ag             ; 2 uses
  %i.am = trunc nuw nsw <8 x i32> %i.al to <8 x i16> ; 2 uses
  %i.an = icmp ugt <8 x i32> %i.ak, splat (i32 -2147483648)
  %i.ao = icmp eq <8 x i32> %i.ak, splat (i32 -2147483648)
  %i.ap = trunc <8 x i32> %i.al to <8 x i1>
  %i.aq = select <8 x i1> %i.ae, <8 x i1> %i.ao, <8 x i1> zeroinitializer
  %i.ar = select <8 x i1> %i.aq, <8 x i1> %i.ap, <8 x i1> zeroinitializer
  %5 = or <8 x i1> %i.an, %i.ar
  %6 = select <8 x i1> %i.ae, <8 x i1> %5, <8 x i1> zeroinitializer
  %i.as = add nuw nsw <8 x i16> %i.am, splat (i16 1)
  %i.at = add nsw <8 x i32> %i.ac, splat (i32 -2139095040)
  %.not = icmp ult <8 x i32> %i.at, splat (i32 -1191182336)
  %i.au = icmp samesign ugt <8 x i32> %i.ac, splat (i32 1199566847)
  %i.av = add nsw <8 x i32> %i.ac, splat (i32 -1199566848)
  %.not82 = icmp ult <8 x i32> %i.av, splat (i32 -251654144)
  %i.aw = add nuw nsw <8 x i32> %i.ac, splat (i32 134221823)
  %i.ax = lshr <8 x i32> %i.ac, splat (i32 13)    ; 2 uses
  %i.ay = and <8 x i32> %i.ax, splat (i32 1)
  %i.az = add nuw nsw <8 x i32> %i.aw, %i.ay
  %i.ba = lshr <8 x i32> %i.az, splat (i32 13)
  %i.bb = trunc <8 x i32> %i.ba to <8 x i16>
  %i.bc = icmp eq <8 x i32> %i.ac, splat (i32 2139095040)
  %i.bd = icmp samesign ugt <8 x i32> %i.ac, splat (i32 2139095040)
  %i.be = and <8 x i32> %i.ax, splat (i32 1023)   ; 2 uses
  %i.bf = icmp eq <8 x i32> %i.be, zeroinitializer
  %i.bg = zext <8 x i1> %i.bf to <8 x i16>
  %i.bh = trunc nuw nsw <8 x i32> %i.be to <8 x i16>
  %i.bi = or <8 x i16> %i.bh, %i.bg
  %i.bj = or disjoint <8 x i16> %i.bi, splat (i16 31744)
  %.not81 = icmp samesign ugt <8 x i32> %i.ac, splat (i32 855638016)
  %i.bk = select <8 x i1> %.not, <8 x i1> %i.bc, <8 x i1> %i.au
  %predphi = select <8 x i1> %.not81, <8 x i16> %i.am, <8 x i16> zeroinitializer
  %predphi75 = select <8 x i1> %i.bk, <8 x i16> splat (i16 31744), <8 x i16> %predphi
  %predphi76 = select <8 x i1> %i.bd, <8 x i16> %i.bj, <8 x i16> %predphi75
  %predphi77 = select <8 x i1> %.not82, <8 x i16> %predphi76, <8 x i16> %i.bb
  %predphi78 = select <8 x i1> %6, <8 x i16> %i.as, <8 x i16> %predphi77
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.val17, i64 %i.y
  store <8 x i16> %predphi78, ptr %i.bl, align 2, !tbaa !576
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !5523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.from..lr.ph, %middle.block
  %.021.ph = phi i64 [ %2, %.from..lr.ph ], [ %i.x, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", %middle.block, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr60)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #49
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !240 ; 7 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !247
  %i.bw = and i32 %i.bv, 8
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !248 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !249 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.by, %i.ca
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.by, %.from..lr.ph.i.i.i.i.i ], [ %i.cq, %.noexc2.i.i ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  %i.cg = load i8, ptr %i.cb, align 8             ; 2 uses
  %i.ch = trunc i8 %i.cg to i1                    ; 2 uses
  %i.ci = load ptr, ptr %i.cc, align 8
  %i.cj = select i1 %i.ch, ptr %i.ci, ptr %i.cd
  %i.ck = load i64, ptr %i.ce, align 8
  %i.cl = lshr i8 %i.cg, 1
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = select i1 %i.ch, i64 %i.ck, i64 %i.cm
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !193
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr %i.cj, i64 %i.cn, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, %i.ca
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
  %i.cr = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.cr) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cs = icmp slt i32 %i.br, 2
  br i1 %i.cs, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !201 ; 2 uses
  %i.cv = inttoptr i64 %i.cu to ptr               ; 3 uses
  store ptr %i.cv, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

scalar.ph:                                        ; preds = %scalar.ph.preheader, %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"
  %.021 = phi i64 [ %i.eg, %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit" ], [ %.021.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %.021
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !576
  %i.cy = uitofp i16 %i.cx to float
  %i.cz = fdiv float %i.cy, 6.553500e+04
  %i.da = bitcast float %i.cz to i32              ; 10 uses
  %i.db = icmp samesign ugt i32 %i.da, 947912703
  br i1 %i.db, label %bb.j, label %bb.m

bb.j:                                             ; preds = %scalar.ph
  %i.dc = icmp samesign ugt i32 %i.da, 2139095039
  br i1 %i.dc, label %bb.k, label %bb.l, !prof !495

bb.k:                                             ; preds = %bb.j
  %i.dd = icmp eq i32 %i.da, 2139095040
  br i1 %i.dd, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.42"

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.42": ; preds = %bb.k
  %i.de = lshr i32 %i.da, 13
  %i.df = and i32 %i.de, 1023                     ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i16
  %i.di = trunc nuw nsw i32 %i.df to i16
  %i.dj = or i16 %i.di, %i.dh
  %i.dk = or disjoint i16 %i.dj, 31744
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

bb.l:                                             ; preds = %bb.j
  %i.dl = icmp samesign ugt i32 %i.da, 1199566847
  br i1 %i.dl, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.46", !prof !495

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.46": ; preds = %bb.l
  %i.dm = add nuw nsw i32 %i.da, 134221823
  %i.dn = lshr i32 %i.da, 13
  %i.do = and i32 %i.dn, 1
  %i.dp = add nuw nsw i32 %i.dm, %i.do
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = trunc i32 %i.dq to i16
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

bb.m:                                             ; preds = %scalar.ph
  %i.ds = icmp samesign ult i32 %i.da, 855638017
  br i1 %i.ds, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = lshr i32 %i.da, 23                      ; 2 uses
  %i.du = sub nuw nsw i32 126, %i.dt
  %i.dv = and i32 %i.da, 8388607
  %i.dw = or disjoint i32 %i.dv, 8388608          ; 2 uses
  %i.dx = add nsw i32 %i.dt, -94
  %i.dy = shl i32 %i.dw, %i.dx                    ; 2 uses
  %i.dz = lshr i32 %i.dw, %i.du                   ; 2 uses
  %i.ea = trunc nuw nsw i32 %i.dz to i16          ; 2 uses
  %i.eb = icmp ugt i32 %i.dy, -2147483648
  br i1 %i.eb, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.52", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = icmp ne i32 %i.dy, -2147483648
  %i.ed = and i32 %i.dz, 1
  %.not.i.i.i.i18 = icmp eq i32 %i.ed, 0
  %or.cond.i.i.i.i = select i1 %i.ec, i1 true, i1 %.not.i.i.i.i18
  br i1 %or.cond.i.i.i.i, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.52"

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clItN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.52": ; preds = %bb.n, %bb.o
  %i.ee = add nuw nsw i16 %i.ea, 1
end_hunk_1
begin_hunk_2_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES9_SB_EUlmE_EESH_S4_S4_mSA_iEUlmmE_EESH_S4_S4_mSA_iENKUlvE_clEv":.from.
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !200 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !193
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #44, !inline_history !6
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
  call void @__clang_call_terminate(ptr %i.dg) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7144)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.54 ; 5 uses

.body.from.54:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr60) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !7145
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !7145
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !7145
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !7145
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !7146
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !7146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7147)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !7147
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %bb.b unwind label %bb.d, !noalias !7147

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !7147
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !204, !noalias !7147
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !7147
  store ptr null, ptr %4, align 8, !tbaa !204, !noalias !7147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !7147 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !7147
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !7147
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !7147 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49, !noalias !7147
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !7147
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !7147
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !7149, !nonnull !175, !align !773 ; 2 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !1145 ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val17 = load ptr, ptr %i.u, align 8, !tbaa !1146 ; 4 uses
  %i.v = sub nuw i64 %3, %2                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.from..lr.ph
  %i.w = shl i64 %2, 1
  %i.x = getelementptr i8, ptr %.val17, i64 %i.w
  %i.y = shl i64 %3, 1
  %i.z = getelementptr i8, ptr %.val17, i64 %i.y
  %i.aa = getelementptr nuw i8, ptr %.val, i64 %2
  %i.ab = getelementptr i8, ptr %.val, i64 %3
  %bound0 = icmp ult ptr %i.x, %i.ab
  %bound1 = icmp ult ptr %i.aa, %i.z
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.ac = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %2, %index                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ad
  %wide.load = load <8 x i8>, ptr %i.ae, align 1, !tbaa !126, !alias.scope !7150
  %i.af = sitofp <8 x i8> %wide.load to <8 x float>
  %i.ag = fdiv <8 x float> %i.af, splat (float 1.270000e+02) ; 2 uses
  %i.ah = bitcast <8 x float> %i.ag to <8 x i32>
  %i.ai = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ag)
  %i.aj = bitcast <8 x float> %i.ai to <8 x i32>  ; 10 uses
  %i.ak = lshr <8 x i32> %i.ah, splat (i32 16)    ; 2 uses
  %i.al = trunc nuw <8 x i32> %i.ak to <8 x i16>
  %i.am = and <8 x i16> %i.al, splat (i16 -32768) ; 2 uses
  %i.an = add nsw <8 x i32> %i.aj, splat (i32 -855638017)
  %i.ao = icmp ult <8 x i32> %i.an, splat (i32 92274687) ; 2 uses
  %i.ap = lshr <8 x i32> %i.aj, splat (i32 23)    ; 2 uses
  %i.aq = sub nuw nsw <8 x i32> splat (i32 126), %i.ap
  %i.ar = and <8 x i32> %i.aj, splat (i32 8388607)
  %i.as = or disjoint <8 x i32> %i.ar, splat (i32 8388608) ; 2 uses
  %i.at = add nsw <8 x i32> %i.ap, splat (i32 -94)
  %i.au = shl <8 x i32> %i.as, %i.at              ; 2 uses
  %i.av = lshr <8 x i32> %i.as, %i.aq             ; 2 uses
  %i.aw = and <8 x i32> %i.ak, splat (i32 32768)  ; 2 uses
  %i.ax = or <8 x i32> %i.av, %i.aw
  %i.ay = trunc nuw <8 x i32> %i.ax to <8 x i16>  ; 2 uses
  %i.az = icmp ugt <8 x i32> %i.au, splat (i32 -2147483648)
  %i.ba = icmp eq <8 x i32> %i.au, splat (i32 -2147483648)
  %i.bb = trunc <8 x i32> %i.av to <8 x i1>
  %i.bc = select <8 x i1> %i.ao, <8 x i1> %i.ba, <8 x i1> zeroinitializer
  %i.bd = select <8 x i1> %i.bc, <8 x i1> %i.bb, <8 x i1> zeroinitializer
  %5 = or <8 x i1> %i.az, %i.bd
  %6 = select <8 x i1> %i.ao, <8 x i1> %5, <8 x i1> zeroinitializer
  %i.be = add nuw <8 x i16> %i.ay, splat (i16 1)
  %i.bf = add nsw <8 x i32> %i.aj, splat (i32 -947912704)
  %i.bg = icmp ult <8 x i32> %i.bf, splat (i32 251654144)
  %i.bh = add nuw nsw <8 x i32> %i.aj, splat (i32 134221823)
  %i.bi = lshr <8 x i32> %i.aj, splat (i32 13)    ; 2 uses
  %i.bj = and <8 x i32> %i.bi, splat (i32 1)
  %i.bk = add nuw nsw <8 x i32> %i.bh, %i.bj
  %i.bl = lshr <8 x i32> %i.bk, splat (i32 13)
  %i.bm = or <8 x i32> %i.bl, %i.aw
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  %i.bo = add nsw <8 x i32> %i.aj, splat (i32 -1199566848)
  %i.bp = icmp ult <8 x i32> %i.bo, splat (i32 939528192)
  %i.bq = or disjoint <8 x i16> %i.am, splat (i16 31744) ; 3 uses
  %.not84 = icmp eq <8 x i32> %i.aj, splat (i32 2139095040)
  %i.br = icmp samesign ugt <8 x i32> %i.aj, splat (i32 2139095040)
  %i.bs = and <8 x i32> %i.bi, splat (i32 1023)   ; 2 uses
  %i.bt = icmp eq <8 x i32> %i.bs, zeroinitializer
  %i.bu = zext <8 x i1> %i.bt to <8 x i16>
  %i.bv = trunc nuw nsw <8 x i32> %i.bs to <8 x i16>
  %i.bw = or <8 x i16> %i.bv, %i.bu
  %i.bx = or disjoint <8 x i16> %i.bw, %i.bq
  %.not83 = icmp samesign ugt <8 x i32> %i.aj, splat (i32 855638016)
  %predphi = select <8 x i1> %.not83, <8 x i16> %i.ay, <8 x i16> %i.am
  %predphi76 = select <8 x i1> %.not84, <8 x i16> %i.bq, <8 x i16> %predphi
  %predphi77 = select <8 x i1> %i.br, <8 x i16> %i.bx, <8 x i16> %predphi76
  %predphi78 = select <8 x i1> %i.bp, <8 x i16> %i.bq, <8 x i16> %predphi77
  %predphi79 = select <8 x i1> %i.bg, <8 x i16> %i.bn, <8 x i16> %predphi78
  %predphi80 = select <8 x i1> %6, <8 x i16> %i.be, <8 x i16> %predphi79
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.val17, i64 %i.ad
  store <8 x i16> %predphi80, ptr %i.by, align 2, !tbaa !576, !alias.scope !7151, !noalias !7150
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !7141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.from..lr.ph, %middle.block
  %.021.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.from..lr.ph ], [ %i.ac, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", %middle.block, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr60)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #49
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = atomicrmw add ptr %i.cd, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !240 ; 7 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !247
  %i.cj = and i32 %i.ci, 8
  %.not.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !248 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !249 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cl, %.from..lr.ph.i.i.i.i.i ], [ %i.dd, %.noexc2.i.i ] ; 2 uses
  %i.cs = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  %i.ct = load i8, ptr %i.co, align 8             ; 2 uses
  %i.cu = trunc i8 %i.ct to i1                    ; 2 uses
  %i.cv = load ptr, ptr %i.cp, align 8
  %i.cw = select i1 %i.cu, ptr %i.cv, ptr %i.cq
  %i.cx = load i64, ptr %i.cr, align 8
  %i.cy = lshr i8 %i.ct, 1
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = select i1 %i.cu, i64 %i.cx, i64 %i.cz
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !193
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr %i.cw, i64 %i.da, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, %i.cn
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
  %i.de = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.de) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.df = icmp slt i32 %i.ce, 2
  br i1 %i.df, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !201 ; 2 uses
  %i.di = inttoptr i64 %i.dh to ptr               ; 3 uses
  store ptr %i.di, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

scalar.ph:                                        ; preds = %scalar.ph.preheader, %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"
  %.021 = phi i64 [ %i.fe, %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit" ], [ %.021.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val, i64 %.021
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !126
  %i.dl = sitofp i8 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.270000e+02          ; 2 uses
  %i.dn = bitcast float %i.dm to i32
  %i.do = call float @llvm.fabs.f32(float %i.dm)
  %i.dp = bitcast float %i.do to i32              ; 10 uses
  %i.dq = lshr i32 %i.dn, 16                      ; 3 uses
  %i.dr = trunc nuw i32 %i.dq to i16
  %i.ds = and i16 %i.dr, -32768                   ; 3 uses
  %i.dt = icmp samesign ugt i32 %i.dp, 947912703
  br i1 %i.dt, label %bb.j, label %bb.m

bb.j:                                             ; preds = %scalar.ph
  %i.du = icmp samesign ugt i32 %i.dp, 2139095039
  br i1 %i.du, label %bb.k, label %bb.l, !prof !495

bb.k:                                             ; preds = %bb.j
  %i.dv = or disjoint i16 %i.ds, 31744            ; 2 uses
  %i.dw = icmp eq i32 %i.dp, 2139095040
  br i1 %i.dw, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.42"

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.42": ; preds = %bb.k
  %i.dx = lshr i32 %i.dp, 13
  %i.dy = and i32 %i.dx, 1023                     ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = zext i1 %i.dz to i16
  %i.eb = trunc nuw nsw i32 %i.dy to i16
  %i.ec = or i16 %i.eb, %i.ea
  %i.ed = or disjoint i16 %i.ec, %i.dv
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

bb.l:                                             ; preds = %bb.j
  %i.ee = icmp samesign ugt i32 %i.dp, 1199566847
  br i1 %i.ee, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.44", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.46", !prof !495

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.44": ; preds = %bb.l
  %i.ef = or disjoint i16 %i.ds, 31744
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.46": ; preds = %bb.l
  %i.eg = add nuw nsw i32 %i.dp, 134221823
  %i.eh = lshr i32 %i.dp, 13
  %i.ei = and i32 %i.eh, 1
  %i.ej = add nuw nsw i32 %i.eg, %i.ei
  %i.ek = lshr i32 %i.ej, 13
  %i.el = and i32 %i.dq, 32768
  %i.em = or i32 %i.ek, %i.el
  %i.en = trunc i32 %i.em to i16
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

bb.m:                                             ; preds = %scalar.ph
  %i.eo = icmp samesign ult i32 %i.dp, 855638017
  br i1 %i.eo, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIaN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ep = lshr i32 %i.dp, 23                      ; 2 uses
  %i.eq = sub nuw nsw i32 126, %i.ep
  %i.er = and i32 %i.dp, 8388607
  %i.es = or disjoint i32 %i.er, 8388608          ; 2 uses
  %i.et = add nsw i32 %i.ep, -94
  %i.eu = shl i32 %i.es, %i.et                    ; 2 uses
  %i.ev = lshr i32 %i.es, %i.eq                   ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES9_SB_EUlmE_EESH_S4_S4_mSA_iEUlmmE_EESH_S4_S4_mSA_iENKUlvE_clEv":.from.
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !201 ; 2 uses
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !200 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !193
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #44, !inline_history !6
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
  call void @__clang_call_terminate(ptr %i.dg) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKS4_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES8_SA_EUlmE_EESG_S4_S4_mS9_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7950)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.54 ; 5 uses

.body.from.54:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr60) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !7951
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !7951
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !7951
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !7951
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !7952
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !7952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7953)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !7953
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %bb.b unwind label %bb.d, !noalias !7953

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !7953
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !204, !noalias !7953
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !7953
  store ptr null, ptr %4, align 8, !tbaa !204, !noalias !7953
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !7953 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !7953
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !7953
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !7953 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49, !noalias !7953
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !7953
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !7953
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !7955, !nonnull !175, !align !773 ; 2 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !1193 ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val17 = load ptr, ptr %i.u, align 8, !tbaa !1194 ; 3 uses
  %i.v = sub nuw i64 %3, %2                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  %.val1773 = ptrtoaddr ptr %.val17 to i64
  %.val74 = ptrtoaddr ptr %.val to i64
  %i.w = sub i64 %.val74, %.val1773
  %diff.check = icmp ugt i64 %i.w, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.from..lr.ph
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.x = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add nuw i64 %2, %index                   ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %i.y
  %wide.load = load <8 x i16>, ptr %i.z, align 2, !tbaa !576
  %i.aa = sitofp <8 x i16> %wide.load to <8 x float>
  %i.ab = fdiv <8 x float> %i.aa, splat (float 3.276700e+04) ; 2 uses
  %i.ac = bitcast <8 x float> %i.ab to <8 x i32>
  %i.ad = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ab)
  %i.ae = bitcast <8 x float> %i.ad to <8 x i32>  ; 10 uses
  %i.af = lshr <8 x i32> %i.ac, splat (i32 16)    ; 2 uses
  %i.ag = trunc nuw <8 x i32> %i.af to <8 x i16>
  %i.ah = and <8 x i16> %i.ag, splat (i16 -32768) ; 2 uses
  %i.ai = add nsw <8 x i32> %i.ae, splat (i32 -855638017)
  %i.aj = icmp ult <8 x i32> %i.ai, splat (i32 92274687) ; 2 uses
  %i.ak = lshr <8 x i32> %i.ae, splat (i32 23)    ; 2 uses
  %i.al = sub nuw nsw <8 x i32> splat (i32 126), %i.ak
  %i.am = and <8 x i32> %i.ae, splat (i32 8388607)
  %i.an = or disjoint <8 x i32> %i.am, splat (i32 8388608) ; 2 uses
  %i.ao = add nsw <8 x i32> %i.ak, splat (i32 -94)
  %i.ap = shl <8 x i32> %i.an, %i.ao              ; 2 uses
  %i.aq = lshr <8 x i32> %i.an, %i.al             ; 2 uses
  %i.ar = and <8 x i32> %i.af, splat (i32 32768)  ; 2 uses
  %i.as = or <8 x i32> %i.aq, %i.ar
  %i.at = trunc nuw <8 x i32> %i.as to <8 x i16>  ; 2 uses
  %i.au = icmp ugt <8 x i32> %i.ap, splat (i32 -2147483648)
  %i.av = icmp eq <8 x i32> %i.ap, splat (i32 -2147483648)
  %i.aw = trunc <8 x i32> %i.aq to <8 x i1>
  %i.ax = select <8 x i1> %i.aj, <8 x i1> %i.av, <8 x i1> zeroinitializer
  %i.ay = select <8 x i1> %i.ax, <8 x i1> %i.aw, <8 x i1> zeroinitializer
  %5 = or <8 x i1> %i.au, %i.ay
  %6 = select <8 x i1> %i.aj, <8 x i1> %5, <8 x i1> zeroinitializer
  %i.az = add nuw <8 x i16> %i.at, splat (i16 1)
  %i.ba = add nsw <8 x i32> %i.ae, splat (i32 -947912704)
  %i.bb = icmp ult <8 x i32> %i.ba, splat (i32 251654144)
  %i.bc = add nuw nsw <8 x i32> %i.ae, splat (i32 134221823)
  %i.bd = lshr <8 x i32> %i.ae, splat (i32 13)    ; 2 uses
  %i.be = and <8 x i32> %i.bd, splat (i32 1)
  %i.bf = add nuw nsw <8 x i32> %i.bc, %i.be
  %i.bg = lshr <8 x i32> %i.bf, splat (i32 13)
  %i.bh = or <8 x i32> %i.bg, %i.ar
  %i.bi = trunc <8 x i32> %i.bh to <8 x i16>
  %i.bj = add nsw <8 x i32> %i.ae, splat (i32 -1199566848)
  %i.bk = icmp ult <8 x i32> %i.bj, splat (i32 939528192)
  %i.bl = or disjoint <8 x i16> %i.ah, splat (i16 31744) ; 3 uses
  %.not83 = icmp eq <8 x i32> %i.ae, splat (i32 2139095040)
  %i.bm = icmp samesign ugt <8 x i32> %i.ae, splat (i32 2139095040)
  %i.bn = and <8 x i32> %i.bd, splat (i32 1023)   ; 2 uses
  %i.bo = icmp eq <8 x i32> %i.bn, zeroinitializer
  %i.bp = zext <8 x i1> %i.bo to <8 x i16>
  %i.bq = trunc nuw nsw <8 x i32> %i.bn to <8 x i16>
  %i.br = or <8 x i16> %i.bq, %i.bp
  %i.bs = or disjoint <8 x i16> %i.br, %i.bl
  %.not82 = icmp samesign ugt <8 x i32> %i.ae, splat (i32 855638016)
  %predphi = select <8 x i1> %.not82, <8 x i16> %i.at, <8 x i16> %i.ah
  %predphi75 = select <8 x i1> %.not83, <8 x i16> %i.bl, <8 x i16> %predphi
  %predphi76 = select <8 x i1> %i.bm, <8 x i16> %i.bs, <8 x i16> %predphi75
  %predphi77 = select <8 x i1> %i.bk, <8 x i16> %i.bl, <8 x i16> %predphi76
  %predphi78 = select <8 x i1> %i.bb, <8 x i16> %i.bi, <8 x i16> %predphi77
  %predphi79 = select <8 x i1> %6, <8 x i16> %i.az, <8 x i16> %predphi78
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.val17, i64 %i.y
  store <8 x i16> %predphi79, ptr %i.bt, align 2, !tbaa !576
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !7947

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.from..lr.ph, %middle.block
  %.021.ph = phi i64 [ %2, %.from..lr.ph ], [ %i.x, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", %middle.block, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr60)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #49
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = atomicrmw add ptr %i.by, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 1
  br i1 %i.ca, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !240 ; 7 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !247
  %i.ce = and i32 %i.cd, 8
  %.not.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !248 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !249 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cg, %i.ci
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cg, %.from..lr.ph.i.i.i.i.i ], [ %i.cy, %.noexc2.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  %i.co = load i8, ptr %i.cj, align 8             ; 2 uses
  %i.cp = trunc i8 %i.co to i1                    ; 2 uses
  %i.cq = load ptr, ptr %i.ck, align 8
  %i.cr = select i1 %i.cp, ptr %i.cq, ptr %i.cl
  %i.cs = load i64, ptr %i.cm, align 8
  %i.ct = lshr i8 %i.co, 1
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = select i1 %i.cp, i64 %i.cs, i64 %i.cu
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !193
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr %i.cr, i64 %i.cv, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, %i.ci
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
  %i.cz = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.cz) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.da = icmp slt i32 %i.bz, 2
  br i1 %i.da, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !201 ; 2 uses
  %i.dd = inttoptr i64 %i.dc to ptr               ; 3 uses
  store ptr %i.dd, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

scalar.ph:                                        ; preds = %scalar.ph.preheader, %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"
  %.021 = phi i64 [ %i.ez, %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit" ], [ %.021.ph, %scalar.ph.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %.021
  %i.df = load i16, ptr %i.de, align 2, !tbaa !576
  %i.dg = sitofp i16 %i.df to float
  %i.dh = fdiv float %i.dg, 3.276700e+04          ; 2 uses
  %i.di = bitcast float %i.dh to i32
  %i.dj = call float @llvm.fabs.f32(float %i.dh)
  %i.dk = bitcast float %i.dj to i32              ; 10 uses
  %i.dl = lshr i32 %i.di, 16                      ; 3 uses
  %i.dm = trunc nuw i32 %i.dl to i16
  %i.dn = and i16 %i.dm, -32768                   ; 3 uses
  %i.do = icmp samesign ugt i32 %i.dk, 947912703
  br i1 %i.do, label %bb.j, label %bb.m

bb.j:                                             ; preds = %scalar.ph
  %i.dp = icmp samesign ugt i32 %i.dk, 2139095039
  br i1 %i.dp, label %bb.k, label %bb.l, !prof !495

bb.k:                                             ; preds = %bb.j
  %i.dq = or disjoint i16 %i.dn, 31744            ; 2 uses
  %i.dr = icmp eq i32 %i.dk, 2139095040
  br i1 %i.dr, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.42"

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.42": ; preds = %bb.k
  %i.ds = lshr i32 %i.dk, 13
  %i.dt = and i32 %i.ds, 1023                     ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i16
  %i.dw = trunc nuw nsw i32 %i.dt to i16
  %i.dx = or i16 %i.dw, %i.dv
  %i.dy = or disjoint i16 %i.dx, %i.dq
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

bb.l:                                             ; preds = %bb.j
  %i.dz = icmp samesign ugt i32 %i.dk, 1199566847
  br i1 %i.dz, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.44", label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.46", !prof !495

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.44": ; preds = %bb.l
  %i.ea = or disjoint i16 %i.dn, 31744
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit.from.46": ; preds = %bb.l
  %i.eb = add nuw nsw i32 %i.dk, 134221823
  %i.ec = lshr i32 %i.dk, 13
  %i.ed = and i32 %i.ec, 1
  %i.ee = add nuw nsw i32 %i.eb, %i.ed
  %i.ef = lshr i32 %i.ee, 13
  %i.eg = and i32 %i.dl, 32768
  %i.eh = or i32 %i.ef, %i.eg
  %i.ei = trunc i32 %i.eh to i16
  br label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit"

bb.m:                                             ; preds = %scalar.ph
  %i.ej = icmp samesign ult i32 %i.dk, 855638017
  br i1 %i.ej, label %"_ZZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlTyTyPKT_PT0_E_clIsN9Imath_3_24halfEEENS_4TaskIvEES4_S6_ENKUlmE_clEm.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ek = lshr i32 %i.dk, 23                      ; 2 uses
  %i.el = sub nuw nsw i32 126, %i.ek
  %i.em = and i32 %i.dk, 8388607
  %i.en = or disjoint i32 %i.em, 8388608          ; 2 uses
  %i.eo = add nsw i32 %i.ek, -94
  %i.ep = shl i32 %i.en, %i.eo                    ; 2 uses
  %i.eq = lshr i32 %i.en, %i.el                   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKhEEEESA_S4_EUliE_EESA_S4_S4_mT0_iEUliiE_EESA_S4_S4_mSN_iENKUlvE_clEv:.from.
.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKhEEEES9_S4_EUliE_EES9_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48 ; 11 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKhEEEES9_S4_EUliE_EES9_S4_S4_mT0_iENKUliiE_clEii.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKhEEEES9_S4_EUliE_EES9_S4_S4_mT0_iENKUliiE_clEii.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10705)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.54 ; 5 uses

.body.from.54:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr60) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !10706
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !10706
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !10706
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !10706
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !10707
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !10707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10708)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !10708
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %bb.b unwind label %bb.d, !noalias !10708

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !10708
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !204, !noalias !10708
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !10708
  store ptr null, ptr %4, align 8, !tbaa !204, !noalias !10708
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !10708 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !10708
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !10708
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !10708 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49, !noalias !10708
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !10708
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !10708
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !10710, !nonnull !175, !align !773 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1390 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = zext i32 %i.v to i64                     ; 7 uses
  br i1 %i.w, label %.lr.ph.i.from..lr.ph.split, label %._crit_edge.split

.lr.ph.i.from..lr.ph.split:                       ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !286
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !286
  %i.ah = load i32, ptr %i.ac, align 8, !tbaa !286 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !551 ; 4 uses
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !552 ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !10711, !nonnull !175, !align !773
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !545 ; 3 uses
  %i.an = load i64, ptr %i.z, align 8, !tbaa !1387 ; 2 uses
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !1389 ; 3 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.ap = sext i32 %i.af to i64                   ; 3 uses
  %i.aq = sext i32 %2 to i64                      ; 3 uses
  %i.ar = sext i32 %i.ag to i64                   ; 3 uses
  %wide.trip.count = sext i32 %3 to i64           ; 3 uses
  %i.as = mul nsw i64 %i.aq, %i.x
  %i.at = add i64 %i.as, %i.ao
  %i.au = shl i64 %i.at, 1
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.au
  %i.av = mul nsw i64 %wide.trip.count, %i.x
  %i.aw = add i64 %i.av, %i.ao
  %i.ax = shl i64 %i.aw, 1
  %scevgep73 = getelementptr i8, ptr %i.am, i64 %i.ax
  %i.ay = add nsw i64 %i.ar, %i.aq
  %i.az = mul i64 %i.ay, %i.ai
  %i.ba = getelementptr i8, ptr %i.aj, i64 %i.az
  %scevgep74 = getelementptr i8, ptr %i.ba, i64 %i.ap
  %i.bb = add nsw i64 %i.ar, %wide.trip.count
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = mul i64 %i.bc, %i.ai
  %i.be = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.ap
  %scevgep75 = getelementptr i8, ptr %i.bf, i64 %i.x
  %min.iters.check = icmp ult i32 %i.v, 8
  %ident.check = icmp ne i64 %i.an, 1
  %ident.check72 = icmp ne i64 %i.ak, 1
  %i.bg = or i1 %ident.check, %ident.check72
  %bound0 = icmp ult ptr %scevgep, %scevgep75
  %bound1 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ah, 0
  %i.bh = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.x, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.from..lr.ph.i

._crit_edge.split:                                ; preds = %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKhEEEES4_S5_ENKUliE_clEi.exit.loopexit, %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr60)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge.split
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #49
  unreachable

.from..lr.ph.i:                                   ; preds = %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKhEEEES4_S5_ENKUliE_clEi.exit.loopexit, %.lr.ph.i.from..lr.ph.split
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph.i.from..lr.ph.split ], [ %indvars.iv.next, %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKhEEEES4_S5_ENKUliE_clEi.exit.loopexit ] ; 3 uses
  %i.bk = mul nsw i64 %indvars.iv, %i.x           ; 2 uses
  %i.bl = add nsw i64 %indvars.iv, %i.ar
  %i.bm = mul nsw i64 %i.bl, %i.ai
  %invariant.op.i = add nsw i64 %i.bm, %i.ap      ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bg
  %brmerge85 = select i1 %brmerge, i1 true, i1 %i.bh
  br i1 %brmerge85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.from..lr.ph.i
  %i.bn = getelementptr i8, ptr %i.aj, i64 %invariant.op.i
  %invariant.gep = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 %index
  %wide.load = load <8 x i8>, ptr %i.bo, align 1, !tbaa !126, !alias.scope !10712
  %i.bp = uitofp <8 x i8> %wide.load to <8 x float>
  %i.bq = fdiv <8 x float> %i.bp, splat (float 2.550000e+02)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %i.br = bitcast <8 x float> %i.bq to <8 x i32>  ; 11 uses
  %i.bs = add nsw <8 x i32> %i.br, splat (i32 -855638017)
  %i.bt = icmp ult <8 x i32> %i.bs, splat (i32 92274687) ; 2 uses
  %i.bu = lshr <8 x i32> %i.br, splat (i32 23)    ; 2 uses
  %i.bv = sub nuw nsw <8 x i32> splat (i32 126), %i.bu
  %i.bw = and <8 x i32> %i.br, splat (i32 8388607)
  %i.bx = or disjoint <8 x i32> %i.bw, splat (i32 8388608) ; 2 uses
  %i.by = add nsw <8 x i32> %i.bu, splat (i32 -94)
  %i.bz = shl <8 x i32> %i.bx, %i.by              ; 2 uses
  %i.ca = lshr <8 x i32> %i.bx, %i.bv             ; 2 uses
  %i.cb = trunc nuw nsw <8 x i32> %i.ca to <8 x i16> ; 2 uses
  %i.cc = icmp ugt <8 x i32> %i.bz, splat (i32 -2147483648)
  %i.cd = icmp eq <8 x i32> %i.bz, splat (i32 -2147483648)
  %i.ce = trunc <8 x i32> %i.ca to <8 x i1>
  %i.cf = select <8 x i1> %i.bt, <8 x i1> %i.cd, <8 x i1> zeroinitializer
  %i.cg = select <8 x i1> %i.cf, <8 x i1> %i.ce, <8 x i1> zeroinitializer
  %5 = or <8 x i1> %i.cc, %i.cg
  %6 = select <8 x i1> %i.bt, <8 x i1> %5, <8 x i1> zeroinitializer
  %i.ch = add nuw nsw <8 x i16> %i.cb, splat (i16 1)
  %i.ci = add nsw <8 x i32> %i.br, splat (i32 -2139095040)
  %.not = icmp ult <8 x i32> %i.ci, splat (i32 -1191182336)
  %i.cj = icmp samesign ugt <8 x i32> %i.br, splat (i32 1199566847)
  %i.ck = add nsw <8 x i32> %i.br, splat (i32 -1199566848)
  %.not83 = icmp ult <8 x i32> %i.ck, splat (i32 -251654144)
  %i.cl = add nuw nsw <8 x i32> %i.br, splat (i32 134221823)
  %i.cm = lshr <8 x i32> %i.br, splat (i32 13)    ; 2 uses
  %i.cn = and <8 x i32> %i.cm, splat (i32 1)
  %i.co = add nuw nsw <8 x i32> %i.cl, %i.cn
  %i.cp = lshr <8 x i32> %i.co, splat (i32 13)
  %i.cq = trunc <8 x i32> %i.cp to <8 x i16>
  %i.cr = icmp eq <8 x i32> %i.br, splat (i32 2139095040)
  %i.cs = icmp samesign ugt <8 x i32> %i.br, splat (i32 2139095040)
  %i.ct = and <8 x i32> %i.cm, splat (i32 1023)   ; 2 uses
  %i.cu = icmp eq <8 x i32> %i.ct, zeroinitializer
  %i.cv = zext <8 x i1> %i.cu to <8 x i16>
  %i.cw = trunc nuw nsw <8 x i32> %i.ct to <8 x i16>
  %i.cx = or <8 x i16> %i.cw, %i.cv
  %i.cy = or disjoint <8 x i16> %i.cx, splat (i16 31744)
  %.not82 = icmp samesign ugt <8 x i32> %i.br, splat (i32 855638016)
  %i.cz = select <8 x i1> %.not, <8 x i1> %i.cr, <8 x i1> %i.cj
  %predphi = select <8 x i1> %.not82, <8 x i16> %i.cb, <8 x i16> zeroinitializer
  %predphi76 = select <8 x i1> %i.cz, <8 x i16> splat (i16 31744), <8 x i16> %predphi
  %predphi77 = select <8 x i1> %6, <8 x i16> %i.ch, <8 x i16> %predphi76
  %predphi78 = select <8 x i1> %.not83, <8 x i16> %predphi77, <8 x i16> %i.cq
  %predphi79 = select <8 x i1> %i.cs, <8 x i16> %i.cy, <8 x i16> %predphi78
  store <8 x i16> %predphi79, ptr %gep, align 2, !tbaa !576, !alias.scope !10713, !noalias !10712
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !10701

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKhEEEES4_S5_ENKUliE_clEi.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.from..lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.from..lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN9Imath_3_24halfaSEf.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN9Imath_3_24halfaSEf.exit.i ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.db = add nsw i64 %indvars.iv.i, %i.bk
  %.reass.i = add i64 %invariant.op.i, %indvars.iv.i
  %i.dc = mul i64 %.reass.i, %i.ak
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !126
  %i.df = uitofp i8 %i.de to float
  %i.dg = fdiv float %i.df, 2.550000e+02
  %i.dh = mul i64 %i.db, %i.an
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.dh
  %i.di = bitcast float %i.dg to i32              ; 10 uses
  %i.dj = icmp samesign ugt i32 %i.di, 947912703
  br i1 %i.dj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %scalar.ph
  %i.dk = icmp samesign ugt i32 %i.di, 2139095039
  br i1 %i.dk, label %bb.h, label %bb.i, !prof !495

bb.h:                                             ; preds = %bb.g
  %i.dl = icmp eq i32 %i.di, 2139095040
  br i1 %i.dl, label %_ZN9Imath_3_24halfaSEf.exit.i, label %_ZN9Imath_3_24halfaSEf.exit.i.from.48

_ZN9Imath_3_24halfaSEf.exit.i.from.48:            ; preds = %bb.h
  %i.dm = lshr i32 %i.di, 13
  %i.dn = and i32 %i.dm, 1023                     ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i16
  %i.dq = trunc nuw nsw i32 %i.dn to i16
  %i.dr = or i16 %i.dq, %i.dp
  %i.ds = or disjoint i16 %i.dr, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.i:                                             ; preds = %bb.g
  %i.dt = icmp samesign ugt i32 %i.di, 1199566847
  br i1 %i.dt, label %_ZN9Imath_3_24halfaSEf.exit.i, label %_ZN9Imath_3_24halfaSEf.exit.i.from.44, !prof !495

_ZN9Imath_3_24halfaSEf.exit.i.from.44:            ; preds = %bb.i
  %i.du = add nuw nsw i32 %i.di, 134221823
  %i.dv = lshr i32 %i.di, 13
  %i.dw = and i32 %i.dv, 1
  %i.dx = add nuw nsw i32 %i.du, %i.dw
  %i.dy = lshr i32 %i.dx, 13
  %i.dz = trunc i32 %i.dy to i16
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.j:                                             ; preds = %scalar.ph
  %i.ea = icmp samesign ult i32 %i.di, 855638017
  br i1 %i.ea, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = lshr i32 %i.di, 23                      ; 2 uses
  %i.ec = sub nuw nsw i32 126, %i.eb
  %i.ed = and i32 %i.di, 8388607
  %i.ee = or disjoint i32 %i.ed, 8388608          ; 2 uses
  %i.ef = add nsw i32 %i.eb, -94
  %i.eg = shl i32 %i.ee, %i.ef                    ; 2 uses
  %i.eh = lshr i32 %i.ee, %i.ec                   ; 2 uses
  %i.ei = trunc nuw nsw i32 %i.eh to i16          ; 2 uses
  %i.ej = icmp ugt i32 %i.eg, -2147483648
  br i1 %i.ej, label %_ZN9Imath_3_24halfaSEf.exit.i.from., label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ek = icmp ne i32 %i.eg, -2147483648
  %i.el = and i32 %i.eh, 1
  %.not.i.i.i.i = icmp eq i32 %i.el, 0
  %or.cond.i.i.i.i = select i1 %i.ek, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit.i, label %_ZN9Imath_3_24halfaSEf.exit.i.from.

_ZN9Imath_3_24halfaSEf.exit.i.from.:              ; preds = %bb.k, %bb.l
  %i.em = add nuw nsw i16 %i.ei, 1
  br label %_ZN9Imath_3_24halfaSEf.exit.i

_ZN9Imath_3_24halfaSEf.exit.i:                    ; preds = %bb.l, %bb.j, %bb.i, %bb.h, %_ZN9Imath_3_24halfaSEf.exit.i.from., %_ZN9Imath_3_24halfaSEf.exit.i.from.44, %_ZN9Imath_3_24halfaSEf.exit.i.from.48
  %.033.i.i.i.i = phi i16 [ 31744, %bb.i ], [ %i.ds, %_ZN9Imath_3_24halfaSEf.exit.i.from.48 ], [ 0, %bb.j ], [ %i.dz, %_ZN9Imath_3_24halfaSEf.exit.i.from.44 ], [ 31744, %bb.h ], [ %i.em, %_ZN9Imath_3_24halfaSEf.exit.i.from. ], [ %i.ei, %bb.l ]
  store i16 %.033.i.i.i.i, ptr %gep.i, align 2, !tbaa !576
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %exitcond.not.i, label %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKhEEEES4_S5_ENKUliE_clEi.exit.loopexit, label %scalar.ph, !llvm.loop !10702

_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKhEEEES4_S5_ENKUliE_clEi.exit.loopexit: ; preds = %_ZN9Imath_3_24halfaSEf.exit.i, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.from..lr.ph.i, !llvm.loop !10703

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge.split
  %i.en = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4 ; 2 uses
  %i.eq = icmp slt i32 %i.ep, 1
  br i1 %i.eq, label %bb.m, label %_ZN3tev5Latch9countDownEv.exit.i

bb.m:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !240 ; 7 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !247
  %i.eu = and i32 %i.et, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i.i.i20, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !248 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !249 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ew, %i.ey
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.n
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 33
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ew, %.from..lr.ph.i.i.i.i.i ], [ %i.fo, %.noexc2.i.i ] ; 2 uses
  %i.fd = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  %i.fe = load i8, ptr %i.ez, align 8             ; 2 uses
  %i.ff = trunc i8 %i.fe to i1                    ; 2 uses
  %i.fg = load ptr, ptr %i.fa, align 8
  %i.fh = select i1 %i.ff, ptr %i.fg, ptr %i.fb
  %i.fi = load i64, ptr %i.fc, align 8
  %i.fj = lshr i8 %i.fe, 1
  %i.fk = zext nneg i8 %i.fj to i64
  %i.fl = select i1 %i.ff, i64 %i.fi, i64 %i.fk
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !193
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr %i.fh, i64 %i.fl, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fo, %i.ey
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
  %i.fp = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.fp) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fq = icmp slt i32 %i.ep, 2
  br i1 %i.fq, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.n, %_ZN3tev5Latch9countDownEv.exit.i
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !199
end_hunk_4
begin_hunk_5_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKtEEEESA_S4_EUliE_EESA_S4_S4_mT0_iEUliiE_EESA_S4_S4_mSN_iENKUlvE_clEv:.from.
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKtEEEES9_S4_EUliE_EES9_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48 ; 11 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKtEEEES9_S4_EUliE_EES9_S4_S4_mT0_iENKUliiE_clEii.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKtEEEES9_S4_EUliE_EES9_S4_S4_mT0_iENKUliiE_clEii.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10799)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.54 ; 5 uses

.body.from.54:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr60) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !10800
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !10800
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !10800
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !10800
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !10801
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !10801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10802)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !10802
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr60)
          to label %bb.b unwind label %bb.d, !noalias !10802

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !10802
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !204, !noalias !10802
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !10802
  store ptr null, ptr %4, align 8, !tbaa !204, !noalias !10802
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !10802 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !10802
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !10802
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !10802 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49, !noalias !10802
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !10802
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !10802
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !10804, !nonnull !175, !align !773 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1395 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = zext i32 %i.v to i64                     ; 7 uses
  br i1 %i.w, label %.lr.ph.i.from..lr.ph.split, label %._crit_edge.split

.lr.ph.i.from..lr.ph.split:                       ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !286
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !286
  %i.ah = load i32, ptr %i.ac, align 8, !tbaa !286 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !555 ; 4 uses
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !556 ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !10805, !nonnull !175, !align !773
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !545 ; 3 uses
  %i.an = load i64, ptr %i.z, align 8, !tbaa !1393 ; 2 uses
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !1394 ; 3 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.ap = sext i32 %i.af to i64                   ; 2 uses
  %i.aq = sext i32 %2 to i64                      ; 4 uses
  %i.ar = sext i32 %i.ag to i64                   ; 2 uses
  %wide.trip.count = sext i32 %3 to i64           ; 3 uses
  %i.as = mul nsw i64 %i.aq, %i.x
  %i.at = add i64 %i.as, %i.ao
  %i.au = shl i64 %i.at, 1
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.au
  %i.av = mul nsw i64 %wide.trip.count, %i.x
  %i.aw = add i64 %i.av, %i.ao
  %i.ax = shl i64 %i.aw, 1
  %scevgep73 = getelementptr i8, ptr %i.am, i64 %i.ax
  %i.ay = add nsw i64 %i.ar, %i.aq
  %i.az = mul i64 %i.ay, %i.ai
  %i.ba = add nsw i64 %i.az, %i.ap                ; 2 uses
  %i.bb = shl i64 %i.ba, 1
  %scevgep74 = getelementptr i8, ptr %i.aj, i64 %i.bb
  %i.bc = xor i64 %i.aq, -1
  %i.bd = add nsw i64 %i.bc, %wide.trip.count
  %i.be = mul i64 %i.bd, %i.ai
  %i.bf = add i64 %i.be, %i.ba
  %i.bg = add i64 %i.bf, %i.x
  %i.bh = shl i64 %i.bg, 1
  %scevgep75 = getelementptr i8, ptr %i.aj, i64 %i.bh
  %min.iters.check = icmp ult i32 %i.v, 8
  %ident.check = icmp ne i64 %i.an, 1
  %ident.check72 = icmp ne i64 %i.ak, 1
  %i.bi = or i1 %ident.check, %ident.check72
  %bound0 = icmp ult ptr %scevgep, %scevgep75
  %bound1 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ah, 0
  %i.bj = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.x, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.from..lr.ph.i

._crit_edge.split:                                ; preds = %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKtEEEES4_S5_ENKUliE_clEi.exit.loopexit, %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr60)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge.split
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #49
  unreachable

.from..lr.ph.i:                                   ; preds = %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKtEEEES4_S5_ENKUliE_clEi.exit.loopexit, %.lr.ph.i.from..lr.ph.split
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph.i.from..lr.ph.split ], [ %indvars.iv.next, %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKtEEEES4_S5_ENKUliE_clEi.exit.loopexit ] ; 3 uses
  %i.bm = mul nsw i64 %indvars.iv, %i.x           ; 2 uses
  %i.bn = add nsw i64 %indvars.iv, %i.ar
  %i.bo = mul nsw i64 %i.bn, %i.ai
  %invariant.op.i = add nsw i64 %i.bo, %i.ap      ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bi
  %brmerge85 = select i1 %brmerge, i1 true, i1 %i.bj
  br i1 %brmerge85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.from..lr.ph.i
  %i.bp = getelementptr [2 x i8], ptr %i.aj, i64 %invariant.op.i
  %invariant.gep = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = getelementptr [2 x i8], ptr %i.bp, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bq, align 2, !tbaa !576, !alias.scope !10806
  %i.br = uitofp <8 x i16> %wide.load to <8 x float>
  %i.bs = fdiv <8 x float> %i.br, splat (float 6.553500e+04)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %i.bt = bitcast <8 x float> %i.bs to <8 x i32>  ; 11 uses
  %i.bu = add nsw <8 x i32> %i.bt, splat (i32 -855638017)
  %i.bv = icmp ult <8 x i32> %i.bu, splat (i32 92274687) ; 2 uses
  %i.bw = lshr <8 x i32> %i.bt, splat (i32 23)    ; 2 uses
  %i.bx = sub nuw nsw <8 x i32> splat (i32 126), %i.bw
  %i.by = and <8 x i32> %i.bt, splat (i32 8388607)
  %i.bz = or disjoint <8 x i32> %i.by, splat (i32 8388608) ; 2 uses
  %i.ca = add nsw <8 x i32> %i.bw, splat (i32 -94)
  %i.cb = shl <8 x i32> %i.bz, %i.ca              ; 2 uses
  %i.cc = lshr <8 x i32> %i.bz, %i.bx             ; 2 uses
  %i.cd = trunc nuw nsw <8 x i32> %i.cc to <8 x i16> ; 2 uses
  %i.ce = icmp ugt <8 x i32> %i.cb, splat (i32 -2147483648)
  %i.cf = icmp eq <8 x i32> %i.cb, splat (i32 -2147483648)
  %i.cg = trunc <8 x i32> %i.cc to <8 x i1>
  %i.ch = select <8 x i1> %i.bv, <8 x i1> %i.cf, <8 x i1> zeroinitializer
  %i.ci = select <8 x i1> %i.ch, <8 x i1> %i.cg, <8 x i1> zeroinitializer
  %5 = or <8 x i1> %i.ce, %i.ci
  %6 = select <8 x i1> %i.bv, <8 x i1> %5, <8 x i1> zeroinitializer
  %i.cj = add nuw nsw <8 x i16> %i.cd, splat (i16 1)
  %i.ck = add nsw <8 x i32> %i.bt, splat (i32 -2139095040)
  %.not = icmp ult <8 x i32> %i.ck, splat (i32 -1191182336)
  %i.cl = icmp samesign ugt <8 x i32> %i.bt, splat (i32 1199566847)
  %i.cm = add nsw <8 x i32> %i.bt, splat (i32 -1199566848)
  %.not83 = icmp ult <8 x i32> %i.cm, splat (i32 -251654144)
  %i.cn = add nuw nsw <8 x i32> %i.bt, splat (i32 134221823)
  %i.co = lshr <8 x i32> %i.bt, splat (i32 13)    ; 2 uses
  %i.cp = and <8 x i32> %i.co, splat (i32 1)
  %i.cq = add nuw nsw <8 x i32> %i.cn, %i.cp
  %i.cr = lshr <8 x i32> %i.cq, splat (i32 13)
  %i.cs = trunc <8 x i32> %i.cr to <8 x i16>
  %i.ct = icmp eq <8 x i32> %i.bt, splat (i32 2139095040)
  %i.cu = icmp samesign ugt <8 x i32> %i.bt, splat (i32 2139095040)
  %i.cv = and <8 x i32> %i.co, splat (i32 1023)   ; 2 uses
  %i.cw = icmp eq <8 x i32> %i.cv, zeroinitializer
  %i.cx = zext <8 x i1> %i.cw to <8 x i16>
  %i.cy = trunc nuw nsw <8 x i32> %i.cv to <8 x i16>
  %i.cz = or <8 x i16> %i.cy, %i.cx
  %i.da = or disjoint <8 x i16> %i.cz, splat (i16 31744)
  %.not82 = icmp samesign ugt <8 x i32> %i.bt, splat (i32 855638016)
  %i.db = select <8 x i1> %.not, <8 x i1> %i.ct, <8 x i1> %i.cl
  %predphi = select <8 x i1> %.not82, <8 x i16> %i.cd, <8 x i16> zeroinitializer
  %predphi76 = select <8 x i1> %i.db, <8 x i16> splat (i16 31744), <8 x i16> %predphi
  %predphi77 = select <8 x i1> %6, <8 x i16> %i.cj, <8 x i16> %predphi76
  %predphi78 = select <8 x i1> %.not83, <8 x i16> %predphi77, <8 x i16> %i.cs
  %predphi79 = select <8 x i1> %i.cu, <8 x i16> %i.da, <8 x i16> %predphi78
  store <8 x i16> %predphi79, ptr %gep, align 2, !tbaa !576, !alias.scope !10807, !noalias !10806
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !10795

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKtEEEES4_S5_ENKUliE_clEi.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.from..lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.from..lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN9Imath_3_24halfaSEf.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN9Imath_3_24halfaSEf.exit.i ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dd = add nsw i64 %indvars.iv.i, %i.bm
  %.reass.i = add i64 %invariant.op.i, %indvars.iv.i
  %i.de = mul i64 %.reass.i, %i.ak
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !576
  %i.dh = uitofp i16 %i.dg to float
  %i.di = fdiv float %i.dh, 6.553500e+04
  %i.dj = mul i64 %i.dd, %i.an
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.dj
  %i.dk = bitcast float %i.di to i32              ; 10 uses
  %i.dl = icmp samesign ugt i32 %i.dk, 947912703
  br i1 %i.dl, label %bb.g, label %bb.j

bb.g:                                             ; preds = %scalar.ph
  %i.dm = icmp samesign ugt i32 %i.dk, 2139095039
  br i1 %i.dm, label %bb.h, label %bb.i, !prof !495

bb.h:                                             ; preds = %bb.g
  %i.dn = icmp eq i32 %i.dk, 2139095040
  br i1 %i.dn, label %_ZN9Imath_3_24halfaSEf.exit.i, label %_ZN9Imath_3_24halfaSEf.exit.i.from.48

_ZN9Imath_3_24halfaSEf.exit.i.from.48:            ; preds = %bb.h
  %i.do = lshr i32 %i.dk, 13
  %i.dp = and i32 %i.do, 1023                     ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i16
  %i.ds = trunc nuw nsw i32 %i.dp to i16
  %i.dt = or i16 %i.ds, %i.dr
  %i.du = or disjoint i16 %i.dt, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.i:                                             ; preds = %bb.g
  %i.dv = icmp samesign ugt i32 %i.dk, 1199566847
  br i1 %i.dv, label %_ZN9Imath_3_24halfaSEf.exit.i, label %_ZN9Imath_3_24halfaSEf.exit.i.from.44, !prof !495

_ZN9Imath_3_24halfaSEf.exit.i.from.44:            ; preds = %bb.i
  %i.dw = add nuw nsw i32 %i.dk, 134221823
  %i.dx = lshr i32 %i.dk, 13
  %i.dy = and i32 %i.dx, 1
  %i.dz = add nuw nsw i32 %i.dw, %i.dy
  %i.ea = lshr i32 %i.dz, 13
  %i.eb = trunc i32 %i.ea to i16
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.j:                                             ; preds = %scalar.ph
  %i.ec = icmp samesign ult i32 %i.dk, 855638017
  br i1 %i.ec, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = lshr i32 %i.dk, 23                      ; 2 uses
  %i.ee = sub nuw nsw i32 126, %i.ed
  %i.ef = and i32 %i.dk, 8388607
  %i.eg = or disjoint i32 %i.ef, 8388608          ; 2 uses
  %i.eh = add nsw i32 %i.ed, -94
  %i.ei = shl i32 %i.eg, %i.eh                    ; 2 uses
  %i.ej = lshr i32 %i.eg, %i.ee                   ; 2 uses
  %i.ek = trunc nuw nsw i32 %i.ej to i16          ; 2 uses
  %i.el = icmp ugt i32 %i.ei, -2147483648
  br i1 %i.el, label %_ZN9Imath_3_24halfaSEf.exit.i.from., label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.em = icmp ne i32 %i.ei, -2147483648
  %i.en = and i32 %i.ej, 1
  %.not.i.i.i.i = icmp eq i32 %i.en, 0
  %or.cond.i.i.i.i = select i1 %i.em, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit.i, label %_ZN9Imath_3_24halfaSEf.exit.i.from.

_ZN9Imath_3_24halfaSEf.exit.i.from.:              ; preds = %bb.k, %bb.l
  %i.eo = add nuw nsw i16 %i.ek, 1
  br label %_ZN9Imath_3_24halfaSEf.exit.i

_ZN9Imath_3_24halfaSEf.exit.i:                    ; preds = %bb.l, %bb.j, %bb.i, %bb.h, %_ZN9Imath_3_24halfaSEf.exit.i.from., %_ZN9Imath_3_24halfaSEf.exit.i.from.44, %_ZN9Imath_3_24halfaSEf.exit.i.from.48
  %.033.i.i.i.i = phi i16 [ 31744, %bb.i ], [ %i.du, %_ZN9Imath_3_24halfaSEf.exit.i.from.48 ], [ 0, %bb.j ], [ %i.eb, %_ZN9Imath_3_24halfaSEf.exit.i.from.44 ], [ 31744, %bb.h ], [ %i.eo, %_ZN9Imath_3_24halfaSEf.exit.i.from. ], [ %i.ek, %bb.l ]
  store i16 %.033.i.i.i.i, ptr %gep.i, align 2, !tbaa !576
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %exitcond.not.i, label %_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKtEEEES4_S5_ENKUliE_clEi.exit.loopexit, label %scalar.ph, !llvm.loop !10796

_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKtEEEES4_S5_ENKUliE_clEi.exit.loopexit: ; preds = %_ZN9Imath_3_24halfaSEf.exit.i, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.from..lr.ph.i, !llvm.loop !10797

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge.split
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = atomicrmw add ptr %i.eq, i32 -1 acq_rel, align 4 ; 2 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %bb.m, label %_ZN3tev5Latch9countDownEv.exit.i

bb.m:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !240 ; 7 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !247
  %i.ew = and i32 %i.ev, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.i.i20, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !248 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !249 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ey, %i.fa
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.n
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 33
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ey, %.from..lr.ph.i.i.i.i.i ], [ %i.fq, %.noexc2.i.i ] ; 2 uses
  %i.ff = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  %i.fg = load i8, ptr %i.fb, align 8             ; 2 uses
  %i.fh = trunc i8 %i.fg to i1                    ; 2 uses
  %i.fi = load ptr, ptr %i.fc, align 8
  %i.fj = select i1 %i.fh, ptr %i.fi, ptr %i.fd
  %i.fk = load i64, ptr %i.fe, align 8
  %i.fl = lshr i8 %i.fg, 1
  %i.fm = zext nneg i8 %i.fl to i64
  %i.fn = select i1 %i.fh, i64 %i.fk, i64 %i.fm
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !193
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr %i.fj, i64 %i.fn, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, %i.fa
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
  %i.fr = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.fr) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fs = icmp slt i32 %i.er, 2
  br i1 %i.fs, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.n, %_ZN3tev5Latch9countDownEv.exit.i
  %i.ft = load ptr, ptr %i.d, align 8, !tbaa !199
end_hunk_5
begin_hunk_6_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKaEEEES9_S4_EUliE_EES9_S4_S4_mT0_iENKUliiE_clEii:.from.
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.al
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
  %i.bc = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bc) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bd = icmp slt i32 %i.ac, 2
  br i1 %i.bd, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.j, %_ZN3tev5Latch9countDownEv.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !201 ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr               ; 3 uses
  store ptr %i.bg, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr53 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr53, align 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr nonnull %i.bg)
  br label %AfterCoroEnd

bb.l:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.50 unwind label %bb.o

.from.46:                                         ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.50

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !200 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 acq_rel, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !193
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #44, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.m, %bb.n
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr52) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.50:                                    ; preds = %bb.l, %.from.46
  %.pn = phi { ptr, i32 } [ %i.bj, %.from.46 ], [ %i.bi, %bb.l ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #44
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr52) #44
  br label %.body

.body:                                            ; preds = %.body.from.50, %.body.from.48, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.50 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.48 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  resume { ptr, i32 } %.merged18

bb.o:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKaEEEES4_S5_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1403 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %1 to i64                       ; 3 uses
  %i.e = zext nneg i32 %i.b to i64                ; 7 uses
  %i.f = mul nsw i64 %i.e, %i.d                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !286
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !286
  %i.k = add nsw i32 %i.j, %1
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !286
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.l                   ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !561    ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !562  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10987, !nonnull !175, !align !773
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !545  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1401 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1402 ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.v, i64 %i.z ; 2 uses
  %i.aa = sext i32 %i.h to i64                    ; 2 uses
  %invariant.op = add i64 %i.p, %i.aa             ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %ident.check = icmp ne i64 %i.x, 1
  %ident.check12 = icmp ne i64 %i.s, 1
  %i.ab = or i1 %ident.check, %ident.check12
  br i1 %i.ab, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ac = mul nsw i64 %i.d, %i.e
  %i.ad = shl i64 %i.z, 1
  %i.ae = add i64 %i.ac, %i.z
  %i.af = shl i64 %i.ae, 1
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %i.ah = shl nsw i64 %i.d, 1
  %i.ai = add nsw i64 %i.ah, 2
  %i.aj = mul i64 %i.ai, %i.e
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ad
  %i.am = getelementptr i8, ptr %i.q, i64 %invariant.op
  %i.an = getelementptr i8, ptr %i.q, i64 %i.p
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.aa
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.e
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %i.am, %i.al
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  %invariant.gep21 = getelementptr i8, ptr %i.q, i64 %invariant.op
  %i.aq = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep22 = getelementptr i8, ptr %invariant.gep21, i64 %index
  %wide.load = load <8 x i8>, ptr %gep22, align 1, !tbaa !126, !alias.scope !10988
  %i.ar = sitofp <8 x i8> %wide.load to <8 x float>
  %i.as = fdiv <8 x float> %i.ar, splat (float 1.270000e+02) ; 2 uses
  %i.at = getelementptr [2 x i8], ptr %i.aq, i64 %index
  %i.au = bitcast <8 x float> %i.as to <8 x i32>
  %i.av = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.as)
  %i.aw = bitcast <8 x float> %i.av to <8 x i32>  ; 8 uses
  %i.ax = lshr <8 x i32> %i.au, splat (i32 16)    ; 2 uses
  %i.ay = trunc nuw <8 x i32> %i.ax to <8 x i16>
  %i.az = and <8 x i16> %i.ay, splat (i16 -32768) ; 2 uses
  %i.ba = add nsw <8 x i32> %i.aw, splat (i32 -855638017)
  %i.bb = icmp ult <8 x i32> %i.ba, splat (i32 92274687) ; 2 uses
  %i.bc = lshr <8 x i32> %i.aw, splat (i32 23)    ; 2 uses
  %i.bd = sub nuw nsw <8 x i32> splat (i32 126), %i.bc
  %i.be = and <8 x i32> %i.aw, splat (i32 8388607)
  %i.bf = or disjoint <8 x i32> %i.be, splat (i32 8388608) ; 2 uses
  %i.bg = add nsw <8 x i32> %i.bc, splat (i32 -94)
  %i.bh = shl <8 x i32> %i.bf, %i.bg              ; 2 uses
  %i.bi = lshr <8 x i32> %i.bf, %i.bd             ; 2 uses
  %i.bj = and <8 x i32> %i.ax, splat (i32 32768)  ; 2 uses
  %i.bk = or <8 x i32> %i.bi, %i.bj
  %i.bl = trunc nuw <8 x i32> %i.bk to <8 x i16>  ; 2 uses
  %i.bm = icmp ugt <8 x i32> %i.bh, splat (i32 -2147483648) ; 2 uses
  %i.bn = xor <8 x i1> %i.bm, splat (i1 true)
  %i.bo = select <8 x i1> %i.bb, <8 x i1> %i.bn, <8 x i1> zeroinitializer ; 2 uses
  %i.bp = icmp ne <8 x i32> %i.bh, splat (i32 -2147483648)
  %i.bq = and <8 x i32> %i.bi, splat (i32 1)
  %i.br = icmp eq <8 x i32> %i.bq, zeroinitializer
  %i.bs = select <8 x i1> %i.bp, <8 x i1> splat (i1 true), <8 x i1> %i.br ; 2 uses
  %i.bt = xor <8 x i1> %i.bs, splat (i1 true)
  %i.bu = select <8 x i1> %i.bo, <8 x i1> %i.bt, <8 x i1> zeroinitializer
  %2 = or <8 x i1> %i.bm, %i.bu
  %3 = select <8 x i1> %i.bb, <8 x i1> %2, <8 x i1> zeroinitializer
  %i.bv = add nuw <8 x i16> %i.bl, splat (i16 1)
  %i.bw = add nsw <8 x i32> %i.aw, splat (i32 -947912704)
  %i.bx = icmp ult <8 x i32> %i.bw, splat (i32 251654144)
  %i.by = add nuw nsw <8 x i32> %i.aw, splat (i32 134221823)
  %i.bz = lshr <8 x i32> %i.aw, splat (i32 13)    ; 2 uses
  %i.ca = and <8 x i32> %i.bz, splat (i32 1)
  %i.cb = add nuw nsw <8 x i32> %i.by, %i.ca
  %i.cc = lshr <8 x i32> %i.cb, splat (i32 13)
  %i.cd = or <8 x i32> %i.cc, %i.bj
  %i.ce = trunc <8 x i32> %i.cd to <8 x i16>
  %i.cf = or disjoint <8 x i16> %i.az, splat (i16 31744)
  %i.cg = and <8 x i32> %i.bz, splat (i32 1023)   ; 2 uses
  %i.ch = icmp eq <8 x i32> %i.cg, zeroinitializer
  %i.ci = zext <8 x i1> %i.ch to <8 x i16>
  %i.cj = trunc nuw nsw <8 x i32> %i.cg to <8 x i16>
  %i.ck = or <8 x i16> %i.cj, %i.ci
  %i.cl = select <8 x i1> %i.bo, <8 x i1> %i.bs, <8 x i1> zeroinitializer
  %i.cm = icmp samesign ult <8 x i32> %i.aw, splat (i32 855638017)
  %i.cn = icmp samesign ult <8 x i32> %i.aw, splat (i32 2139095041)
  %predphi = select <8 x i1> %i.cn, <8 x i16> zeroinitializer, <8 x i16> %i.ck
  %predphi16 = or disjoint <8 x i16> %i.cf, %predphi
  %predphi17 = select <8 x i1> %i.bx, <8 x i16> %i.ce, <8 x i16> %predphi16
  %predphi18 = select <8 x i1> %i.cm, <8 x i16> %i.az, <8 x i16> %predphi17
  %predphi19 = select <8 x i1> %i.cl, <8 x i16> %i.bl, <8 x i16> %predphi18
  %predphi20 = select <8 x i1> %3, <8 x i16> %i.bv, <8 x i16> %predphi19
  store <8 x i16> %predphi20, ptr %i.at, align 2, !tbaa !576, !alias.scope !10989, !noalias !10988
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !10985

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN9Imath_3_24halfaSEf.exit, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN9Imath_3_24halfaSEf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN9Imath_3_24halfaSEf.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cp = add nsw i64 %i.f, %indvars.iv
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.cq = mul i64 %.reass, %i.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !126
  %i.ct = sitofp i8 %i.cs to float
  %i.cu = fdiv float %i.ct, 1.270000e+02          ; 2 uses
  %i.cv = mul i64 %i.x, %i.cp
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cv
  %i.cw = bitcast float %i.cu to i32
  %i.cx = tail call float @llvm.fabs.f32(float %i.cu)
  %i.cy = bitcast float %i.cx to i32              ; 10 uses
  %i.cz = lshr i32 %i.cw, 16                      ; 3 uses
  %i.da = trunc nuw i32 %i.cz to i16
  %i.db = and i16 %i.da, -32768                   ; 3 uses
  %i.dc = icmp samesign ugt i32 %i.cy, 947912703
  br i1 %i.dc, label %bb.b, label %bb.h

bb.b:                                             ; preds = %scalar.ph
  %i.dd = icmp samesign ugt i32 %i.cy, 2139095039
  br i1 %i.dd, label %bb.c, label %bb.e, !prof !495

bb.c:                                             ; preds = %bb.b
  %i.de = or disjoint i16 %i.db, 31744            ; 2 uses
  %i.df = icmp eq i32 %i.cy, 2139095040
  br i1 %i.df, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dg = lshr i32 %i.cy, 13
  %i.dh = and i32 %i.dg, 1023                     ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = zext i1 %i.di to i16
  %i.dk = trunc nuw nsw i32 %i.dh to i16
  %i.dl = or i16 %i.dk, %i.dj
  %i.dm = or disjoint i16 %i.dl, %i.de
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.e:                                             ; preds = %bb.b
  %i.dn = icmp samesign ugt i32 %i.cy, 1199566847
  br i1 %i.dn, label %bb.f, label %bb.g, !prof !495

bb.f:                                             ; preds = %bb.e
  %i.do = or disjoint i16 %i.db, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.g:                                             ; preds = %bb.e
  %i.dp = add nuw nsw i32 %i.cy, 134221823
  %i.dq = lshr i32 %i.cy, 13
  %i.dr = and i32 %i.dq, 1
  %i.ds = add nuw nsw i32 %i.dp, %i.dr
  %i.dt = lshr i32 %i.ds, 13
  %i.du = and i32 %i.cz, 32768
  %i.dv = or i32 %i.dt, %i.du
  %i.dw = trunc i32 %i.dv to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.h:                                             ; preds = %scalar.ph
  %i.dx = icmp samesign ult i32 %i.cy, 855638017
  br i1 %i.dx, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dy = lshr i32 %i.cy, 23                      ; 2 uses
  %i.dz = sub nuw nsw i32 126, %i.dy
  %i.ea = and i32 %i.cy, 8388607
  %i.eb = or disjoint i32 %i.ea, 8388608          ; 2 uses
  %i.ec = add nsw i32 %i.dy, -94
  %i.ed = shl i32 %i.eb, %i.ec                    ; 2 uses
  %i.ee = lshr i32 %i.eb, %i.dz                   ; 2 uses
  %i.ef = and i32 %i.cz, 32768
  %i.eg = or i32 %i.ee, %i.ef
  %i.eh = trunc nuw i32 %i.eg to i16              ; 2 uses
  %i.ei = icmp ugt i32 %i.ed, -2147483648
  br i1 %i.ei, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ej = icmp ne i32 %i.ed, -2147483648
  %i.ek = and i32 %i.ee, 1
  %.not.i.i.i = icmp eq i32 %i.ek, 0
  %or.cond.i.i.i = select i1 %i.ej, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.el = add nuw i16 %i.eh, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k
  %.033.i.i.i = phi i16 [ %i.db, %bb.h ], [ %i.dm, %bb.d ], [ %i.do, %bb.f ], [ %i.dw, %bb.g ], [ %i.de, %bb.c ], [ %i.el, %bb.k ], [ %i.eh, %bb.j ]
  store i16 %.033.i.i.i, ptr %gep, align 2, !tbaa !576
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !10986
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKsEEEES9_S4_EUliE_EES9_S4_S4_mT0_i(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef byval(%class.anon.1685) align 8 %5, i32 noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #48 ; 16 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKsEEEES9_S4_EUliE_EES9_S4_S4_mT0_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKsEEEES9_S4_EUliE_EES9_S4_S4_mT0_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !1425
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10999)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !11000
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !11000
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !11000
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !11000
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !11001
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !11001
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11002)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44, !noalias !11002
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !11002

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !11002
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !204, !noalias !11002
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !11002
  store ptr null, ptr %7, align 8, !tbaa !204, !noalias !11002
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !11002 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !11002
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !11002
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !11002 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKsEEEES9_S4_EUliE_EES9_S4_S4_mT0_iENKUliiE_clEii:.from.
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !193
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.al
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
  %i.bc = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bc) #49
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bd = icmp slt i32 %i.ac, 2
  br i1 %i.bd, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.j, %_ZN3tev5Latch9countDownEv.exit.i
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !201 ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr               ; 3 uses
  store ptr %i.bg, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr53 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr53, align 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr nonnull %i.bg)
  br label %AfterCoroEnd

bb.l:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.50 unwind label %bb.o

.from.46:                                         ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.50

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !200 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 acq_rel, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !193
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #44, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.m, %bb.n
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr52) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.50:                                    ; preds = %bb.l, %.from.46
  %.pn = phi { ptr, i32 } [ %i.bj, %.from.46 ], [ %i.bi, %bb.l ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #44
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr52) #44
  br label %.body

.body:                                            ; preds = %.body.from.50, %.body.from.48, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.50 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.48 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  resume { ptr, i32 } %.merged18

bb.o:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPT_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS5_E_clINS_11ChannelViewIKsEEEES4_S5_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1407 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = zext nneg i32 %i.b to i64                ; 5 uses
  %i.f = mul nsw i64 %i.e, %i.d                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !286
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !286
  %i.k = add nsw i32 %i.j, %1
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !286
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = load ptr, ptr %0, align 8, !tbaa !564    ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !565  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11078, !nonnull !175, !align !773
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !545  ; 2 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1405 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1406 ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.w, i64 %i.ab ; 2 uses
  %i.ac = sext i32 %i.h to i64
  %invariant.op = add i64 %i.p, %i.ac             ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %ident.check = icmp ne i64 %i.z, 1
  %ident.check12 = icmp ne i64 %i.t, 1
  %i.ad = or i1 %ident.check, %ident.check12
  br i1 %i.ad, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ae = mul nsw i64 %i.d, %i.e
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = shl i64 %i.af, 1
  %i.ah = add i64 %i.ag, %i.x
  %i.ai = shl i64 %invariant.op, 1
  %i.aj = add i64 %i.ai, %i.r
  %i.ak = sub i64 %i.aj, %i.ah
  %diff.check = icmp ugt i64 %i.ak, -16
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  %invariant.gep18 = getelementptr [2 x i8], ptr %i.q, i64 %invariant.op
  %i.al = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep19 = getelementptr [2 x i8], ptr %invariant.gep18, i64 %index
  %wide.load = load <8 x i16>, ptr %gep19, align 2, !tbaa !576
  %i.am = sitofp <8 x i16> %wide.load to <8 x float>
  %i.an = fdiv <8 x float> %i.am, splat (float 3.276700e+04) ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.al, i64 %index
  %i.ap = bitcast <8 x float> %i.an to <8 x i32>
  %i.aq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.an)
  %i.ar = bitcast <8 x float> %i.aq to <8 x i32>  ; 8 uses
  %i.as = lshr <8 x i32> %i.ap, splat (i32 16)    ; 2 uses
  %i.at = trunc nuw <8 x i32> %i.as to <8 x i16>
  %i.au = and <8 x i16> %i.at, splat (i16 -32768) ; 2 uses
  %i.av = add nsw <8 x i32> %i.ar, splat (i32 -855638017)
  %i.aw = icmp ult <8 x i32> %i.av, splat (i32 92274687) ; 2 uses
  %i.ax = lshr <8 x i32> %i.ar, splat (i32 23)    ; 2 uses
  %i.ay = sub nuw nsw <8 x i32> splat (i32 126), %i.ax
  %i.az = and <8 x i32> %i.ar, splat (i32 8388607)
  %i.ba = or disjoint <8 x i32> %i.az, splat (i32 8388608) ; 2 uses
  %i.bb = add nsw <8 x i32> %i.ax, splat (i32 -94)
  %i.bc = shl <8 x i32> %i.ba, %i.bb              ; 2 uses
  %i.bd = lshr <8 x i32> %i.ba, %i.ay             ; 2 uses
  %i.be = and <8 x i32> %i.as, splat (i32 32768)  ; 2 uses
  %i.bf = or <8 x i32> %i.bd, %i.be
  %i.bg = trunc nuw <8 x i32> %i.bf to <8 x i16>  ; 2 uses
  %i.bh = icmp ugt <8 x i32> %i.bc, splat (i32 -2147483648) ; 2 uses
  %i.bi = xor <8 x i1> %i.bh, splat (i1 true)
  %i.bj = select <8 x i1> %i.aw, <8 x i1> %i.bi, <8 x i1> zeroinitializer ; 2 uses
  %i.bk = icmp ne <8 x i32> %i.bc, splat (i32 -2147483648)
  %i.bl = and <8 x i32> %i.bd, splat (i32 1)
  %i.bm = icmp eq <8 x i32> %i.bl, zeroinitializer
  %i.bn = select <8 x i1> %i.bk, <8 x i1> splat (i1 true), <8 x i1> %i.bm ; 2 uses
  %i.bo = xor <8 x i1> %i.bn, splat (i1 true)
  %i.bp = select <8 x i1> %i.bj, <8 x i1> %i.bo, <8 x i1> zeroinitializer
  %2 = or <8 x i1> %i.bh, %i.bp
  %3 = select <8 x i1> %i.aw, <8 x i1> %2, <8 x i1> zeroinitializer
  %i.bq = add nuw <8 x i16> %i.bg, splat (i16 1)
  %i.br = add nsw <8 x i32> %i.ar, splat (i32 -947912704)
  %i.bs = icmp ult <8 x i32> %i.br, splat (i32 251654144)
  %i.bt = add nuw nsw <8 x i32> %i.ar, splat (i32 134221823)
  %i.bu = lshr <8 x i32> %i.ar, splat (i32 13)    ; 2 uses
  %i.bv = and <8 x i32> %i.bu, splat (i32 1)
  %i.bw = add nuw nsw <8 x i32> %i.bt, %i.bv
  %i.bx = lshr <8 x i32> %i.bw, splat (i32 13)
  %i.by = or <8 x i32> %i.bx, %i.be
  %i.bz = trunc <8 x i32> %i.by to <8 x i16>
  %i.ca = or disjoint <8 x i16> %i.au, splat (i16 31744)
  %i.cb = and <8 x i32> %i.bu, splat (i32 1023)   ; 2 uses
  %i.cc = icmp eq <8 x i32> %i.cb, zeroinitializer
  %i.cd = zext <8 x i1> %i.cc to <8 x i16>
  %i.ce = trunc nuw nsw <8 x i32> %i.cb to <8 x i16>
  %i.cf = or <8 x i16> %i.ce, %i.cd
  %i.cg = select <8 x i1> %i.bj, <8 x i1> %i.bn, <8 x i1> zeroinitializer
  %i.ch = icmp samesign ult <8 x i32> %i.ar, splat (i32 855638017)
  %i.ci = icmp samesign ult <8 x i32> %i.ar, splat (i32 2139095041)
  %predphi = select <8 x i1> %i.ci, <8 x i16> zeroinitializer, <8 x i16> %i.cf
  %predphi13 = or disjoint <8 x i16> %i.ca, %predphi
  %predphi14 = select <8 x i1> %i.bs, <8 x i16> %i.bz, <8 x i16> %predphi13
  %predphi15 = select <8 x i1> %i.ch, <8 x i16> %i.au, <8 x i16> %predphi14
  %predphi16 = select <8 x i1> %i.cg, <8 x i16> %i.bg, <8 x i16> %predphi15
  %predphi17 = select <8 x i1> %3, <8 x i16> %i.bq, <8 x i16> %predphi16
  store <8 x i16> %predphi17, ptr %i.ao, align 2, !tbaa !576
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !11076

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN9Imath_3_24halfaSEf.exit, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN9Imath_3_24halfaSEf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN9Imath_3_24halfaSEf.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ck = add nsw i64 %i.f, %indvars.iv
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.cl = mul i64 %.reass, %i.t
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !576
  %i.co = sitofp i16 %i.cn to float
  %i.cp = fdiv float %i.co, 3.276700e+04          ; 2 uses
  %i.cq = mul i64 %i.z, %i.ck
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cq
  %i.cr = bitcast float %i.cp to i32
  %i.cs = tail call float @llvm.fabs.f32(float %i.cp)
  %i.ct = bitcast float %i.cs to i32              ; 10 uses
  %i.cu = lshr i32 %i.cr, 16                      ; 3 uses
  %i.cv = trunc nuw i32 %i.cu to i16
  %i.cw = and i16 %i.cv, -32768                   ; 3 uses
  %i.cx = icmp samesign ugt i32 %i.ct, 947912703
  br i1 %i.cx, label %bb.b, label %bb.h

bb.b:                                             ; preds = %scalar.ph
  %i.cy = icmp samesign ugt i32 %i.ct, 2139095039
  br i1 %i.cy, label %bb.c, label %bb.e, !prof !495

bb.c:                                             ; preds = %bb.b
  %i.cz = or disjoint i16 %i.cw, 31744            ; 2 uses
  %i.da = icmp eq i32 %i.ct, 2139095040
  br i1 %i.da, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = lshr i32 %i.ct, 13
  %i.dc = and i32 %i.db, 1023                     ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i16
  %i.df = trunc nuw nsw i32 %i.dc to i16
  %i.dg = or i16 %i.df, %i.de
  %i.dh = or disjoint i16 %i.dg, %i.cz
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.e:                                             ; preds = %bb.b
  %i.di = icmp samesign ugt i32 %i.ct, 1199566847
  br i1 %i.di, label %bb.f, label %bb.g, !prof !495

bb.f:                                             ; preds = %bb.e
  %i.dj = or disjoint i16 %i.cw, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.g:                                             ; preds = %bb.e
  %i.dk = add nuw nsw i32 %i.ct, 134221823
  %i.dl = lshr i32 %i.ct, 13
  %i.dm = and i32 %i.dl, 1
  %i.dn = add nuw nsw i32 %i.dk, %i.dm
  %i.do = lshr i32 %i.dn, 13
  %i.dp = and i32 %i.cu, 32768
  %i.dq = or i32 %i.do, %i.dp
  %i.dr = trunc i32 %i.dq to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.h:                                             ; preds = %scalar.ph
  %i.ds = icmp samesign ult i32 %i.ct, 855638017
  br i1 %i.ds, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = lshr i32 %i.ct, 23                      ; 2 uses
  %i.du = sub nuw nsw i32 126, %i.dt
  %i.dv = and i32 %i.ct, 8388607
  %i.dw = or disjoint i32 %i.dv, 8388608          ; 2 uses
  %i.dx = add nsw i32 %i.dt, -94
  %i.dy = shl i32 %i.dw, %i.dx                    ; 2 uses
  %i.dz = lshr i32 %i.dw, %i.du                   ; 2 uses
  %i.ea = and i32 %i.cu, 32768
  %i.eb = or i32 %i.dz, %i.ea
  %i.ec = trunc nuw i32 %i.eb to i16              ; 2 uses
  %i.ed = icmp ugt i32 %i.dy, -2147483648
  br i1 %i.ed, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ee = icmp ne i32 %i.dy, -2147483648
  %i.ef = and i32 %i.dz, 1
  %.not.i.i.i = icmp eq i32 %i.ef, 0
  %or.cond.i.i.i = select i1 %i.ee, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eg = add nuw i16 %i.ec, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k
  %.033.i.i.i = phi i16 [ %i.cw, %bb.h ], [ %i.dh, %bb.d ], [ %i.dj, %bb.f ], [ %i.dr, %bb.g ], [ %i.cz, %bb.c ], [ %i.eg, %bb.k ], [ %i.ec, %bb.j ]
  store i16 %.033.i.i.i, ptr %gep, align 2, !tbaa !576
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !11077
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKiEEEES9_S4_EUliE_EES9_S4_S4_mT0_i(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef byval(%class.anon.1691) align 8 %5, i32 noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #48 ; 16 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKiEEEES9_S4_EUliE_EES9_S4_S4_mT0_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZNS_21prepareTextureChannelIN9Imath_3_24halfEEENS_4TaskIvEEPS4_PKNS_7ChannelENS_3BoxIiLj2EEEmmENKUlS4_E_clINS_11ChannelViewIKiEEEES9_S4_EUliE_EES9_S4_S4_mT0_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !1429
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11088)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !11089
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !11089
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !11089
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !11089
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !11090
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !11090
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11091)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44, !noalias !11091
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !11091

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !11091
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !204, !noalias !11091
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !11091
  store ptr null, ptr %7, align 8, !tbaa !204, !noalias !11091
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !11091 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !11091
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !11091
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !11091 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
end_hunk_7
