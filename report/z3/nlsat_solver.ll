Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_solver?download=true
inline.NumInlined: 3993
inline.NumDeleted: 1516
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZSt11__sort_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_RT0_:bb.a
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !192
  br label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.thread.i
  %.128.i8.i = phi i64 [ %i.ap, %.thread.i ], [ %.0.lcssa.i.i, %bb.e ]
  %i.at = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !203 ; 2 uses
  %i.au = zext i32 %i.f to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.01317.i.i.i = phi i64 [ %.128.i8.i, %.lr.ph.i.i.i ], [ %.018.i.i910.i, %bb.g ] ; 3 uses
  %.018.in.i.i.i = add nsw i64 %.01317.i.i.i, -1
  %.018.i.i910.i = lshr i64 %.018.in.i.i.i, 1     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i910.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !192 ; 3 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !192 ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !192 ; 2 uses
  %i.bc = icmp ult i32 %i.ba, %i.bb
  %i.bd = icmp ule i32 %i.ba, %i.bb
  %i.be = icmp ult i32 %i.ax, %i.f
  %spec.select.i.i.i.i.i = and i1 %i.be, %i.bd
  %.0.i.i.i.i.i = or i1 %i.bc, %spec.select.i.i.i.i.i
  br i1 %.0.i.i.i.i.i, label %bb.g, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_RT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i
  store i32 %i.ax, ptr %i.bf, align 4, !tbaa !192
  %.not11.i = icmp eq i64 %.018.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_RT0_.exit, label %bb.f, !llvm.loop !24

_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_RT0_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.e ], [ %.01317.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  store i32 %i.f, ptr %i.bg, align 4, !tbaa !192
  %i.bh = icmp sgt i64 %i.i, 4
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !553

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_S9_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_S9_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !204 ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_SA_T1_T2_.exit, %bb.b
  %.014 = phi i64 [ %i.g, %bb.b ], [ %i.bg, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_SA_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.q = load i32, ptr %i.p, align 4, !tbaa !192  ; 3 uses
  %i.r = icmp slt i64 %.014, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !203 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.030.i = phi i64 [ %.014, %.lr.ph.i ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.t = shl i64 %.030.i, 1                       ; 3 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.v, align 4, !tbaa !192  ; 2 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !192  ; 2 uses
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !192 ; 2 uses
  %i.ad = zext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !192 ; 2 uses
  %i.ag = icmp ult i32 %i.ac, %i.af
  %i.ah = icmp ule i32 %i.ac, %i.af
  %i.ai = icmp ult i32 %i.y, %i.z
  %spec.select.i.i.i = and i1 %i.ai, %i.ah
  %.0.i.i.i = or i1 %i.ag, %spec.select.i.i.i
  %i.aj = or disjoint i64 %i.t, 1
  %spec.select.i = select i1 %.0.i.i.i, i64 %i.aj, i64 %i.u ; 4 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !192
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !192
  %i.an = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.an, label %bb.d, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.0.lcssa.i = phi i64 [ %.014, %bb.c ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.ao = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !192
  store i32 %i.ap, ptr %i.o, align 4, !tbaa !192
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.128.i, %.014
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ar = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !203 ; 2 uses
  %i.as = zext i32 %i.q to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.01317.i.i = phi i64 [ %.128.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.h ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !192 ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !192 ; 2 uses
  %i.az = load i32, ptr %i.at, align 4, !tbaa !192 ; 2 uses
  %i.ba = icmp ult i32 %i.ay, %i.az
  %i.bb = icmp ule i32 %i.ay, %i.az
  %i.bc = icmp ult i32 %i.av, %i.q
  %spec.select.i.i.i.i = and i1 %i.bc, %i.bb
  %.0.i.i.i.i = or i1 %i.ba, %spec.select.i.i.i.i
  br i1 %.0.i.i.i.i, label %bb.h, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_SA_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.av, ptr %i.bd, align 4, !tbaa !192
  %i.be = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.be, label %bb.g, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_SA_T1_T2_.exit, !llvm.loop !24

_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_SA_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.f ], [ %.018.i.i, %bb.h ], [ %.01317.i.i, %bb.g ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.q, ptr %i.bf, align 4, !tbaa !192
  %.not = icmp eq i64 %.014, 0
  %i.bg = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !554

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIN5nlsat6solver3imp9degree_ltEEEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5nlsat6solver3imp6searchEv(ptr noundef nonnull align 8 dereferenceable(1017) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.nlsat::solver::imp::true_pred", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 10 uses
  store i32 0, ptr %i.a, align 8, !tbaa !389
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 9 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !229
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 900 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 804 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 764
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.w = load i32, ptr %i.c, align 8, !tbaa !336  ; 3 uses
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %_ZN5nlsat6solver3imp14should_reorderEv.exit.thread, label %_ZN5nlsat6solver3imp14should_reorderEv.exit

_ZN5nlsat6solver3imp14should_reorderEv.exit:      ; preds = %bb.b
  %i.x = load i32, ptr %i.d, align 8, !tbaa !217
  %i.y = urem i32 %i.w, %i.x
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %_ZN5nlsat6solver3imp14should_reorderEv.exit.thread

bb.c:                                             ; preds = %_ZN5nlsat6solver3imp14should_reorderEv.exit
  call void @_ZN5nlsat6solver3imp10do_reorderEv(ptr noundef nonnull align 8 dereferenceable(1017) %0)
  %.pre = load i32, ptr %i.c, align 8
  br label %_ZN5nlsat6solver3imp14should_reorderEv.exit.thread

_ZN5nlsat6solver3imp14should_reorderEv.exit.thread: ; preds = %bb.b, %bb.c, %_ZN5nlsat6solver3imp14should_reorderEv.exit
  %2 = phi i32 [ 0, %bb.b ], [ %.pre, %bb.c ], [ %i.w, %_ZN5nlsat6solver3imp14should_reorderEv.exit ]
  %i.aa = load i8, ptr %i.e, align 4, !tbaa !218, !range !75, !noundef !73
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = load i8, ptr %i.f, align 4, !range !75
  %i.ad = trunc nuw i8 %i.ac to i1
  %.not6.i = xor i1 %i.ad, true
  %or.cond.not.i = select i1 %i.ab, i1 true, i1 %.not6.i
  %i.ae = load i8, ptr %i.g, align 8, !range !75
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond5.i = select i1 %or.cond.not.i, i1 true, i1 %i.af
  %3 = icmp ult i32 %2, 101
  %.not59 = select i1 %or.cond5.i, i1 true, i1 %3
  br i1 %.not59, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5nlsat6solver3imp14should_reorderEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN5nlsat6solver3imp10undo_untilINS1_9true_predEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !209 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not4.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.ah = phi i32 [ %i.aj, %.lr.ph.i.i.i ], [ %i.ag, %bb.d ]
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !209
  call void @_ZN5nlsat9evaluator3popEj(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 1)
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !209 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !230 ; 2 uses
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !231 ; 4 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2                 ; 5 uses
  %.not9.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i, label %._crit_edge8.i.i.i, label %.lr.ph7.i.i.i.preheader

.lr.ph7.i.i.i.preheader:                          ; preds = %._crit_edge.i.i.i
  %min.iters.check = icmp ult i64 %i.ap, 16
  br i1 %min.iters.check, label %.lr.ph7.i.i.i.preheader132, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph7.i.i.i.preheader
  %i.aq = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = icmp eq i64 %i.ar, 4294967295
  %i.at = icmp ugt i64 %i.aq, 4294967295
  %i.au = or i1 %i.as, %i.at
  br i1 %i.au, label %.lr.ph7.i.i.i.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ap, 8589934584              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> zeroinitializer, ptr %i.av, align 4, !tbaa !233
  store <4 x i32> zeroinitializer, ptr %i.aw, align 4, !tbaa !233
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %._crit_edge8.i.i.i, label %.lr.ph7.i.i.i.preheader132

.lr.ph7.i.i.i.preheader132:                       ; preds = %vector.scevcheck, %.lr.ph7.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph7.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph7.i.i.i

._crit_edge8.i.i.i:                               ; preds = %.lr.ph7.i.i.i, %middle.block, %._crit_edge.i.i.i
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZN5nlsat6solver3imp11do_simplifyEv.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge8.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 0, ptr %i.az, align 4, !tbaa !192
  br label %_ZN5nlsat6solver3imp11do_simplifyEv.exit

.lr.ph7.i.i.i:                                    ; preds = %.lr.ph7.i.i.i.preheader132, %.lr.ph7.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph7.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph7.i.i.i.preheader132 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.i.i
  store i32 0, ptr %i.ba, align 4, !tbaa !233
  %indvars.iv.next.i.i.i = add i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bb = and i64 %indvars.iv.next.i.i.i, 4294967295
  %i.bc = icmp ugt i64 %i.ap, %i.bb
  br i1 %i.bc, label %.lr.ph7.i.i.i, label %._crit_edge8.i.i.i, !llvm.loop !556

_ZN5nlsat6solver3imp11do_simplifyEv.exit:         ; preds = %._crit_edge8.i.i.i, %bb.e
  store i32 0, ptr %i.a, align 8, !tbaa !389
  store i32 -1, ptr %i.b, align 4, !tbaa !229
  store i8 1, ptr %i.e, align 4, !tbaa !218
  call void @_ZN5nlsat8simplifyclEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5nlsat6solver3imp11do_simplifyEv.exit, %_ZN5nlsat6solver3imp14should_reorderEv.exit.thread
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !229
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !314
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !244 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %.promoted.i = load i32, ptr %i.a, align 8, !tbaa !389 ; 2 uses
  %i.bl = zext i32 %.promoted.i to i64            ; 2 uses
  %i.bm = icmp ugt i64 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph.i, label %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !199
  %i.bo = load ptr, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %.lr.ph.i
  %i.bp = phi i64 [ %i.bl, %.lr.ph.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %.pr = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.cc, %.critedge.i ] ; 3 uses
  %i.bq = lshr i32 %.pr, 6
  %.zext.i = zext nneg i32 %i.bq to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.zext.i
  %i.bs = and i64 %i.bp, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !374
  %i.bv = and i64 %i.bu, %i.bt
  %.not.i7 = icmp eq i64 %i.bv, 0
  br i1 %.not.i7, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bp
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !240
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !233
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %bb.i, %bb.h
  %i.cc = add i32 %.pr, 1                         ; 3 uses
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !389
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.bk, %i.cd
  br i1 %i.ce, label %bb.h, label %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit.thread, !llvm.loop !557

_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit.thread: ; preds = %.critedge.i, %bb.g
  store i32 2147483647, ptr %i.a, align 8, !tbaa !389
  br label %bb.k

_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit:  ; preds = %bb.j
  %i.cf = icmp eq i32 %.pr, 2147483647
  br i1 %i.cf, label %bb.k, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader

bb.k:                                             ; preds = %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit.thread, %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit
  %i.cg = load i32, ptr %i.n, align 4, !tbaa !340
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.n, align 4, !tbaa !340
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !347 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !192 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !192
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, label %_ZN5nlsat6solver3imp9new_stageEv.exit

bb.m:                                             ; preds = %bb.f
  %i.cp = load i32, ptr %i.n, align 4, !tbaa !340
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.n, align 4, !tbaa !340
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !347 ; 4 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !192 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 -8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !192
  %i.cx = icmp eq i32 %i.cu, %i.cw
  br i1 %i.cx, label %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, label %_ZN5nlsat6solver3imp9new_stageEv.exit

_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split: ; preds = %bb.m, %bb.n, %bb.k, %bb.l
  call void @_ZN6vectorIN5nlsat6solver3imp5trailELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %.pre.i.i.i8 = load ptr, ptr %i.o, align 8, !tbaa !347 ; 2 uses
  %.phi.trans.insert.i.i.i9 = getelementptr inbounds i8, ptr %.pre.i.i.i8, i64 -4
  %.pre2.i.i.i10 = load i32, ptr %.phi.trans.insert.i.i.i9, align 4, !tbaa !192
  br label %_ZN5nlsat6solver3imp9new_stageEv.exit

_ZN5nlsat6solver3imp9new_stageEv.exit:            ; preds = %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split, %bb.n, %bb.l
  %.sink119 = phi i32 [ %i.cl, %bb.l ], [ %i.cu, %bb.n ], [ %.pre2.i.i.i10, %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split ] ; 2 uses
  %.sink117 = phi ptr [ %i.ci, %bb.l ], [ %i.cr, %bb.n ], [ %.pre.i.i.i8, %_ZN5nlsat6solver3imp9new_stageEv.exit.sink.split ] ; 2 uses
  %i.cy = zext i32 %.sink119 to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.sink117, i64 %i.cy
  store i32 3, ptr %i.cz, align 8, !tbaa !395
  %i.da = getelementptr inbounds i8, ptr %.sink117, i64 -4
  %i.db = add i32 %.sink119, 1
  store i32 %i.db, ptr %i.da, align 4, !tbaa !192
  %storemerge.in = load i32, ptr %i.b, align 4, !tbaa !229
  %storemerge = add i32 %storemerge.in, 1         ; 2 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !229
  %.pr45 = load i32, ptr %i.a, align 8, !tbaa !389
  %i.dc = icmp eq i32 %.pr45, 2147483647
  br i1 %i.dc, label %bb.o, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader

bb.o:                                             ; preds = %_ZN5nlsat6solver3imp9new_stageEv.exit
  %i.dd = load ptr, ptr %i.s, align 8, !tbaa !183 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.i

_ZNK5nlsat6solver3imp8num_varsEv.exit.i:          ; preds = %bb.o
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !192
  %.not.i12 = icmp ult i32 %storemerge, %i.dg
  br i1 %.not.i12, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader, label %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i

_ZN5nlsat6solver3imp12is_satisfiedEv.exit.preheader: ; preds = %_ZN5nlsat6solver3imp18peek_next_bool_varEv.exit, %_ZN5nlsat6solver3imp9new_stageEv.exit, %_ZNK5nlsat6solver3imp8num_varsEv.exit.i
  br label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit

_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i:   ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit.i, %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i, label %_ZN5nlsat10assignment5resetEv.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -4
  store i32 0, ptr %i.dj, align 4, !tbaa !192
  br label %_ZN5nlsat10assignment5resetEv.exit.i.i

_ZN5nlsat10assignment5resetEv.exit.i.i:           ; preds = %bb.p, %_ZNK5nlsat6solver3imp8num_varsEv.exit.thread.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !183 ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i11.i.i, label %_ZN5nlsat10assignment5resetEv.exit12.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5nlsat10assignment5resetEv.exit.i.i
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4
  store i32 0, ptr %i.dm, align 4, !tbaa !192
  br label %_ZN5nlsat10assignment5resetEv.exit12.i.i

_ZN5nlsat10assignment5resetEv.exit12.i.i:         ; preds = %bb.q, %_ZN5nlsat10assignment5resetEv.exit.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !298 ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.thread, label %_ZN6vectorIN5nlsat16bound_constraintELb1EjE3endEv.exit.i.i

_ZN6vectorIN5nlsat16bound_constraintELb1EjE3endEv.exit.i.i: ; preds = %_ZN5nlsat10assignment5resetEv.exit12.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !192 ; 2 uses
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = mul nuw nsw i64 %i.ds, 56
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dt
  %.not13.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not13.i.i, label %_ZN5nlsat6solver3imp12is_satisfiedEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIN5nlsat16bound_constraintELb1EjE3endEv.exit.i.i
  %i.dv = load ptr, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %.lr.ph17.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !192
  br label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZN5nlsat10assignment5resetEj.exit.i.i, %.lr.ph.split.i.i
  %.0914.i.i = phi ptr [ %i.do, %.lr.ph.split.i.i ], [ %i.ed, %_ZN5nlsat10assignment5resetEj.exit.i.i ] ; 2 uses
  %i.dz = load i32, ptr %.0914.i.i, align 8, !tbaa !301 ; 2 uses
  %i.ea = icmp ult i32 %i.dz, %i.dy
  br i1 %i.ea, label %bb.r, label %_ZN5nlsat10assignment5resetEj.exit.i.i

bb.r:                                             ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.eb = zext i32 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eb
  store i8 0, ptr %i.ec, align 1, !tbaa !261
  br label %_ZN5nlsat10assignment5resetEj.exit.i.i

_ZN5nlsat10assignment5resetEj.exit.i.i:           ; preds = %bb.r, %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ed, %i.du
  br i1 %.not.i.i, label %.lr.ph17.i.i.preheader, label %_ZNK6vectorIbLb0EjE4sizeEv.exit.i.i.i

.lr.ph17.i.i.preheader:                           ; preds = %_ZN5nlsat10assignment5resetEj.exit.i.i, %.lr.ph.i.i
  br label %.lr.ph17.i.i

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader, %.lr.ph17.i.i
  %indvars.iv.i.i = phi i64 [ %i.ee, %.lr.ph17.i.i ], [ %i.ds, %.lr.ph17.i.i.preheader ]
  %i.ee = add nsw i64 %indvars.iv.i.i, -1         ; 3 uses
end_hunk_0
