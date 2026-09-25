Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/linear_equality?download=true
inline.NumInlined: 2502
inline.NumDeleted: 817
begin_hunk_0_@_ZN4cvc58internal6theory5arith6linear20LinearEqualityModule17debugCheckTableauEv:bb.a
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #28
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i78:          ; preds = %_ZN4cvc58internal13DeltaRationalD2Ev.exit
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %_ZN4cvc58internal13DeltaRationalD2Ev.exit79 unwind label %bb.ay

bb.ay:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i78
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #28
  unreachable

_ZN4cvc58internal13DeltaRationalD2Ev.exit79:      ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i80 unwind label %bb.az

bb.az:                                            ; preds = %_ZN4cvc58internal13DeltaRationalD2Ev.exit79
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #28
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i80:          ; preds = %_ZN4cvc58internal13DeltaRationalD2Ev.exit79
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZN4cvc58internal13DeltaRationalD2Ev.exit81 unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i80
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #28
  unreachable

_ZN4cvc58internal13DeltaRationalD2Ev.exit81:      ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.pre263 = load ptr, ptr %i.al, align 8, !tbaa !117
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %_ZN4cvc58internal13DeltaRationalD2Ev.exit81
  %i.dq = phi ptr [ %i.an, %.lr.ph ], [ %.pre263, %_ZN4cvc58internal13DeltaRationalD2Ev.exit81 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [56 x i8], ptr %i.dq, i64 %i.ao
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0177.0 = load i32, ptr %i.ds, align 8, !tbaa !36 ; 2 uses
  %i.dt = icmp eq i32 %.sroa.0177.0, -1
  br i1 %i.dt, label %._crit_edge, label %.lr.ph, !llvm.loop !246

bb.bc:                                            ; preds = %.noexc25, %bb.g, %bb.f
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bd:                                            ; preds = %.noexc141, %_ZN4cvc58internal13DeltaRationalC2ERKS1_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body66

bb.be:                                            ; preds = %.noexc160, %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body73

bb.bf:                                            ; preds = %.noexc75, %bb.au
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal13DeltaRationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #27
  br label %.body73

.body73:                                          ; preds = %_ZN4cvc58internal8RationalD2Ev.exit8.i70, %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit4.i157, %bb.be, %bb.bf
  %.pn14 = phi { ptr, i32 } [ %i.dx, %bb.bf ], [ %.pn.i69, %_ZN4cvc58internal8RationalD2Ev.exit8.i70 ], [ %i.dw, %bb.be ], [ %i.ci, %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit4.i157 ]
  call void @_ZN4cvc58internal13DeltaRationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #27
  br label %.body66

.body66:                                          ; preds = %_ZN4cvc58internal8RationalD2Ev.exit8.i, %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit4.i, %bb.bd, %.body73
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body73 ], [ %.pn.i, %_ZN4cvc58internal8RationalD2Ev.exit8.i ], [ %i.dv, %bb.bd ], [ %i.bk, %_ZN10__gmp_exprIA1_12__mpq_structS1_ED2Ev.exit4.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN4cvc58internal13DeltaRationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #27
  br label %.body

.body:                                            ; preds = %bb.bc, %.body.i, %bb.h, %.body66
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %.body66 ], [ %i.du, %bb.bc ], [ %i.ax, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bb, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.dy = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  %i.dz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK4cvc58internal6theory5arith6linear14ArithVariables13getAssignmentEj(ptr noundef nonnull align 8 dereferenceable(568) %i.dy, i32 noundef %i.x)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %._crit_edge
  invoke void @_ZN4cvc58internal13DeltaRationalC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %i.dz)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit108 unwind label %bb.bl

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit108: ; preds = %bb.bg
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i109 unwind label %bb.bh

bb.bh:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit108
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #28
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i109:         ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit108
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %_ZN4cvc58internal13DeltaRationalD2Ev.exit110 unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i109
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #28
  unreachable

_ZN4cvc58internal13DeltaRationalD2Ev.exit110:     ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i111 unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN4cvc58internal13DeltaRationalD2Ev.exit110
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #28
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i111:         ; preds = %_ZN4cvc58internal13DeltaRationalD2Ev.exit110
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %_ZN4cvc58internal13DeltaRationalD2Ev.exit112 unwind label %bb.bk

bb.bk:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i111
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #28
  unreachable

_ZN4cvc58internal13DeltaRationalD2Ev.exit112:     ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0188.0259, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ei, %i.f
  br i1 %.not, label %._crit_edge262, label %bb.b, !llvm.loop !247

bb.bl:                                            ; preds = %bb.bg, %._crit_edge
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.bm

bb.bm:                                            ; preds = %.body, %bb.bl
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.bl ], [ %.pn14.pn.pn.pn, %.body ]
  call void @_ZN4cvc58internal13DeltaRationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %common.resume

._crit_edge262:                                   ; preds = %_ZN4cvc58internal13DeltaRationalD2Ev.exit112, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear20LinearEqualityModule13updateTrackedEjRKNS0_13DeltaRationalE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::CodeTimer", align 8 ; 6 uses
  %4 = alloca %"class.cvc5::internal::DeltaRational", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::DeltaRational", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::DeltaRational", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.p       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  %i.e = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK4cvc58internal6theory5arith6linear14ArithVariables13getAssignmentEj(ptr noundef nonnull align 8 dereferenceable(568) %i.d, i32 noundef %1)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK4cvc58internal13DeltaRationalmiERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::DeltaRational") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit unwind label %bb.q

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit:  ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = zext i32 %1 to i64                       ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.h
  %i.k = invoke i64 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables7VarInfo13atBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(113) %i.j)
          to label %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit unwind label %bb.r ; 3 uses

_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %.sroa.0206.0.extract.trunc = trunc i64 %i.k to i32 ; 2 uses
  %.sroa.6207.0.extract.shift = lshr i64 %i.k, 32 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  invoke void @_ZN4cvc58internal6theory5arith6linear14ArithVariables13setAssignmentEjRKNS0_13DeltaRationalE(ptr noundef nonnull align 8 dereferenceable(568) %i.l, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %i.h
  %i.q = invoke i64 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables7VarInfo13atBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(113) %i.p)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.q to i32 ; 2 uses
  %.not.i100 = icmp ne i32 %.sroa.0206.0.extract.trunc, %.sroa.0.0.extract.trunc.i
  %.sroa.2.0.extract.shift.i = lshr i64 %i.q, 32  ; 2 uses
  %i.r = icmp ne i64 %.sroa.6207.0.extract.shift, %.sroa.2.0.extract.shift.i
  %i.s = or i1 %.not.i100, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109, !nonnull !35, !align !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.h ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !115  ; 2 uses
  %.sroa.0201.0221 = load i32, ptr %i.x, align 8, !tbaa !36 ; 2 uses
  %i.aa = icmp eq i32 %.sroa.0201.0221, -1
  br i1 %i.aa, label %.critedge69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ad = icmp eq i32 %.sroa.0206.0.extract.trunc, %.sroa.0.0.extract.trunc.i
  %i.ae = icmp eq i64 %.sroa.6207.0.extract.shift, %.sroa.2.0.extract.shift.i
  %i.af = and i1 %i.ad, %i.ae
  %7 = bitcast i64 %i.q to <2 x i32>              ; 2 uses
  %8 = bitcast i64 %i.k to <2 x i32>              ; 2 uses
  %9 = sub <2 x i32> %7, %8
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !117
  %11 = sub <2 x i32> %7, %8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN4cvc58internal13DeltaRationalD2Ev.exit169
  %i.ai = phi ptr [ %.pre, %.lr.ph ], [ %i.cs, %_ZN4cvc58internal13DeltaRationalD2Ev.exit169 ]
  %.sroa.0201.0222 = phi i32 [ %.sroa.0201.0221, %.lr.ph ], [ %.sroa.0201.0, %_ZN4cvc58internal13DeltaRationalD2Ev.exit169 ]
  %i.aj = zext i32 %.sroa.0201.0222 to i64        ; 2 uses
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !123
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !109, !nonnull !35, !align !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 472
  %i.ao = zext i32 %i.al to i64                   ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !131
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36 ; 4 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  %i.at = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK4cvc58internal6theory5arith6linear14ArithVariables13getAssignmentEj(ptr noundef nonnull align 8 dereferenceable(568) %i.as, i32 noundef %i.ar)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNK4cvc58internal13DeltaRationalmlERKNS0_8RationalE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::DeltaRational") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK4cvc58internal13DeltaRationalplERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::DeltaRational") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #28
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i:            ; preds = %bb.i
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit150 unwind label %bb.k

bb.k:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #28
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit150: ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.az = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = zext i32 %i.ar to i64                   ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !108
  %i.bd = getelementptr inbounds nuw [120 x i8], ptr %i.bc, i64 %i.bb
  %i.be = invoke i64 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables7VarInfo13atBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(113) %i.bd)
          to label %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit152 unwind label %bb.x ; 2 uses

_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit152: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit150
  %.sroa.0194.0.extract.trunc = trunc i64 %i.be to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.be, 32   ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  invoke void @_ZN4cvc58internal6theory5arith6linear14ArithVariables13setAssignmentEjRKNS0_13DeltaRationalE(ptr noundef nonnull align 8 dereferenceable(568) %i.bf, i32 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit152
  %i.bg = load ptr, ptr %0, align 8, !tbaa !69, !nonnull !35, !align !70
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw [120 x i8], ptr %i.bi, i64 %i.bb
  %i.bk = invoke i64 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables7VarInfo13atBoundCountsEv(ptr noundef nonnull align 8 dereferenceable(113) %i.bj)
          to label %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit154 unwind label %bb.y ; 2 uses

_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit154: ; preds = %bb.l
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !118, !nonnull !35, !align !70
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !121
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.ao ; 5 uses
  br i1 %i.s, label %bb.m, label %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit

bb.m:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit154
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !42 ; 2 uses
  br i1 %i.af, label %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.sink.split.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i, label %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.o, %bb.n
  %12 = phi <2 x i32> [ %10, %bb.n ], [ %11, %bb.o ]
  %13 = load <2 x i32>, ptr %i.bo, align 4, !tbaa !36
  %14 = add <2 x i32> %13, %12
  store <2 x i32> %14, ptr %i.bo, align 4, !tbaa !36
  br label %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit

bb.p:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.q:                                             ; preds = %bb.c, %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.r:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit, %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.s:                                             ; preds = %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.u:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal13DeltaRationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn53 = phi { ptr, i32 } [ %i.by, %bb.v ], [ %i.bx, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ag

bb.x:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit150, %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit152
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.y:                                             ; preds = %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.z:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit167
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit: ; preds = %.sink.split.i.i, %bb.o, %bb.m, %_ZNK4cvc58internal6theory5arith6linear14ArithVariables13atBoundCountsEj.exit154
  %.sroa.0.0.extract.trunc.i155 = trunc i64 %i.bk to i32 ; 3 uses
  %.not.i156 = icmp ne i32 %.sroa.0194.0.extract.trunc, %.sroa.0.0.extract.trunc.i155
  %.sroa.2.0.extract.shift.i157 = lshr i64 %i.bk, 32 ; 3 uses
  %.sroa.2.0.extract.trunc.i158 = trunc nuw i64 %.sroa.2.0.extract.shift.i157 to i32
  %i.cc = icmp ne i64 %.sroa.6.0.extract.shift, %.sroa.2.0.extract.shift.i157
  %i.cd = or i1 %.not.i156, %i.cc
  br i1 %i.cd, label %bb.aa, label %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit167

bb.aa:                                            ; preds = %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit
  %i.ce = icmp eq i32 %.sroa.0194.0.extract.trunc, %.sroa.0.0.extract.trunc.i155
  %i.cf = icmp eq i64 %.sroa.6.0.extract.shift, %.sroa.2.0.extract.shift.i157
  %i.cg = and i1 %i.ce, %i.cf
  br i1 %i.cg, label %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit167, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4.0.extract.trunc8.i.i161 = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.ch = sub i32 %.sroa.0.0.extract.trunc.i155, %.sroa.0194.0.extract.trunc
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !125
  %i.ck = add i32 %i.ch, %i.cj
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !125
  %i.cl = sub i32 %.sroa.2.0.extract.trunc.i158, %.sroa.4.0.extract.trunc8.i.i161
  %i.cm = load i32, ptr %i.bo, align 4, !tbaa !126
  %i.cn = add i32 %i.cl, %i.cm
  store i32 %i.cn, ptr %i.bo, align 4, !tbaa !126
  br label %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit167

_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit167: ; preds = %bb.ab, %bb.aa, %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit
  invoke void @_ZN4cvc58internal6theory5arith6linear27BasicVarModelUpdateCallBackclEj(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i32 noundef %i.ar)
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %_ZN4cvc58internal6theory5arith6linear10BoundsInfo18addInAtBoundChangeEiNS3_11BoundCountsES5_.exit167
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i168 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #28
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i168:         ; preds = %bb.ac
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN4cvc58internal13DeltaRationalD2Ev.exit169 unwind label %bb.ae

bb.ae:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i168
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #28
  unreachable

_ZN4cvc58internal13DeltaRationalD2Ev.exit169:     ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !117 ; 2 uses
  %i.ct = getelementptr inbounds nuw [56 x i8], ptr %i.cs, i64 %i.aj
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %.sroa.0201.0 = load i32, ptr %i.cu, align 4, !tbaa !36 ; 2 uses
  %i.cv = icmp eq i32 %.sroa.0201.0, -1
  br i1 %i.cv, label %.critedge69, label %bb.f, !llvm.loop !252

bb.af:                                            ; preds = %bb.x, %bb.z, %bb.y
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.y ], [ %i.bz, %bb.x ], [ %i.cb, %bb.z ]
  call void @_ZN4cvc58internal13DeltaRationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.w
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn, %bb.af ], [ %.pn53, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.aj

.critedge69:                                      ; preds = %_ZN4cvc58internal13DeltaRationalD2Ev.exit169, %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 32
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i175 unwind label %bb.ah

bb.ah:                                            ; preds = %.critedge69
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #28
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i175:         ; preds = %.critedge69
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4cvc58internal13DeltaRationalD2Ev.exit176 unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i175
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #28
  unreachable

_ZN4cvc58internal13DeltaRationalD2Ev.exit176:     ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.aj:                                            ; preds = %bb.r, %bb.s, %bb.ag, %bb.t
  %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %bb.ag ], [ %i.bu, %bb.r ], [ %i.bv, %bb.s ], [ %i.bw, %bb.t ]
  call void @_ZN4cvc58internal13DeltaRationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #27
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.q
  %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aj ], [ %i.bt, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.p
  %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ak ], [ %i.bs, %bb.p ]
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear20LinearEqualityModule14pivotAndUpdateEjjRKNS0_13DeltaRationalE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::CodeTimer", align 8 ; 6 uses
  %5 = alloca %"class.cvc5::internal::DeltaRational", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::DeltaRational", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::DeltaRational", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109, !nonnull !35, !align !70 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.f = zext i32 %1 to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = zext i32 %2 to i64
end_hunk_0
