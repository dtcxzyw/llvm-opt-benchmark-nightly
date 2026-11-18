Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/chunked_queue_test?download=true
inline.NumInlined: 6731
inline.NumDeleted: 2085
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_Test8TestBodyEv:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7testing15AssertionResultD2Ev.exit88, %.lr.ph.i
  %.08.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.a, %_ZN7testing15AssertionResultD2Ev.exit88 ] ; 2 uses
  %i.co = load ptr, ptr %.08.i, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit: ; preds = %.lr.ph.i
  ret void

bb.aq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit83, %bb.ae
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %_ZN7testing7MessageD2Ev.exit83 ], [ %i.br, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.o, %bb.ac, %bb.ad, %bb.aq
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %.pn19.pn.pn, %bb.aq ], [ %i.bq, %bb.ad ], [ %.pn15.pn.pn, %bb.ac ]
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.ar, %.lr.ph.i90
  %.08.i91 = phi ptr [ %i.cp, %.lr.ph.i90 ], [ %i.a, %bb.ar ] ; 2 uses
  %i.cp = load ptr, ptr %.08.i91, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i91) #22
  %.not.i92 = icmp eq ptr %i.cp, null
  br i1 %.not.i92, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit93, label %.lr.ph.i90

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit93: ; preds = %.lr.ph.i90
  resume { ptr, i32 } %.pn19.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 13 uses
  %3 = alloca %"class.std::vector.346", align 8   ; 11 uses
  %4 = alloca %"class.absl::lts_20260526::chunked_queue.351", align 8 ; 24 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EED2Ev.exit
  %i.o = phi i32 [ 0, %bb.a ], [ %i.kc, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c
  store i32 0, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  store i32 0, ptr @_ZN12_GLOBAL__N_16MyType16destructor_callsE, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  br label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.c
  %.pre188 = load i32, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit
  store ptr %i.by, ptr %3, align 8
  store i32 0, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  store i32 0, ptr @_ZN12_GLOBAL__N_16MyType16destructor_callsE, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.q = icmp sgt i32 %i.cc, 0
  br i1 %i.q, label %.lr.ph115, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit
  %i.r = phi ptr [ %i.bv, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit ], [ null, %.lr.ph.preheader ] ; 5 uses
  %i.s = phi ptr [ %i.bw, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit ], [ null, %.lr.ph.preheader ] ; 3 uses
  %i.t = phi i32 [ %i.bx, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit ], [ %.pre188, %.lr.ph.preheader ]
  %.021109 = phi i32 [ %i.cb, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.u = phi ptr [ %i.by, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit ], [ null, %.lr.ph.preheader ] ; 14 uses
  %i.v = add nsw i32 %i.t, 1
  store i32 %i.v, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i32 %.021109, ptr %i.s, align 4, !tbaa !1196
  %i.w = load i32, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  store i32 %i.x, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.y, ptr %i.c, align 8, !tbaa !210
  br label %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.z = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.u, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %i.ae = icmp eq ptr %i.r, %i.u                  ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.ae, i64 1, i64 %i.ad
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #25
          to label %.noexc44 unwind label %.loopexit ; 11 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ab
  store i32 %.021109, ptr %i.al, align 4, !tbaa !1196
  %i.am = load i32, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  %i.an = add nsw i32 %i.am, 1                    ; 5 uses
  store i32 %i.an, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  br i1 %i.ae, label %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_16MyTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc44
  %i.ao = add i64 %i.z, -4
  %i.ap = sub i64 %i.ao, %i.aa                    ; 3 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader334, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.as = and i64 %i.ap, -4
  %i.at = add i64 %i.as, 4                        ; 2 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.at  ; 2 uses
  %bound0 = icmp ult ptr %i.ak, getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, i64 4)
  %bound1 = icmp ugt ptr %i.au, @_ZN12_GLOBAL__N_16MyType17constructor_callsE
  %found.conflict = and i1 %bound0, %bound1
  %14 = getelementptr i8, ptr %i.u, i64 %i.at     ; 2 uses
  %bound0323 = icmp ult ptr %i.ak, %14
  %bound1324 = icmp ult ptr %i.u, %i.au
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx = or i1 %found.conflict, %found.conflict325
  %bound0326 = icmp ugt ptr %14, @_ZN12_GLOBAL__N_16MyType17constructor_callsE
  %bound1327 = icmp ult ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, i64 4)
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx, %found.conflict328
  br i1 %conflict.rdx329, label %.lr.ph.i.i.i.i.i.i.i.i.preheader334, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.u, i64 %i.av
  %i.ay = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.an, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ay, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi330 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.az ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.u, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep331, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !1196, !alias.scope !1197
  %wide.load332 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !1196, !alias.scope !1197
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !1196, !alias.scope !1198, !noalias !1199
  store <4 x i32> %wide.load332, ptr %i.bb, align 4, !tbaa !1196, !alias.scope !1198, !noalias !1199
  %i.bc = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bd = add <4 x i32> %vec.phi330, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1174

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bd, %i.bc
  %i.bf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.bf, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128, !alias.scope !1200, !noalias !1197
  %ind.escape = getelementptr i8, ptr %i.aw, i64 -4
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader334

.lr.ph.i.i.i.i.i.i.i.i.preheader334:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  %.015.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.01214.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_16MyTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i: ; preds = %.noexc44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_16MyTypeEEvT_S3_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader334, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bh = phi i32 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader334 ]
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader334 ] ; 3 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader334 ] ; 2 uses
  %.012.val.i.i.i.i.i.i.i.i = load i32, ptr %.01214.i.i.i.i.i.i.i.i, align 4, !tbaa !1196
  store i32 %.012.val.i.i.i.i.i.i.i.i, ptr %.015.i.i.i.i.i.i.i.i, align 4, !tbaa !1196
  %i.bi = add nsw i32 %i.bh, 1                    ; 3 uses
  store i32 %i.bi, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1175

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %.015.i.i.i.i.i.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.015.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa = phi i32 [ %i.bf, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.lcssa, i64 8
  %_ZN12_GLOBAL__N_16MyType16destructor_callsE.promoted.i.i.i.i.i = load i32, ptr @_ZN12_GLOBAL__N_16MyType16destructor_callsE, align 4
  %i.bm = add i64 %i.ab, 17179869180
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = add i32 %i.bo, 1
  %i.bq = add i32 %i.bp, %_ZN12_GLOBAL__N_16MyType16destructor_callsE.promoted.i.i.i.i.i
  store i32 %i.bq, ptr @_ZN12_GLOBAL__N_16MyType16destructor_callsE, align 4, !tbaa !128
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_16MyTypeEEvT_S3_.exit.i.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_16MyTypeEEvT_S3_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_16MyTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i
  %i.br = phi i32 [ %i.an, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_16MyTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i ], [ %.lcssa, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bs = phi ptr [ %i.bg, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_16MyTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.not.i41.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i41.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_16MyTypeEEvT_S3_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ab) #24
  %.pre = load i32, ptr @_ZN12_GLOBAL__N_16MyType17constructor_callsE, align 4, !tbaa !128
  br label %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZSt8_DestroyIPN12_GLOBAL__N_16MyTypeEEvT_S3_.exit.i.i.i
  %i.bt = phi i32 [ %.pre, %bb.g ], [ %i.br, %_ZSt8_DestroyIPN12_GLOBAL__N_16MyTypeEEvT_S3_.exit.i.i.i ]
  store ptr %i.bs, ptr %i.c, align 8, !tbaa !210
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai ; 2 uses
  store ptr %i.bu, ptr %i.d, align 8, !tbaa !211
  br label %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d
  %i.bv = phi ptr [ %i.bu, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ]
  %i.bw = phi ptr [ %i.bs, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.y, %bb.d ]
  %i.bx = phi i32 [ %i.bt, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.x, %bb.d ]
  %i.by = phi ptr [ %i.ak, %_ZNSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %i.bz = load i32, ptr @_ZN12_GLOBAL__N_16MyType16destructor_callsE, align 4, !tbaa !128
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr @_ZN12_GLOBAL__N_16MyType16destructor_callsE, align 4, !tbaa !128
  %i.cb = add nuw nsw i32 %.021109, 1             ; 2 uses
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !128 ; 3 uses
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph, label %._crit_edge, !llvm.loop !1176

.loopexit:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_16MyTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.u, ptr %3, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ce = load i32, ptr @_ZN12_GLOBAL__N_16MyType16destructor_callsE, align 4, !tbaa !128
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr @_ZN12_GLOBAL__N_16MyType16destructor_callsE, align 4, !tbaa !128
  br label %bb.bs

._crit_edge116:                                   ; preds = %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i
  store ptr %i.dn, ptr %i.e, align 8
  store ptr %i.dj, ptr %i.f, align 8
  store ptr %i.di, ptr %i.g, align 8
  store ptr %i.dh, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8
  store ptr %i.dg, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8
  store i64 %i.dm, ptr %i.h, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread, %._crit_edge116, %._crit_edge
  %.val14.i = phi ptr [ %i.dh, %._crit_edge116 ], [ null, %._crit_edge ], [ null, %._crit_edge.thread ] ; 2 uses
  %i.cg = phi ptr [ %i.dk, %._crit_edge116 ], [ null, %._crit_edge ], [ null, %._crit_edge.thread ] ; 10 uses
  %i.ch = phi i32 [ %i.dq, %._crit_edge116 ], [ %i.cc, %._crit_edge ], [ %i.o, %._crit_edge.thread ] ; 2 uses
  store ptr %i.cg, ptr %4, align 8
  %i.ci = srem i32 %i.ch, 10
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.m, label %bb.r

.lr.ph115:                                        ; preds = %._crit_edge, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.ck = phi i64 [ %i.dm, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.cl = phi ptr [ %i.dg, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i ], [ null, %._crit_edge ] ; 3 uses
  %i.cm = phi ptr [ %i.dh, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i ], [ null, %._crit_edge ] ; 3 uses
  %i.cn = phi ptr [ %i.di, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i ], [ null, %._crit_edge ] ; 6 uses
  %i.co = phi ptr [ %i.dj, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i ], [ null, %._crit_edge ] ; 3 uses
  %i.cp = phi ptr [ %i.dn, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i ], [ null, %._crit_edge ] ; 3 uses
  %i.cq = phi ptr [ %i.dk, %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i ], [ null, %._crit_edge ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.cs = icmp eq ptr %i.cp, %i.co
  br i1 %i.cs, label %bb.j, label %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph115
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12NewBlockSizeEv.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !1201
  %i.cu = ptrtoint ptr %i.cn to i64
  %i.cv = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %reass.sub = sub i64 %i.cv, %i.cu
  %i.cw = add i64 %reass.sub, -16
  %i.cx = ashr exact i64 %i.cw, 1
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cx, i64 128)
  br label %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12NewBlockSizeEv.exit.i.i.i.i

_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12NewBlockSizeEv.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i64 [ %.sroa.speculated.i.i.i.i.i, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.cy = shl nuw nsw i64 %.0.i.i.i.i.i, 2
  %i.cz = add nuw nsw i64 %i.cy, 16
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #26
          to label %.noexc46 unwind label %bb.q   ; 7 uses

.noexc46:                                         ; preds = %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12NewBlockSizeEv.exit.i.i.i.i
  store ptr null, ptr %i.da, align 8, !tbaa !214
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = add i64 %i.dc, 16
  %i.de = inttoptr i64 %i.dd to ptr               ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0.i.i.i.i.i ; 4 uses
  store ptr %i.df, ptr %i.db, align 8, !tbaa !1201
  %.not.i.i.i.i45 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i45, label %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc46
  store ptr %i.da, ptr %i.cn, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i

_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_16MyTypeELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i: ; preds = %bb.l, %.noexc46, %.lr.ph115
  %i.dg = phi ptr [ %i.cl, %.lr.ph115 ], [ %i.cl, %bb.l ], [ %i.df, %.noexc46 ] ; 2 uses
  %i.dh = phi ptr [ %i.cm, %.lr.ph115 ], [ %i.cm, %bb.l ], [ %i.de, %.noexc46 ] ; 3 uses
  %i.di = phi ptr [ %i.cn, %.lr.ph115 ], [ %i.da, %bb.l ], [ %i.da, %.noexc46 ] ; 2 uses
  %i.dj = phi ptr [ %i.co, %.lr.ph115 ], [ %i.df, %bb.l ], [ %i.df, %.noexc46 ] ; 2 uses
  %i.dk = phi ptr [ %i.cq, %.lr.ph115 ], [ %i.cq, %bb.l ], [ %i.da, %.noexc46 ] ; 2 uses
  %i.dl = phi ptr [ %i.cp, %.lr.ph115 ], [ %i.de, %bb.l ], [ %i.de, %.noexc46 ] ; 2 uses
end_hunk_0
