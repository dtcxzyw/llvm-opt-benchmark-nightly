Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrBuilder?download=true
inline.NumInlined: 976
inline.NumDeleted: 501
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4Luau7CodeGen9IrBuilder5cloneESt6vectorIjSaIjEEb:bb.a
          to label %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge unwind label %bb.p ; 0 uses

.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge: ; preds = %.loopexit
  %.promoted.i.i.i.pre = load i32, ptr %i.i, align 8, !tbaa !170
  br label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread: ; preds = %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge, %bb.o, %bb.o, %bb.o, %bb.o
  %.promoted.i.i.i = phi i32 [ %.promoted.i.i.i.pre, %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge ], [ %i.cu, %bb.o ], [ %i.cu, %bb.o ], [ %i.cu, %bb.o ], [ %i.cu, %bb.o ]
  %.sroa.12.2 = phi i64 [ %.sroa.12.3, %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge ], [ %.sroa.12.1127, %bb.o ], [ %.sroa.12.1127, %bb.o ], [ %.sroa.12.1127, %bb.o ], [ %.sroa.12.1127, %bb.o ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.7, %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge ], [ %.sroa.0.1129, %bb.o ], [ %.sroa.0.1129, %bb.o ], [ %.sroa.0.1129, %bb.o ], [ %.sroa.0.1129, %bb.o ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %.sroa.19.3, %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge ], [ %.sroa.19.1131, %bb.o ], [ %.sroa.19.1131, %bb.o ], [ %.sroa.19.1131, %bb.o ], [ %.sroa.19.1131, %bb.o ] ; 2 uses
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
  store i32 0, ptr %i.i, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
  %i.gx = load ptr, ptr %i.h, align 8, !tbaa !172 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.gx, %i.k
  br i1 %.not.i.i44, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.gx) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.gy = add i32 %storemerge132, 1               ; 2 uses
  %i.gz = load i32, ptr %i.an, align 4, !tbaa !169
  %.not34 = icmp ugt i32 %i.gy, %i.gz
  br i1 %.not34, label %._crit_edge138, label %.lr.ph137, !llvm.loop !226

bb.al:                                            ; preds = %bb.aj, %bb.p
  %.sroa.0.4 = phi ptr [ %.sroa.0.2, %bb.p ], [ %.sroa.0.1129, %bb.aj ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.p ], [ %i.gq, %bb.aj ] ; 2 uses
  %.promoted.i.i.i45 = load i32, ptr %i.i, align 8, !tbaa !170
  %.not1.i.i.i46 = icmp eq i32 %.promoted.i.i.i45, 0
  br i1 %.not1.i.i.i46, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48, label %.lr.ph.preheader.i.i.i47

.lr.ph.preheader.i.i.i47:                         ; preds = %bb.al
  store i32 0, ptr %i.i, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48: ; preds = %.lr.ph.preheader.i.i.i47, %bb.al
  %i.ha = load ptr, ptr %i.h, align 8, !tbaa !172 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.ha, %i.k
  br i1 %.not.i.i49, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56
  %.sink = phi ptr [ %i.ct, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %i.ha, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ]
  %.sroa.0.5.ph = phi ptr [ %.sroa.0.1129, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %.sroa.0.4, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cs, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %.pn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ]
  call void @_ZdlPv(ptr noundef %.sink) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56
  %.sroa.0.5 = phi ptr [ %.sroa.0.4, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ], [ %.sroa.0.1129, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %.sroa.0.5.ph, %.body.sink.split ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ], [ %i.cs, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.am

bb.am:                                            ; preds = %.body, %bb.j, %bb.g
  %.sroa.0.6 = phi ptr [ %.sroa.0.5, %.body ], [ %.sroa.0.0143, %bb.j ], [ %.sroa.0.0143, %bb.g ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ak, %bb.j ], [ %i.ab, %bb.g ]
  %.not.i.i51 = icmp eq ptr %.sroa.0.6, null
  br i1 %.not.i.i51, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit52, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.6) #16
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit52

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit52: ; preds = %bb.am, %bb.an
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 8 dereferenceable(59)) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928), i32) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdERKNS_11SmallVectorINS0_4IrOpELj6EEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 6
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i8 %1, ptr %3, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  store i32 0, ptr %i.l, align 8, !tbaa !170
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i32 6, ptr %i.m, align 4, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !172
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !170  ; 4 uses
  %i.q = icmp ugt i32 %i.p, 6
  br i1 %i.q, label %bb.b, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ult i32 %i.p, 9
  %i.s = add i32 %i.p, 4
  %.09.i.i.i = select i1 %i.r, i32 9, i32 %i.s    ; 2 uses
  %i.t = zext i32 %.09.i.i.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #20
          to label %.noexc.i unwind label %bb.d   ; 5 uses

.noexc.i:                                         ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !172  ; 6 uses
  %i.x = load i32, ptr %i.l, align 8, !tbaa !170  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.y, 2           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc.i
  %i.aa = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !131
  %wide.load39 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !131
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !131
  store <4 x i32> %wide.load39, ptr %i.ai, align 4, !tbaa !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader75

.lr.ph.i.i.i.i.i.i.i.preheader75:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader75, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader75 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader75 ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.ak, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !232

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc.i
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.w) #16
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  store ptr %i.v, ptr %i.k, align 8, !tbaa !172
  store i32 %.09.i.i.i, ptr %i.m, align 4, !tbaa !171
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, %bb.a
  %i.an = phi ptr [ %i.v, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ], [ %i.n, %bb.a ] ; 4 uses
  %.pre6.i = phi i32 [ %.pre.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ], [ %i.p, %bb.a ] ; 3 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !172   ; 5 uses
  %i.ap = zext i32 %.pre6.i to i64
  %.idx.i = shl nuw nsw i64 %i.ap, 2              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not9.i.i.i.i = icmp eq i32 %.pre6.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  %4 = ptrtoaddr ptr %i.ao to i64
  %5 = ptrtoaddr ptr %i.an to i64
  %i.ar = add nsw i64 %.idx.i, -4                 ; 2 uses
  %6 = lshr exact i64 %i.ar, 2
  %7 = add nuw nsw i64 %6, 1                      ; 2 uses
  %min.iters.check42 = icmp ult i64 %i.ar, 44
  %i.as = sub i64 %4, %5
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check42, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader74, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec44 = and i64 %7, 9223372036854775800      ; 3 uses
  %i.at = shl i64 %n.vec44, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.an, i64 %i.at
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.at
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next51, %vector.body45 ] ; 2 uses
  %i.aw = shl i64 %index46, 2                     ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.ao, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load49 = load <4 x i32>, ptr %next.gep48, align 4, !tbaa !131
  %wide.load50 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !131
  %i.ay = getelementptr i8, ptr %next.gep47, i64 16
  store <4 x i32> %wide.load49, ptr %next.gep47, align 4, !tbaa !131
  store <4 x i32> %wide.load50, ptr %i.ay, align 4, !tbaa !131
  %index.next51 = add nuw i64 %index46, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next51, %n.vec44
  br i1 %i.az, label %middle.block52, label %vector.body45, !llvm.loop !233

middle.block52:                                   ; preds = %vector.body45
  %cmp.n53 = icmp eq i64 %7, %n.vec44
  br i1 %cmp.n53, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.preheader74

.lr.ph.i.i.i.i.preheader74:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block52
  %.011.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block52 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block52 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader74, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader74 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader74 ] ; 2 uses
  %i.ba = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !131
  store i32 %i.ba, ptr %.011.i.i.i.i, align 4, !tbaa !131
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.aq
  br i1 %.not.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !234

bb.d:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.d
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %i.n
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.be) #16
  br label %common.resume

common.resume:                                    ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.e, %_ZN4Luau7CodeGen6IrInstD2Ev.exit22
  %common.resume.op = phi { ptr, i32 } [ %i.cy, %_ZN4Luau7CodeGen6IrInstD2Ev.exit22 ], [ %i.bd, %bb.e ], [ %i.bd, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block52, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  store i32 %.pre6.i, ptr %i.l, align 8, !tbaa !170
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !175
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i16 0, ptr %i.bg, align 4, !tbaa !176
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 54
  store i8 -128, ptr %i.bh, align 2, !tbaa !131
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 55
  store i32 0, ptr %i.bi, align 1
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !136 ; 9 uses
  %8 = ptrtoaddr ptr %i.bj to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !177
  %.not.i.i8 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i.i8, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit
  %i.bm = load i8, ptr %3, align 8, !tbaa !163
  store i8 %i.bm, ptr %i.bj, align 8, !tbaa !163
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !170
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store i32 6, ptr %i.bp, align 4, !tbaa !171
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 5 uses
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !172
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !172 ; 8 uses
  %9 = ptrtoaddr ptr %i.br to i64
  %.not.i.i.i.i9 = icmp eq ptr %i.br, %i.n
  br i1 %.not.i.i.i.i9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = load i32, ptr %i.l, align 8, !tbaa !170 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bt, 2        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.g
  %i.bv = add nsw i64 %.idx.i.i.i.i, -4           ; 2 uses
  %i.bw = lshr exact i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.bv, 60
  br i1 %min.iters.check59, label %.lr.ph.i.i.i.i.i.i.i.i.preheader73, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.by = sub i64 %8, %9
  %i.bz = add i64 %i.by, 23
  %diff.check57 = icmp ult i64 %i.bz, 31
  br i1 %diff.check57, label %.lr.ph.i.i.i.i.i.i.i.i.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck56
  %n.vec61 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.ca = shl i64 %n.vec61, 2                     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bq, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.br, i64 %i.ca
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.cd = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.bq, i64 %i.cd ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.br, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <4 x i32>, ptr %next.gep65, align 4, !tbaa !131
  %wide.load67 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !131
  %i.cf = getelementptr i8, ptr %next.gep64, i64 16
  store <4 x i32> %wide.load66, ptr %next.gep64, align 4, !tbaa !131
  store <4 x i32> %wide.load67, ptr %i.cf, align 4, !tbaa !131
  %index.next68 = add nuw i64 %index63, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.cg, label %middle.block69, label %vector.body62, !llvm.loop !235

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.bx, %n.vec61
  br i1 %cmp.n70, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader73

.lr.ph.i.i.i.i.i.i.i.i.preheader73:               ; preds = %vector.memcheck56, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block69
  %.013.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck56 ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block69 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck56 ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block69 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader73, %.lr.ph.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader73 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader73 ] ; 2 uses
  %i.ch = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.ch, ptr %.013.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.bu
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !236

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block69
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, %bb.g
  %i.ck = phi i32 [ %.pre.i.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i ], [ 0, %bb.g ]
  store i32 %i.ck, ptr %i.bo, align 8, !tbaa !170
  %.promoted.i.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split

bb.h:                                             ; preds = %bb.f
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !172
  %i.cl = load <2 x i32>, ptr %i.l, align 8, !tbaa !149
  store <2 x i32> %i.cl, ptr %i.bo, align 8, !tbaa !149
  store ptr %i.n, ptr %i.k, align 8, !tbaa !172
  store i32 6, ptr %i.m, align 4, !tbaa !171
  br label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cm, ptr noundef nonnull align 8 dereferenceable(11) %i.bf, i64 11, i1 false)
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  store ptr %i.co, ptr %i.c, align 8, !tbaa !136
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13

bb.i:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit
  invoke void @_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(59) %3)
          to label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit unwind label %bb.k

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.i
  %.promoted.i.i.i10.pre = load i32, ptr %i.l, align 8, !tbaa !170
  %i.cp = icmp eq i32 %.promoted.i.i.i10.pre, 0
  br i1 %i.cp, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13, label %.lr.ph.preheader.i.i.i12

.lr.ph.preheader.i.i.i12:                         ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread, %.lr.ph.preheader.i.i.i12, %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.cq, %i.n
  br i1 %.not.i.i14, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13
  call void @_ZdlPv(ptr noundef %i.cq) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  switch i8 %1, label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit [
    i8 88, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 89, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 90, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 91, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 92, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 93, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 94, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 95, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 96, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -100, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -99, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -98, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -86, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -40, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 83, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 127, label %bb.m
    i8 -127, label %bb.m
    i8 -101, label %bb.m
    i8 -95, label %bb.m
    i8 -94, label %bb.m
    i8 -93, label %bb.m
    i8 -92, label %bb.m
    i8 -91, label %bb.m
  ]

_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !118
  %i.ct = zext i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.cv = getelementptr inbounds nuw [36 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.j, ptr %i.cw, align 4, !tbaa !169
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cx, align 8, !tbaa !114
  switch i8 %1, label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit [
    i8 -86, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 127, label %bb.m
    i8 -127, label %bb.m
    i8 -101, label %bb.m
    i8 -98, label %bb.m
    i8 -95, label %bb.m
    i8 -94, label %bb.m
    i8 -93, label %bb.m
    i8 -92, label %bb.m
    i8 -91, label %bb.m
  ]

bb.k:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i.i16 = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i17 = icmp eq i32 %.promoted.i.i.i16, 0
  br i1 %.not1.i.i.i17, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19, label %.lr.ph.preheader.i.i.i18

.lr.ph.preheader.i.i.i18:                         ; preds = %bb.k
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19: ; preds = %.lr.ph.preheader.i.i.i18, %bb.k
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.cz, %i.n
  br i1 %.not.i.i20, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19
  call void @_ZdlPv(ptr noundef %i.cz) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit22

_ZN4Luau7CodeGen6IrInstD2Ev.exit22:               ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume

bb.m:                                             ; preds = %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.db = load i32, ptr %i.da, align 8, !tbaa !118
  %i.dc = zext i32 %i.db to i64
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.de = getelementptr inbounds nuw [36 x i8], ptr %i.dd, i64 %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !144
  %i.dh = or i8 %i.dg, 2
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !144
  br label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit

_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %bb.m
  %i.di = shl i32 %i.j, 4
  %i.dj = or disjoint i32 %i.di, 4
  ret i32 %i.dj
}

end_hunk_0
begin_hunk_1_@_ZN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EEixERKS3_:bb.a
  %i.cj = icmp eq i64 %i.ci, %i.cd
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %i.ck, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %i.cl = icmp eq i8 %i.cf, %i.bh
  %i.cm = icmp eq i64 %i.ci, %i.bd
  %i.cn = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %i.cn, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph19

._crit_edge:                                      ; preds = %.lr.ph19, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ce, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit ], [ %i.cw, %.lr.ph19 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !183
  %i.co = load i64, ptr %i.a, align 8, !tbaa !180
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !180
  br label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph19
  %i.cq = icmp eq i8 %i.cx, %i.bh
  %i.cr = icmp eq i64 %i.da, %i.bd
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i518 = phi i64 [ %i.ct, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02129.i617 = phi i64 [ %i.cv, %.lr.ph ], [ %i.by, %.lr.ph.preheader ]
  %i.ct = add i64 %.02030.i518, 1                 ; 3 uses
  %i.cu = add i64 %i.ct, %.02129.i617
  %i.cv = and i64 %i.cu, %i.bb                    ; 2 uses
  %.not.i3 = icmp ule i64 %i.ct, %i.bb
  tail call void @llvm.assume(i1 %.not.i3)
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.cv ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !178 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, %i.cb
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.db = icmp eq i64 %i.da, %i.cd
  %i.dc = select i1 %i.cy, i1 %i.db, i1 false
  br i1 %i.dc, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.dd = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ce, %.lr.ph.preheader ], [ %i.cw, %.lr.ph ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  ret ptr %i.de
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 3, 4084) i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = shl nuw nsw i32 %i.a, 4
  %i.c = or disjoint i32 %i.b, 3
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 6
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i8 %1, ptr %4, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 14 uses
  store i32 0, ptr %i.l, align 8, !tbaa !170
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i32 6, ptr %i.m, align 4, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 8 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !172
  %i.o = trunc i64 %3 to i32                      ; 4 uses
  %i.p = icmp ugt i32 %i.o, 6
  br i1 %i.p, label %bb.b, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %i.o, 9
  %i.r = add i32 %i.o, 4
  %.09.i.i.i = select i1 %i.q, i32 9, i32 %i.r    ; 2 uses
  %i.s = zext i32 %.09.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20
          to label %.noexc.i unwind label %bb.d   ; 5 uses

.noexc.i:                                         ; preds = %bb.b
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !172  ; 6 uses
  %i.w = load i32, ptr %i.l, align 8, !tbaa !170  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.x, 2           ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc.i
  %i.z = add nsw i64 %.idx.i.i.i, -4              ; 2 uses
  %i.aa = lshr exact i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !131
  %wide.load40 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !131
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !131
  store <4 x i32> %wide.load40, ptr %i.ah, align 4, !tbaa !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader58

.lr.ph.i.i.i.i.i.i.i.preheader58:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader58, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader58 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader58 ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.aj, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.y
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !241

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc.i
  %.not.i.i.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #16
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  store ptr %i.u, ptr %i.k, align 8, !tbaa !172
  store i32 %.09.i.i.i, ptr %i.m, align 4, !tbaa !171
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !136
  br label %.lr.ph.i.i.i.preheader.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i: ; preds = %bb.a
  %.not9.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i
  %.pre = phi ptr [ %.pre.pre, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i ], [ %i.d, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i ]
  %i.am = phi ptr [ %i.u, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i ], [ %i.n, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i ]
  %.idx7.pn.i = shl nuw nsw i64 %3, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %2, i64 %.idx7.pn.i, i1 false), !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit

bb.d:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.d
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.n
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ao) #16
  br label %common.resume

common.resume:                                    ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.e, %_ZN4Luau7CodeGen6IrInstD2Ev.exit23
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %_ZN4Luau7CodeGen6IrInstD2Ev.exit23 ], [ %i.an, %bb.e ], [ %i.an, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit: ; preds = %.lr.ph.i.i.i.preheader.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  %i.ap = phi ptr [ %.pre, %.lr.ph.i.i.i.preheader.i ], [ %i.d, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i ] ; 9 uses
  %5 = ptrtoaddr ptr %i.ap to i64
  store i32 %i.o, ptr %i.l, align 8, !tbaa !170
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !175
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i16 0, ptr %i.ar, align 4, !tbaa !176
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 54
  store i8 -128, ptr %i.as, align 2, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.at, align 1
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !177
  %.not.i.i9 = icmp eq ptr %i.ap, %i.av
  br i1 %.not.i.i9, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit
  %i.aw = load i8, ptr %4, align 8, !tbaa !163
  store i8 %i.aw, ptr %i.ap, align 8, !tbaa !163
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !170
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 6, ptr %i.az, align 4, !tbaa !171
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 5 uses
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !172
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !172 ; 8 uses
  %6 = ptrtoaddr ptr %i.bb to i64
  %.not.i.i.i.i10 = icmp eq ptr %i.bb, %i.n
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %i.l, align 8, !tbaa !170 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bd, 2        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.g
  %i.bf = add nsw i64 %.idx.i.i.i.i, -4           ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.bf, 60
  br i1 %min.iters.check43, label %.lr.ph.i.i.i.i.i.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.bi = sub i64 %5, %6
  %i.bj = add i64 %i.bi, 23
  %diff.check = icmp ult i64 %i.bj, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader57, label %vector.ph44

vector.ph44:                                      ; preds = %vector.memcheck
  %n.vec45 = and i64 %i.bh, 9223372036854775800   ; 3 uses
  %i.bk = shl i64 %n.vec45, 2                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ba, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bk
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph44
  %index47 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body46 ] ; 2 uses
  %i.bn = shl i64 %index47, 2                     ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.ba, i64 %i.bn ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.bb, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load50 = load <4 x i32>, ptr %next.gep49, align 4, !tbaa !131
  %wide.load51 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !131
  %i.bp = getelementptr i8, ptr %next.gep48, i64 16
  store <4 x i32> %wide.load50, ptr %next.gep48, align 4, !tbaa !131
  store <4 x i32> %wide.load51, ptr %i.bp, align 4, !tbaa !131
  %index.next52 = add nuw i64 %index47, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next52, %n.vec45
  br i1 %i.bq, label %middle.block53, label %vector.body46, !llvm.loop !242

middle.block53:                                   ; preds = %vector.body46
  %cmp.n54 = icmp eq i64 %i.bh, %n.vec45
  br i1 %cmp.n54, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.i.preheader57:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block53
  %.013.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block53 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block53 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  %i.br = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.br, ptr %.013.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !243

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block53
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, %bb.g
  %i.bu = phi i32 [ %.pre.i.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i ], [ 0, %bb.g ]
  store i32 %i.bu, ptr %i.ay, align 8, !tbaa !170
  %.promoted.i.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split

bb.h:                                             ; preds = %bb.f
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !172
  %i.bv = load <2 x i32>, ptr %i.l, align 8, !tbaa !149
  store <2 x i32> %i.bv, ptr %i.ay, align 8, !tbaa !149
  store ptr %i.n, ptr %i.k, align 8, !tbaa !172
  store i32 6, ptr %i.m, align 4, !tbaa !171
  br label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bw, ptr noundef nonnull align 8 dereferenceable(11) %i.aq, i64 11, i1 false)
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store ptr %i.by, ptr %i.c, align 8, !tbaa !136
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14

bb.i:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit
  invoke void @_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(59) %4)
          to label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit unwind label %bb.k

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.i
  %.promoted.i.i.i11.pre = load i32, ptr %i.l, align 8, !tbaa !170
  %i.bz = icmp eq i32 %.promoted.i.i.i11.pre, 0
  br i1 %i.bz, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14, label %.lr.ph.preheader.i.i.i13

.lr.ph.preheader.i.i.i13:                         ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread, %.lr.ph.preheader.i.i.i13, %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ca, %i.n
  br i1 %.not.i.i15, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14
  call void @_ZdlPv(ptr noundef %i.ca) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  switch i8 %1, label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit [
    i8 88, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 89, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 90, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 91, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 92, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 93, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 94, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 95, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 96, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -100, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -99, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -98, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -86, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -40, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 83, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 127, label %bb.m
    i8 -127, label %bb.m
    i8 -101, label %bb.m
    i8 -95, label %bb.m
    i8 -94, label %bb.m
    i8 -93, label %bb.m
    i8 -92, label %bb.m
    i8 -91, label %bb.m
  ]

_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !118
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.cf = getelementptr inbounds nuw [36 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.j, ptr %i.cg, align 4, !tbaa !169
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ch, align 8, !tbaa !114
  switch i8 %1, label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit [
    i8 -86, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 127, label %bb.m
    i8 -127, label %bb.m
    i8 -101, label %bb.m
    i8 -98, label %bb.m
    i8 -95, label %bb.m
    i8 -94, label %bb.m
    i8 -93, label %bb.m
    i8 -92, label %bb.m
    i8 -91, label %bb.m
  ]

bb.k:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i.i17 = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i18 = icmp eq i32 %.promoted.i.i.i17, 0
  br i1 %.not1.i.i.i18, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20, label %.lr.ph.preheader.i.i.i19

.lr.ph.preheader.i.i.i19:                         ; preds = %bb.k
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20: ; preds = %.lr.ph.preheader.i.i.i19, %bb.k
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.cj, %i.n
  br i1 %.not.i.i21, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit23, label %bb.l

bb.l:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20
  call void @_ZdlPv(ptr noundef %i.cj) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit23

_ZN4Luau7CodeGen6IrInstD2Ev.exit23:               ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

bb.m:                                             ; preds = %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !118
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.co = getelementptr inbounds nuw [36 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !144
  %i.cr = or i8 %i.cq, 2
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !144
  br label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit

_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %bb.m
  %i.cs = shl i32 %i.j, 4
  %i.ct = or disjoint i32 %i.cs, 4
  ret i32 %i.ct
}

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !148
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !154
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !257
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(42) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !181  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.16.24.copyload = load i8, ptr %i.e, align 8, !tbaa !119 ; 2 uses
  %.sroa.1822.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.1822.24.copyload = load i64, ptr %.sroa.1822.24..sroa_idx, align 8, !tbaa !120 ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %spec.select, 24
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.b
  %.07.i.i = phi i64 [ 0, %bb.b ], [ %i.m, %.lr.ph.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.07.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !183
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.07.i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 0, ptr %i.l, align 8, !tbaa !149
  %i.m = add nuw i64 %.07.i.i, 2                  ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.m, %spec.select
  br i1 %exitcond.not.i.i.1, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !258

_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !181
  br label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit

_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit.loopexit, %bb.a
  %i.n = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.g, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit.loopexit ] ; 3 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit
  %i.o = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.d

._crit_edge30:                                    ; preds = %bb.f, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEC2ERS7_m.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !260    ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !260
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !120
  %.not.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i14, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge30
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #16
  br label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EED2Ev.exit: ; preds = %._crit_edge30, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph29, %bb.f
  %i.q = phi i64 [ %i.n, %.lr.ph29 ], [ %i.bw, %bb.f ]
  %.01128 = phi i64 [ 0, %.lr.ph29 ], [ %i.bx, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !182
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.01128 ; 5 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !178   ; 4 uses
  %i.u = load i8, ptr %i.e, align 8, !tbaa !178
  %i.v = icmp eq i8 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 5 uses
  %i.y = load i64, ptr %.sroa.1822.24..sroa_idx, align 8
  %i.z = icmp eq i64 %i.x, %i.y
  %i.aa = select i1 %i.v, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = trunc i64 %i.x to i32
  %i.ac = lshr i64 %i.x, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = zext i8 %i.t to i32
  %i.af = mul i32 %i.ae, 1540483477
  %i.ag = xor i32 %i.af, %i.ad                    ; 2 uses
  %i.ah = lshr i32 %i.ag, 18
  %i.ai = xor i32 %i.ah, %i.ab
  %i.aj = mul i32 %i.ai, 1540483477               ; 2 uses
  %i.ak = lshr i32 %i.aj, 22
  %i.al = xor i32 %i.ak, %i.ag
  %i.am = mul i32 %i.al, 1540483477               ; 2 uses
  %i.an = lshr i32 %i.am, 17
  %i.ao = xor i32 %i.an, %i.aj
  %i.ap = mul i32 %i.ao, 1540483477
  %i.aq = lshr i32 %i.ap, 19
  %i.ar = xor i32 %i.aq, %i.am
  %i.as = mul i32 %i.ar, 1540483477
  %i.at = zext i32 %i.as to i64
  %i.au = and i64 %i.o, %i.at                     ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.au ; 4 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !178 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, %.sroa.16.24.copyload
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp eq i64 %i.az, %.sroa.1822.24.copyload
  %i.bb = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.bc = icmp eq i8 %i.aw, %i.t
  %i.bd = icmp eq i64 %i.az, %i.x
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph46

._crit_edge:                                      ; preds = %.lr.ph46, %bb.e
  %.lcssa = phi ptr [ %i.av, %bb.e ], [ %i.bl, %.lr.ph46 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !183
  br label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph46
  %i.bf = icmp eq i8 %i.bm, %i.t
  %i.bg = icmp eq i64 %i.bp, %i.x
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2545 = phi i64 [ %i.bi, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02129.i2644 = phi i64 [ %i.bk, %.lr.ph ], [ %i.au, %.lr.ph.preheader ]
  %i.bi = add i64 %.02030.i2545, 1                ; 3 uses
  %i.bj = add i64 %i.bi, %.02129.i2644
  %i.bk = and i64 %i.bj, %i.o                     ; 2 uses
  %.not.i15 = icmp ule i64 %i.bi, %i.o
  tail call void @llvm.assume(i1 %.not.i15)
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.bk ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !178 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, %.sroa.16.24.copyload
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %.sroa.1822.24.copyload
  %i.br = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %i.br, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.bs = phi ptr [ %.lcssa, %._crit_edge ], [ %i.av, %.lr.ph.preheader ], [ %i.bl, %.lr.ph ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bs, ptr noundef nonnull align 8 dereferenceable(20) %i.s, i64 16, i1 false), !tbaa.struct !183
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !149
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !262
  %.pre34 = load i64, ptr %i.a, align 8, !tbaa !181
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, %bb.d
  %i.bw = phi i64 [ %i.q, %bb.d ], [ %.pre34, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit ] ; 2 uses
  %i.bx = add nuw i64 %.01128, 1                  ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.d, label %._crit_edge30, !llvm.loop !259
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(59) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !137    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 6 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.s = load i8, ptr %2, align 8, !tbaa !163
  store i8 %i.s, ptr %i.r, align 8, !tbaa !163
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 6, ptr %i.w, align 4, !tbaa !171
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !172
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !172  ; 8 uses
  %3 = ptrtoaddr ptr %i.y to i64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !170 ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx.i.i = shl nuw nsw i64 %i.ac, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.ae = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ah = add i64 %i.q, %i.m
  %i.ai = add i64 %3, %i.e
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = add i64 %i.aj, 23
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader104, label %vector.ph

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
  %next.gep60 = getelementptr i8, ptr %i.y, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep60, align 4, !tbaa !131
  %wide.load61 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !131
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !131
  store <4 x i32> %wide.load61, ptr %i.aq, align 4, !tbaa !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader104

.lr.ph.i.i.i.i.i.i.preheader104:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader104, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader104 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader104 ] ; 2 uses
  %i.as = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.as, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !264

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  store i32 %i.ab, ptr %i.v, align 8, !tbaa !170
  store i32 0, ptr %i.aa, align 8, !tbaa !170
  br label %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.y, ptr %i.t, align 8, !tbaa !172
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 8, !tbaa !149
  store <2 x i32> %i.ax, ptr %i.v, align 8, !tbaa !149
  store ptr %i.z, ptr %i.u, align 8, !tbaa !172
  store i32 6, ptr %i.av, align 4, !tbaa !171
  store i32 0, ptr %i.aw, align 8, !tbaa !170
  br label %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit

_ZN4Luau7CodeGen6IrInstC2EOS1_.exit:              ; preds = %bb.c, %.lr.ph.preheader.i.i.i, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ay, ptr noundef nonnull align 8 dereferenceable(11) %i.az, i64 11, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit
  %i.ba = add i64 %i.q, 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvar.next, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ck, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.cj, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 8 uses
  %i.bb = shl nuw i64 %indvar, 6
  %i.bc = add i64 %i.ba, %i.bb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.bd = load i8, ptr %.0911.i.i.i, align 8, !tbaa !163, !alias.scope !277, !noalias !276
  store i8 %i.bd, ptr %.012.i.i.i, align 8, !tbaa !163, !alias.scope !276, !noalias !277
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !170, !alias.scope !276, !noalias !277
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  store i32 6, ptr %i.bh, align 4, !tbaa !171, !alias.scope !276, !noalias !277
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 4 uses
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !172, !alias.scope !276, !noalias !277
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !172, !alias.scope !277, !noalias !276 ; 7 uses
  %i.bk = ptrtoaddr ptr %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i16 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i.i.i.i.i.i16, label %bb.e, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !170, !alias.scope !277, !noalias !276 ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bo, 2    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.e
  %i.bq = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bq, 28
  %i.bt = sub i64 %i.bk, %i.bc
  %diff.check64 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check66, i1 true, i1 %diff.check64
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec68 = and i64 %i.bs, 9223372036854775800   ; 3 uses
  %i.bu = shl i64 %n.vec68, 2                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bi, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bj, i64 %i.bu
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.bx = shl i64 %index70, 2                     ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.bi, i64 %i.bx ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.bj, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 4, !tbaa !131, !noalias !277
  %wide.load74 = load <4 x i32>, ptr %i.by, align 4, !tbaa !131, !noalias !277
  %i.bz = getelementptr i8, ptr %next.gep71, i64 16
  store <4 x i32> %wide.load73, ptr %next.gep71, align 4, !tbaa !131, !alias.scope !276, !noalias !277
  store <4 x i32> %wide.load74, ptr %i.bz, align 4, !tbaa !131, !alias.scope !276, !noalias !277
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.ca, label %middle.block76, label %vector.body69, !llvm.loop !268

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.bs, %n.vec68
  br i1 %cmp.n77, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block76
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block76 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block76 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102 ] ; 2 uses
  %i.cb = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !131, !noalias !277
  store i32 %i.cb, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !131, !alias.scope !276, !noalias !277
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !269

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block76
  store i32 %i.bn, ptr %i.bg, align 8, !tbaa !170, !alias.scope !276, !noalias !277
  store i32 0, ptr %i.bm, align 8, !tbaa !170, !alias.scope !277, !noalias !276
  br label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !172, !alias.scope !276, !noalias !277
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.cg = load <2 x i32>, ptr %i.cf, align 8, !tbaa !149, !alias.scope !277, !noalias !276
  store <2 x i32> %i.cg, ptr %i.bg, align 8, !tbaa !149, !alias.scope !276, !noalias !277
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !172, !alias.scope !277, !noalias !276
  store i32 6, ptr %i.ce, align 4, !tbaa !171, !alias.scope !277, !noalias !276
  store i32 0, ptr %i.cf, align 8, !tbaa !170, !alias.scope !277, !noalias !276
  br label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ch, ptr noundef nonnull align 8 dereferenceable(11) %i.ci, i64 11, i1 false), !alias.scope !278
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !270

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit ], [ %i.ck, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i81 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.cm = add i64 %.0.lcssa.i.i.i81, 88
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %indvar82 = phi i64 [ 0, %.lr.ph.i.i.i18.preheader ], [ %indvar.next83, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ] ; 2 uses
  %.012.i.i.i19 = phi ptr [ %i.cl, %.lr.ph.i.i.i18.preheader ], [ %i.dw, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ] ; 7 uses
  %.0911.i.i.i20 = phi ptr [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.dv, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ] ; 8 uses
  %i.cn = shl nuw i64 %indvar82, 6
  %i.co = add i64 %i.cm, %i.cn
end_hunk_2
