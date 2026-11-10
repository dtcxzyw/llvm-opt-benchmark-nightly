Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeDeadStore?download=true
inline.NumInlined: 1559
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt6vectorIN4Luau7CodeGen15VmExitStoreInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.b, align 4, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75   ; 3 uses
  %i.f = icmp ugt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE4growEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.e)
          to label %._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge unwind label %bb.i

._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge: ; preds = %bb.b
  %.pre = load i32, ptr %i.d, align 8, !tbaa !75
  %.pre8 = load ptr, ptr %0, align 8, !tbaa !74
  br label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit: ; preds = %._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge, %bb.a
  %i.g = phi ptr [ %.pre8, %._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = phi i32 [ %.pre, %._ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit_crit_edge ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.j = zext i32 %i.h to i64
  %.idx = mul nuw nsw i64 %i.j, 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not14.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not14.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit, %bb.c
  %.016.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.g, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit ] ; 6 uses
  %.01215.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.i, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit ] ; 5 uses
  %i.l = load i32, ptr %.01215.i.i.i, align 8, !tbaa !152
  store i32 %i.l, ptr %.016.i.i.i, align 8, !tbaa !152
  %i.m = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !84
  store i8 %i.o, ptr %i.m, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 16
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.r, ptr noundef nonnull align 8 dereferenceable(11) %i.s, i64 11, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 72
  %.not.i.i.i = icmp eq ptr %i.t, %i.k
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !12

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4Luau7CodeGen17VmExitStoreRecordEEvT_S4_(ptr noundef %i.g, ptr noundef nonnull %.016.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #21
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %bb.c
  %.pre9 = load i32, ptr %i.d, align 8, !tbaa !75
  br label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit
  %i.ab = phi i32 [ %.pre9, %_ZSt18uninitialized_copyIPKN4Luau7CodeGen17VmExitStoreRecordEPS2_ET0_T_S7_S6_.exit.loopexit ], [ 0, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE7reserveEj.exit ]
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !75
  ret void

bb.i:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.y, %bb.f ]
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.c, align 4, !tbaa !157
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !74
  %i.e = load ptr, ptr %1, align 8, !tbaa !74     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx = mul nuw nsw i64 %i.i, 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not11.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.k = add nuw i64 %i.a, 48
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %indvar.next, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.013.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 8 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i ] ; 9 uses
  %i.l = load i32, ptr %.sroa.08.012.i.i.i.i, align 8, !tbaa !152
  store i32 %i.l, ptr %.013.i.i.i.i, align 8, !tbaa !152
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !84
  store i8 %i.o, ptr %i.m, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 28
  store i32 6, ptr %i.s, align 4, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32 ; 5 uses
  store ptr %i.t, ptr %i.p, align 8, !tbaa !85
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !85   ; 8 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !86   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.z, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.c
  %i.ab = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -4   ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ae = mul nuw nsw i64 %indvar, 72
  %i.af = add i64 %i.k, %i.ae
  %i.ag = sub i64 %i.v, %i.af
  %diff.check = icmp ugt i64 %i.ag, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.u, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ak ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.u, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !87
  %wide.load23 = load <4 x i32>, ptr %i.al, align 4, !tbaa !87
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !87
  store <4 x i32> %wide.load23, ptr %i.am, align 4, !tbaa !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25:       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader25 ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !87
  store i32 %i.ao, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !377

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !86
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i, %bb.c
  %i.ar = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  store i32 %i.ar, ptr %i.r, align 8, !tbaa !86
  %.promoted.i.i.i.i.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !86
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i
  store i32 0, ptr %i.x, align 8, !tbaa !86
  br label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  store ptr %i.u, ptr %i.p, align 8, !tbaa !85
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 2 uses
  %i.au = load <2 x i32>, ptr %i.at, align 8, !tbaa !33
  store <2 x i32> %i.au, ptr %i.r, align 8, !tbaa !33
  store ptr %i.w, ptr %i.q, align 8, !tbaa !85
  store i32 6, ptr %i.as, align 4, !tbaa !107
  store i32 0, ptr %i.at, align 8, !tbaa !86
  br label %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.av, ptr noundef nonnull align 8 dereferenceable(11) %i.aw, i64 11, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit.loopexit: ; preds = %_ZSt10_ConstructIN4Luau7CodeGen17VmExitStoreRecordEJS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load i32, ptr %i.g, align 8, !tbaa !75
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit

_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit.loopexit, %bb.b
  %i.az = phi i32 [ %.pre, %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit.loopexit ], [ 0, %bb.b ]
  store i32 %i.az, ptr %i.b, align 8, !tbaa !75
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !75  ; 2 uses
  %.not1.i = icmp eq i32 %i.ba, 0
  br i1 %.not1.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i
  %i.bb = phi i32 [ %i.bk, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i ], [ %i.ba, %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !74
  %i.bd = add i32 %i.bb, -1                       ; 3 uses
  store i32 %i.bd, ptr %i.g, align 8, !tbaa !75
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.bh, align 8, !tbaa !86
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i
  store i32 0, ptr %i.bh, align 8, !tbaa !86
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.not.i.i.i.i13 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i.i.i13, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.bi) #23
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !75
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i:   ; preds = %bb.e, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  %i.bk = phi i32 [ %i.bd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit, label %.lr.ph.i, !llvm.loop !7

bb.f:                                             ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !74
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bn = load <2 x i32>, ptr %i.bm, align 8, !tbaa !33
  store <2 x i32> %i.bn, ptr %i.b, align 8, !tbaa !33
  store ptr %i.f, ptr %1, align 8, !tbaa !74
  store i32 2, ptr %i.bl, align 4, !tbaa !157
  store i32 0, ptr %i.bm, align 8, !tbaa !75
  br label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit: ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen17VmExitStoreRecordES3_ET0_T_S5_S4_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not1.i = icmp eq i32 %i.b, 0
  br i1 %.not1.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i
  %i.c = phi i32 [ %i.l, %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i ], [ %i.b, %bb.a ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !74
  %i.e = add i32 %i.c, -1                         ; 3 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !75
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !86
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i
  store i32 0, ptr %i.i, align 8, !tbaa !86
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !85   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i, label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #23
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !75
  br label %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i

_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i:   ; preds = %bb.b, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i
  %i.l = phi i32 [ %i.e, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.i.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit, label %.lr.ph.i, !llvm.loop !7

_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit: ; preds = %_ZN4Luau7CodeGen17VmExitStoreRecordD2Ev.exit.i, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4Luau11SmallVectorINS_7CodeGen17VmExitStoreRecordELj2EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen20RemoveDeadStoreState8useRangeEii(ptr noundef nonnull align 8 dereferenceable(4176) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add nsw i32 %2, %1
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %_ZN4Luau7CodeGen20RemoveDeadStoreState10useVarargsEh.exit

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %1, 255                          ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !140  ; 4 uses
  %.not4.i = icmp slt i32 %i.g, %i.e
  br i1 %.not4.i, label %_ZN4Luau7CodeGen20RemoveDeadStoreState10useVarargsEh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = add i32 %i.g, %1
  %i.j = and i32 %i.i, 1
  %lcmp.mod.not.not = icmp eq i32 %i.j, 0
end_hunk_0
