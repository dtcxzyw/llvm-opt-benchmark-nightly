Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_bv_type_rules?download=true
inline.NumInlined: 331
inline.NumDeleted: 70
begin_hunk_0_@_ZN4cvc58internal6theory2bv24BitVectorExtractTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo:bb.a
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_16BitVectorExtractEEERKT_v.exit, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.m = icmp ult i32 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.m, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.8, i64 noundef 56) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ao

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.p = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !203 ; 5 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !11, !alias.scope !203
  %i.q = load i64, ptr %i.p, align 8, !noalias !203 ; 3 uses
  %i.r = lshr i64 %i.q, 40
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 1048575                    ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 1048574
  br i1 %i.u, label %bb.i, label %bb.j, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.v = add nuw nsw i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 40
  %i.y = and i64 %i.q, -1152920405095219201
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %i.p, align 8, !noalias !203
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.t, 1048574
  br i1 %i.aa, label %bb.k, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.ab = or i64 %i.q, 1152920405095219200
  store i64 %i.ab, ptr %i.p, align 8, !noalias !203
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !203
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  br i1 %3, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.ac = load ptr, ptr %2, align 8, !tbaa !15, !noalias !204 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !204
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 1023                     ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 1023
  %i.ai = select i1 %i.ah, i32 -1, i32 %i.ag
  %i.aj = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ai), !noalias !204
  %i.ak = icmp eq i32 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.am = zext i1 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.ao, ptr %5, align 8, !tbaa !15, !noalias !205
  invoke void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %7, ptr noundef nonnull align 8 %5, i1 noundef zeroext false, ptr noundef null)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ap = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isMaybeKindENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 89)
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %bb.n
  %.not.i = icmp eq ptr %4, null                  ; 2 uses
  %or.cond.i = or i1 %.not.i, %i.ap
  br i1 %or.cond.i, label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit, label %bb.o

bb.o:                                             ; preds = %.noexc
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 27)
          to label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit unwind label %bb.s ; 0 uses

_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit: ; preds = %.noexc, %bb.o
  br i1 %i.ap, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.ar = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !206 ; 4 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !11, !alias.scope !206
  %i.as = load i64, ptr %i.ar, align 8, !noalias !206 ; 3 uses
  %i.at = lshr i64 %i.as, 40
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 1048575                  ; 3 uses
  %i.aw = icmp samesign ult i32 %i.av, 1048574
  br i1 %i.aw, label %.critedge.sink.split, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp eq i32 %i.av, 1048574
  br i1 %i.ax, label %.invoke, label %.critedge, !prof !13

bb.r:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.s:                                             ; preds = %.invoke, %bb.y, %bb.o, %bb.n, %bb.v, %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  br label %bb.ae

bb.t:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  %i.ba = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isBitVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  br i1 %i.ba, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bb = invoke noundef i32 @_ZNK4cvc58internal8TypeNode16getBitVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.w unwind label %bb.s

bb.w:                                             ; preds = %bb.v
  %.not = icmp ult i32 %.sroa.0.0.copyload, %i.bb
  br i1 %.not, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.y, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.bd = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !207 ; 4 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !11, !alias.scope !207
  %i.be = load i64, ptr %i.bd, align 8, !noalias !207 ; 3 uses
  %i.bf = lshr i64 %i.be, 40
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 1048575                  ; 3 uses
  %i.bi = icmp samesign ult i32 %i.bh, 1048574
  br i1 %i.bi, label %.critedge.sink.split, label %bb.z, !prof !12

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bj = icmp eq i32 %i.bh, 1048574
  br i1 %i.bj, label %.invoke, label %.critedge, !prof !13

.invoke:                                          ; preds = %bb.z, %bb.q
  %.sink46.a = phi i64 [ %i.as, %bb.q ], [ %i.be, %bb.z ]
  %.sink45 = phi ptr [ %i.ar, %bb.q ], [ %i.bd, %bb.z ] ; 2 uses
  %i.bk = or i64 %.sink46.a, 1152920405095219200
  store i64 %i.bk, ptr %.sink45, align 8, !noalias !20
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink45)
          to label %.critedge unwind label %bb.s

bb.aa:                                            ; preds = %bb.u, %bb.w
  %i.bl = load ptr, ptr %7, align 8, !tbaa !11    ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = and i64 %i.bm, 1152920405095219200
  %.not.i.i30 = icmp eq i64 %i.bn, 1152920405095219200
  br i1 %.not.i.i30, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.bo = add i64 %i.bm, 1152920405095219200
  %i.bp = and i64 %i.bo, 1152920405095219200      ; 2 uses
  %i.bq = and i64 %i.bm, -1152920405095219201
  %i.br = or disjoint i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.bl, align 8
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %bb.ac, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !13

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #13
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.af

bb.ae:                                            ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.az, %bb.s ], [ %i.ay, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ao

bb.af:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.l
  %8 = sub nuw i32 %.sroa.0.0.copyload, %.sroa.7.0.copyload ; 2 uses
  %9 = add nuw i32 %8, 1
  %i.bv = icmp ne i32 %8, -1                      ; 2 uses
  %.not.i31 = icmp eq ptr %4, null
  %or.cond.i32 = or i1 %.not.i31, %i.bv
  br i1 %or.cond.i32, label %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit, label %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread

_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread: ; preds = %bb.af
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.12, i64 noundef 74) ; 0 uses
  br label %bb.ag

_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit: ; preds = %bb.af
  br i1 %i.bv, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit.thread, %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.bx = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !208 ; 5 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !11, !alias.scope !208
  %i.by = load i64, ptr %i.bx, align 8, !noalias !208 ; 3 uses
  %i.bz = lshr i64 %i.by, 40
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 1048575                  ; 3 uses
  %i.cc = icmp samesign ult i32 %i.cb, 1048574
  br i1 %i.cc, label %bb.ah, label %bb.ai, !prof !12

bb.ah:                                            ; preds = %bb.ag
  %i.cd = add nuw nsw i32 %i.cb, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 40
  %i.cg = and i64 %i.by, -1152920405095219201
  %i.ch = or i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.bx, align 8, !noalias !208
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ci = icmp eq i32 %i.cb, 1048574
  br i1 %i.ci, label %bb.aj, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.cj = or i64 %i.by, 1152920405095219200
  store i64 %i.cj, ptr %i.bx, align 8, !noalias !208
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx), !noalias !208
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.ak:                                            ; preds = %_ZN4cvc58internal6theory2bv12_GLOBAL__N_117checkBvResultSizeEmPSo.exit
  call void @_ZN4cvc58internal11NodeManager15mkBitVectorTypeEj(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef %9)
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

.critedge.sink.split:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.p
  %.sink52 = phi i32 [ %i.av, %bb.p ], [ %i.bh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %.sink = phi i64 [ %i.as, %bb.p ], [ %i.be, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %.sink47 = phi ptr [ %i.ar, %bb.p ], [ %i.bd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.ck = add nuw nsw i32 %.sink52, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 40
  %i.cn = and i64 %.sink, -1152920405095219201
  %i.co = or i64 %i.cm, %i.cn
  store i64 %i.co, ptr %.sink47, align 8, !noalias !20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.invoke, %bb.z, %bb.q
  %i.cp = load ptr, ptr %7, align 8, !tbaa !11    ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8            ; 3 uses
  %i.cr = and i64 %i.cq, 1152920405095219200
  %.not.i.i34 = icmp eq i64 %i.cr, 1152920405095219200
  br i1 %.not.i.i34, label %_ZN4cvc58internal8TypeNodeD2Ev.exit35, label %bb.al, !prof !13

bb.al:                                            ; preds = %.critedge
  %i.cs = add i64 %i.cq, 1152920405095219200
  %i.ct = and i64 %i.cs, 1152920405095219200      ; 2 uses
  %i.cu = and i64 %i.cq, -1152920405095219201
  %i.cv = or disjoint i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %i.cp, align 8
  %i.cw = icmp eq i64 %i.ct, 0
  br i1 %i.cw, label %bb.am, label %_ZN4cvc58internal8TypeNodeD2Ev.exit35, !prof !13

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit35 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #13
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit35:            ; preds = %.critedge, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

_ZN4cvc58internal8TypeNode4nullEv.exit:           ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.k, %bb.j, %bb.i, %bb.ak, %_ZN4cvc58internal8TypeNodeD2Ev.exit35
  ret void

bb.ao:                                            ; preds = %bb.ae, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv23BitVectorRepeatTypeRule14preComputeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::TypeNode") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.a = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !211 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11, !alias.scope !211
  %i.b = load i64, ptr %i.a, align 8, !noalias !211 ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8, !noalias !211
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8, !noalias !211
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !211
  br label %_ZN4cvc58internal8TypeNode4nullEv.exit

_ZN4cvc58internal8TypeNode4nullEv.exit:           ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2bv23BitVectorRepeatTypeRule11computeTypeEPNS0_11NodeManagerENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef %1, ptr noundef align 8 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate.67", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 12 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !224 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !224
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !224
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.m, ptr %5, align 8, !tbaa !15, !noalias !225
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %6, ptr noundef nonnull align 8 %5, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.n = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isMaybeKindENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 89)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %4, null                  ; 3 uses
  %or.cond.i = or i1 %.not.i, %i.n
  br i1 %or.cond.i, label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 27)
          to label %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit unwind label %bb.f ; 0 uses

_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit: ; preds = %.noexc, %bb.b
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.p = load ptr, ptr @_ZN4cvc58internal8TypeNode6s_nullE, align 8, !tbaa !11, !noalias !226 ; 5 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !11, !alias.scope !226
  %i.q = load i64, ptr %i.p, align 8, !noalias !226 ; 3 uses
  %i.r = lshr i64 %i.q, 40
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 1048575                    ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 1048574
  br i1 %i.u, label %_ZN4cvc58internal8TypeNode4nullEv.exit.sink.split, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.t, 1048574
  br i1 %i.v, label %bb.e, label %_ZN4cvc58internal8TypeNode4nullEv.exit, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.w = or i64 %i.q, 1152920405095219200
  store i64 %i.w, ptr %i.p, align 8, !noalias !226
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZN4cvc58internal8TypeNode4nullEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.g:                                             ; preds = %_ZN4cvc58internal6theory2bv19checkMaybeBitVectorERKNS0_8TypeNodeEPSo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %7, align 8, !tbaa !18
  %i.z = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_15BitVectorRepeatEEERKT_v.exit unwind label %bb.o

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_15BitVectorRepeatEEERKT_v.exit: ; preds = %bb.h
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !228 ; 2 uses
  %i.ab = load ptr, ptr %7, align 8, !tbaa !18    ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ad, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_15BitVectorRepeatEEERKT_v.exit
  %i.ae = add i64 %i.ac, 1152920405095219200
  %i.af = and i64 %i.ae, 1152920405095219200      ; 2 uses
  %i.ag = and i64 %i.ac, -1152920405095219201
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.ab, align 8
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !13

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #13
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_15BitVectorRepeatEEERKT_v.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.al = icmp eq i32 %i.aa, 0
  br i1 %i.al, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  br i1 %.not.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.m

end_hunk_0
