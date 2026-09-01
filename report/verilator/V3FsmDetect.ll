Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3FsmDetect?download=true
inline.NumInlined: 5729
inline.NumDeleted: 2094
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_120FsmRegisterCandidateC2ERKS0_:bb.a
  %i.ap = load ptr, ptr %.019.i.i.i.i.i, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 32
  invoke void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.as)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.au = load ptr, ptr %.019.i.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ae
  br i1 %i.av, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.aw = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #27
  br label %.body.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.bc, %.val11.i12
  br i1 %.not.i.i.i.i.i14, label %.loopexit, label %.lr.ph.i.i.i.i.i13, !llvm.loop !538

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.g, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.be, %bb.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.at, %bb.g ]
  %i.bf = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bf) #26 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_115FsmResetArcDescEEvT_S3_(ptr noundef %i.aa, ptr noundef nonnull %.019.i.i.i.i.i)
  invoke void @__cxa_rethrow() #30
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %.body.i.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #28
  unreachable

bb.l:                                             ; preds = %.body.i.i.i.i.i
  unreachable

.body.i:                                          ; preds = %bb.j
  %.val12.i = load ptr, ptr %i.r, align 8, !tbaa !247 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val12.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.m

bb.m:                                             ; preds = %.body.i
  %.val13.i = load ptr, ptr %i.ad, align 8, !tbaa !232
  %i.bk = ptrtoint ptr %.val13.i to i64
  %i.bl = ptrtoint ptr %.val12.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.val12.i, i64 noundef %i.bm) #27
  br label %.body

.loopexit:                                        ; preds = %bb.h, %.noexc17
  %.0.lcssa.i.i.i.i.i15 = phi ptr [ %i.aa, %.noexc17 ], [ %i.bd, %bb.h ]
  store ptr %.0.lcssa.i.i.i.i.i15, ptr %i.ab, align 8, !tbaa !231
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false)
  ret void

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN12_GLOBAL__N_115FsmResetArcDescEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i16
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.m, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.n ], [ %i.bh, %bb.m ], [ %i.bh, %.body.i ]
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.body
  %.val7 = load ptr, ptr %i.m, align 8
  %i.bq = ptrtoint ptr %.val7 to i64
  %i.br = ptrtoint ptr %.val to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.bs) #27
  br label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit: ; preds = %.body, %bb.o
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9AstAlways8sentreepEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  ret ptr %i.b
}

declare noundef zeroext i1 @_ZNK10AstSenTree7hasEdgeEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !189
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 369
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstCase5exprpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_116FsmDetectVisitor22RegisterAlwaysAnalyzer22buildOneBlockCandidateEP9AstAlwaysP11AstVarScopeP11AstNodeExprRNS_20FsmRegisterCandidateE(ptr %.0.val, ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) initializes((0, 40), (48, 56), (64, 73), (104, 107)) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.80", align 16   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %"class.(anonymous namespace)::FsmStateValue", align 8 ; 17 uses
  store ptr %.0.val, ptr %3, align 8, !tbaa !256
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !257
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !258
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !259
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.e, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !190
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val48 = load ptr, ptr %i.h, align 8, !tbaa !190
  call fastcc void @_ZN12_GLOBAL__N_116FsmDetectVisitor15describeSenTreeEP10AstSenTree(ptr dead_on_unwind noalias writable align 8 %4, ptr %.val48)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !185  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.m = load <2 x ptr>, ptr %4, align 16, !tbaa !410
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !410
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !187
  store ptr %i.o, ptr %i.k, align 8, !tbaa !187
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.r) #27
  br label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_116FsmDetectVisitor17describeResetCondEP11AstNodeExpr.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.s, align 8, !tbaa !189
  %i.t = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 369
  br i1 %i.t, label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit.i, label %_ZN12_GLOBAL__N_116FsmDetectVisitor17describeResetCondEP11AstNodeExpr.exit

_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !284
  br label %_ZN12_GLOBAL__N_116FsmDetectVisitor17describeResetCondEP11AstNodeExpr.exit

_ZN12_GLOBAL__N_116FsmDetectVisitor17describeResetCondEP11AstNodeExpr.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit, %bb.c, %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.v, %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit.i ], [ null, %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit ], [ null, %bb.c ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %.sroa.0.0.i, ptr %i.w, align 8, !tbaa !184
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !412
  %i.x = icmp ne ptr %.sroa.0.0.i, null
  %i.y = zext i1 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i8 %i.y, ptr %i.z, align 8, !tbaa !230
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !261
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 260 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 4
  %i.ae = lshr i64 %i.ad, 22
  %i.af = trunc i64 %i.ae to i8
  %i.ag = and i8 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 105
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !263
  %i.ai = load i64, ptr %i.ac, align 4
  %i.aj = lshr i64 %i.ai, 23
  %i.ak = trunc i64 %i.aj to i8
  %i.al = and i8 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 106
  store i8 %i.al, ptr %i.am, align 2, !tbaa !264
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !207 ; 4 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN7AstNode4castI5AstIfS_EEPT_PT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_116FsmDetectVisitor17describeResetCondEP11AstNodeExpr.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ap, align 8, !tbaa !189
  %6 = icmp ne i16 %.sroa.0.0.copyload.i.i.i, 481
  %i.aq = icmp eq ptr %.sroa.0.0.i, null
  %brmerge.not = select i1 %6, i1 true, i1 %i.aq
  br i1 %brmerge.not, label %_ZN7AstNode4castI5AstIfS_EEPT_PT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !184
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !207
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.au = call fastcc noundef zeroext i8 @_ZN12_GLOBAL__N_116FsmDetectVisitor24collectConstStateAssignsEP7AstNodeRP11AstVarScopeRSt6vectorINS_15FsmResetArcDescESaIS7_EE(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.at) ; 2 uses
  %i.av = icmp ne i8 %i.au, 0
  %i.aw = load ptr, ptr %i.a, align 8
  %.not41 = icmp eq ptr %i.aw, %1
  %or.cond = select i1 %i.av, i1 %.not41, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !247 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !231 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.az, %i.ax
  br i1 %.not.i.i51, label %_ZNSt6vectorIN12_GLOBAL__N_115FsmResetArcDescESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i.i.i.i ], [ %i.ax, %bb.f ] ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 68
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !241 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 3
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !10 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bi = add i64 %i.bh, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !242
  %i.bl = icmp sgt i32 %i.bk, 128
  %i.bm = icmp eq i8 %i.bc, 1
  %i.bn = and i1 %i.bm, %i.bl
  br i1 %i.bn, label %bb.i, label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !243 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !246
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #27
  br label %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i

_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i:              ; preds = %bb.g, %bb.j, %bb.i, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bu = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !17
  %i.by = add i64 %i.bx, 1
  tail call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #27
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i.i.i.i: ; preds = %_ZN8V3NumberD2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, %i.az
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115FsmResetArcDescES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !248

_ZSt8_DestroyIPN12_GLOBAL__N_115FsmResetArcDescES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115FsmResetArcDescEEvPT_.exit.i.i.i.i
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !231
  br label %_ZNSt6vectorIN12_GLOBAL__N_115FsmResetArcDescESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_115FsmResetArcDescESaIS1_EE5clearEv.exit: ; preds = %bb.f, %_ZSt8_DestroyIPN12_GLOBAL__N_115FsmResetArcDescES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ca, ptr %5, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ca, ptr noundef nonnull align 1 dereferenceable(6) @.str.505, i64 6, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 6, ptr %i.cb, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.cc, align 2, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef null, i32 noundef 1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_115FsmResetArcDescESaIS1_EE5clearEv.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ca
  br i1 %i.cg, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ch = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ce, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit:        ; preds = %_ZNSt6vectorIN12_GLOBAL__N_115FsmResetArcDescESaIS1_EE5clearEv.exit
  %i.cj = load ptr, ptr %i.ar, align 8, !tbaa !207 ; 2 uses
  %.not42 = icmp eq ptr %i.cj, null
  br i1 %.not42, label %bb.l, label %bb.q, !prof !9

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 710)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cl = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.n unwind label %bb.p       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.521, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ao, ptr noundef nonnull align 8 dereferenceable(112) %i.cl) #30
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.p:                                             ; preds = %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.m, %bb.l
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_113FsmStateValueC2Ev.exit
  %i.co = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_116FsmDetectVisitor26directConstStateAssignNodeEP7AstNodeRP11AstVarScopeRNS_13FsmStateValueE(ptr noundef nonnull %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not43 = icmp ne ptr %i.co, null
  %i.cp = load ptr, ptr %i.a, align 8
  %i.cq = icmp eq ptr %i.cp, %1
  %or.cond46 = select i1 %.not43, i1 %i.cq, i1 false
  br i1 %or.cond46, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_ZNSt6vectorIN12_GLOBAL__N_115FsmResetArcDescESaIS1_EE12emplace_backIJRNS0_13FsmStateValueERKP13AstNodeAssignEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(88) %5, ptr nonnull %i.co)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !241 ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 3
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.cd, align 8, !tbaa !10 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN8V3NumberD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !17
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #27
  br label %_ZN8V3NumberD2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.db = load i32, ptr %i.da, align 8, !tbaa !242
  %i.dc = icmp sgt i32 %i.db, 128
  %i.dd = icmp eq i8 %i.ct, 1
  %i.de = and i1 %i.dd, %i.dc
  br i1 %i.de, label %bb.x, label %_ZN8V3NumberD2Ev.exit.i

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %i.cd, align 8, !tbaa !243 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8V3NumberD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !246
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
end_hunk_0
