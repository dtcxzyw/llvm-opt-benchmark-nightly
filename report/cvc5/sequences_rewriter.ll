Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sequences_rewriter?download=true
inline.NumInlined: 6229
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4cvc58internal11NodeManager5mkAndILb1EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE:bb.a
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !46

bb.g:                                             ; preds = %bb.f
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1522
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef 21), !noalias !1522
  %i.w = load ptr, ptr %2, align 8, !tbaa !65, !noalias !1522 ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !65, !noalias !1522 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1522
  %.not6.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not6.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.noexc.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.aa, %.noexc.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !41, !noalias !1522
  store ptr %i.y, ptr %3, align 8, !tbaa !45, !noalias !1522
  %i.z = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %3)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1522 ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.x
  br i1 %.not.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i, !llvm.loop !1

.loopexit4.i:                                     ; preds = %.noexc.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1522
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %.loopexit4.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1522
  resume { ptr, i32 } %lpad.phi.i

_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit: ; preds = %.loopexit4.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1522
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.g, %bb.f, %bb.e, %_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit, %bb.b
  ret void
}

declare void @_ZN4cvc58internal6theory7strings13StringsEntail35rewriteViaMacroSubstrStripSymLengthERKNS0_12NodeTemplateILb1EEERNS2_7RewriteERSt6vectorIS5_SaIS5_EESD_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word10hasOverlapENS0_12NodeTemplateILb0EEES5_b(ptr noundef align 8, ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4cvc58internal6theory7strings13StringsEntail22stripConstantEndpointsERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES9_S9_S9_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4cvc58internal7Integer13toUnsignedIntEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZNK4cvc58internal6String6substrEm(ptr dead_on_unwind writable sret(%"class.cvc5::internal::String") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden { i64, i64 } @_ZN4cvc58internal6theory7strings17SequencesRewriter10firstMatchENS0_12NodeTemplateILb1EEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.6", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.6", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %7 = alloca %"class.cvc5::internal::String", align 8 ; 12 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.6", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::String", align 8 ; 10 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.6", align 8 ; 2 uses
  %11 = alloca %"class.cvc5::internal::String", align 8 ; 9 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.6", align 8 ; 2 uses
  %i.a = tail call noundef ptr @_ZNK4cvc58internal6theory14TheoryRewriter11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.b = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1527
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43, !noalias !1527
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef %i.f, i32 noundef 351)
  store ptr %i.b, ptr %4, align 8, !tbaa !45, !noalias !1527
  %i.g = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 8 %4)
          to label %bb.a unwind label %bb.d, !noalias !1527

bb.a:                                             ; preds = %.noexc
  store ptr %i.d, ptr %5, align 8, !tbaa !45, !noalias !1527
  %i.h = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.g, ptr noundef nonnull align 8 %5)
          to label %bb.b unwind label %bb.e, !noalias !1527 ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(124) %3)
          to label %bb.g unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.pn5.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ %i.j, %bb.d ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1527
  br label %.body

bb.g:                                             ; preds = %bb.b
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1527
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.l = load ptr, ptr %1, align 8, !tbaa !41
  %i.m = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6StringEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit unwind label %bb.o ; 3 uses

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67   ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i, label %.noexc40, label %bb.h

bb.h:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit
  %i.t = icmp ugt i64 %i.s, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !46

.noexc.i.i.i:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc39 unwind label %bb.o

.noexc39:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24
          to label %.noexc40 unwind label %bb.o

.noexc40:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit
  %i.v = phi ptr [ null, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ], [ %i.u, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.v, ptr %7, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !53
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !68   ; 4 uses
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !68  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp sgt i64 %i.ad, 4
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.z, i64 %i.ad, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc40
  %i.af = icmp eq i64 %i.ad, 4
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.z, align 4, !tbaa !69
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ah = getelementptr inbounds i8, ptr %i.v, i64 %i.ad
  store ptr %i.ah, ptr %i.w, align 8, !tbaa !67
  %i.ai = ashr exact i64 %i.ad, 2                 ; 3 uses
  %i.aj = icmp eq ptr %i.aa, %i.z
  br i1 %i.aj, label %bb.m, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %2, align 8, !tbaa !41
  store ptr %i.am, ptr %8, align 8, !tbaa !45
  %i.an = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings12RegExpEntail23testConstStringInRegExpERNS0_6StringENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 %8)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ao = load i64, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4nposE, align 8
  %spec.select = select i1 %i.an, i64 0, i64 %i.ao ; 2 uses
  br label %bb.aj

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6StringD2Ev.exit58

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.q:                                             ; preds = %.lr.ph89, %_ZN4cvc58internal6StringD2Ev.exit48
  %.087 = phi i64 [ 0, %.lr.ph89 ], [ %i.bu, %_ZN4cvc58internal6StringD2Ev.exit48 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNK4cvc58internal6String6substrEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::String") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.087)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ar = load ptr, ptr %6, align 8, !tbaa !41
  store ptr %i.ar, ptr %10, align 8, !tbaa !45
  %i.as = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings12RegExpEntail23testConstStringInRegExpERNS0_6StringENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 %10)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not84 = icmp ule i64 %.087, %i.ai
  %or.cond.not = select i1 %i.as, i1 %.not84, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.critedge35

bb.t:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6StringD2Ev.exit52

bb.u:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.lr.ph:                                           ; preds = %bb.s, %bb.ac
  %storemerge85 = phi i64 [ %i.bk, %bb.ac ], [ %.087, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.av = sub i64 %storemerge85, %.087
  invoke void @_ZNK4cvc58internal6String6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::String") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.087, i64 noundef %i.av)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %.lr.ph
  %i.aw = load ptr, ptr %2, align 8, !tbaa !41
  store ptr %i.aw, ptr %12, align 8, !tbaa !45
  %i.ax = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings12RegExpEntail23testConstStringInRegExpERNS0_6StringENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 %12)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %11, align 8, !tbaa !52   ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null         ; 2 uses
  br i1 %i.ax, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !53
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #26
  br label %bb.af

bb.z:                                             ; preds = %.lr.ph
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6StringD2Ev.exit46

bb.aa:                                            ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i45, label %_ZN4cvc58internal6StringD2Ev.exit46, label %bb.ad

.critedge:                                        ; preds = %bb.w
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !53
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.ay to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bj) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bk = add i64 %storemerge85, 1                ; 2 uses
  %.not = icmp ugt i64 %i.bk, %i.ai
  br i1 %.not, label %.critedge35, label %.lr.ph, !llvm.loop !1525

bb.ad:                                            ; preds = %bb.aa
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !53
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bf to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bo) #26
  br label %_ZN4cvc58internal6StringD2Ev.exit46

_ZN4cvc58internal6StringD2Ev.exit46:              ; preds = %bb.ad, %bb.aa, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.z ], [ %i.be, %bb.aa ], [ %i.be, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ah

.critedge35:                                      ; preds = %bb.ac, %bb.s
  %i.bp = load ptr, ptr %9, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i47, label %_ZN4cvc58internal6StringD2Ev.exit48, label %bb.ae

bb.ae:                                            ; preds = %.critedge35
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #26
  br label %_ZN4cvc58internal6StringD2Ev.exit48

_ZN4cvc58internal6StringD2Ev.exit48:              ; preds = %.critedge35, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bu = add nuw i64 %.087, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !1526

bb.af:                                            ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bv = load ptr, ptr %9, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i49, label %_ZN4cvc58internal6StringD2Ev.exit50, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bw = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #26
  br label %_ZN4cvc58internal6StringD2Ev.exit50

_ZN4cvc58internal6StringD2Ev.exit50:              ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN4cvc58internal6StringD2Ev.exit46, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN4cvc58internal6StringD2Ev.exit46 ], [ %i.au, %bb.u ] ; 2 uses
  %i.ca = load ptr, ptr %9, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i51, label %_ZN4cvc58internal6StringD2Ev.exit52, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #26
  br label %_ZN4cvc58internal6StringD2Ev.exit52

_ZN4cvc58internal6StringD2Ev.exit52:              ; preds = %bb.ai, %bb.ah, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.t ], [ %.pn.pn.pn, %bb.ah ], [ %.pn.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ao

._crit_edge:                                      ; preds = %_ZN4cvc58internal6StringD2Ev.exit48
  %i.cf = load i64, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4nposE, align 8, !tbaa !100 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.n, %_ZN4cvc58internal6StringD2Ev.exit50, %._crit_edge
  %.sroa.072.0 = phi i64 [ %i.cf, %._crit_edge ], [ %spec.select, %bb.n ], [ %.087, %_ZN4cvc58internal6StringD2Ev.exit50 ]
  %.sroa.573.0 = phi i64 [ %i.cf, %._crit_edge ], [ %spec.select, %bb.n ], [ %storemerge85, %_ZN4cvc58internal6StringD2Ev.exit50 ]
  %i.cg = load ptr, ptr %7, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i55, label %_ZN4cvc58internal6StringD2Ev.exit56, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ch = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #26
  br label %_ZN4cvc58internal6StringD2Ev.exit56

_ZN4cvc58internal6StringD2Ev.exit56:              ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.cl = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8            ; 3 uses
  %i.cn = and i64 %i.cm, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.cn, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.al, !prof !46

bb.al:                                            ; preds = %_ZN4cvc58internal6StringD2Ev.exit56
  %i.co = add i64 %i.cm, 1152920405095219200
  %i.cp = and i64 %i.co, 1152920405095219200      ; 2 uses
  %i.cq = and i64 %i.cm, -1152920405095219201
  %i.cr = or disjoint i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.cl, align 8
  %i.cs = icmp eq i64 %i.cp, 0
  br i1 %i.cs, label %bb.am, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !46

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal6StringD2Ev.exit56, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.072.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.573.0, 1
  ret { i64, i64 } %.fca.1.insert

bb.ao:                                            ; preds = %_ZN4cvc58internal6StringD2Ev.exit52, %bb.p
  %.pn28 = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %.pn.pn.pn.pn, %_ZN4cvc58internal6StringD2Ev.exit52 ] ; 2 uses
  %i.cv = load ptr, ptr %7, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i57, label %_ZN4cvc58internal6StringD2Ev.exit58, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cw = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.cx = ptrtoint ptr %i.cw to i64
end_hunk_0
