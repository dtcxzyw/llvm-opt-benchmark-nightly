Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_model?download=true
inline.NumInlined: 3876
inline.NumDeleted: 1326
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4cvc58internal6theory11TheoryModel23assignFunctionDefaultHoENS0_12NodeTemplateILb1EEE:bb.a
.body439:                                         ; preds = %bb.nx, %bb.lv, %.body442
  %.pn102 = phi { ptr, i32 } [ %eh.lpad-body443, %.body442 ], [ %i.apj, %bb.nx ], [ %lpad.phi.i, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %bb.oe

bb.nz:                                            ; preds = %bb.mj
  %i.apl = landingpad { ptr, i32 }
          cleanup
  br label %bb.od

bb.oa:                                            ; preds = %bb.mm
  %i.apm = landingpad { ptr, i32 }
          cleanup
  br label %bb.oc

bb.ob:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit465
  %i.apn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #24
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %.pn104 = phi { ptr, i32 } [ %i.apn, %bb.ob ], [ %i.apm, %bb.oa ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #24
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.nz
  %.pn104.pn = phi { ptr, i32 } [ %.pn104, %bb.oc ], [ %i.apl, %bb.nz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #24
  br label %bb.oe

bb.oe:                                            ; preds = %bb.od, %.body439, %bb.nw
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %bb.od ], [ %.pn102, %.body439 ], [ %i.api, %bb.nw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %.body241

.body241:                                         ; preds = %bb.lk, %bb.fm, %bb.fl, %bb.dj, %bb.dt, %bb.oe, %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit233
  %.pn133.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ra, %bb.fl ], [ %.pn104.pn.pn, %bb.oe ], [ %i.lq, %bb.dj ], [ %.pn91.pn, %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit233 ], [ %.pn99, %bb.dt ], [ %i.rb, %bb.fm ], [ %.pn133.pn.pn.pn, %bb.lk ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #24
  br label %.body191

.body191:                                         ; preds = %bb.ca, %.body241
  %.pn133.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn133.pn.pn.pn.pn.pn, %.body241 ], [ %i.ho, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #24
  br label %.body

.body:                                            ; preds = %bb.bv, %.body191
  %.pn133.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn133.pn.pn.pn.pn.pn.pn, %.body191 ], [ %i.hh, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #24
  br label %bb.of

bb.of:                                            ; preds = %.body, %bb.di
  %.pn133.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn133.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.lp, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.bq
  %.sroa.15.0693 = phi ptr [ %.sroa.15.0697735, %bb.bq ], [ %.sroa.15.0.lcssa, %bb.of ]
  %.sroa.0595.0679 = phi ptr [ %.sroa.0595.0699, %bb.bq ], [ %.sroa.0595.0.lcssa, %bb.of ] ; 3 uses
  %.pn143.pn.pn = phi { ptr, i32 } [ %.pn143.pn, %bb.bq ], [ %.pn133.pn.pn.pn.pn.pn.pn.pn.pn, %bb.of ] ; 2 uses
  %.not.i.i.i519 = icmp eq ptr %.sroa.0595.0679, null
  br i1 %.not.i.i.i519, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit521, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.apo = ptrtoint ptr %.sroa.15.0693 to i64
  %i.app = ptrtoint ptr %.sroa.0595.0679 to i64
  %i.apq = sub i64 %i.apo, %i.app
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0595.0679, i64 noundef %i.apq) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit521

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit521: ; preds = %.thread628, %bb.og, %bb.oh
  %.pn143.pn.pn633 = phi { ptr, i32 } [ %i.ei, %.thread628 ], [ %.pn143.pn.pn, %bb.og ], [ %.pn143.pn.pn, %bb.oh ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #24
  br label %bb.oi

bb.oi:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit521, %bb.aw
  %.pn143.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn633, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit521 ], [ %i.eh, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #24
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.av
  %.pn143.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn, %bb.oi ], [ %i.eg, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.ar, %bb.an, %bb.v
  %.pn149.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn149.pn.pn.pn, %bb.an ], [ %.pn143.pn.pn.pn.pn, %bb.oj ], [ %i.bt, %bb.v ], [ %i.dv, %bb.ar ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  resume { ptr, i32 } %.pn149.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory2uf11UfModelTreeC2ENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef align 8 %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !102    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !102
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !112

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.q, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.p, ptr %i.r, align 8, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %i.s, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.t, align 8, !tbaa !99
  %i.u = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.h, !prof !100

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.g unwind label %.body.i    ; 3 uses

bb.g:                                             ; preds = %bb.f
  store i64 1152920405095219200, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !101
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.h

.body.i:                                          ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  tail call void @_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory2uf15UfModelTreeNodeESt4lessIS3_ESaISt4pairIKS3_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %i.o) #24
  br label %.body

bb.h:                                             ; preds = %bb.g, %bb.e, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false)
          to label %.preheader unwind label %bb.o

.preheader:                                       ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %storemerge = phi i32 [ %i.by, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %.preheader ] ; 4 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 1023                     ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1023
  %i.ak = select i1 %i.aj, i32 -1, i32 %i.ai
  %i.al = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ak)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.al, 2
  %i.an = load i64, ptr %i.af, align 8
  %i.ao = lshr i64 %i.an, 32
  %3 = trunc nuw i64 %i.ao to i32
  %4 = and i32 %3, 67108863
  %5 = select i1 %i.am, i32 -2, i32 -1
  %i.ap = add nsw i32 %5, %4
  %i.aq = icmp slt i32 %storemerge, %i.ap
  br i1 %i.aq, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %2, align 8, !tbaa !128   ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = and i64 %i.as, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.at, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.l, !prof !112

bb.l:                                             ; preds = %bb.k
  %i.au = add i64 %i.as, 1152920405095219200
  %i.av = and i64 %i.au, 1152920405095219200      ; 2 uses
  %i.aw = and i64 %i.as, -1152920405095219201
  %i.ax = or disjoint i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.ar, align 8
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %bb.m, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !112

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.o:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit:                                        ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  br label %bb.w

bb.q:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !562 ; 4 uses
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !377
  %.not.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %storemerge, ptr %i.bc, align 4, !tbaa !563
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store ptr %i.be, ptr %i.ac, align 8, !tbaa !562
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.s:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !378 ; 4 uses
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775804
  br i1 %i.bj, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.bk = ashr exact i64 %i.bi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 2305843009213693951)
  %i.bo = select i1 %i.bm, i64 2305843009213693951, i64 %i.bn ; 3 uses
  %.not.i.i.i6 = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i6)
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #25
          to label %.noexc7 unwind label %.loopexit ; 4 uses

.noexc7:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store i32 %storemerge, ptr %i.br, align 4, !tbaa !563
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.u:                                             ; preds = %.noexc7
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr align 4 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.u, %.noexc7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bu = load ptr, ptr %i.ad, align 8, !tbaa !377
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bw) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bq, ptr %i.n, align 8, !tbaa !378
  store ptr %i.bt, ptr %i.ac, align 8, !tbaa !562
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bx, ptr %i.ad, align 8, !tbaa !377
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.r
  %i.by = add nuw nsw i32 %storemerge, 1
  br label %bb.i, !llvm.loop !561

bb.w:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.p ], [ %i.bb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN4cvc58internal6theory2uf15UfModelTreeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.o) #24
  br label %.body

.body:                                            ; preds = %.body.i, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.z, %.body.i ]
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !378 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.body
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !377
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.body, %bb.x
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory2uf11UfModelTree8setValueEPKNS1_11TheoryModelENS0_12NodeTemplateILb1EEES8_b(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef align 8 %2, ptr noundef align 8 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !102    ; 5 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !102
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !112

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = load ptr, ptr %3, align 8, !tbaa !102    ; 5 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !102
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = lshr i64 %i.o, 40
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = and i32 %i.q, 1048575                    ; 3 uses
  %i.s = icmp samesign ult i32 %i.r, 1048574
  br i1 %i.s, label %bb.e, label %bb.f, !prof !113

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.t = add nuw nsw i32 %i.r, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 40
end_hunk_0
