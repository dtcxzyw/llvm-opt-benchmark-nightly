Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow6ServerINS_4CrowIJEEENS_11TCPAcceptorENS_13SocketAdaptorEJEE3runEv:bb.a

bb.bp:                                            ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bq unwind label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  %.sroa.0.0.copyload.i.i = load i64, ptr %13, align 8, !tbaa !162
  %.not.i72 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i72, label %_ZNSt6threadD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt9terminatev() #42
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.hh = load ptr, ptr %4, align 8, !tbaa !1115  ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !1101 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hh, %i.hj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadD2Ev.exit, %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ib, %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i ], [ %i.hh, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.hm, align 8, !tbaa !314
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !315
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !257
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #40, !inline_history !109
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !257
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #40, !inline_history !109
  br label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hp, %bb.bv ], [ %i.hz, %bb.bw ]
  %i.ia = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ia, label %bb.bx, label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i, !prof !316

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #40
  br label %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i:       ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bt, %.lr.ph.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ib, %i.hj
  br i1 %.not.i.i.i73, label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !110

_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6futureIvEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !1115
  br label %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6threadD2Ev.exit
  %i.ic = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hh, %_ZNSt6threadD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !1102
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.ic to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ih) #41
  br label %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit

_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPSt6futureIvES1_EvT_S3_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.bz

bb.bz:                                            ; preds = %bb.b, %_ZN4crow6loggerlsIA39_cEERS0_RKT_.exit, %_ZNSt6vectorISt6futureIvESaIS1_EED2Ev.exit
  ret void

bb.ca:                                            ; preds = %bb.bm
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cb:                                            ; preds = %bb.bp
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %.sroa.0.0.copyload.i.i74 = load i64, ptr %13, align 8, !tbaa !162
  %.not.i75 = icmp eq i64 %.sroa.0.0.copyload.i.i74, 0
  br i1 %.not.i75, label %.body, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZSt9terminatev() #42
  unreachable

.body:                                            ; preds = %bb.cb, %bb.ca, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %bb.bo
  %.pn29 = phi { ptr, i32 } [ %i.hc, %bb.bo ], [ %i.ii, %bb.ca ], [ %i.hc, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.ij, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.cd

bb.cd:                                            ; preds = %.body, %bb.bl, %bb.bk, %bb.be, %bb.ay, %bb.am, %bb.al, %bb.ah
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.ah ], [ %.pn29, %.body ], [ %i.fx, %bb.ay ], [ %i.gu, %bb.bl ], [ %.pn27, %bb.bk ], [ %.pn.pn.pn, %bb.be ], [ %i.ek, %bb.am ], [ %i.ej, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZNSt6vectorISt6futureIvESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ce

bb.ce:                                            ; preds = %bb.u, %bb.cd, %bb.e
  %.pn36 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.cm, %bb.u ], [ %.pn31.pn, %bb.cd ]
  resume { ptr, i32 } %.pn36
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4crow7utilityL14normalize_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %.8.val, ptr %i.a, align 8, !tbaa !162
  %i.c = icmp ugt i64 %.8.val, 15
  br i1 %i.c, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !164
  %i.e = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.e, ptr %i.b, align 8, !tbaa !165
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.f = phi ptr [ %i.d, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %.8.val, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = load i8, ptr %.0.val, align 1, !tbaa !165
  store i8 %i.g, ptr %i.f, align 1, !tbaa !165
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %.0.val, i64 %.8.val, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !166
  %i.j = load ptr, ptr %0, align 8, !tbaa !164
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.l = load ptr, ptr %0, align 8, !tbaa !164    ; 44 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !166  ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %.not6.i = icmp samesign eq i64 %i.m, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.m, 24
  %n.vec = and i64 %i.m, -32                      ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue99
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue99 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 3 uses
  %i.q = getelementptr i8, ptr %i.l, i64 %index
  %next.gep6 = getelementptr i8, ptr %i.q, i64 1
  %i.r = getelementptr i8, ptr %i.l, i64 %index
  %next.gep7 = getelementptr i8, ptr %i.r, i64 2
  %i.s = getelementptr i8, ptr %i.l, i64 %index
  %next.gep8 = getelementptr i8, ptr %i.s, i64 3
  %i.t = getelementptr i8, ptr %i.l, i64 %index
  %next.gep9 = getelementptr i8, ptr %i.t, i64 4
  %i.u = getelementptr i8, ptr %i.l, i64 %index
  %next.gep10 = getelementptr i8, ptr %i.u, i64 5
  %i.v = getelementptr i8, ptr %i.l, i64 %index
  %next.gep11 = getelementptr i8, ptr %i.v, i64 6
  %i.w = getelementptr i8, ptr %i.l, i64 %index
  %next.gep12 = getelementptr i8, ptr %i.w, i64 7
  %i.x = getelementptr i8, ptr %i.l, i64 %index
  %next.gep13 = getelementptr i8, ptr %i.x, i64 8
  %i.y = getelementptr i8, ptr %i.l, i64 %index
  %next.gep14 = getelementptr i8, ptr %i.y, i64 9
  %i.z = getelementptr i8, ptr %i.l, i64 %index
  %next.gep15 = getelementptr i8, ptr %i.z, i64 10
  %i.aa = getelementptr i8, ptr %i.l, i64 %index
  %next.gep16 = getelementptr i8, ptr %i.aa, i64 11
  %i.ab = getelementptr i8, ptr %i.l, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.ab, i64 12
  %i.ac = getelementptr i8, ptr %i.l, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.ac, i64 13
  %i.ad = getelementptr i8, ptr %i.l, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.ad, i64 14
  %i.ae = getelementptr i8, ptr %i.l, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.ae, i64 15
  %i.af = getelementptr i8, ptr %i.l, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.af, i64 16
  %i.ag = getelementptr i8, ptr %i.l, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.ag, i64 17
  %i.ah = getelementptr i8, ptr %i.l, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.ah, i64 18
  %i.ai = getelementptr i8, ptr %i.l, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.ai, i64 19
  %i.aj = getelementptr i8, ptr %i.l, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.aj, i64 20
  %i.ak = getelementptr i8, ptr %i.l, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.ak, i64 21
  %i.al = getelementptr i8, ptr %i.l, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.al, i64 22
  %i.am = getelementptr i8, ptr %i.l, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.am, i64 23
  %i.an = getelementptr i8, ptr %i.l, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.an, i64 24
  %i.ao = getelementptr i8, ptr %i.l, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.ao, i64 25
  %i.ap = getelementptr i8, ptr %i.l, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.ap, i64 26
  %i.aq = getelementptr i8, ptr %i.l, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.aq, i64 27
  %i.ar = getelementptr i8, ptr %i.l, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.ar, i64 28
  %i.as = getelementptr i8, ptr %i.l, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.as, i64 29
  %i.at = getelementptr i8, ptr %i.l, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.at, i64 30
  %i.au = getelementptr i8, ptr %i.l, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.au, i64 31
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !165
  %wide.load37 = load <16 x i8>, ptr %i.av, align 1, !tbaa !165
  %i.aw = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.ax = icmp eq <16 x i8> %wide.load37, splat (i8 92) ; 16 uses
  %i.ay = extractelement <16 x i1> %i.aw, i64 0
  br i1 %i.ay, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %next.gep, align 1, !tbaa !165
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.az = extractelement <16 x i1> %i.aw, i64 1
  br i1 %i.az, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue
  store i8 47, ptr %next.gep6, align 1, !tbaa !165
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue
  %i.ba = extractelement <16 x i1> %i.aw, i64 2
  br i1 %i.ba, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  store i8 47, ptr %next.gep7, align 1, !tbaa !165
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.bb = extractelement <16 x i1> %i.aw, i64 3
  br i1 %i.bb, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  store i8 47, ptr %next.gep8, align 1, !tbaa !165
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.bc = extractelement <16 x i1> %i.aw, i64 4
  br i1 %i.bc, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  store i8 47, ptr %next.gep9, align 1, !tbaa !165
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.bd = extractelement <16 x i1> %i.aw, i64 5
  br i1 %i.bd, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  store i8 47, ptr %next.gep10, align 1, !tbaa !165
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.be = extractelement <16 x i1> %i.aw, i64 6
  br i1 %i.be, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  store i8 47, ptr %next.gep11, align 1, !tbaa !165
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.bf = extractelement <16 x i1> %i.aw, i64 7
  br i1 %i.bf, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  store i8 47, ptr %next.gep12, align 1, !tbaa !165
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.bg = extractelement <16 x i1> %i.aw, i64 8
  br i1 %i.bg, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  store i8 47, ptr %next.gep13, align 1, !tbaa !165
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.bh = extractelement <16 x i1> %i.aw, i64 9
  br i1 %i.bh, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  store i8 47, ptr %next.gep14, align 1, !tbaa !165
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.bi = extractelement <16 x i1> %i.aw, i64 10
  br i1 %i.bi, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  store i8 47, ptr %next.gep15, align 1, !tbaa !165
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.bj = extractelement <16 x i1> %i.aw, i64 11
  br i1 %i.bj, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i8 47, ptr %next.gep16, align 1, !tbaa !165
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.bk = extractelement <16 x i1> %i.aw, i64 12
  br i1 %i.bk, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i8 47, ptr %next.gep17, align 1, !tbaa !165
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.bl = extractelement <16 x i1> %i.aw, i64 13
  br i1 %i.bl, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i8 47, ptr %next.gep18, align 1, !tbaa !165
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.bm = extractelement <16 x i1> %i.aw, i64 14
  br i1 %i.bm, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  store i8 47, ptr %next.gep19, align 1, !tbaa !165
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.bn = extractelement <16 x i1> %i.aw, i64 15
  br i1 %i.bn, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  store i8 47, ptr %next.gep20, align 1, !tbaa !165
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.bo = extractelement <16 x i1> %i.ax, i64 0
  br i1 %i.bo, label %pred.store.if68, label %pred.store.continue69

end_hunk_0
