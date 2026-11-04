Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/async?download=true
inline.NumInlined: 885
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEES4_:bb.a
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.ah
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ac
  %i.cq = add i64 %i.bi, -8
  %i.cr = sub i64 %i.cq, %i.bj                    ; 3 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cr, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.cu = and i64 %i.cr, -8
  %i.cv = add i64 %i.cu, 8                        ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bs, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.bh, i64 %i.cv
  %bound0 = icmp ult ptr %i.bs, %i.cx
  %bound1 = icmp ult ptr %i.bh, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ct, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.bs, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.bh, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.db ; 2 uses
  %next.gep98 = getelementptr i8, ptr %i.bh, i64 %i.db ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.dc = getelementptr i8, ptr %next.gep98, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep98, align 8, !tbaa !97, !alias.scope !207
  %wide.load99 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !97, !alias.scope !207
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !97, !alias.scope !208, !noalias !209
  store <2 x i64> %wide.load99, ptr %i.dd, align 8, !tbaa !97, !alias.scope !208, !noalias !209
  store <2 x i64> zeroinitializer, ptr %next.gep98, align 8, !tbaa !97, !alias.scope !207
  store <2 x i64> zeroinitializer, ptr %i.dc, align 8, !tbaa !97, !alias.scope !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.i.preheader101

.lr.ph.i.i.i.i.i.i.preheader101:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %vector.memcheck ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader101, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader101 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader101 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.df = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !97, !alias.scope !206
  store i64 %i.df, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !97, !alias.scope !205
  store i64 0, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !97, !alias.scope !206
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !199

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.ac
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.ac ], [ %i.cz, %middle.block ], [ %i.dh, %.lr.ph.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i33.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i33.i.i, label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #24
  br label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i"

bb.ae:                                            ; preds = %.noexc27
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body24 unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i, %bb.ab
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dj, %bb.ae ], [ %i.cl, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i ], [ %i.cl, %bb.ab ]
  %i.dl = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.dm = call ptr @__cxa_begin_catch(ptr %i.dl) #25 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.ai unwind label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #27
  unreachable

bb.ai:                                            ; preds = %bb.ag
  unreachable

"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i": ; preds = %bb.ad, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !127
  store ptr %i.di, ptr %i.k, align 8, !tbaa !124
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.dp, ptr %i.l, align 8, !tbaa !201
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit"

"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit": ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", %"_ZNSt6threadC2IZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES6_E3$_0JEvEEOT_DpOT0_.exit.i"
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !121 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i28, label %_ZNSt14_Function_baseD2Ev.exit.i29, label %bb.aj

bb.aj:                                            ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit"
  %i.dr = invoke noundef zeroext i1 %i.dq(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i29 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i29:               ; preds = %bb.aj, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES9_E3$_0EEEvDpOT_.exit"
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.du, null
  br i1 %.not.i1.i, label %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit", label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i29
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit" unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #27
  unreachable

"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev.exit": ; preds = %_ZNSt14_Function_baseD2Ev.exit.i29, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dy = add nuw i64 %.067, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !200

.body21:                                          ; preds = %bb.o, %bb.p
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %.not.i30 = icmp eq ptr %i.dz, null
  br i1 %.not.i30, label %.body, label %bb.an

bb.an:                                            ; preds = %.body21
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %.body unwind label %bb.ao     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #27
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.r, %bb.x
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i, %bb.af
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.dk, %bb.af ], [ %i.ba, %bb.v ], [ %i.ba, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #25
  br label %.body

.body:                                            ; preds = %bb.an, %.body21, %bb.k, %bb.j, %.body24
  %.pn = phi { ptr, i32 } [ %eh.lpad-body25, %.body24 ], [ %i.u, %bb.j ], [ %i.ac, %bb.an ], [ %i.u, %bb.k ], [ %i.ac, %.body21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %.body ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25
  call void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) #25
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEEC2Em(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = add i64 %1, 1                            ; 7 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = icmp ugt i64 %i.d, 22606304011898960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br i1 %i.g, label %.noexc.i, label %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #26
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.h = mul nuw nsw i64 %i.d, 408
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc3 unwind label %bb.b    ; 13 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i
  store ptr %i.i, ptr %i.f, align 8, !tbaa !135
  %i.j = getelementptr inbounds nuw [408 x i8], ptr %i.i, i64 %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.j, ptr %i.k, align 8, !tbaa !213
  %lcmp.mod.not = trunc i64 %i.d to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc3
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.l, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.m, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.q, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store ptr %i.r, ptr %i.o, align 8, !tbaa !112
  store i64 250, ptr %i.p, align 8, !tbaa !115
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 408 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc3
  %.lcssa.unr = phi ptr [ poison, %.noexc3 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.i, %.noexc3 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.d, %.noexc3 ], [ %1, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.u = icmp eq i64 %1, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 19 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.013.i.i.i.i.i.i, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.v, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.w, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.aa, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !112
  store i64 250, ptr %i.z, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 408
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.ad, i8 0, i64 392, i1 false)
  store i32 6, ptr %i.ae, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 432
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.af, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 504
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 520
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 528
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.aj, align 8, !tbaa !114
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 536
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !112
  store i64 250, ptr %i.ai, align 8, !tbaa !115
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 800
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nsw i64 %.01012.i.i.i.i.i.i, -2     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 816 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !212

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.an, %.lr.ph.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.ap, align 8, !tbaa !215
  ret void

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN6spdlog7details9async_msgESaIS2_EEC2EmRKS3_.exit.i.i, %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #25
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #25
  resume { ptr, i32 } %i.aq
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN6spdlog7details11thread_poolC1EmmSt8functionIFvvEES4_EN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !6

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !97
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details19mpmc_blocking_queueINS0_9async_msgEED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt6vectorIN6spdlog7details9async_msgESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details11thread_poolC2EmmSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.37", align 8  ; 11 uses
  %5 = alloca %"class.std::function.37", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  store ptr %i.c, ptr %i.a, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !126
  store ptr %i.e, ptr %i.f, align 8, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit

_ZNSt8functionIFvvEEC2EOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_0
