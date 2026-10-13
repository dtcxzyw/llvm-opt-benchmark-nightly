Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBackwardEulerObjective?download=true
inline.NumInlined: 675
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN21btModifiedGramSchmidtI15btReducedVectorE5solveEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fw, ptr noundef nonnull align 4 dereferenceable(16) %i.fy, i64 16, i1 false), !tbaa.struct !46
  br label %_ZN15btReducedVectoraSERKS_.exit

_ZN15btReducedVectoraSERKS_.exit:                 ; preds = %.epil.preheader112, %_ZN15btReducedVectoraSERKS_.exit.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i
  %i.fz = load ptr, ptr %i.bm, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i26 = icmp ne ptr %i.fz, null
  %i.ga = load i8, ptr %i.bn, align 8, !range !38
  %i.gb = trunc nuw i8 %i.ga to i1
  %or.cond.i.i.i27 = select i1 %.not.i.i.i.i26, i1 %i.gb, i1 false
  br i1 %or.cond.i.i.i27, label %bb.z, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i28

bb.z:                                             ; preds = %_ZN15btReducedVectoraSERKS_.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fz)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i28 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #23
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i28: ; preds = %bb.z, %_ZN15btReducedVectoraSERKS_.exit
  %i.ge = load ptr, ptr %i.bg, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i1.i29 = icmp ne ptr %i.ge, null
  %i.gf = load i8, ptr %i.bo, align 8, !range !38
  %i.gg = trunc nuw i8 %i.gf to i1
  %or.cond.i.i2.i30 = select i1 %.not.i.i.i1.i29, i1 %i.gg, i1 false
  br i1 %or.cond.i.i2.i30, label %bb.ab, label %_ZN15btReducedVectorD2Ev.exit31

bb.ab:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i28
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ge)
          to label %_ZN15btReducedVectorD2Ev.exit31 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #23
  unreachable

_ZN15btReducedVectorD2Ev.exit31:                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i28, %bb.ab
  %i.gj = load ptr, ptr %i.bp, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i32 = icmp ne ptr %i.gj, null
  %i.gk = load i8, ptr %i.bq, align 8, !range !38
  %i.gl = trunc nuw i8 %i.gk to i1
  %or.cond.i.i.i33 = select i1 %.not.i.i.i.i32, i1 %i.gl, i1 false
  br i1 %or.cond.i.i.i33, label %bb.ad, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i34

bb.ad:                                            ; preds = %_ZN15btReducedVectorD2Ev.exit31
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gj)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i34 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #23
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i34: ; preds = %bb.ad, %_ZN15btReducedVectorD2Ev.exit31
  %i.go = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i1.i35 = icmp ne ptr %i.go, null
  %i.gp = load i8, ptr %i.bs, align 8, !range !38
  %i.gq = trunc nuw i8 %i.gp to i1
  %or.cond.i.i2.i36 = select i1 %.not.i.i.i1.i35, i1 %i.gq, i1 false
  br i1 %or.cond.i.i2.i36, label %bb.af, label %_ZN15btReducedVectorD2Ev.exit37

bb.af:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i34
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.go)
          to label %_ZN15btReducedVectorD2Ev.exit37 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #23
  unreachable

_ZN15btReducedVectorD2Ev.exit37:                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i34, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv61
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !182

bb.ah:                                            ; preds = %.lr.ph
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %bb.o
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.x, %bb.v, %bb.t, %bb.s
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15btReducedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %3) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.gv, %bb.aj ], [ %i.gu, %bb.ai ]
  call void @_ZN15btReducedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.gt, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.at

bb.am:                                            ; preds = %._crit_edge
  %i.gw = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.gx = getelementptr inbounds nuw [72 x i8], ptr %i.gw, i64 %indvars.iv61
  %i.gy = invoke noundef nonnull align 8 dereferenceable(68) ptr @_ZN15btReducedVectoraSERKS_(ptr noundef nonnull align 8 dereferenceable(68) %i.gx, ptr noundef nonnull align 8 dereferenceable(68) %2)
          to label %bb.an unwind label %bb.as     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.gz = load ptr, ptr %i.bk, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i38 = icmp ne ptr %i.gz, null
  %i.ha = load i8, ptr %i.bl, align 8, !range !38
  %i.hb = trunc nuw i8 %i.ha to i1
  %or.cond.i.i.i39 = select i1 %.not.i.i.i.i38, i1 %i.hb, i1 false
  br i1 %or.cond.i.i.i39, label %bb.ao, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i40

bb.ao:                                            ; preds = %bb.an
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gz)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i40 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #23
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i40: ; preds = %bb.ao, %bb.an
  %i.he = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i1.i41 = icmp ne ptr %i.he, null
  %i.hf = load i8, ptr %i.bf, align 8, !range !38
  %i.hg = trunc nuw i8 %i.hf to i1
  %or.cond.i.i2.i42 = select i1 %.not.i.i.i1.i41, i1 %i.hg, i1 false
  br i1 %or.cond.i.i2.i42, label %bb.aq, label %_ZN15btReducedVectorD2Ev.exit43

bb.aq:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i40
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.he)
          to label %_ZN15btReducedVectorD2Ev.exit43 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #23
  unreachable

_ZN15btReducedVectorD2Ev.exit43:                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i40, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.hj = load i32, ptr %i.b, align 4, !tbaa !20
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next62, %i.hk
  br i1 %i.hl, label %bb.n, label %._crit_edge55, !llvm.loop !183

bb.as:                                            ; preds = %bb.am, %._crit_edge
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.al
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.al ], [ %i.hm, %bb.as ]
  call void @_ZN15btReducedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.at ], [ %lpad.phi, %bb.m ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btReducedVectorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 6 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i: ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64                ; 6 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16) ; 16 uses
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !32 ; 3 uses
  %i.k = icmp sgt i32 %.pre.i.i, 0
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !31   ; 9 uses
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i.i, 8
  %2 = ptrtoaddr ptr %i.j to i64
  %3 = ptrtoaddr ptr %i.l to i64
  %i.m = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !40
  %wide.load20 = load <4 x i32>, ptr %i.p, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !40
  store <4 x i32> %wide.load20, ptr %i.q, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.i.i.prol
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i.prol
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40
  store i32 %i.u, ptr %i.s, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !185

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.v = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.i.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  store i32 %i.z, ptr %i.x, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !40
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.1
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.2
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.i.i.2
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !186

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i5.i.i.i, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i
  %i.aj = load i8, ptr %i.a, align 8, !tbaa !30, !range !38, !noundef !44
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.l)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !30
  store ptr %i.j, ptr %i.b, align 8, !tbaa !31
  store i32 %i.f, ptr %i.d, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !40
  store i32 %i.f, ptr %i.c, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 7 uses
  %min.iters.check24 = icmp ult i32 %i.f, 8
  %4 = ptrtoaddr ptr %i.j to i64
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = sub i64 %i.an, %4
  %diff.check22 = icmp ugt i64 %i.ao, -32
  %or.cond36 = select i1 %min.iters.check24, i1 true, i1 %diff.check22
  br i1 %or.cond36, label %scalar.ph23.preheader, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i
  %n.vec26 = and i64 %i.h, 2147483640             ; 3 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph25
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next31, %vector.body27 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index28 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load29 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !40
  %wide.load30 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %wide.load29, ptr %i.ap, align 4, !tbaa !40
  store <4 x i32> %wide.load30, ptr %i.as, align 4, !tbaa !40
  %index.next31 = add nuw i64 %index28, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next31, %n.vec26
  br i1 %i.at, label %middle.block32, label %vector.body27, !llvm.loop !187

middle.block32:                                   ; preds = %vector.body27
  %cmp.n33 = icmp eq i64 %n.vec26, %i.h
  br i1 %cmp.n33, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit, label %scalar.ph23.preheader

scalar.ph23.preheader:                            ; preds = %.lr.ph.i.i, %middle.block32
  %indvars.iv.i6.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec26, %middle.block32 ] ; 3 uses
  %xtraiter37 = and i64 %i.h, 3                   ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %scalar.ph23.prol.loopexit, label %scalar.ph23.prol

scalar.ph23.prol:                                 ; preds = %scalar.ph23.preheader, %scalar.ph23.prol
  %indvars.iv.i6.i.prol = phi i64 [ %indvars.iv.next.i7.i.prol, %scalar.ph23.prol ], [ %indvars.iv.i6.i.ph, %scalar.ph23.preheader ] ; 3 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %scalar.ph23.prol ], [ 0, %scalar.ph23.preheader ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i6.i.prol
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i6.i.prol
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !40
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !40
  %indvars.iv.next.i7.i.prol = add nuw nsw i64 %indvars.iv.i6.i.prol, 1 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %scalar.ph23.prol.loopexit, label %scalar.ph23.prol, !llvm.loop !188

scalar.ph23.prol.loopexit:                        ; preds = %scalar.ph23.prol, %scalar.ph23.preheader
  %indvars.iv.i6.i.unr = phi i64 [ %indvars.iv.i6.i.ph, %scalar.ph23.preheader ], [ %indvars.iv.next.i7.i.prol, %scalar.ph23.prol ]
  %i.ax = sub nsw i64 %indvars.iv.i6.i.ph, %i.h
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit, label %scalar.ph23

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i:  ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit

scalar.ph23:                                      ; preds = %scalar.ph23.prol.loopexit, %scalar.ph23
  %indvars.iv.i6.i = phi i64 [ %indvars.iv.next.i7.i.3, %scalar.ph23 ], [ %indvars.iv.i6.i.unr, %scalar.ph23.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i6.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i6.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !40
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !40
  %indvars.iv.next.i7.i = add nuw nsw i64 %indvars.iv.i6.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i7.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next.i7.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !40
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !40
  %indvars.iv.next.i7.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i7.i.1
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next.i7.i.1
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !40
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !40
  %indvars.iv.next.i7.i.2 = add nuw nsw i64 %indvars.iv.i6.i, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i7.i.2
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next.i7.i.2
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !40
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !40
  %indvars.iv.next.i7.i.3 = add nuw nsw i64 %indvars.iv.i6.i, 4 ; 2 uses
  %exitcond.not.i8.i.3 = icmp eq i64 %indvars.iv.next.i7.i.3, %i.h
  br i1 %exitcond.not.i8.i.3, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit, label %scalar.ph23, !llvm.loop !189

_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit:        ; preds = %scalar.ph23.prol.loopexit, %scalar.ph23, %middle.block32, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i8 1, ptr %i.bl, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  store i32 0, ptr %i.bn, align 4, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !36 ; 7 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit
  %i.bs = zext nneg i32 %i.bq to i64              ; 3 uses
  %i.bt = shl nuw nsw i64 %i.bs, 4
  %i.bu = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bt, i32 noundef 16)
          to label %.noexc unwind label %bb.g     ; 7 uses

.noexc:                                           ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %.pre.i.i5 = load i32, ptr %i.bn, align 4, !tbaa !36 ; 4 uses
  %i.bv = icmp sgt i32 %.pre.i.i5, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i11, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %.noexc
  %wide.trip.count.i.i.i.i12 = zext nneg i32 %.pre.i.i5 to i64 ; 2 uses
  %xtraiter40 = and i64 %wide.trip.count.i.i.i.i12, 1
  %i.bw = icmp eq i32 %.pre.i.i5, 1
  br i1 %i.bw, label %.epil.preheader, label %.lr.ph.i.i.i.i11.new

.lr.ph.i.i.i.i11.new:                             ; preds = %.lr.ph.i.i.i.i11
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i12, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i11.new
  %indvars.iv.i.i.i.i13 = phi i64 [ 0, %.lr.ph.i.i.i.i11.new ], [ %indvars.iv.next.i.i.i.i14.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i11.new ], [ %niter.next.1, %bb.c ]
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.i13
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv.i.i.i.i13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i.i14 = or disjoint i64 %indvars.iv.i.i.i.i13, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.i.i14
  %i.cb = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv.next.i.i.i.i14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i.i14.1 = add nuw nsw i64 %indvars.iv.i.i.i.i13, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i11
  %indvars.iv.i.i.i.i13.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i11 ], [ %indvars.iv.next.i.i.i.i14.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i32 %.pre.i.i5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.i13.epil.init
  %i.ce = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i.i13.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %i.cf, i64 16, i1 false), !tbaa.struct !46
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.noexc
  %i.cg = load ptr, ptr %i.bm, align 8, !tbaa !35 ; 2 uses
  %.not.i5.i.i.i6 = icmp eq ptr %i.cg, null
  br i1 %.not.i5.i.i.i6, label %.lr.ph.i.i7, label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.ch = load i8, ptr %i.bl, align 8, !tbaa !34, !range !38, !noundef !44
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.e, label %.lr.ph.i.i7

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cg)
          to label %.lr.ph.i.i7 unwind label %bb.g

.lr.ph.i.i7:                                      ; preds = %bb.e, %bb.d, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  store i8 1, ptr %i.bl, align 8, !tbaa !34
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !35
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !37
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %xtraiter44 = and i64 %i.bs, 1
  %i.ck = icmp eq i32 %i.bq, 1
  br i1 %i.ck, label %.epil.preheader43, label %.lr.ph.i.i7.new

.lr.ph.i.i7.new:                                  ; preds = %.lr.ph.i.i7
  %unroll_iter47 = and i64 %i.bs, 2147483646
  br label %bb.f

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !36
  br label %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i7.new
  %indvars.iv.i6.i8 = phi i64 [ 0, %.lr.ph.i.i7.new ], [ %indvars.iv.next.i7.i9.1, %bb.f ] ; 4 uses
  %niter48 = phi i64 [ 0, %.lr.ph.i.i7.new ], [ %niter48.next.1, %bb.f ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv.i6.i8
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %indvars.iv.i6.i8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i7.i9 = or disjoint i64 %indvars.iv.i6.i8, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv.next.i7.i9
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv.next.i7.i9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.co, ptr noundef nonnull align 4 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i7.i9.1 = add nuw nsw i64 %indvars.iv.i6.i8, 2 ; 2 uses
  %niter48.next.1 = add i64 %niter48, 2           ; 2 uses
  %niter48.ncmp.1 = icmp eq i64 %niter48.next.1, %unroll_iter47
  br i1 %niter48.ncmp.1, label %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !3

_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit, label %.epil.preheader43

.epil.preheader43:                                ; preds = %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa, %.lr.ph.i.i7
  %indvars.iv.i6.i8.epil.init = phi i64 [ 0, %.lr.ph.i.i7 ], [ %indvars.iv.next.i7.i9.1, %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN15btReducedVectormiERKS_:bb.a
  %i.pb = phi i32 [ %.pre2.i181, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i180 ], [ %i.np, %bb.bd ], [ %i.np, %bb.bc ]
  %i.pc = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.pd = sext i32 %i.pb to i64
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.pd
  %i.pf = load i32, ptr %i.no, align 4, !tbaa !40
  store i32 %i.pf, ptr %i.pe, align 4, !tbaa !40
  %i.pg = load i32, ptr %i.e, align 4, !tbaa !32
  %i.ph = add nsw i32 %i.pg, 1
  store i32 %i.ph, ptr %i.e, align 4, !tbaa !32
  %i.pi = load ptr, ptr %i.kh, align 8, !tbaa !35
  %i.pj = getelementptr inbounds [16 x i8], ptr %i.pi, i64 %indvars.iv255 ; 2 uses
  %i.pk = load <2 x float>, ptr %i.pj, align 4, !tbaa !48
  %i.pl = fneg <2 x float> %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !48
  %i.po = fneg float %i.pn
  %.sroa.3.12.vec.insert.i192 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.po, i64 0
  %i.pp = load i32, ptr %i.i, align 4, !tbaa !36  ; 7 uses
  %i.pq = load i32, ptr %i.j, align 8, !tbaa !37
  %i.pr = icmp eq i32 %i.pp, %i.pq
  br i1 %i.pr, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %.not.i.i195 = icmp eq i32 %i.pp, 0
  %i.ps = shl nsw i32 %i.pp, 1
  %i.pt = select i1 %.not.i.i195, i32 1, i32 %i.ps ; 4 uses
  %i.pu = icmp slt i32 %i.pp, %i.pt
  br i1 %i.pu, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %.not.i.i.i196 = icmp eq i32 %i.pt, 0
  br i1 %.not.i.i.i196, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i198, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pv = sext i32 %i.pt to i64
  %i.pw = shl nsw i64 %i.pv, 4
  %i.px = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.pw, i32 noundef 16)
          to label %.noexc209 unwind label %bb.bo

.noexc209:                                        ; preds = %bb.bk
  %.pre.i197 = load i32, ptr %i.i, align 4, !tbaa !36
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i198

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i198: ; preds = %.noexc209, %bb.bj
  %i.py = phi i32 [ %.pre.i197, %.noexc209 ], [ %i.pp, %bb.bj ] ; 4 uses
  %.0.i.i.i199 = phi ptr [ %i.px, %.noexc209 ], [ null, %bb.bj ] ; 4 uses
  %i.pz = icmp sgt i32 %i.py, 0
  br i1 %i.pz, label %.lr.ph.i.i.i204, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200

.lr.ph.i.i.i204:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i198
  %wide.trip.count.i.i.i205 = zext nneg i32 %i.py to i64 ; 2 uses
  %xtraiter432 = and i64 %wide.trip.count.i.i.i205, 1
  %i.qa = icmp eq i32 %i.py, 1
  br i1 %i.qa, label %.epil.preheader431, label %.lr.ph.i.i.i204.new

.lr.ph.i.i.i204.new:                              ; preds = %.lr.ph.i.i.i204
  %unroll_iter435 = and i64 %wide.trip.count.i.i.i205, 2147483646
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.lr.ph.i.i.i204.new
  %indvars.iv.i.i.i206 = phi i64 [ 0, %.lr.ph.i.i.i204.new ], [ %indvars.iv.next.i.i.i207.1, %bb.bl ] ; 4 uses
  %niter436 = phi i64 [ 0, %.lr.ph.i.i.i204.new ], [ %niter436.next.1, %bb.bl ]
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i199, i64 %indvars.iv.i.i.i206
  %i.qc = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %indvars.iv.i.i.i206
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qb, ptr noundef nonnull align 4 dereferenceable(16) %i.qd, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i207 = or disjoint i64 %indvars.iv.i.i.i206, 1 ; 2 uses
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i199, i64 %indvars.iv.next.i.i.i207
  %i.qf = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.qf, i64 %indvars.iv.next.i.i.i207
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qe, ptr noundef nonnull align 4 dereferenceable(16) %i.qg, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i207.1 = add nuw nsw i64 %indvars.iv.i.i.i206, 2 ; 2 uses
  %niter436.next.1 = add i64 %niter436, 2         ; 2 uses
  %niter436.ncmp.1 = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200.loopexit.unr-lcssa, label %bb.bl, !llvm.loop !3

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200.loopexit.unr-lcssa: ; preds = %bb.bl
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200, label %.epil.preheader431

.epil.preheader431:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200.loopexit.unr-lcssa, %.lr.ph.i.i.i204
  %indvars.iv.i.i.i206.epil.init = phi i64 [ 0, %.lr.ph.i.i.i204 ], [ %indvars.iv.next.i.i.i207.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod434 = trunc i32 %i.py to i1
  tail call void @llvm.assume(i1 %lcmp.mod434)
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i199, i64 %indvars.iv.i.i.i206.epil.init
  %i.qi = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %indvars.iv.i.i.i206.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qh, ptr noundef nonnull align 4 dereferenceable(16) %i.qj, i64 16, i1 false), !tbaa.struct !46
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200: ; preds = %.epil.preheader431, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i198
  %i.qk = load ptr, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  %.not.i5.i.i201 = icmp ne ptr %i.qk, null
  %i.ql = load i8, ptr %i.g, align 8, !range !38
  %i.qm = trunc nuw i8 %i.ql to i1
  %or.cond229 = select i1 %.not.i5.i.i201, i1 %i.qm, i1 false
  br i1 %or.cond229, label %bb.bm, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i202

bb.bm:                                            ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.qk)
          to label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i202 unwind label %bb.bo

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i202: ; preds = %bb.bm, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i200
  store i8 1, ptr %i.g, align 8, !tbaa !34
  store ptr %.0.i.i.i199, ptr %i.h, align 8, !tbaa !35
  store i32 %i.pt, ptr %i.j, align 8, !tbaa !37
  %.pre2.i203 = load i32, ptr %i.i, align 4, !tbaa !36
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i202, %bb.bi, %bb.bh
  %i.qn = phi i32 [ %.pre2.i203, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i202 ], [ %i.pp, %bb.bi ], [ %i.pp, %bb.bh ]
  %i.qo = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.qp = sext i32 %i.qn to i64
  %i.qq = getelementptr inbounds [16 x i8], ptr %i.qo, i64 %i.qp ; 2 uses
  store <2 x float> %i.pl, ptr %i.qq, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i192, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !45
  %i.qr = load i32, ptr %i.i, align 4, !tbaa !36
  %i.qs = add nsw i32 %i.qr, 1
  store i32 %i.qs, ptr %i.i, align 4, !tbaa !36
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.qt = load i32, ptr %i.kd, align 4, !tbaa !32
  %i.qu = sext i32 %i.qt to i64
  %i.qv = icmp slt i64 %indvars.iv.next256, %i.qu
  br i1 %i.qv, label %bb.bc, label %._crit_edge, !llvm.loop !207

bb.bo:                                            ; preds = %bb.bm, %bb.bk
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.bn, %.preheader
  invoke void @_ZN15btReducedVector8simplifyEv(ptr noundef nonnull align 8 dereferenceable(68) %0)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bo, %bb.ao, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.qw, %bb.bo ], [ %i.gm, %bb.ab ], [ %i.jv, %bb.ao ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit230, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit233, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZN15btReducedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) #22
  resume { ptr, i32 } %.pn

bb.bp:                                            ; preds = %._crit_edge
  ret void
}

declare void @_ZNK15btReducedVector4projERKS_(ptr dead_on_unwind writable sret(%class.btReducedVector) align 8, ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(68) ptr @_ZN15btReducedVectoraSERKS_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.c, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32   ; 3 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i

._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre10.i = load ptr, ptr %.phi.trans.insert9.i, align 8, !tbaa !31
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp slt i32 %i.k, %i.f
  br i1 %i.l, label %bb.d, label %..lr.ph.i_crit_edge.i

..lr.ph.i_crit_edge.i:                            ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.f to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.n, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.g, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %.pre.i.i, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ] ; 9 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 9 uses
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.p to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  %2 = ptrtoaddr ptr %.0.i.i.i.i to i64
  %3 = ptrtoaddr ptr %i.s to i64
  %i.t = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !40
  %wide.load31 = load <4 x i32>, ptr %i.w, align 4, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %wide.load, ptr %i.u, align 4, !tbaa !40
  store <4 x i32> %wide.load31, ptr %i.x, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !209

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !40
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !40
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !210

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !30, !range !38, !noundef !44
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.at, align 8, !tbaa !30
  store ptr %.0.i.i.i.i, ptr %i.r, align 8, !tbaa !31
  store i32 %i.f, ptr %i.j, align 8, !tbaa !33
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i, %..lr.ph.i_crit_edge.i
  %i.au = phi ptr [ %.pre.i, %..lr.ph.i_crit_edge.i ], [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i ] ; 2 uses
  %i.av = sext i32 %i.h to i64                    ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.f to i64
  %i.aw = shl nsw i64 %i.av, 2
  %scevgep.i = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ax = sub nsw i64 %wide.trip.count.i.i, %i.av
  %i.ay = shl nuw nsw i64 %i.ax, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ay, i1 false), !tbaa !40
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i:  ; preds = %.lr.ph.i.i, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i
  %i.az = phi ptr [ %.pre10.i, %._ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit_crit_edge.i ], [ %i.au, %.lr.ph.i.i ] ; 7 uses
  store i32 %i.f, ptr %i.g, align 4, !tbaa !32
  %i.ba = icmp sgt i32 %i.f, 0
  br i1 %i.ba, label %.lr.ph.i4.i, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit

.lr.ph.i4.i:                                      ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31 ; 7 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.f to i64 ; 5 uses
  %min.iters.check35 = icmp ult i32 %i.f, 8
  %4 = ptrtoaddr ptr %i.az to i64
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %4
  %diff.check33 = icmp ugt i64 %i.be, -32
  %or.cond47 = select i1 %min.iters.check35, i1 true, i1 %diff.check33
  br i1 %or.cond47, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph.i4.i
  %n.vec37 = and i64 %wide.trip.count.i5.i, 2147483640 ; 3 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index39 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index39 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load40 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !40
  %wide.load41 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x i32> %wide.load40, ptr %i.bf, align 4, !tbaa !40
  store <4 x i32> %wide.load41, ptr %i.bi, align 4, !tbaa !40
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.bj, label %middle.block43, label %vector.body38, !llvm.loop !211

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %n.vec37, %wide.trip.count.i5.i
  br i1 %cmp.n44, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph.i4.i, %middle.block43
  %indvars.iv.i6.i.ph = phi i64 [ 0, %.lr.ph.i4.i ], [ %n.vec37, %middle.block43 ] ; 3 uses
  %xtraiter48 = and i64 %wide.trip.count.i5.i, 3  ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol

scalar.ph34.prol:                                 ; preds = %scalar.ph34.preheader, %scalar.ph34.prol
  %indvars.iv.i6.i.prol = phi i64 [ %indvars.iv.next.i7.i.prol, %scalar.ph34.prol ], [ %indvars.iv.i6.i.ph, %scalar.ph34.preheader ] ; 3 uses
  %prol.iter50 = phi i64 [ %prol.iter50.next, %scalar.ph34.prol ], [ 0, %scalar.ph34.preheader ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i6.i.prol
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i6.i.prol
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !40
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !40
  %indvars.iv.next.i7.i.prol = add nuw nsw i64 %indvars.iv.i6.i.prol, 1 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %scalar.ph34.prol.loopexit, label %scalar.ph34.prol, !llvm.loop !212

scalar.ph34.prol.loopexit:                        ; preds = %scalar.ph34.prol, %scalar.ph34.preheader
  %indvars.iv.i6.i.unr = phi i64 [ %indvars.iv.i6.i.ph, %scalar.ph34.preheader ], [ %indvars.iv.next.i7.i.prol, %scalar.ph34.prol ]
  %i.bn = sub nsw i64 %indvars.iv.i6.i.ph, %wide.trip.count.i5.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit, label %scalar.ph34

scalar.ph34:                                      ; preds = %scalar.ph34.prol.loopexit, %scalar.ph34
  %indvars.iv.i6.i = phi i64 [ %indvars.iv.next.i7.i.3, %scalar.ph34 ], [ %indvars.iv.i6.i.unr, %scalar.ph34.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i6.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i6.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !40
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !40
  %indvars.iv.next.i7.i = add nuw nsw i64 %indvars.iv.i6.i, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.i7.i
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.i7.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !40
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !40
  %indvars.iv.next.i7.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.i7.i.1
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.i7.i.1
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !40
  %indvars.iv.next.i7.i.2 = add nuw nsw i64 %indvars.iv.i6.i, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next.i7.i.2
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.i7.i.2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !40
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !40
  %indvars.iv.next.i7.i.3 = add nuw nsw i64 %indvars.iv.i6.i, 4 ; 2 uses
  %exitcond.not.i8.i.3 = icmp eq i64 %indvars.iv.next.i7.i.3, %wide.trip.count.i5.i
  br i1 %exitcond.not.i8.i.3, label %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit, label %scalar.ph34, !llvm.loop !213

_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit: ; preds = %scalar.ph34.prol.loopexit, %scalar.ph34, %middle.block43, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !36 ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !36 ; 2 uses
  %i.cf = icmp sgt i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !37
  %i.ci = icmp slt i32 %i.ch, %i.cc
  br i1 %i.ci, label %bb.h, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i12 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i12, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = sext i32 %i.cc to i64
  %i.ck = shl nsw i64 %i.cj, 4
  %i.cl = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ck, i32 noundef 16)
  %.pre.i.i13 = load i32, ptr %i.cd, align 4, !tbaa !36
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.cm = phi i32 [ %.pre.i.i13, %bb.i ], [ %i.ce, %bb.h ] ; 4 uses
  %.0.i.i.i.i14 = phi ptr [ %i.cl, %bb.i ], [ null, %bb.h ] ; 4 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i16, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i16:                                 ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count.i.i.i.i17 = zext nneg i32 %i.cm to i64 ; 2 uses
  %xtraiter51 = and i64 %wide.trip.count.i.i.i.i17, 1
  %i.cp = icmp eq i32 %i.cm, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.i.i.i.i16.new

.lr.ph.i.i.i.i16.new:                             ; preds = %.lr.ph.i.i.i.i16
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i17, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i16.new
  %indvars.iv.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i16.new ], [ %indvars.iv.next.i.i.i.i19.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i16.new ], [ %niter.next.1, %bb.j ]
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.i.i.i.i18
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !35
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv.i.i.i.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cq, ptr noundef nonnull align 4 dereferenceable(16) %i.cs, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i.i19 = or disjoint i64 %indvars.iv.i.i.i.i18, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.next.i.i.i.i19
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !35
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.i.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %i.cv, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i.i19.1 = add nuw nsw i64 %indvars.iv.i.i.i.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.j, !llvm.loop !3

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i16
  %indvars.iv.i.i.i.i18.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i16 ], [ %indvars.iv.next.i.i.i.i19.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod53 = trunc i32 %i.cm to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.i.i.i.i18.epil.init
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i18.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !46
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !35 ; 2 uses
  %.not.i5.i.i.i15 = icmp eq ptr %i.da, null
  br i1 %.not.i5.i.i.i15, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !34, !range !38, !noundef !44
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.l, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.da)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.de, align 8, !tbaa !34
  store ptr %.0.i.i.i.i14, ptr %i.cz, align 8, !tbaa !35
  store i32 %i.cc, ptr %i.cg, align 8, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, %bb.g, %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !36
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !35 ; 3 uses
  %i.dh = icmp sgt i32 %i.cc, 0
  br i1 %i.dh, label %.lr.ph.i4.i7, label %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit

.lr.ph.i4.i7:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %wide.trip.count.i5.i8 = zext nneg i32 %i.cc to i64 ; 2 uses
  %xtraiter55 = and i64 %wide.trip.count.i5.i8, 1
  %i.dj = icmp eq i32 %i.cc, 1
  br i1 %i.dj, label %.epil.preheader54, label %.lr.ph.i4.i7.new

.lr.ph.i4.i7.new:                                 ; preds = %.lr.ph.i4.i7
  %unroll_iter58 = and i64 %wide.trip.count.i5.i8, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i4.i7.new
  %indvars.iv.i6.i9 = phi i64 [ 0, %.lr.ph.i4.i7.new ], [ %indvars.iv.next.i7.i10.1, %bb.m ] ; 4 uses
  %niter59 = phi i64 [ 0, %.lr.ph.i4.i7.new ], [ %niter59.next.1, %bb.m ]
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv.i6.i9
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !35
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %indvars.iv.i6.i9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i7.i10 = or disjoint i64 %indvars.iv.i6.i9, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv.next.i7.i10
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv.next.i7.i10
end_hunk_1
begin_hunk_2_@_ZN34btDeformableBackwardEulerObjective8updateIdEv:bb.a

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i
  %i.bz = load i8, ptr %i.c, align 8, !tbaa !110, !range !38, !noundef !44
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.g, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ay)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !112
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i
  %.pre2.i = phi i32 [ %i.az, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.g ], [ %i.az, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i ]
  store i8 1, ptr %i.c, align 8, !tbaa !110
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !111
  store i32 %i.at, ptr %i.g, align 8, !tbaa !113
  %.pre44 = load i32, ptr %i.v, align 4, !tbaa !148
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE9push_backERKS2_.exit: ; preds = %bb.c, %bb.d, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i
  %i.cb = phi i32 [ %.pre44, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i ], [ %i.aj, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.cc = phi ptr [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i ], [ %i.ak, %bb.d ], [ %i.ak, %bb.c ] ; 5 uses
  %i.cd = phi i32 [ %i.at, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i ], [ %i.am, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %i.ce = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i ], [ %i.am, %bb.d ], [ %i.an, %bb.c ] ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cf
  store ptr %i.ap, ptr %i.cg, align 8, !tbaa !393
  %i.ch = add nsw i32 %i.ce, 1                    ; 3 uses
  store i32 %i.ch, ptr %i.f, align 4, !tbaa !112
  %i.ci = add i32 %.12325, 1                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = sext i32 %i.cb to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.c, label %.preheader, !llvm.loop !387

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph29
  %indvars.iv38.epil.init = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next39.3, %._crit_edge.loopexit.unr-lcssa ]
  %.127.epil.init = phi i32 [ %.02132, %.lr.ph29 ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter66, 0
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv38.epil = phi i64 [ %indvars.iv38.epil.init, %.epil.preheader ], [ %indvars.iv.next39.epil, %bb.h ] ; 2 uses
  %.127.epil = phi i32 [ %.127.epil.init, %.epil.preheader ], [ %i.cn, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.cl = getelementptr inbounds nuw [144 x i8], ptr %i.ah, i64 %indvars.iv38.epil
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 136
  store i32 %.127.epil, ptr %i.cm, align 8, !tbaa !396
  %i.cn = add i32 %.127.epil, 1                   ; 2 uses
  %indvars.iv.next39.epil = add nuw nsw i64 %indvars.iv38.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter66
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !388

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %.preheader
  %.1.lcssa = phi i32 [ %.02132, %.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ], [ %i.cn, %bb.h ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !121, !nonnull !44, !align !122 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !139
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next42, %i.cr
  br i1 %i.cs, label %.lr.ph34, label %._crit_edge35, !llvm.loop !389

bb.i:                                             ; preds = %bb.i, %.lr.ph29.new
  %indvars.iv38 = phi i64 [ 0, %.lr.ph29.new ], [ %indvars.iv.next39.3, %bb.i ] ; 5 uses
  %.127 = phi i32 [ %.02132, %.lr.ph29.new ], [ %i.de, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph29.new ], [ %niter.next.3, %bb.i ]
  %i.ct = getelementptr inbounds nuw [144 x i8], ptr %i.ah, i64 %indvars.iv38
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 136
  store i32 %.127, ptr %i.cu, align 8, !tbaa !396
  %i.cv = add i32 %.127, 1
  %i.cw = getelementptr inbounds nuw [144 x i8], ptr %i.ah, i64 %indvars.iv38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 280
  store i32 %i.cv, ptr %i.cx, align 8, !tbaa !396
  %i.cy = add i32 %.127, 2
  %i.cz = getelementptr inbounds nuw [144 x i8], ptr %i.ah, i64 %indvars.iv38
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 424
  store i32 %i.cy, ptr %i.da, align 8, !tbaa !396
  %i.db = add i32 %.127, 3
  %i.dc = getelementptr inbounds nuw [144 x i8], ptr %i.ah, i64 %indvars.iv38
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 568
  store i32 %i.db, ptr %i.dd, align 8, !tbaa !396
  %i.de = add i32 %.127, 4                        ; 3 uses
  %indvars.iv.next39.3 = add nuw nsw i64 %indvars.iv38, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !390
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !38
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !38
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #23
  unreachable
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btReducedVector8simplifyEv(ptr noundef nonnull align 8 dereferenceable(68) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btAlignedObjectArray.0, align 8 ; 8 uses
  %2 = alloca %class.btAlignedObjectArray.2, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 7 uses
  %i.g = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64                ; 6 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16) ; 12 uses
  store i8 1, ptr %i.a, align 8, !tbaa !30
  store ptr %i.j, ptr %i.b, align 8, !tbaa !31
  store i32 %i.f, ptr %i.d, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !40
  store i32 %i.f, ptr %i.c, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 7 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %i.m = ptrtoaddr ptr %i.j to i64
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = sub i64 %i.n, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.h, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !40
  %wide.load97 = load <4 x i32>, ptr %i.r, align 4, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %wide.load, ptr %i.p, align 4, !tbaa !40
  store <4 x i32> %wide.load97, ptr %i.s, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i6.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.prol = phi i64 [ %indvars.iv.next.i7.i.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i6.i.prol
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i6.i.prol
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  store i32 %i.w, ptr %i.u, align 4, !tbaa !40
  %indvars.iv.next.i7.i.prol = add nuw nsw i64 %indvars.iv.i6.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !398

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.unr = phi i64 [ %indvars.iv.i6.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.prol, %scalar.ph.prol ]
  %i.x = sub nsw i64 %indvars.iv.i6.i.ph, %i.h
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit, label %scalar.ph

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i:  ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i = phi i64 [ %indvars.iv.next.i7.i.3, %scalar.ph ], [ %indvars.iv.i6.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i6.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i6.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !40
  %indvars.iv.next.i7.i = add nuw nsw i64 %indvars.iv.i6.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i7.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i7.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !40
  %indvars.iv.next.i7.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i7.i.1
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i7.i.1
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !40
  %indvars.iv.next.i7.i.2 = add nuw nsw i64 %indvars.iv.i6.i, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i7.i.2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i7.i.2
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !40
  %indvars.iv.next.i7.i.3 = add nuw nsw i64 %indvars.iv.i6.i, 4 ; 2 uses
  %exitcond.not.i8.i.3 = icmp eq i64 %indvars.iv.next.i7.i.3, %i.h
  br i1 %exitcond.not.i8.i.3, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit, label %scalar.ph, !llvm.loop !399

_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit:        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i
  %i.al = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i ], [ %i.j, %middle.block ], [ %i.j, %scalar.ph ], [ %i.j, %scalar.ph.prol.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i8 1, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 9 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36 ; 7 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit
  %i.at = zext nneg i32 %i.ar to i64              ; 3 uses
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.au, i32 noundef 16)
          to label %.lr.ph.i.i14 unwind label %bb.n ; 6 uses

.lr.ph.i.i14:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  store i8 1, ptr %i.am, align 8, !tbaa !34
  store ptr %i.av, ptr %i.an, align 8, !tbaa !35
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !37
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %xtraiter116 = and i64 %i.at, 1
  %i.ax = icmp eq i32 %i.ar, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.i.i14.new

.lr.ph.i.i14.new:                                 ; preds = %.lr.ph.i.i14
  %unroll_iter = and i64 %i.at, 2147483646
  br label %bb.b

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !36
  br label %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i14.new
  %indvars.iv.i6.i15 = phi i64 [ 0, %.lr.ph.i.i14.new ], [ %indvars.iv.next.i7.i16.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i14.new ], [ %niter.next.1, %bb.b ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.i6.i15
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv.i6.i15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i7.i16 = or disjoint i64 %indvars.iv.i6.i15, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.next.i7.i16
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv.next.i7.i16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i7.i16.1 = add nuw nsw i64 %indvars.iv.i6.i15, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3

_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa, %.lr.ph.i.i14
  %indvars.iv.i6.i15.epil.init = phi i64 [ 0, %.lr.ph.i.i14 ], [ %indvars.iv.next.i7.i16.1, %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.i6.i15.epil.init
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv.i6.i15.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !46
  br label %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit

_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit: ; preds = %.epil.preheader, %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i
  %i.bh = phi ptr [ null, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i ], [ %i.av, %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit.loopexit.unr-lcssa ], [ %i.av, %.epil.preheader ] ; 4 uses
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !32  ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.c, label %.loopexit74

bb.c:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !33
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31 ; 3 uses
  br i1 %i.bm, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !30, !range !38, !noundef !44
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.d, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bo)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i unwind label %bb.o

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bs, align 8, !tbaa !30
  store ptr null, ptr %i.bn, align 8, !tbaa !31
  store i32 0, ptr %i.bk, align 8, !tbaa !33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.bt = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.bo, %bb.c ]
  %i.bu = sext i32 %i.bi to i64                   ; 2 uses
  %i.bv = shl nsw i64 %i.bu, 2
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.bv
  %i.bw = mul nsw i64 %i.bu, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bw, i1 false), !tbaa !40
  br label %.loopexit74

.loopexit74:                                      ; preds = %.lr.ph.i, %_ZN20btAlignedObjectArrayI9btVector3EC2ERKS1_.exit
  store i32 0, ptr %i.e, align 4, !tbaa !32
  %i.bx = load i32, ptr %i.aq, align 4, !tbaa !36
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.loopexit74
end_hunk_2
