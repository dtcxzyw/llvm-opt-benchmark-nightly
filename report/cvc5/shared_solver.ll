Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/shared_solver?download=true
inline.NumInlined: 875
inline.NumDeleted: 417
begin_hunk_0_@_ZN4cvc58internal11NodeVisitorINS0_18PreRegisterVisitorEE3runERS2_NS0_12NodeTemplateILb0EEE:bb.a
          to label %_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EE9push_backEOS5_.exit31 unwind label %bb.m

_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EE9push_backEOS5_.exit31: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.n

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.g, %bb.f, %bb.b
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EE9push_backEOS5_.exit31, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.039.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.t, align 8
  %i.aq = lshr i64 %i.ap, 32
  %i.ar = and i64 %i.aq, 67108863
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ar
  %.not = icmp eq ptr %i.ao, %i.as
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !191

.loopexit.sink.split:                             ; preds = %bb.f, %bb.c
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -24
  store ptr %i.au, ptr %i.e, align 8, !tbaa !117
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split, %bb.h
  %i.av = load ptr, ptr %3, align 8, !tbaa !193   ; 2 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !193 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge, label %bb.b, !llvm.loop !192

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EE9push_backEOS5_.exit
  %.lcssa = phi ptr [ %.pre, %_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EE9push_backEOS5_.exit ], [ %i.av, %.loopexit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %.lcssa to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa, i64 noundef %i.bb) #22
  br label %_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EED2Ev.exit: ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.d
  %.pn24.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.an, %bb.m ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !119   ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EED2Ev.exit33, label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #22
  br label %_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EED2Ev.exit33

_ZNSt6vectorIN4cvc58internal11NodeVisitorINS1_18PreRegisterVisitorEE13stack_elementESaIS5_EED2Ev.exit33: ; preds = %.loopexit.split-lp, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory12SharedSolver19preNotifySharedFactENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.c, ptr %2, align 8, !tbaa !103
  %i.d = call noundef zeroext i1 @_ZNK4cvc58internal19SharedTermsDatabase14hasSharedTermsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(592) %i.b, ptr noundef nonnull align 8 %2)
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.e, ptr %3, align 8, !tbaa !103
  %i.f = call ptr @_ZNK4cvc58internal19SharedTermsDatabase5beginENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(592) %i.b, ptr noundef nonnull align 8 %3) ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.g, ptr %4, align 8, !tbaa !103
  %i.h = call ptr @_ZNK4cvc58internal19SharedTermsDatabase3endENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(592) %i.b, ptr noundef nonnull align 8 %4) ; 2 uses
  %.not2223 = icmp eq ptr %i.f, %i.h
  br i1 %.not2223, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.019.024 = phi ptr [ %i.f, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.019.024, align 8, !tbaa !103 ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.k, ptr %5, align 8, !tbaa !103
  store ptr %i.j, ptr %6, align 8, !tbaa !103
  %i.l = call noundef i32 @_ZNK4cvc58internal19SharedTermsDatabase19getTheoriesToNotifyENS0_12NodeTemplateILb0EEES3_(ptr noundef nonnull align 8 dereferenceable(592) %i.b, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !197
  br label %bb.e

bb.d:                                             ; preds = %thread-pre-split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store ptr %i.j, ptr %8, align 8, !tbaa !103
  call void @_ZN4cvc58internal19SharedTermsDatabase12markNotifiedENS0_12NodeTemplateILb0EEEj(ptr noundef nonnull align 8 dereferenceable(592) %i.b, ptr noundef nonnull align 8 %8, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8 ; 2 uses
  %.not22 = icmp eq ptr %i.m, %i.h
  br i1 %.not22, label %.loopexit, label %bb.c, !llvm.loop !195

bb.e:                                             ; preds = %bb.c, %thread-pre-split
  %i.n = phi i32 [ 0, %bb.c ], [ %.pr, %thread-pre-split ]
  %i.o = call noundef zeroext i1 @_ZN4cvc58internal6theory15TheoryIdSetUtil11setContainsENS1_8TheoryIdEj(i32 noundef %i.n, i32 noundef %i.l)
  br i1 %i.o, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !79, !nonnull !80, !align !81
  %i.q = load i32, ptr %i.a, align 4, !tbaa !197
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  store ptr %i.j, ptr %7, align 8, !tbaa !103
  call void @_ZN4cvc58internal6theory6Theory13addSharedTermENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(280) %i.u, ptr noundef nonnull align 8 %7)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f, %bb.e
  %i.v = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN4cvc58internal6theoryppERNS1_8TheoryIdE(ptr noundef nonnull align 4 dereferenceable(4) %i.a), !llvm.loop !196 ; 0 uses
  %.pr = load i32, ptr %i.a, align 4, !tbaa !197  ; 2 uses
  %.not = icmp eq i32 %.pr, 14
  br i1 %.not, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK4cvc58internal19SharedTermsDatabase14hasSharedTermsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef align 8) local_unnamed_addr #1

declare ptr @_ZNK4cvc58internal19SharedTermsDatabase5beginENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef align 8) local_unnamed_addr #1

declare ptr @_ZNK4cvc58internal19SharedTermsDatabase3endENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef align 8) local_unnamed_addr #1

declare noundef i32 @_ZNK4cvc58internal19SharedTermsDatabase19getTheoriesToNotifyENS0_12NodeTemplateILb0EEES3_(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4cvc58internal6theory15TheoryIdSetUtil11setContainsENS1_8TheoryIdEj(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory6Theory13addSharedTermENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef align 8) local_unnamed_addr #1

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZN4cvc58internal6theoryppERNS1_8TheoryIdE(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN4cvc58internal19SharedTermsDatabase12markNotifiedENS0_12NodeTemplateILb0EEEj(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory12SharedSolver17getEqualityStatusENS0_12NodeTemplateILb0EEES4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory12SharedSolver12propagateLitENS0_12NodeTemplateILb0EEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 4 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.c, ptr %5, align 8, !tbaa !103
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 %5)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.h = load ptr, ptr %1, align 8, !tbaa !103, !noalias !202 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !203
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122, !noalias !203
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef %i.j, i32 noundef 20), !noalias !202
  store ptr %i.h, ptr %4, align 8, !tbaa !103, !noalias !203
  %i.k = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 8 %4)
          to label %bb.d unwind label %.body.i, !noalias !203 ; 0 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %7, ptr noundef nonnull align 8 dereferenceable(124) %3)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE7notNodeEv.exit unwind label %.body.i

common.resume:                                    ; preds = %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %.body.i ], [ %i.ab, %bb.i ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !203
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb0EE7notNodeEv.exit: ; preds = %bb.d
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !202
  %i.m = load ptr, ptr %7, align 8, !tbaa !92
  store ptr %i.m, ptr %6, align 8, !tbaa !103
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 %6)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE7notNodeEv.exit
  %i.r = load ptr, ptr %7, align 8, !tbaa !92     ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = and i64 %i.s, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.t, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !93

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %i.s, 1152920405095219200
  %i.v = and i64 %i.u, 1152920405095219200        ; 2 uses
  %i.w = and i64 %i.s, -1152920405095219201
  %i.x = or disjoint i64 %i.v, %i.w
  store i64 %i.x, ptr %i.r, align 8
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !93

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.j

bb.i:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE7notNodeEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

bb.j:                                             ; preds = %bb.b, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.05 = phi i1 [ %i.q, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.g, %bb.b ]
  ret i1 %.05
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !93

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !93

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory12SharedSolver23propagateSharedEqualityENS1_8TheoryIdENS0_12NodeTemplateILb0EEES5_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 4 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.a = load ptr, ptr %2, align 8, !tbaa !103    ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1099511627775
  %i.d = load ptr, ptr %3, align 8, !tbaa !103    ; 4 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1099511627775
  %i.g = icmp samesign ugt i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21, !noalias !217
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122, !noalias !217
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef %i.i, i32 noundef 5), !noalias !216
  store ptr %i.d, ptr %11, align 8, !tbaa !103, !noalias !217
  %i.j = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull align 8 %11)
          to label %bb.c unwind label %.body.i, !noalias !217

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %12, align 8, !tbaa !103, !noalias !217
  %i.k = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.j, ptr noundef nonnull align 8 %12)
          to label %bb.d unwind label %.body.i, !noalias !217 ; 0 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(124) %10)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE6eqNodeILb0EEENS1_ILb1EEERKNS1_IXT_EEE.exit unwind label %.body.i

common.resume:                                    ; preds = %bb.x, %.body.i10, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %.body.i ], [ %i.q, %.body.i10 ], [ %.pn8, %bb.x ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.d, %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !217
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb0EE6eqNodeILb0EEENS1_ILb1EEERKNS1_IXT_EEE.exit: ; preds = %bb.d
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !216
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !219
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !122, !noalias !219
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef %i.n, i32 noundef 5), !noalias !218
  store ptr %i.a, ptr %8, align 8, !tbaa !103, !noalias !219
  %i.o = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 %8)
          to label %bb.f unwind label %.body.i10, !noalias !219

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %9, align 8, !tbaa !103, !noalias !219
  %i.p = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.o, ptr noundef nonnull align 8 %9)
          to label %bb.g unwind label %.body.i10, !noalias !219 ; 0 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(124) %7)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE6eqNodeILb0EEENS1_ILb1EEERKNS1_IXT_EEE.exit11 unwind label %.body.i10

.body.i10:                                        ; preds = %bb.g, %bb.f, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !219
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb0EE6eqNodeILb0EEENS1_ILb1EEERKNS1_IXT_EEE.exit11: ; preds = %bb.g
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !218
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE6eqNodeILb0EEENS1_ILb1EEERKNS1_IXT_EEE.exit11, %_ZNK4cvc58internal12NodeTemplateILb0EE6eqNodeILb0EEENS1_ILb1EEERKNS1_IXT_EEE.exit
  br i1 %4, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79, !nonnull !80, !align !81
  %i.t = load ptr, ptr %13, align 8, !tbaa !92    ; 2 uses
  store ptr %i.t, ptr %14, align 8, !tbaa !103
  store ptr %i.t, ptr %15, align 8, !tbaa !103
  invoke void @_ZN4cvc58internal12TheoryEngine14assertToTheoryENS0_12NodeTemplateILb0EEES3_NS0_6theory8TheoryIdES5_(ptr noundef nonnull align 8 dereferenceable(1480) %i.s, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 %15, i32 noundef %1, i32 noundef 0)
          to label %bb.t unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.v = load ptr, ptr %13, align 8, !tbaa !92, !noalias !220 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !221
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122, !noalias !221
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.x, i32 noundef 20)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.k
  store ptr %i.v, ptr %6, align 8, !tbaa !103, !noalias !221
  %i.y = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.l unwind label %.body.i12, !noalias !221 ; 0 uses

bb.l:                                             ; preds = %.noexc
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %16, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.m unwind label %.body.i12

.body.i12:                                        ; preds = %bb.l, %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !221
  br label %.body

bb.m:                                             ; preds = %bb.l
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !220
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79, !nonnull !80, !align !81
  %i.ac = load ptr, ptr %16, align 8, !tbaa !92   ; 2 uses
  store ptr %i.ac, ptr %17, align 8, !tbaa !103
  store ptr %i.ac, ptr %18, align 8, !tbaa !103
  invoke void @_ZN4cvc58internal12TheoryEngine14assertToTheoryENS0_12NodeTemplateILb0EEES3_NS0_6theory8TheoryIdES5_(ptr noundef nonnull align 8 dereferenceable(1480) %i.ab, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 %18, i32 noundef %1, i32 noundef 0)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %16, align 8, !tbaa !92   ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = and i64 %i.ae, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.af, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.o, !prof !93

bb.o:                                             ; preds = %bb.n
  %i.ag = add i64 %i.ae, 1152920405095219200
  %i.ah = and i64 %i.ag, 1152920405095219200      ; 2 uses
  %i.ai = and i64 %i.ae, -1152920405095219201
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ad, align 8
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !93

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  br label %.body

.body:                                            ; preds = %bb.r, %.body.i12, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.an, %bb.r ], [ %i.z, %.body.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.x

bb.t:                                             ; preds = %bb.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ap = load ptr, ptr %13, align 8, !tbaa !92   ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = and i64 %i.aq, 1152920405095219200
  %.not.i.i13 = icmp eq i64 %i.ar, 1152920405095219200
  br i1 %.not.i.i13, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14, label %bb.u, !prof !93

bb.u:                                             ; preds = %bb.t
  %i.as = add i64 %i.aq, 1152920405095219200
  %i.at = and i64 %i.as, 1152920405095219200      ; 2 uses
  %i.au = and i64 %i.aq, -1152920405095219201
  %i.av = or disjoint i64 %i.at, %i.au
  store i64 %i.av, ptr %i.ap, align 8
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14, !prof !93

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14: ; preds = %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  ret i1 true

bb.x:                                             ; preds = %.body, %bb.j
  %.pn8 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %.pn, %.body ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %common.resume
}

declare void @_ZN4cvc58internal12TheoryEngine14assertToTheoryENS0_12NodeTemplateILb0EEES3_NS0_6theory8TheoryIdES5_(ptr noundef nonnull align 8 dereferenceable(1480), ptr noundef align 8, ptr noundef align 8, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory12SharedSolver8isSharedENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate.47", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224
  %.not.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i.i.i, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !88 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK4cvc58internal19SharedTermsDatabase8isSharedENS0_12NodeTemplateILb0EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.g = icmp eq ptr %i.a, %i.f
  br i1 %i.g, label %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i.i, label %bb.c, !llvm.loop !222

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.i = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb0EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = load i64, ptr %i.j, align 8, !tbaa !123  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !124
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !125  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4cvc58internal19SharedTermsDatabase8isSharedENS0_12NodeTemplateILb0EEE.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88   ; 4 uses
  %i.q = load ptr, ptr %2, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !127
  %i.u = icmp eq i64 %i.i, %i.t
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = icmp eq ptr %i.q, %i.v
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.z = icmp eq i64 %i.i, %i.af
  %i.aa = load ptr, ptr %i.y, align 8
  %i.ab = icmp eq ptr %i.q, %i.aa
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !223

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.p, %bb.e ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !88 ; 5 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNK4cvc58internal19SharedTermsDatabase8isSharedENS0_12NodeTemplateILb0EEE.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !127 ; 2 uses
  %i.ag = urem i64 %i.af, %i.k
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.l
  br i1 %.not19.i.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !223

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.g
  br label %_ZNK4cvc58internal19SharedTermsDatabase8isSharedENS0_12NodeTemplateILb0EEE.exit, !llvm.loop !223

_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i.i: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.d ], [ %i.p, %bb.e ], [ %i.ad, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !129
  %i.aj = icmp ne ptr %i.ai, null
  br label %_ZNK4cvc58internal19SharedTermsDatabase8isSharedENS0_12NodeTemplateILb0EEE.exit

_ZNK4cvc58internal19SharedTermsDatabase8isSharedENS0_12NodeTemplateILb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c, %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %.noexc
  %.sroa.04.0.i.i = phi i1 [ %i.aj, %_ZNKSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSD_.exit.i.i ], [ false, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ false, %bb.c ], [ false, %.noexc ], [ false, %.lr.ph.i.i.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_ZNK4cvc58internal9TrustNode7getNodeEv

declare noundef zeroext i1 @_ZN4cvc58internal6theory22TheoryInferenceManager12trustedLemmaERKNS0_9TrustNodeENS1_11InferenceIdENS1_13LemmaPropertyE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory12SharedSolver12sendConflictENS0_9TrustNodeENS1_11InferenceIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %0, ptr nofree noundef readonly align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::TrustNode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = load i32, ptr %1, align 8, !tbaa !228
  store i32 %i.c, ptr %3, align 8, !tbaa !228
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !92
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = lshr i64 %i.g, 40
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 1048575                    ; 3 uses
  %i.k = icmp samesign ult i32 %i.j, 1048574
  br i1 %i.k, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i32 %i.j, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 40
  %i.o = and i64 %i.g, -1152920405095219201
  %i.p = or i64 %i.n, %i.o
  store i64 %i.p, ptr %i.f, align 8
  br label %_ZN4cvc58internal9TrustNodeC2ERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %i.j, 1048574
  br i1 %i.q, label %bb.d, label %_ZN4cvc58internal9TrustNodeC2ERKS1_.exit, !prof !93

bb.d:                                             ; preds = %bb.c
  %i.r = or i64 %i.g, 1152920405095219200
  store i64 %i.r, ptr %i.f, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_ZN4cvc58internal9TrustNodeC2ERKS1_.exit

_ZN4cvc58internal9TrustNodeC2ERKS1_.exit:         ; preds = %bb.b, %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !229
  store ptr %i.u, ptr %i.s, align 8, !tbaa !229
  invoke void @_ZN4cvc58internal6theory22TheoryInferenceManager15trustedConflictENS0_9TrustNodeENS1_11InferenceIdE(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 %3, i32 noundef %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN4cvc58internal9TrustNodeC2ERKS1_.exit
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal9TrustNodeD2Ev.exit, label %bb.f, !prof !93

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.g, label %_ZN4cvc58internal9TrustNodeD2Ev.exit, !prof !93

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN4cvc58internal9TrustNodeD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #23
  unreachable

_ZN4cvc58internal9TrustNodeD2Ev.exit:             ; preds = %bb.e, %bb.f, %bb.g
  ret void

bb.i:                                             ; preds = %_ZN4cvc58internal9TrustNodeC2ERKS1_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  resume { ptr, i32 } %i.af
}

declare void @_ZN4cvc58internal6theory22TheoryInferenceManager15trustedConflictENS0_9TrustNodeENS1_11InferenceIdE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.b, !prof !93

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !93

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory12SharedSolverD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4cvc58internal6theory12SharedSolverE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal18SharedTermsVisitorE, i64 16), ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEEjSt4hashIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.b) #21, !inline_history !131
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !88 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 32) #22, !inline_history !131
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !91
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4cvc58internal18SharedTermsVisitorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !91
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22, !inline_history !131
  br label %_ZN4cvc58internal18SharedTermsVisitorD2Ev.exit

_ZN4cvc58internal18SharedTermsVisitorD2Ev.exit:   ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal18PreRegisterVisitorE, i64 16), ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEEjSt4hashIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.q) #21, !inline_history !86
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4cvc58internal19SharedTermsDatabaseD2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %i.r) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory12SharedSolverD0Ev(ptr noundef nonnull align 8 dereferenceable(976) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #6 section ".text.startup" comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, !prof !230

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !108
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  resume { ptr, i32 } %i.h

_ZN4cvc58internal4expr9NodeValue4nullEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !108 ; 5 uses
  store ptr %i.i, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !92
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = lshr i64 %i.j, 40
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 1048575                    ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1048574
  br i1 %i.n, label %bb.g, label %bb.h, !prof !130

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.o = add nuw nsw i32 %i.m, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 40
  %i.r = and i64 %i.j, -1152920405095219201
  %i.s = or i64 %i.q, %i.r
  store i64 %i.s, ptr %i.i, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.t = icmp eq i32 %i.m, 1048574
  br i1 %i.t, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, !prof !93

bb.i:                                             ; preds = %bb.h
  %i.u = or i64 %i.j, 1152920405095219200
  store i64 %i.u, ptr %i.i, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4cvc58internal12NodeTemplateILb1EED2Ev, ptr nonnull @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, ptr nonnull @__dso_handle) #21 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEEjSt4hashIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEEjSt4hashIS4_EEE, i64 16), ptr %0, align 8, !tbaa !11
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.06.09.i = load ptr, ptr %i.a, align 8, !tbaa !88 ; 2 uses
  %.not10.i = icmp eq ptr %.sroa.06.09.i, null
  br i1 %.not10.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !233 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.b = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !88 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #22
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !231

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.06.011.i = phi ptr [ %.sroa.06.0.i, %.lr.ph.i ], [ %.sroa.06.09.i, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr null, ptr %i.e, align 8, !tbaa !237
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.d) #21, !inline_history !232
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #21
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge.i, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.n, align 8, !tbaa !238
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.p = load i64, ptr %i.k, align 8, !tbaa !123
  %i.q = shl i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.q, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.u = load i64, ptr %i.k, align 8, !tbaa !123
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEPNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_jSt4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal18SharedTermsVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal18SharedTermsVisitorE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEEjSt4hashIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #21, !inline_history !131
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !88 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 32) #22, !inline_history !131
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !91
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4cvc58internal18SharedTermsVisitorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !91
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22, !inline_history !131
  br label %_ZN4cvc58internal18SharedTermsVisitorD2Ev.exit

_ZN4cvc58internal18SharedTermsVisitorD2Ev.exit:   ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_jESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #22
  ret void
}

declare void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEEjSt4hashIS4_EE4saveEPNS0_20ContextMemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEEjSt4hashIS4_EE4saveEPNS0_20ContextMemoryManagerE, ptr noundef nonnull @.str.2, i32 noundef 275)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #23
  unreachable

end_hunk_1
