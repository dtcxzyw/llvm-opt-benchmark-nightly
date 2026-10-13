Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeGraph?download=true
inline.NumInlined: 3821
inline.NumDeleted: 1895
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode6BcInstESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:bb.a
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader62, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader62 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader62 ] ; 2 uses
  %i.ai = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.ai, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !557

.loopexit11:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit11
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit11 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.022, i64 16 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.al, align 8, !tbaa !239
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  store i32 0, ptr %i.al, align 8, !tbaa !239
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.c
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !241 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.022, i64 24
  %.not.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.am) #17
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc6.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc6.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !298
  %i.ao = getelementptr inbounds nuw i8, ptr %.022, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %i.ap, i64 12, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.022, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.aq, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !558

bb.e:                                             ; preds = %.lr.ph
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.e ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i ]
  %i.at = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #17 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4Luau8Bytecode6BcInstEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.022)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ar, %.loopexit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.av

bb.i:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !239
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.b, align 4, !tbaa !240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !241
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !239  ; 4 uses
  %i.f = icmp ugt i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 5
  %i.h = add i32 %i.e, 4
  %.09.i.i = select i1 %i.g, i32 6, i32 %i.h      ; 2 uses
  %i.i = zext i32 %.09.i.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc unwind label %bb.d     ; 5 uses

.noexc:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !241    ; 6 uses
  %i.m = load i32, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx.i.i = shl nuw nsw i64 %i.n, 2             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc
  %i.p = add nsw i64 %.idx.i.i, -4                ; 2 uses
  %i.q = lshr exact i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.r, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.k, i64 %i.s
  %i.u = getelementptr i8, ptr %i.l, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.v ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.l, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep9, align 4, !tbaa !33
  %wide.load10 = load <4 x i32>, ptr %i.w, align 4, !tbaa !33
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load10, ptr %i.x, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader28

.lr.ph.i.i.i.i.i.i.preheader28:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.t, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader28, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader28 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader28 ] ; 2 uses
  %i.z = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.z, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !560

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.l) #17
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.k, ptr %0, align 8, !tbaa !241
  store i32 %.09.i.i, ptr %i.b, align 4, !tbaa !240
  %.pre = load i32, ptr %i.d, align 8, !tbaa !239
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, %bb.a
  %i.ac = phi ptr [ %i.k, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.ad = phi i32 [ %.pre, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !241   ; 5 uses
  %i.af = zext i32 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.af, 2                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %.not9.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit
  %2 = ptrtoaddr ptr %i.ae to i64
  %3 = ptrtoaddr ptr %i.ac to i64
  %i.ah = add nsw i64 %.idx, -4                   ; 2 uses
  %4 = lshr exact i64 %i.ah, 2
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %min.iters.check13 = icmp ult i64 %i.ah, 44
  %i.ai = sub i64 %2, %3
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check13, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader27, label %vector.ph14

vector.ph14:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec15 = and i64 %5, 9223372036854775800      ; 3 uses
  %i.aj = shl i64 %n.vec15, 2                     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ac, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ae, i64 %i.aj
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph14
  %index17 = phi i64 [ 0, %vector.ph14 ], [ %index.next22, %vector.body16 ] ; 2 uses
  %i.am = shl i64 %index17, 2                     ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.ac, i64 %i.am ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.ae, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load20 = load <4 x i32>, ptr %next.gep19, align 4, !tbaa !33
  %wide.load21 = load <4 x i32>, ptr %i.an, align 4, !tbaa !33
  %i.ao = getelementptr i8, ptr %next.gep18, i64 16
  store <4 x i32> %wide.load20, ptr %next.gep18, align 4, !tbaa !33
  store <4 x i32> %wide.load21, ptr %i.ao, align 4, !tbaa !33
  %index.next22 = add nuw i64 %index17, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next22, %n.vec15
  br i1 %i.ap, label %middle.block23, label %vector.body16, !llvm.loop !561

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %5, %n.vec15
  br i1 %cmp.n24, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.preheader27

.lr.ph.i.i.i.preheader27:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block23
  %.011.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block23 ]
  %.0810.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block23 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader27, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader27 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader27 ] ; 2 uses
  %i.aq = load i32, ptr %.0810.i.i.i, align 4, !tbaa !33
  store i32 %i.aq, ptr %.011.i.i.i, align 4, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ar, %i.ag
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !562

_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block23
  %.pre6 = load i32, ptr %i.d, align 8, !tbaa !239
  br label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit
  %i.at = phi i32 [ %.pre6, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode4BcOpEPS2_ET0_T_S7_S6_.exit.loopexit ], [ 0, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE7reserveEj.exit ]
  store i32 %i.at, ptr %i.a, align 8, !tbaa !239
  ret void

bb.d:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i = load i32, ptr %i.a, align 8, !tbaa !239
  %.not1.i.i = icmp eq i32 %.promoted.i.i, 0
  br i1 %.not1.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !239
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.d
  %i.av = load ptr, ptr %0, align 8, !tbaa !241   ; 2 uses
  %.not.i = icmp eq ptr %i.av, %i.c
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.av) #17
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EED2Ev.exit

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EED2Ev.exit: ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i, %bb.e
  resume { ptr, i32 } %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode5BcPhiESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.019 = phi ptr [ %i.am, %.loopexit ], [ %2, %bb.a ] ; 9 uses
  %.sroa.08.018 = phi ptr [ %i.al, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  invoke void @_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %.019, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08.018)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !298  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !250  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc4.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !295

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc.i.i unwind label %.loopexit.split-lp

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20
          to label %.noexc4.i.i unwind label %.loopexit11

.noexc4.i.i:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc
  %i.k = phi ptr [ null, %.noexc ], [ %i.j, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 8 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !250
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !298
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.019, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !251
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !237  ; 5 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !237  ; 3 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc4.i.i
  %i.q = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.r = ptrtoaddr ptr %i.k to i64
  %i.s = ptrtoaddr ptr %i.p to i64
  %i.t = add i64 %i.s, -4
  %i.u = sub i64 %i.t, %i.q                       ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 28
  %i.x = sub i64 %i.q, %i.r
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ab ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.o, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep44, align 4, !tbaa !33
  %wide.load45 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !33
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load45, ptr %i.ad, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.i.preheader47:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %i.af = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.af, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !564

.loopexit11:                                      ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit11
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit11 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  %.promoted.i.i.i.i = load i32, ptr %i.ai, align 8, !tbaa !239
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  store i32 0, ptr %i.ai, align 8, !tbaa !239
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.c
  %i.aj = load ptr, ptr %.019, align 8, !tbaa !241 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %.not.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.aj) #17
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc4.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc4.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !298
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.al, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !565

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE7reserveEm:bb.a
  %i.s = add i64 %i.r, 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvar.next, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.bj, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.bi, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 10 uses
  %i.t = mul i64 %indvar, 80
  %i.u = add i64 %i.s, %i.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.v = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !598, !noalias !597
  store i64 %i.v, ptr %.012.i.i.i, align 8, !alias.scope !597, !noalias !598
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !239, !alias.scope !597, !noalias !598
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  store i32 4, ptr %i.z, align 4, !tbaa !240, !alias.scope !597, !noalias !598
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 4 uses
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !241, !alias.scope !597, !noalias !598
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !241, !alias.scope !598, !noalias !597 ; 9 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !239, !alias.scope !598, !noalias !597 ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 2    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.d
  %i.ai = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 28
  %i.al = sub i64 %i.ac, %i.u
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.am = shl i64 %n.vec, 2                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ab, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ap ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.ab, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !33, !noalias !598
  %wide.load19 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !33, !noalias !598
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33, !alias.scope !597, !noalias !598
  store <4 x i32> %wide.load19, ptr %i.ar, align 4, !tbaa !33, !alias.scope !597, !noalias !598
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %i.at = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !598
  store i32 %i.at, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !597, !noalias !598
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !596

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  store i32 %i.af, ptr %i.y, align 8, !tbaa !239, !alias.scope !597, !noalias !598
  store i32 0, ptr %i.ae, align 8, !tbaa !239, !alias.scope !598, !noalias !597
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !241, !alias.scope !597, !noalias !598
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ay = load <2 x i32>, ptr %i.ax, align 8, !tbaa !129, !alias.scope !598, !noalias !597
  store <2 x i32> %i.ay, ptr %i.y, align 8, !tbaa !129, !alias.scope !597, !noalias !598
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !241, !alias.scope !598, !noalias !597
  store i32 4, ptr %i.aw, align 4, !tbaa !240, !alias.scope !598, !noalias !597
  store i32 0, ptr %i.ax, align 8, !tbaa !239, !alias.scope !598, !noalias !597
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.d
  %i.az = phi ptr [ %i.ad, %bb.e ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !237, !alias.scope !598, !noalias !597
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !237, !alias.scope !597, !noalias !598
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !251, !alias.scope !598, !noalias !597
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !251, !alias.scope !597, !noalias !598
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false), !alias.scope !598, !noalias !597
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %i.bh, i64 12, i1 false), !alias.scope !599
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.az, %i.ad
  br i1 %.not.i.i8.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.az) #17
  br label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.f, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %.not.i.i.i = icmp eq ptr %i.bi, %i.q
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !218
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split, %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE11_M_allocateEm.exit
  %i.bk = phi ptr [ %.pr, %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.bk, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !269
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #19
  br label %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !218
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.bp, ptr %i.j, align 8, !tbaa !268
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %1
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !269
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN4Luau8Bytecode6BcInstESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau11getOpLengthE10LuauOpcode(i32 noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %switch.tableidx = add i32 %0, -7               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 83
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau11getOpLengthE10LuauOpcode, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE7addInstEv(ptr noundef nonnull align 8 dereferenceable(456) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Bytecode::BcInst", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store i32 0, ptr %1, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store i32 0, ptr %i.d, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store i32 4, ptr %i.e, align 4, !tbaa !240
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !241
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !268  ; 11 uses
  %2 = ptrtoaddr ptr %i.j to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !269
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8
  store i64 %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !239
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 4, ptr %i.p, align 4, !tbaa !240
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 5 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !241
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !241  ; 8 uses
  %3 = ptrtoaddr ptr %i.r to i64
  %.not.i.i.i = icmp eq ptr %i.r, %i.f
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.d, align 8, !tbaa !239  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.t, 2           ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  %i.v = add nsw i64 %.idx.i.i.i, -4              ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.y = sub i64 %2, %3
  %i.z = add i64 %i.y, 23
  %diff.check = icmp ult i64 %i.z, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep8, align 4, !tbaa !33
  %wide.load9 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !33
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load9, ptr %i.af, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %i.ah = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.ah, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !601

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !239
  br label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, %bb.c
  %i.ak = phi i32 [ %.pre.i.i.i, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i ], [ 0, %bb.c ]
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !239
  %.promoted.i.i.i.i = load i32, ptr %i.d, align 8, !tbaa !239
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread.sink.split

bb.d:                                             ; preds = %bb.b
  store ptr %i.r, ptr %i.n, align 8, !tbaa !241
  %i.al = load <2 x i32>, ptr %i.d, align 8, !tbaa !129
  store <2 x i32> %i.al, ptr %i.o, align 8, !tbaa !129
  store ptr %i.f, ptr %i.c, align 8, !tbaa !241
  store i32 4, ptr %i.e, align 4, !tbaa !240
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread.sink.split

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread.sink.split: ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i, %bb.d
  store i32 0, ptr %i.d, align 8, !tbaa !239
  br label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread: ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread.sink.split, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.an = load <2 x ptr>, ptr %i.g, align 8, !tbaa !237
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !237
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !251
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false)
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  store ptr %i.at, ptr %i.i, align 8, !tbaa !268
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(76) %1)
          to label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.h

_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.e
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !250 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !251
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %.pre to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ay) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread, %bb.f, %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.promoted.i.i.i = load i32, ptr %i.d, align 8, !tbaa !239
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i
  store i32 0, ptr %i.d, align 8, !tbaa !239
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !241 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.f
  br i1 %.not.i.i, label %_ZN4Luau8Bytecode6BcInstD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.az) #17
  br label %_ZN4Luau8Bytecode6BcInstD2Ev.exit

_ZN4Luau8Bytecode6BcInstD2Ev.exit:                ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !268
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 80
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = shl i32 %i.bg, 4
  %i.bi = add i32 %i.bh, -14
  ret i32 %i.bi

bb.h:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau8Bytecode6BcInstD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE11addImmInputENS0_5BcRefINS0_6BcInstEEEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !170, !align !198 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !307  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !267
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 4
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !307
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !307
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !266  ; 4 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store i64 0, ptr %i.v, align 4
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcImmESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE20findProducersUpToTopENS0_4BcOpEh:bb.a

bb.f:                                             ; preds = %bb.e
  %.sroa.037.0.extract.trunc = trunc i64 %i.ad to i32 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.sroa.037.0.extract.trunc, ptr %i.aa, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !298
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.s, align 8
  store ptr %i.ac, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #20
          to label %.noexc19 unwind label %.loopexit ; 8 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  store i32 %.sroa.037.0.extract.trunc, ptr %i.aq, align 4, !tbaa !33
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc19
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.af, -4
  %i.at = sub i64 %i.as, %i.ag                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  %i.aw = sub i64 %i.ag, %i.ar
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.ax = shl i64 %n.vec, 2                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ba ; 2 uses
  %next.gep102 = getelementptr i8, ptr %i.ac, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.bb = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep102, align 4, !tbaa !33, !alias.scope !631, !noalias !630
  %wide.load103 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !33, !alias.scope !631, !noalias !630
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33, !alias.scope !630, !noalias !631
  store <4 x i32> %wide.load103, ptr %i.bc, align 4, !tbaa !33, !alias.scope !630, !noalias !631
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader124

.lr.ph.i.i.i.i.i.preheader124:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader124, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader124 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader124 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.be = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !631, !noalias !630
  store i32 %i.be, ptr %.012.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !630, !noalias !631
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !623

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ap, %.noexc19 ], [ %i.ay, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bh, ptr %i.z, align 8, !tbaa !298
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g
  %i.bj = phi ptr [ %i.bh, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.bk = phi ptr [ %i.ap, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ac, %bb.g ] ; 2 uses
  %i.bl = phi ptr [ %i.bi, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.bm = add nuw i8 %.047, 1                     ; 2 uses
  %i.bn = load i8, ptr %i.l, align 4, !tbaa !252
  %i.bo = icmp ult i8 %i.bm, %i.bn
  br i1 %i.bo, label %bb.e, label %._crit_edge, !llvm.loop !624

bb.k:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21, %bb.n, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i, %bb.c
  %i.bp = phi ptr [ %i.bs, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21 ], [ %i.bs, %bb.n ], [ null, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.c ]
  %i.bq = phi ptr [ %i.bt, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21 ], [ %i.bt, %bb.n ], [ null, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.c ]
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit:                                        ; preds = %bb.e, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %i.s, align 8
  store ptr %i.ac, ptr %0, align 8
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit
  %i.bs = phi ptr [ %.promoted43, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bj, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %i.bt = phi ptr [ %.promoted43, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bk, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 10 uses
  %.lcssa40 = phi ptr [ %.promoted, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE7reserveEm.exit ], [ %i.bl, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  store ptr %.lcssa40, ptr %i.s, align 8
  store ptr %i.bt, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bs, %.lcssa40
  br i1 %.not.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !33
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !298
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35

bb.m:                                             ; preds = %._crit_edge
  %i.by = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %bb.n, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc33 unwind label %bb.k

.noexc33:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21: ; preds = %bb.m
  %i.cc = ashr exact i64 %i.ca, 2                 ; 3 uses
  %.sroa.speculated.i.i.i22 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i22, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 2305843009213693951)
  %i.cg = select i1 %i.ce, i64 2305843009213693951, i64 %i.cf ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i23)
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #20
          to label %.noexc34 unwind label %bb.k   ; 8 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i21
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  %i.ck = load i32, ptr %i.bu, align 4, !tbaa !33
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !33
  %.not10.i.i.i.i.i24 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not10.i.i.i.i.i24, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25.preheader

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %.noexc34
  %4 = ptrtoaddr ptr %i.ci to i64
  %i.cl = add i64 %i.by, -4
  %i.cm = sub i64 %i.cl, %i.bz                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check108 = icmp ult i64 %i.cm, 44
  %i.cp = sub i64 %i.bz, %4
  %diff.check106 = icmp ugt i64 %i.cp, -32
  %or.cond122 = or i1 %min.iters.check108, %diff.check106
  br i1 %or.cond122, label %.lr.ph.i.i.i.i.i25.preheader123, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %n.vec110 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cq = shl i64 %n.vec110, 2                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bt, i64 %i.cq
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %i.ct = shl i64 %index112, 2                    ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.ci, i64 %i.ct ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.bt, i64 %i.ct ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.cu = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load115 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !33, !alias.scope !633, !noalias !632
  %wide.load116 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !33, !alias.scope !633, !noalias !632
  %i.cv = getelementptr i8, ptr %next.gep113, i64 16
  store <4 x i32> %wide.load115, ptr %next.gep113, align 4, !tbaa !33, !alias.scope !632, !noalias !633
  store <4 x i32> %wide.load116, ptr %i.cv, align 4, !tbaa !33, !alias.scope !632, !noalias !633
  %index.next117 = add nuw i64 %index112, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.cw, label %middle.block118, label %vector.body111, !llvm.loop !628

middle.block118:                                  ; preds = %vector.body111
  %cmp.n119 = icmp eq i64 %i.co, %n.vec110
  br i1 %cmp.n119, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25.preheader123

.lr.ph.i.i.i.i.i25.preheader123:                  ; preds = %.lr.ph.i.i.i.i.i25.preheader, %middle.block118
  %.012.i.i.i.i.i26.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.cr, %middle.block118 ]
  %.0911.i.i.i.i.i27.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.cs, %middle.block118 ]
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.preheader123, %.lr.ph.i.i.i.i.i25
  %.012.i.i.i.i.i26 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i25 ], [ %.012.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i25.preheader123 ] ; 2 uses
  %.0911.i.i.i.i.i27 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i25 ], [ %.0911.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i25.preheader123 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.cx = load i32, ptr %.0911.i.i.i.i.i27, align 4, !tbaa !33, !alias.scope !633, !noalias !632
  store i32 %i.cx, ptr %.012.i.i.i.i.i26, align 4, !tbaa !33, !alias.scope !632, !noalias !633
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i27, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i26, i64 4 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.cy, %i.bs
  br i1 %.not.i.i.i.i.i28, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25, !llvm.loop !629

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29: ; preds = %.lr.ph.i.i.i.i.i25, %middle.block118, %.noexc34
  %.0.lcssa.i.i.i.i.i30 = phi ptr [ %i.ci, %.noexc34 ], [ %i.cr, %middle.block118 ], [ %i.cz, %.lr.ph.i.i.i.i.i25 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i30, i64 4
  %.not.i23.i.i31 = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i31, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.ca) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32: ; preds = %bb.o, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29
  store ptr %i.ci, ptr %0, align 8, !tbaa !250
  store ptr %i.da, ptr %i.bv, align 8, !tbaa !298
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.db, ptr %i.s, align 8, !tbaa !251
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit35: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32, %bb.l
  store i32 0, ptr %i.bu, align 8, !tbaa !33
  store i8 -1, ptr %i.l, align 4, !tbaa !252
  ret void

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %i.dc = phi ptr [ %i.bp, %bb.k ], [ %i.ab, %.loopexit ], [ %i.aa, %.loopexit.split-lp ]
  %i.dd = phi ptr [ %i.bq, %bb.k ], [ %i.ac, %.loopexit ], [ %i.ac, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.br, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i36 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dg) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit: ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE9applyCallERNS3_14BlockProducersENS0_4BcOpEhi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !318  ; 2 uses
  %.not3537 = icmp eq ptr %i.b, null
  br i1 %.not3537, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !318  ; 2 uses
  %.not3639 = icmp eq ptr %i.g, null
  br i1 %.not3639, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br label %bb.o

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.032.038 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.032.1, %bb.n ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.038, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !322   ; 2 uses
  %.not19 = icmp ult i8 %i.k, %3
  br i1 %.not19, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !tbaa !320  ; 3 uses
  %i.m = zext i8 %i.k to i64
  %i.n = urem i64 %i.m, %i.l                      ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !319    ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !244  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.r, %bb.d ] ; 4 uses
  %i.r = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %.sroa.032.038
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i, label %bb.d, !llvm.loop !634

_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq ptr %.0.i.i.i.i, %i.q
  %i.t = load ptr, ptr %.sroa.032.038, align 8, !tbaa !245 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null        ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  %i.w = zext i8 %i.v to i64
  %i.x = urem i64 %i.w, %i.l                      ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.x, %i.n
  br i1 %.not9.i.i.i.i.i, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x
  store ptr %i.q, ptr %i.y, align 8, !tbaa !244
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %bb.e
  %i.z = icmp eq ptr %i.a, %i.q
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !318
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.p, align 8, !tbaa !244
  br label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit

bb.j:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33
  %i.ac = zext i8 %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.l                    ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ad, %i.n
  br i1 %.not17.i.i.i.i, label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ad
  store ptr %.0.i.i.i.i, ptr %i.ae, align 8, !tbaa !244
  br label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit: ; preds = %bb.f, %bb.i, %bb.j, %bb.k, %bb.l
  %i.af = load ptr, ptr %.sroa.032.038, align 8, !tbaa !245 ; 2 uses
  store ptr %i.af, ptr %.0.i.i.i.i, align 8, !tbaa !245
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.038, i64 noundef 16) #19
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !323
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !323
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %.sroa.032.038, align 8, !tbaa !245
  br label %bb.n

end_hunk_2
begin_hunk_3_@_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE21readVariableRecursiveENS0_4BcOpEh:bb.a
  %i.fw = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20 ; 5 uses
  store ptr null, ptr %i.fw, align 8, !tbaa !245
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i8 %2, ptr %i.fx, align 8, !tbaa !322
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.fy, align 4
  %i.fz = invoke ptr @_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ff, i64 noundef %i.fi, i64 noundef %i.eb, ptr noundef nonnull %i.fw, i64 noundef 1)
          to label %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEEixERS8_.exit80 unwind label %_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i77

_ZNSt10_HashtableIhSt4pairIKhN4Luau8Bytecode4BcOpEESaIS5_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i77: ; preds = %.loopexit.i.i76
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEEixERS8_.exit80: ; preds = %bb.z, %bb.y, %.loopexit.i.i76
  %.pn.i.i78 = phi ptr [ %i.fz, %.loopexit.i.i76 ], [ %i.fm, %bb.y ], [ %i.fr, %bb.z ]
  %.1.i.i79 = getelementptr inbounds nuw i8, ptr %.pn.i.i78, i64 12
  store i32 %i.ex, ptr %.1.i.i79, align 4, !tbaa !33
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEEixERS8_.exit80, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEEixERS8_.exit56, %bb.k, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEEixERS8_.exit32
  %.sroa.0101.0 = phi i32 [ %i.br, %bb.k ], [ %.sroa.0.0.i, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEEixERS8_.exit56 ], [ %i.ex, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEEixERS8_.exit80 ], [ %i.t, %_ZNSt13unordered_mapIhN4Luau8Bytecode4BcOpESt4hashIhESt8equal_toIhESaISt4pairIKhS2_EEEixERS8_.exit32 ]
  ret i32 %.sroa.0101.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode19BytecodeGraphParserINS0_9BcVmConstEE7makePhiENS0_4BcOpEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !170, !align !198
  %i.b = tail call i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addPhiEv(ptr noundef nonnull align 8 dereferenceable(456) %i.a) ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !170, !align !198 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 400 ; 2 uses
  %.0.insert.ext.i.i.i = zext i32 %i.b to i64     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.f = load i64, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = urem i64 %.0.insert.ext.i.i.i, %i.f      ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !245  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !247
  %i.o = icmp eq i64 %i.n, %.0.insert.ext.i.i.i
  %i.p = load i32, ptr %i.l, align 8
  %i.q = icmp eq i32 %i.b, %i.p
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.t = icmp eq i64 %i.z, %.0.insert.ext.i.i.i
  %i.u = load i32, ptr %i.s, align 8
  %i.v = icmp eq i32 %i.b, %i.u
  %i.w = select i1 %i.t, i1 %i.v, i1 false
  br i1 %i.w, label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.020.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.k, %bb.b ]
  %i.x = load ptr, ptr %.020.i.i.i, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !247  ; 2 uses
  %i.aa = urem i64 %i.z, %i.f
  %.not19.i.i.i = icmp eq i64 %i.aa, %i.g
  br i1 %.not19.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.d
  br label %.loopexit.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %bb.a
  %i.ab = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 5 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !245
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.b, ptr %i.ac, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i8 0, ptr %i.ad, align 4, !tbaa !249
  %i.ae = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.g, i64 noundef %.0.insert.ext.i.i.i, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

common.resume:                                    ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i
  %.sink = phi ptr [ %i.bq, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ], [ %i.ab, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ], [ %i.af, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 24) #19
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_hESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.loopexit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit: ; preds = %bb.c, %bb.b, %.loopexit.i
  %.pn.i = phi ptr [ %i.ae, %.loopexit.i ], [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12
  store i8 %2, ptr %.1.i, align 1, !tbaa !33
  %i.ag = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !170, !align !198
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = lshr i32 %1, 4
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !200
  %i.al = getelementptr inbounds nuw [136 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.b, ptr %i.ao, align 4, !tbaa !33
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am) #17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !217
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !217
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load i64, ptr %i.at, align 8, !tbaa !178 ; 2 uses
  %i.av = urem i64 %.0.insert.ext.i.i.i, %i.au    ; 3 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !177
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i4, label %.loopexit.i10, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !245 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !247
  %i.bd = icmp eq i64 %i.bc, %.0.insert.ext.i.i.i
  %i.be = load i32, ptr %i.ba, align 8
  %i.bf = icmp eq i32 %i.b, %i.be
  %i.bg = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %i.bg, label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_S3_ESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit, label %.lr.ph.i.i.i5

bb.f:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bi = icmp eq i64 %i.bo, %.0.insert.ext.i.i.i
  %i.bj = load i32, ptr %i.bh, align 8
  %i.bk = icmp eq i32 %i.b, %i.bj
  %i.bl = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %i.bl, label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_S3_ESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit, label %.lr.ph.i.i.i5, !llvm.loop !16

.lr.ph.i.i.i5:                                    ; preds = %bb.e, %bb.f
  %.020.i.i.i6 = phi ptr [ %i.bm, %bb.f ], [ %i.az, %bb.e ]
  %i.bm = load ptr, ptr %.020.i.i.i6, align 8, !tbaa !245 ; 5 uses
  %.not18.i.i.i7 = icmp eq ptr %i.bm, null
  br i1 %.not18.i.i.i7, label %.loopexit.i10, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !247 ; 2 uses
  %i.bp = urem i64 %i.bo, %i.au
  %.not19.i.i.i8 = icmp eq i64 %i.bp, %i.av
  br i1 %.not19.i.i.i8, label %bb.f, label %..loopexit_crit_edge21.i.i.i9, !llvm.loop !16

..loopexit_crit_edge21.i.i.i9:                    ; preds = %bb.g
  br label %.loopexit.i10, !llvm.loop !16

.loopexit.i10:                                    ; preds = %.lr.ph.i.i.i5, %..loopexit_crit_edge21.i.i.i9, %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_hESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit
  %i.bq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 5 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !245
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.b, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bs, align 4
  %i.bt = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.as, i64 noundef %i.av, i64 noundef %.0.insert.ext.i.i.i, ptr noundef nonnull %i.bq, i64 noundef 1)
          to label %_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_S3_ESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit unwind label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.loopexit.i10
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_S3_ESaIS6_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit: ; preds = %bb.f, %bb.e, %.loopexit.i10
  %.pn.i11 = phi ptr [ %i.bt, %.loopexit.i10 ], [ %i.az, %bb.e ], [ %i.bm, %bb.f ]
  %.1.i12 = getelementptr inbounds nuw i8, ptr %.pn.i11, i64 12
  store i32 %1, ptr %.1.i12, align 4, !tbaa !33
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE6addPhiEv(ptr noundef nonnull align 8 dereferenceable(456) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Bytecode::BcPhi", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !240
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !241
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !264  ; 10 uses
  %2 = ptrtoaddr ptr %i.g to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !265
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !239
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 4, ptr %i.k, align 4, !tbaa !240
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !241
  %i.m = load ptr, ptr %1, align 8, !tbaa !241    ; 8 uses
  %3 = ptrtoaddr ptr %i.m to i64
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.b, align 8, !tbaa !239  ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.o, 2           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  %i.q = add nsw i64 %.idx.i.i.i, -4              ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.t = sub i64 %2, %3
  %i.u = add i64 %i.t, 15
  %diff.check = icmp ult i64 %i.u, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.l, i64 %i.v
  %i.x = getelementptr i8, ptr %i.m, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.y ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.m, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep8, align 4, !tbaa !33
  %wide.load9 = load <4 x i32>, ptr %i.z, align 4, !tbaa !33
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load9, ptr %i.aa, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.ac, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !669

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !239
  br label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i, %bb.c
  %i.af = phi i32 [ %.pre.i.i.i, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i ], [ 0, %bb.c ]
  store i32 %i.af, ptr %i.j, align 8, !tbaa !239
  %.promoted.i.i.i.i = load i32, ptr %i.b, align 8, !tbaa !239
  %.not1.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread, label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread.sink.split

bb.d:                                             ; preds = %bb.b
  store ptr %i.m, ptr %i.g, align 8, !tbaa !241
  %i.ag = load <2 x i32>, ptr %i.b, align 8, !tbaa !129
  store <2 x i32> %i.ag, ptr %i.j, align 8, !tbaa !129
  store ptr %i.d, ptr %1, align 8, !tbaa !241
  store i32 4, ptr %i.c, align 4, !tbaa !240
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread.sink.split

_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread.sink.split: ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i, %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !239
  br label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread

_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread: ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread.sink.split, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ai = load <2 x ptr>, ptr %i.e, align 8, !tbaa !237
  store <2 x ptr> %i.ai, ptr %i.ah, align 8, !tbaa !237
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !251
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.an, ptr %i.f, align 8, !tbaa !264
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.h

_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.e
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !250  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !251
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.pr to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.as) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread, %bb.f, %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %.promoted.i.i.i = load i32, ptr %i.b, align 8, !tbaa !239
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i
  store i32 0, ptr %i.b, align 8, !tbaa !239
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EED2Ev.exit.i
  %i.at = load ptr, ptr %1, align 8, !tbaa !241   ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i.i, label %_ZN4Luau8Bytecode5BcPhiD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.at) #17
  br label %_ZN4Luau8Bytecode5BcPhiD2Ev.exit

_ZN4Luau8Bytecode5BcPhiD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !264
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 56
  %i.ba = trunc i64 %i.az to i32
  %i.bb = shl i32 %i.ba, 4
  %i.bc = add i32 %i.bb, -12
  ret i32 %i.bc

bb.h:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau8Bytecode5BcPhiD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !263    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !239
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 4, ptr %i.t, align 4, !tbaa !240
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !241
  %i.v = load ptr, ptr %2, align 8, !tbaa !241    ; 8 uses
  %3 = ptrtoaddr ptr %i.v to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !239  ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.z, 2             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.ab = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ae = add i64 %i.q, %i.m
  %i.af = add i64 %3, %i.e
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = add i64 %i.ag, 15
  %diff.check = icmp ult i64 %i.ah, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  %i.ai = shl i64 %n.vec, 2                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.u, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.al ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.v, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !33
  %wide.load64 = load <4 x i32>, ptr %i.am, align 4, !tbaa !33
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load64, ptr %i.an, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader107

.lr.ph.i.i.i.i.i.i.preheader107:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader107, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %i.ap = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.ap, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !671

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  store i32 %i.y, ptr %i.s, align 8, !tbaa !239
  store i32 0, ptr %i.x, align 8, !tbaa !239
  br label %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.r, align 8, !tbaa !241
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = load <2 x i32>, ptr %i.at, align 8, !tbaa !129
  store <2 x i32> %i.au, ptr %i.s, align 8, !tbaa !129
  store ptr %i.w, ptr %2, align 8, !tbaa !241
  store i32 4, ptr %i.as, align 4, !tbaa !240
  store i32 0, ptr %i.at, align 8, !tbaa !239
  br label %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit

_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit:              ; preds = %bb.c, %.lr.ph.preheader.i.i.i, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !237
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !tbaa !237
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !251
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau8Bytecode5BcPhiC2EOS1_.exit
  %i.bb = add i64 %i.q, 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvar.next, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.cn, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.cm, %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 9 uses
  %i.bc = mul i64 %indvar, 56
  %i.bd = add i64 %i.bb, %i.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 3 uses
  store i32 0, ptr %i.be, align 8, !tbaa !239, !alias.scope !683, !noalias !684
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  store i32 4, ptr %i.bf, align 4, !tbaa !240, !alias.scope !683, !noalias !684
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 4 uses
  store ptr %i.bg, ptr %.012.i.i.i, align 8, !tbaa !241, !alias.scope !683, !noalias !684
  %i.bh = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !241, !alias.scope !684, !noalias !683 ; 9 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 4 uses
  %.not.i.i.i.i.i.i16 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i.i.i.i.i16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !239, !alias.scope !684, !noalias !683 ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bm, 2    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.e
  %i.bo = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.bp = lshr exact i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check69 = icmp ult i64 %i.bo, 28
  %i.br = sub i64 %i.bi, %i.bd
  %diff.check67 = icmp ugt i64 %i.br, -32
  %or.cond = select i1 %min.iters.check69, i1 true, i1 %diff.check67
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, label %vector.ph70

vector.ph70:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec71 = and i64 %i.bq, 9223372036854775800   ; 3 uses
  %i.bs = shl i64 %n.vec71, 2                     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bh, i64 %i.bs
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next78, %vector.body72 ] ; 2 uses
  %i.bv = shl i64 %index73, 2                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.bg, i64 %i.bv ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.bh, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !33, !noalias !684
  %wide.load77 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !33, !noalias !684
  %i.bx = getelementptr i8, ptr %next.gep74, i64 16
  store <4 x i32> %wide.load76, ptr %next.gep74, align 4, !tbaa !33, !alias.scope !683, !noalias !684
  store <4 x i32> %wide.load77, ptr %i.bx, align 4, !tbaa !33, !alias.scope !683, !noalias !684
  %index.next78 = add nuw i64 %index73, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.by, label %middle.block79, label %vector.body72, !llvm.loop !675

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.bq, %n.vec71
  br i1 %cmp.n80, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block79
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block79 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block79 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %i.bz = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !684
  store i32 %i.bz, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !683, !noalias !684
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.bn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !676

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block79
  store i32 %i.bl, ptr %i.be, align 8, !tbaa !239, !alias.scope !683, !noalias !684
  store i32 0, ptr %i.bk, align 8, !tbaa !239, !alias.scope !684, !noalias !683
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.bh, ptr %.012.i.i.i, align 8, !tbaa !241, !alias.scope !683, !noalias !684
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ce = load <2 x i32>, ptr %i.cd, align 8, !tbaa !129, !alias.scope !684, !noalias !683
  store <2 x i32> %i.ce, ptr %i.be, align 8, !tbaa !129, !alias.scope !683, !noalias !684
  store ptr %i.bj, ptr %.0911.i.i.i, align 8, !tbaa !241, !alias.scope !684, !noalias !683
  store i32 4, ptr %i.cc, align 4, !tbaa !240, !alias.scope !684, !noalias !683
  store i32 0, ptr %i.cd, align 8, !tbaa !239, !alias.scope !684, !noalias !683
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.e
  %i.cf = phi ptr [ %i.bj, %bb.f ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.bh, %bb.e ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %i.ch, align 8, !tbaa !237, !alias.scope !684, !noalias !683
  store <2 x ptr> %i.ci, ptr %i.cg, align 8, !tbaa !237, !alias.scope !683, !noalias !684
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !251, !alias.scope !684, !noalias !683
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !251, !alias.scope !683, !noalias !684
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false), !alias.scope !684, !noalias !683
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cf, %i.bj
  br i1 %.not.i.i8.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.cf) #17
  br label %_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Luau8Bytecode5BcPhiES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.g, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cm, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode5BcPhiESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !677

end_hunk_3
begin_hunk_4_@_ZN4Luau8Bytecode10BcFunctionINS0_9BcVmConstEE9recordUseENS0_4BcOpES4_:bb.a
  %cmp.n49 = icmp eq i64 %i.ad, %n.vec40
  br i1 %cmp.n49, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.preheader52:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block48
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block48 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block48 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader52 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.al = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !700, !noalias !699
  store i32 %i.al, ptr %.012.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !699, !noalias !700
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !693

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block48, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block48 ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !251
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ar) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.y, ptr %i.g, align 8, !tbaa !250
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !298
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  store ptr %i.as, ptr %i.j, align 8, !tbaa !251
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = lshr i32 %1, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !263
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.aw, i64 %i.av ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !298 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !251
  %.not.i6 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %2, ptr %i.ba, align 4, !tbaa !33
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !298
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.be, ptr %i.az, align 8, !tbaa !298
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !250 ; 7 uses
  %i.bg = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775804
  br i1 %i.bj, label %bb.j, label %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7: ; preds = %bb.i
  %i.bk = ashr exact i64 %i.bi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i8, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 2305843009213693951)
  %i.bo = select i1 %i.bm, i64 2305843009213693951, i64 %i.bn ; 3 uses
  %.not.i.i.i9 = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i9)
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #20 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  store i32 %2, ptr %i.br, align 4, !tbaa !33
  %.not10.i.i.i.i.i10 = icmp eq ptr %i.bf, %i.ba
  br i1 %.not10.i.i.i.i.i10, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11.preheader

.lr.ph.i.i.i.i.i11.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7
  %i.bs = add i64 %i.bg, -4
  %i.bt = sub i64 %i.bs, %i.bh                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 2
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bt, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i11.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i11.preheader
  %n.vec = and i64 %i.bv, 9223372036854775800     ; 3 uses
  %i.bw = shl i64 %n.vec, 2                       ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bq, i64 %i.bw  ; 2 uses
  %i.by = getelementptr i8, ptr %i.bf, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.bz ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.bf, i64 %i.bz ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.ca = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !33, !alias.scope !702, !noalias !701
  %wide.load35 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !33, !alias.scope !702, !noalias !701
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33, !alias.scope !701, !noalias !702
  store <4 x i32> %wide.load35, ptr %i.cb, align 4, !tbaa !33, !alias.scope !701, !noalias !702
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11.preheader53

.lr.ph.i.i.i.i.i11.preheader53:                   ; preds = %.lr.ph.i.i.i.i.i11.preheader, %middle.block
  %.012.i.i.i.i.i12.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i11.preheader ], [ %i.bx, %middle.block ]
  %.0911.i.i.i.i.i13.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i11.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.lr.ph.i.i.i.i.i11.preheader53, %.lr.ph.i.i.i.i.i11
  %.012.i.i.i.i.i12 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i11 ], [ %.012.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i11.preheader53 ] ; 2 uses
  %.0911.i.i.i.i.i13 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i11 ], [ %.0911.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i11.preheader53 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.cd = load i32, ptr %.0911.i.i.i.i.i13, align 4, !tbaa !33, !alias.scope !702, !noalias !701
  store i32 %i.cd, ptr %.012.i.i.i.i.i12, align 4, !tbaa !33, !alias.scope !701, !noalias !702
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i13, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i12, i64 4 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.ce, %i.ba
  br i1 %.not.i.i.i.i.i14, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11, !llvm.loop !698

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15: ; preds = %.lr.ph.i.i.i.i.i11, %middle.block, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7
  %.0.lcssa.i.i.i.i.i16 = phi ptr [ %i.bq, %_ZNKSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE12_M_check_lenEmPKc.exit.i.i7 ], [ %i.bx, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i11 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i16, i64 4
  %.not.i23.i.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i.i17, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !251
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cj) #19
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18: ; preds = %bb.k, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i15
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !250
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !298
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.ck, ptr %i.bb, align 8, !tbaa !251
  br label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i18, %bb.h, %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(76) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !218    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !239
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 4, ptr %i.w, align 4, !tbaa !240
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !241
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !241  ; 8 uses
  %3 = ptrtoaddr ptr %i.y to i64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !239 ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx.i.i = shl nuw nsw i64 %i.ac, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.ae = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ah = add i64 %i.q, %i.m
  %i.ai = add i64 %3, %i.e
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = add i64 %i.aj, 23
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %i.al
  %i.an = getelementptr i8, ptr %i.y, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ao ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.y, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !33
  %wide.load64 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !33
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load64, ptr %i.aq, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !703

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader107

.lr.ph.i.i.i.i.i.i.preheader107:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader107, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader107 ] ; 2 uses
  %i.as = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.as, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !704

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  store i32 %i.ab, ptr %i.v, align 8, !tbaa !239
  store i32 0, ptr %i.aa, align 8, !tbaa !239
  br label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.y, ptr %i.t, align 8, !tbaa !241
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 8, !tbaa !129
  store <2 x i32> %i.ax, ptr %i.v, align 8, !tbaa !129
  store ptr %i.z, ptr %i.u, align 8, !tbaa !241
  store i32 4, ptr %i.av, align 4, !tbaa !240
  store i32 0, ptr %i.aw, align 8, !tbaa !239
  br label %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit

_ZN4Luau8Bytecode6BcInstC2EOS1_.exit:             ; preds = %bb.c, %.lr.ph.preheader.i.i.i, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !237
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !237
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !251
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.be, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i64 12, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau8Bytecode6BcInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau8Bytecode6BcInstC2EOS1_.exit
  %i.bg = add i64 %i.q, 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvar.next, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.cx, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.cw, %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 10 uses
  %i.bh = mul i64 %indvar, 80
  %i.bi = add i64 %i.bg, %i.bh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.bj = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !716, !noalias !715
  store i64 %i.bj, ptr %.012.i.i.i, align 8, !alias.scope !715, !noalias !716
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !239, !alias.scope !715, !noalias !716
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  store i32 4, ptr %i.bn, align 4, !tbaa !240, !alias.scope !715, !noalias !716
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 4 uses
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !241, !alias.scope !715, !noalias !716
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !241, !alias.scope !716, !noalias !715 ; 9 uses
  %i.bq = ptrtoaddr ptr %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 4 uses
  %.not.i.i.i.i.i.i16 = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i.i.i.i16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !239, !alias.scope !716, !noalias !715 ; 3 uses
  %i.bu = zext i32 %i.bt to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bu, 2    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.e
  %i.bw = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.bx = lshr exact i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check69 = icmp ult i64 %i.bw, 28
  %i.bz = sub i64 %i.bq, %i.bi
  %diff.check67 = icmp ugt i64 %i.bz, -32
  %or.cond = select i1 %min.iters.check69, i1 true, i1 %diff.check67
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, label %vector.ph70

vector.ph70:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec71 = and i64 %i.by, 9223372036854775800   ; 3 uses
  %i.ca = shl i64 %n.vec71, 2                     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bo, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bp, i64 %i.ca
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next78, %vector.body72 ] ; 2 uses
  %i.cd = shl i64 %index73, 2                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.bo, i64 %i.cd ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.bp, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !33, !noalias !716
  %wide.load77 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !33, !noalias !716
  %i.cf = getelementptr i8, ptr %next.gep74, i64 16
  store <4 x i32> %wide.load76, ptr %next.gep74, align 4, !tbaa !33, !alias.scope !715, !noalias !716
  store <4 x i32> %wide.load77, ptr %i.cf, align 4, !tbaa !33, !alias.scope !715, !noalias !716
  %index.next78 = add nuw i64 %index73, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.cg, label %middle.block79, label %vector.body72, !llvm.loop !708

middle.block79:                                   ; preds = %vector.body72
  %cmp.n80 = icmp eq i64 %i.by, %n.vec71
  br i1 %cmp.n80, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block79
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block79 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block79 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader105 ] ; 2 uses
  %i.ch = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !noalias !716
  store i32 %i.ch, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !33, !alias.scope !715, !noalias !716
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.bv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !709

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block79
  store i32 %i.bt, ptr %i.bm, align 8, !tbaa !239, !alias.scope !715, !noalias !716
  store i32 0, ptr %i.bs, align 8, !tbaa !239, !alias.scope !716, !noalias !715
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !241, !alias.scope !715, !noalias !716
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.cm = load <2 x i32>, ptr %i.cl, align 8, !tbaa !129, !alias.scope !716, !noalias !715
  store <2 x i32> %i.cm, ptr %i.bm, align 8, !tbaa !129, !alias.scope !715, !noalias !716
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !241, !alias.scope !716, !noalias !715
  store i32 4, ptr %i.ck, align 4, !tbaa !240, !alias.scope !716, !noalias !715
  store i32 0, ptr %i.cl, align 8, !tbaa !239, !alias.scope !716, !noalias !715
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.e
  %i.cn = phi ptr [ %i.br, %bb.f ], [ %i.bp, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.bp, %bb.e ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !237, !alias.scope !716, !noalias !715
  store <2 x ptr> %i.cq, ptr %i.co, align 8, !tbaa !237, !alias.scope !715, !noalias !716
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !251, !alias.scope !716, !noalias !715
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !251, !alias.scope !715, !noalias !716
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false), !alias.scope !716, !noalias !715
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cu, ptr noundef nonnull align 8 dereferenceable(12) %i.cv, i64 12, i1 false), !alias.scope !717
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cn, %i.br
  br i1 %.not.i.i8.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau8Bytecode6BcInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE5clearEv.exit.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !129
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !754

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !129
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !755

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !159   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !129   ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !129
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !129
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !756

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !129
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !757

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !296

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !129
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !129
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !296

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !129
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !129
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #19
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !159
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !158
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !160
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode12BcInstHelperINS0_9BcVmConstENS0_6BcJumpIS2_EEE7setBcOpEjNS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221, !nonnull !170, !align !198
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !218  ; 2 uses
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %i.f ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !239  ; 3 uses
  %.not = icmp ult i32 %1, %i.k
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %1, 1                            ; 6 uses
  %i.m = icmp ugt i32 %i.l, %i.k
  br i1 %i.m, label %bb.c, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !240  ; 3 uses
  %i.p = icmp ugt i32 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i32 %i.o, 1
  %i.r = add i32 %i.q, %i.o                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %i.l
  %i.t = add i32 %1, 5
  %.09.i.i = select i1 %i.s, i32 %i.r, i32 %i.t   ; 2 uses
  %i.u = zext i32 %.09.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21 ; 5 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !241  ; 7 uses
  %i.y = load i32, ptr %i.j, align 8, !tbaa !239  ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.z, 2             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %3 = ptrtoaddr ptr %i.x to i64
  %4 = ptrtoaddr ptr %i.w to i64
  %i.ab = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %5 = lshr exact i64 %i.ab, 2
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 44
  %i.ac = sub i64 %3, %4
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %6, 9223372036854775800        ; 3 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep155, align 4, !tbaa !33
  %wide.load156 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !33
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !33
  store <4 x i32> %wide.load156, ptr %i.ai, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !758

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader199

.lr.ph.i.i.i.i.i.i.preheader199:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader199, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader199 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader199 ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !33
  store i32 %i.ak, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !759

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.not.i.i = icmp eq ptr %i.x, %i.an
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #17
  %.pre.pre.i = load i32, ptr %i.j, align 8, !tbaa !239
  br label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i: ; preds = %bb.e, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i
  %.pre.i = phi i32 [ %i.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre.pre.i, %bb.e ]
  store ptr %i.w, ptr %i.i, align 8, !tbaa !241
  store i32 %.09.i.i, ptr %i.n, align 4, !tbaa !240
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i, %bb.c
  %i.ao = phi i32 [ %.pre.i, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE4growEj.exit.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.l
  br i1 %i.ap, label %.lr.ph13.preheader.i, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit

.lr.ph13.preheader.i:                             ; preds = %bb.f
  %i.aq = zext i32 %i.ao to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %i.l to i64       ; 3 uses
  %i.ar = sub nsw i64 %wide.trip.count.i, %i.aq
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol

.lr.ph13.i.prol:                                  ; preds = %.lr.ph13.preheader.i, %.lr.ph13.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph13.i.prol ], [ %i.aq, %.lr.ph13.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph13.i.prol ], [ 0, %.lr.ph13.preheader.i ]
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.prol
  store i32 0, ptr %i.at, align 4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph13.i.prol.loopexit, label %.lr.ph13.i.prol, !llvm.loop !760

.lr.ph13.i.prol.loopexit:                         ; preds = %.lr.ph13.i.prol, %.lr.ph13.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.aq, %.lr.ph13.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph13.i.prol ]
  %i.au = sub nsw i64 %i.aq, %wide.trip.count.i
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph13.i ], [ %indvars.iv.i.unr, %.lr.ph13.i.prol.loopexit ] ; 5 uses
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  store i32 0, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 0, ptr %i.ba, align 4
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 0, ptr %i.bd, align 4
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bg, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, label %.lr.ph13.i, !llvm.loop !761

_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit: ; preds = %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %bb.b, %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !239
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !221
  %.pre103 = load i32, ptr %i.c, align 8
  %.pre104 = load ptr, ptr %.pre, align 8, !tbaa !218
  %.pre105 = lshr i32 %.pre103, 4
  %.pre106 = zext nneg i32 %.pre105 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit, %bb.a
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.f, %bb.a ]
  %i.bh = phi ptr [ %.pre104, %_ZN4Luau11SmallVectorINS_8Bytecode4BcOpELj4EE6resizeEj.exit ], [ %i.g, %bb.a ]
  %i.bi = getelementptr inbounds nuw [80 x i8], ptr %i.bh, i64 %.pre-phi107
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = zext i32 %1 to i64
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !241
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bk
  store i32 %2, ptr %i.bm, align 4, !tbaa !33
  %i.bn = and i32 %2, 15
  switch i32 %i.bn, label %_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit [
    i32 2, label %bb.h
    i32 4, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %0, align 8, !tbaa !303, !nonnull !170, !align !198
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = lshr i32 %2, 4
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !218
  %i.bt = getelementptr inbounds nuw [80 x i8], ptr %i.bs, i64 %i.br ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !237 ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !237 ; 7 uses
  %i.by = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.bz = ptrtoint ptr %i.bv to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = ashr i64 %i.ca, 4                       ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.cd = load i32, ptr %i.c, align 8             ; 4 uses
  %i.ce = and i64 %i.ca, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.bv, i64 %i.ce ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i ], [ %i.cr, %bb.m ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %i.cq, %bb.m ] ; 9 uses
  %i.cf = load i32, ptr %.sroa.032.051.i.i.i, align 4
  %i.cg = icmp eq i32 %i.cf, %i.cd
  br i1 %i.cg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = icmp eq i32 %i.ci, %i.cd
  br i1 %i.cj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.cd
  br i1 %i.cm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit138, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, %i.cd
  br i1 %i.cp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit140, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.cr = add nsw i64 %.052.i.i.i, -1
  %i.cs = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cs, label %bb.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !762

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.m
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.by, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.h
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ca, %bb.h ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bv, %bb.h ] ; 5 uses
  %i.ct = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.ct, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.thread [
    i64 3, label %bb.n
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %i.c, align 8
  br label %bb.r

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %i.c, align 8
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cu = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4
  %i.cv = load i32, ptr %i.c, align 8             ; 2 uses
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge.i.i.i
  %i.cy = phi i32 [ %i.cv, %bb.o ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.cx, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cz = load i32, ptr %.sroa.032.1.i.i.i, align 4
end_hunk_5
