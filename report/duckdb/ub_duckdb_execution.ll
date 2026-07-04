inline.NumInlined: 8268
inline.NumDeleted: 4059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextEPKNS_10ExpressionE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.f, align 8, !tbaa !641
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit
  ret void

bb.e:                                             ; preds = %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.569", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr.560", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !666  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !667
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.a, align 8, !tbaa !666
  br label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !657    ; 4 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIPKN6duckdb10ExpressionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorIPKN6duckdb10ExpressionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 1152921504606846975)
  %i.o = select i1 %i.m, i64 1152921504606846975, i64 %i.n ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #38 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store ptr %1, ptr %i.r, align 8, !tbaa !56
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKN6duckdb10ExpressionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKN6duckdb10ExpressionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #39
  br label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !657
  store ptr %i.t, ptr %i.a, align 8, !tbaa !666
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  store ptr %i.u, ptr %i.c, align 8, !tbaa !667
  br label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.v = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38, !noalias !668 ; 3 uses
  invoke void @_ZN6duckdb23ExpressionExecutorStateC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_ZN6duckdb9make_uniqINS_23ExpressionExecutorStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.g, !noalias !668

common.resume:                                    ; preds = %bb.o, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.cb, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE9push_backEOS3_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #39, !noalias !668
  br label %common.resume

_ZN6duckdb9make_uniqINS_23ExpressionExecutorStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EE9push_backEOS3_.exit
  store ptr %i.v, ptr %3, align 8, !tbaa !660, !alias.scope !668
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.o       ; 4 uses

bb.h:                                             ; preds = %_ZN6duckdb9make_uniqINS_23ExpressionExecutorStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %0, ptr %i.y, align 8, !tbaa !671
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZN6duckdb18ExpressionExecutor15InitializeStateERKNS_10ExpressionERNS_23ExpressionExecutorStateE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.569") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.h
  %i.z = load ptr, ptr %2, align 8, !tbaa !662
  store ptr null, ptr %2, align 8, !tbaa !662
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !662 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !662
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %_ZN6duckdb10unique_ptrINS_15ExpressionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_15ExpressionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %.noexc
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.aa) #40, !inline_history !681
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !662  ; 3 uses
  %.not.i.i4 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i4, label %bb.i, label %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_15ExpressionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %i.ae = load ptr, ptr %.pr.i, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.pr.i) #40, !inline_history !682
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i, %_ZN6duckdb10unique_ptrINS_15ExpressionStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.ah = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ExpressionStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %.noexc5 unwind label %bb.o

.noexc5:                                          ; preds = %bb.j
  invoke void @_ZN6duckdb15ExpressionState6VerifyERNS_23ExpressionExecutorStateE(ptr noundef nonnull align 8 dereferenceable(184) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZN6duckdb23ExpressionExecutorState6VerifyEv.exit unwind label %bb.o

_ZN6duckdb23ExpressionExecutorState6VerifyEv.exit: ; preds = %.noexc5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !659 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !683
  %.not.i.i7 = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i7, label %bb.k, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZN6duckdb23ExpressionExecutorState6VerifyEv.exit
  %i.ao = load i64, ptr %3, align 8, !tbaa !660
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !660
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !659
  br label %_ZNSt10unique_ptrIN6duckdb23ExpressionExecutorStateESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %_ZN6duckdb23ExpressionExecutorState6VerifyEv.exit
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !658 ; 10 uses
  %i.ar = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc10 unwind label %bb.o

.noexc10:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i8 = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i8, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i9 = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #38
          to label %.noexc11 unwind label %bb.o   ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = load i64, ptr %3, align 8, !tbaa !660
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !660
  store ptr null, ptr %3, align 8, !tbaa !660
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %4 = sub i64 %i.ar, %i.as
  %5 = add i64 %4, -8                             ; 2 uses
  %i.be = lshr i64 %5, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bg = add i64 %i.ar, -8
  %i.bh = sub i64 %i.bg, %i.as
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.bj
  %scevgep23 = getelementptr i8, ptr %i.aq, i64 %i.bj
  %bound0 = icmp ult ptr %i.bb, %scevgep23
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.aq, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bn ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.aq, i64 %i.bn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.bo = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !660, !alias.scope !689, !noalias !684
  %wide.load25 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !660, !alias.scope !689, !noalias !684
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !660, !alias.scope !692, !noalias !689
  store <2 x i64> %wide.load25, ptr %i.bp, align 8, !tbaa !660, !alias.scope !692, !noalias !689
  %i.bq = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !660, !alias.scope !689, !noalias !684
  store <2 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !660, !alias.scope !689, !noalias !684
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.bs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !660, !alias.scope !687, !noalias !684
  store i64 %i.bs, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !660, !alias.scope !684, !noalias !687
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !660, !alias.scope !687, !noalias !684
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !697

_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc11 ], [ %i.bl, %middle.block ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.m
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !658
  store ptr %i.bv, ptr %i.ak, align 8, !tbaa !659
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bw, ptr %i.am, align 8, !tbaa !683
  %.pr = load ptr, ptr %3, align 8, !tbaa !660    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb23ExpressionExecutorStateESt14default_deleteIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bx = load ptr, ptr %.pr, align 8, !tbaa !662 ; 3 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i12, label %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i, label %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.n
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.bx) #40, !inline_history !698
  br label %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i, %bb.n
  call void @_ZdlPv(ptr noundef nonnull %.pr) #39
  br label %_ZNSt10unique_ptrIN6duckdb23ExpressionExecutorStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23ExpressionExecutorStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.o:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.l, %.noexc5, %bb.j, %bb.h, %bb.i, %_ZN6duckdb9make_uniqINS_23ExpressionExecutorStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb23ExpressionExecutorStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) initializes((0, 65)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !639
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  %i.c = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_24DebugVerifyVectorSettingENS_13ClientContextEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #40
  %i.e = load ptr, ptr %0, align 8, !tbaa !657    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.f, align 8, !tbaa !641
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit
  ret void

bb.e:                                             ; preds = %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(65) initializes((0, 65)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !639
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  %i.c = invoke noundef zeroext i8 @_ZN6duckdb8Settings3GetINS_24DebugVerifyVectorSettingENS_13ClientContextEEENSt9enable_ifIXsr3std7is_enumINT_11RETURN_TYPEEEE5valueES6_E4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #40
  %i.e = load ptr, ptr %0, align 8, !tbaa !657    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.f, align 8, !tbaa !641
  %i.g = load ptr, ptr %2, align 8, !tbaa !518    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !518  ; 2 uses
  %.not10 = icmp eq ptr %i.g, %i.i
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit
  ret void

.lr.ph:                                           ; preds = %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit, %bb.e
  %.sroa.07.011 = phi ptr [ %i.k, %bb.e ], [ %i.g, %_ZN6duckdb18ExpressionExecutorC2ERNS_13ClientContextE.exit ] ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.07.011)
          to label %bb.d unwind label %bb.f

end_hunk_0
begin_hunk_1_@_ZN6duckdb6VectorC1ENS_11LogicalTypeEPh

declare void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #1

declare void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !264
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !269
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !319
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !271  ; 8 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !264
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !269
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #40, !inline_history !321
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #40, !inline_history !321
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #40
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb18ExpressionExecutor9GetStatesEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(65) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ExpressionState8AddChildERNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.569", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.g, ptr %i.b, align 8, !tbaa !82
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !748, !nonnull !69, !align !336
  call void @_ZN6duckdb18ExpressionExecutor15InitializeStateERKNS_10ExpressionERNS_23ExpressionExecutorStateE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.569") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !763  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !764
  %.not.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.p = load i64, ptr %2, align 8, !tbaa !662
  store i64 %i.p, ptr %i.m, align 8, !tbaa !662
  store ptr null, ptr %2, align 8, !tbaa !662
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.l, align 8, !tbaa !763
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !765  ; 10 uses
  %i.s = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #38
          to label %.noexc13 unwind label %bb.m   ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = load i64, ptr %2, align 8, !tbaa !662
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !662
  store ptr null, ptr %2, align 8, !tbaa !662
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc13
  %3 = sub i64 %i.s, %i.t
  %4 = add i64 %3, -8                             ; 2 uses
  %i.af = lshr i64 %4, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ah = add i64 %i.s, -8
  %i.ai = sub i64 %i.ah, %i.t
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ak
  %scevgep28 = getelementptr i8, ptr %i.r, i64 %i.ak
  %bound0 = icmp ult ptr %i.ac, %scevgep28
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %i.r, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.r, i64 %i.ao ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.ap = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !tbaa !662, !alias.scope !771, !noalias !766
  %wide.load30 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !662, !alias.scope !771, !noalias !766
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !662, !alias.scope !774, !noalias !771
  store <2 x i64> %wide.load30, ptr %i.aq, align 8, !tbaa !662, !alias.scope !774, !noalias !771
  %i.ar = getelementptr i8, ptr %next.gep29, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep29, align 8, !tbaa !662, !alias.scope !771, !noalias !766
  store <2 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !662, !alias.scope !771, !noalias !766
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !776

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader32

.lr.ph.i.i.i.i.i.i.i.preheader32:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader32, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader32 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader32 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !662, !alias.scope !769, !noalias !766
  store i64 %i.at, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !662, !alias.scope !766, !noalias !769
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !662, !alias.scope !769, !noalias !766
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.m
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !777

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc13 ], [ %i.am, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !765
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !763
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !764
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !46  ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 36
  %switch.cast = zext nneg i8 %i.az to i37
  %switch.downshift = lshr i37 32212254719, %switch.cast
  %switch.masked = trunc i37 %switch.downshift to i1
  %i.bb = select i1 %i.ba, i1 true, i1 %switch.masked ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !778 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !779
  %.not.i14 = icmp eq ptr %i.bd, %i.bf
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i14, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bg = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.bg, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !780
  %i.bh = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.bh, label %bb.i, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !780
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !778
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.i, %bb.h
  %i.bj = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.bk = shl nuw i64 1, %i.bj                    ; 2 uses
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.bl = load i64, ptr %i.bd, align 8, !tbaa !39
  %i.bm = or i64 %i.bl, %i.bk
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

bb.k:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.bn = xor i64 %i.bk, -1
  %i.bo = load i64, ptr %i.bd, align 8, !tbaa !39
  %i.bp = and i64 %i.bo, %i.bn
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr %i.bd, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.bb)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.n

_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split: ; preds = %bb.j, %bb.k
  %.sink = phi i64 [ %i.bp, %bb.k ], [ %i.bm, %bb.j ]
  store i64 %.sink, ptr %i.bd, align 8, !tbaa !39
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split, %bb.l
  %i.br = load ptr, ptr %2, align 8, !tbaa !662   ; 3 uses
  %.not.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15ExpressionStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.br) #40, !inline_history !700
  br label %_ZNSt10unique_ptrIN6duckdb15ExpressionStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ExpressionStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void

bb.m:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.n ], [ %i.bv, %bb.m ]
  %i.bx = load ptr, ptr %2, align 8, !tbaa !662   ; 3 uses
  %.not.i17 = icmp eq ptr %i.bx, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6duckdb15ExpressionStateESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i18: ; preds = %bb.o
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.bx) #40, !inline_history !700
  br label %_ZNSt10unique_ptrIN6duckdb15ExpressionStateESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN6duckdb15ExpressionStateESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ExpressionState8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !748, !nonnull !69, !align !336
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !671
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !639
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev:bb.a

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1132   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1135 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !1120 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.d) #40, !inline_history !1136
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1137

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1132
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb18ColumnDataConsumerESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1138   ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !626  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !325 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #39
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !627

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !623
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.h = load i64, ptr %i.g, align 8, !tbaa !624
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !623  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #39
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i.i

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1139 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb18ColumnDataConsumer14ChunkReferenceESaIS2_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #39
  br label %_ZNSt6vectorIN6duckdb18ColumnDataConsumer14ChunkReferenceESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb18ColumnDataConsumer14ChunkReferenceESaIS2_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i.i, label %_ZNKSt14default_deleteIN6duckdb18ColumnDataConsumerEEclEPS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb18ColumnDataConsumer14ChunkReferenceESaIS2_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #39
  br label %_ZNKSt14default_deleteIN6duckdb18ColumnDataConsumerEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb18ColumnDataConsumerEEclEPS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb18ColumnDataConsumer14ChunkReferenceESaIS2_EED2Ev.exit.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #39
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnDataConsumerEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZN6duckdb13JoinHashTable10ProbeSpill14RegisterThreadEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.714", align 8 ; 9 uses
  %2 = alloca %"class.duckdb::unique_ptr.765", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #40 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #37
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21PartitionedColumnDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZN6duckdb21PartitionedColumnData12CreateSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.714") align 8 %1, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1135 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1142
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.d
  %i.j = load i64, ptr %1, align 8, !tbaa !1120
  store i64 %i.j, ptr %i.g, align 8, !tbaa !1120
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !1135
  br label %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !1132 ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #38
          to label %.noexc10 unwind label %bb.u   ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = load i64, ptr %1, align 8, !tbaa !1120
  store i64 %i.y, ptr %i.x, align 8, !tbaa !1120
  store ptr null, ptr %1, align 8, !tbaa !1120
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc10
  %3 = sub i64 %i.m, %i.n
  %4 = add i64 %3, -8                             ; 2 uses
  %i.z = lshr i64 %4, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader76, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ab = add i64 %i.m, -8
  %i.ac = sub i64 %i.ab, %i.n
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep49 = getelementptr i8, ptr %i.l, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep49
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.l, i64 %i.ai ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.aj = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 8, !tbaa !1120, !alias.scope !1148, !noalias !1143
  %wide.load51 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1120, !alias.scope !1148, !noalias !1143
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1120, !alias.scope !1151, !noalias !1148
  store <2 x i64> %wide.load51, ptr %i.ak, align 8, !tbaa !1120, !alias.scope !1151, !noalias !1148
  %i.al = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep50, align 8, !tbaa !1120, !alias.scope !1148, !noalias !1143
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1120, !alias.scope !1148, !noalias !1143
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader76

.lr.ph.i.i.i.i.i.i.preheader76:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader76, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader76 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader76 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1120, !alias.scope !1146, !noalias !1143
  store i64 %i.an, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !1120, !alias.scope !1143, !noalias !1146
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1120, !alias.scope !1146, !noalias !1143
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1154

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc10 ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.l) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.g
  store ptr %i.w, ptr %i.c, align 8, !tbaa !1132
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !1135
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !1142
  %.pr = load ptr, ptr %1, align 8, !tbaa !1120   ; 3 uses
  %.not.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.as = load ptr, ptr %.pr, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.pr) #40, !inline_history !1123
  br label %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.aw = invoke noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #38
          to label %.noexc12 unwind label %bb.v   ; 4 uses

.noexc12:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb32PartitionedColumnDataAppendStateC2Ev(ptr noundef nonnull align 8 dereferenceable(360) %i.aw)
          to label %bb.i unwind label %bb.h, !noalias !1155

bb.h:                                             ; preds = %.noexc12
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #39, !noalias !1155
  br label %.body

bb.i:                                             ; preds = %.noexc12
  store ptr %i.aw, ptr %2, align 8, !tbaa !1130, !alias.scope !1155
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1129 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1158
  %.not.i13 = icmp eq ptr %i.az, %i.bb
  %i.bc = ptrtoint ptr %i.aw to i64               ; 2 uses
  br i1 %.not.i13, label %bb.j, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.i
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !1130
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !1129
  br label %_ZNSt10unique_ptrIN6duckdb32PartitionedColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !1126 ; 10 uses
  %i.bf = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc23 unwind label %bb.w

.noexc23:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i14 = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i14, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i15 = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i15)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #38
          to label %.noexc24 unwind label %bb.w   ; 10 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store i64 %i.bc, ptr %i.bq, align 8, !tbaa !1130
  %.not10.i.i.i.i.i.i16 = icmp eq ptr %i.be, %i.az
  br i1 %.not10.i.i.i.i.i.i16, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i.i17.preheader:                   ; preds = %.noexc24
  %5 = sub i64 %i.bf, %i.bg
  %6 = add i64 %5, -8                             ; 2 uses
  %i.br = lshr i64 %6, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check60 = icmp ult i64 %6, 152
  br i1 %min.iters.check60, label %.lr.ph.i.i.i.i.i.i17.preheader75, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i.i.i.i.i17.preheader
  %i.bt = add i64 %i.bf, -8
  %i.bu = sub i64 %i.bt, %i.bg
  %i.bv = and i64 %i.bu, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.bp, i64 %i.bw
  %scevgep55 = getelementptr i8, ptr %i.be, i64 %i.bw
  %bound056 = icmp ult ptr %i.bp, %scevgep55
  %bound157 = icmp ult ptr %i.be, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i.i.i.i.i17.preheader75, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec63 = and i64 %i.bs, 4611686018427387900   ; 3 uses
  %i.bx = shl i64 %n.vec63, 3                     ; 2 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.be, i64 %i.bx
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.ca = shl i64 %index65, 3                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.bp, i64 %i.ca ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.be, i64 %i.ca ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.cb = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <2 x i64>, ptr %next.gep67, align 8, !tbaa !1130, !alias.scope !1164, !noalias !1159
  %wide.load69 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !1130, !alias.scope !1164, !noalias !1159
  %i.cc = getelementptr i8, ptr %next.gep66, i64 16
  store <2 x i64> %wide.load68, ptr %next.gep66, align 8, !tbaa !1130, !alias.scope !1167, !noalias !1164
  store <2 x i64> %wide.load69, ptr %i.cc, align 8, !tbaa !1130, !alias.scope !1167, !noalias !1164
  %i.cd = getelementptr i8, ptr %next.gep67, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !1130, !alias.scope !1164, !noalias !1159
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !1130, !alias.scope !1164, !noalias !1159
  %index.next70 = add nuw i64 %index65, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.ce, label %middle.block71, label %vector.body64, !llvm.loop !1169

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.bs, %n.vec63
  br i1 %cmp.n72, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i17.preheader75

.lr.ph.i.i.i.i.i.i17.preheader75:                 ; preds = %vector.memcheck53, %.lr.ph.i.i.i.i.i.i17.preheader, %middle.block71
  %.012.i.i.i.i.i.i18.ph = phi ptr [ %i.bp, %vector.memcheck53 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i17.preheader ], [ %i.by, %middle.block71 ]
  %.0911.i.i.i.i.i.i19.ph = phi ptr [ %i.be, %vector.memcheck53 ], [ %i.be, %.lr.ph.i.i.i.i.i.i17.preheader ], [ %i.bz, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i17:                             ; preds = %.lr.ph.i.i.i.i.i.i17.preheader75, %.lr.ph.i.i.i.i.i.i17
  %.012.i.i.i.i.i.i18 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i17 ], [ %.012.i.i.i.i.i.i18.ph, %.lr.ph.i.i.i.i.i.i17.preheader75 ] ; 2 uses
  %.0911.i.i.i.i.i.i19 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i17 ], [ %.0911.i.i.i.i.i.i19.ph, %.lr.ph.i.i.i.i.i.i17.preheader75 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.cf = load i64, ptr %.0911.i.i.i.i.i.i19, align 8, !tbaa !1130, !alias.scope !1162, !noalias !1159
  store i64 %i.cf, ptr %.012.i.i.i.i.i.i18, align 8, !tbaa !1130, !alias.scope !1159, !noalias !1162
  store ptr null, ptr %.0911.i.i.i.i.i.i19, align 8, !tbaa !1130, !alias.scope !1162, !noalias !1159
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i19, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.cg, %i.az
  br i1 %.not.i.i.i.i.i.i20, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i17, !llvm.loop !1170

_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i17, %middle.block71, %.noexc24
  %.0.lcssa.i.i.i.i.i.i21 = phi ptr [ %i.bp, %.noexc24 ], [ %i.by, %middle.block71 ], [ %i.ch, %.lr.ph.i.i.i.i.i.i17 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i21, i64 8
  %.not.i23.i.i22 = icmp eq ptr %i.be, null
  br i1 %.not.i23.i.i22, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.l
  store ptr %i.bp, ptr %i.av, align 8, !tbaa !1126
  store ptr %i.ci, ptr %i.ay, align 8, !tbaa !1129
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.cj, ptr %i.ba, align 8, !tbaa !1158
  br label %_ZNSt10unique_ptrIN6duckdb32PartitionedColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb32PartitionedColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb32PartitionedColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit
  %i.cl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21PartitionedColumnDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cn = invoke noundef nonnull align 8 dereferenceable(360) ptr @_ZNK6duckdb10unique_ptrINS_32PartitionedColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK6duckdb21PartitionedColumnData21InitializeAppendStateERNS_32PartitionedColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(128) %i.cl, ptr noundef nonnull align 8 dereferenceable(360) %i.cn)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1120
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1130
  %i.cs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #40 ; 0 uses
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.cp, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.cr, 1
  ret { ptr, ptr } %.fca.1.insert

bb.t:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit28

bb.u:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21PartitionedColumnDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !1120  ; 3 uses
  %.not.i26 = icmp eq ptr %i.cv, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit28, label %_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i27

_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i27: ; preds = %bb.u
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.cv) #40, !inline_history !1123
  br label %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit28

_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit28: ; preds = %_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i27, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.t ], [ %i.cu, %bb.u ], [ %i.cu, %_ZNKSt14default_deleteIN6duckdb21PartitionedColumnDataEEclEPS1_.exit.i27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.aa

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_32PartitionedColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.k
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb32PartitionedColumnDataAppendStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #40
  br label %.body

.body:                                            ; preds = %bb.v, %bb.h, %bb.w
  %.pn6 = phi { ptr, i32 } [ %i.da, %bb.w ], [ %i.cz, %bb.v ], [ %i.ax, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.aa

bb.x:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %_ZNSt10unique_ptrIN6duckdb32PartitionedColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %.body, %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit28
  %.pn8 = phi { ptr, i32 } [ %i.dd, %bb.z ], [ %i.dc, %bb.y ], [ %i.db, %bb.x ], [ %.pn6, %.body ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb21PartitionedColumnDataESt14default_deleteIS1_EED2Ev.exit28 ]
  %i.de = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #40 ; 0 uses
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_21PartitionedColumnDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1120   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_21PartitionedColumnDataESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e
end_hunk_2
begin_hunk_3_@_ZN6duckdb9make_uniqINS_18ColumnDataConsumerEJRNS_20ColumnDataCollectionERNS_6vectorImLb1ESaImEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

bb.j:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorImSaImEED2Ev.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.x) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

_ZNSt6vectorImSaImEED2Ev.exit8:                   ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.w, %bb.j ], [ %i.w, %bb.k ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #39
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnDataConsumerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1138   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_18ColumnDataConsumerESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_18ColumnDataConsumerESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb18ColumnDataConsumer14InitializeScanEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25PerfectAggregateHashTableC2ERNS_13ClientContextERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS6_EEES8_NS5_INS_15AggregateObjectELb1ESaISB_EEENS5_INS_5ValueELb1ESaISE_EEENS5_ImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(352) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef captures(none) %4, ptr noundef nonnull %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::vector.33", align 16 ; 6 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::vector.275", align 16 ; 7 uses
  %i.a = load <2 x ptr>, ptr %4, align 8, !tbaa !73
  store <2 x ptr> %i.a, ptr %8, align 16, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  store ptr %i.d, ptr %i.b, align 16, !tbaa !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb22BaseAggregateHashTableC2ERNS_13ClientContextERNS_9AllocatorERKNS_6vectorINS_15AggregateObjectELb1ESaIS6_EEENS5_INS_11LogicalTypeELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %8)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load ptr, ptr %8, align 16, !tbaa !81    ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #40
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !83

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #39
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25PerfectAggregateHashTableE, i64 16), ptr %0, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 51)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull %9, i64 noundef 2048)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load <2 x ptr>, ptr %7, align 8, !tbaa !59
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  store ptr %i.o, ptr %i.m, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  store i64 0, ptr %i.p, align 8, !tbaa !1216
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.t = load <2 x ptr>, ptr %6, align 8, !tbaa !1237
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !1237
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1238
  store ptr %i.w, ptr %i.u, align 8, !tbaa !1238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.y) #40
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.ab = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  invoke void @_ZN6duckdb14ArenaAllocatorC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 2048)
          to label %bb.h unwind label %bb.g, !noalias !1239

bb.g:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #39, !noalias !1239
  br label %.body37

bb.h:                                             ; preds = %.noexc
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !309, !alias.scope !1239
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !59  ; 8 uses
  %11 = ptrtoint ptr %i.ae to i64                 ; 2 uses
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !59  ; 3 uses
  %12 = ptrtoint ptr %i.af to i64                 ; 2 uses
  %.not60 = icmp eq ptr %i.ae, %i.af
  %.pre = load i64, ptr %i.p, align 8, !tbaa !1216 ; 4 uses
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ag = add i64 %12, -8
  %i.ah = sub i64 %i.ag, %11                      ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 152
  br i1 %min.iters.check, label %.lr.ph.preheader86, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ak = add i64 %12, -8
  %i.al = sub i64 %i.ak, %11
  %i.am = and i64 %i.al, -8
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am
  %scevgep83 = getelementptr i8, ptr %i.an, i64 8
  %bound0 = icmp ult ptr %i.p, %scevgep83
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao
  %i.aq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi84 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.ar = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !39, !alias.scope !1242
  %wide.load85 = load <2 x i64>, ptr %i.as, align 8, !tbaa !39, !alias.scope !1242
  %i.at = add <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.au = add <2 x i64> %vec.phi84, %wide.load85  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1245

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.au, %i.at
  %i.aw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  store i64 %i.aw, ptr %i.p, align 8, !tbaa !1216, !alias.scope !1246, !noalias !1242
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader86

.lr.ph.preheader86:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.preheader ], [ %i.aw, %middle.block ]
  %.sroa.056.061.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.h
  %i.ax = phi i64 [ %.pre, %bb.h ], [ %i.aw, %middle.block ], [ %i.bq, %.lr.ph ]
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !1248
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !82
  %i.bc = load ptr, ptr %3, align 8, !tbaa !81
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !1249
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bj = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %bb.m unwind label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #40
  br label %bb.ai

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.k:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #40
  br label %bb.ah

bb.l:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.lr.ph:                                           ; preds = %.lr.ph.preheader86, %.lr.ph
  %i.bo = phi i64 [ %i.bq, %.lr.ph ], [ %.ph, %.lr.ph.preheader86 ]
  %.sroa.056.061 = phi ptr [ %i.br, %.lr.ph ], [ %.sroa.056.061.ph, %.lr.ph.preheader86 ] ; 2 uses
  %i.bp = load i64, ptr %.sroa.056.061, align 8, !tbaa !39
  %i.bq = add i64 %i.bo, %i.bp                    ; 3 uses
  store i64 %i.bq, ptr %i.p, align 8, !tbaa !1216
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.056.061, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.af
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1250

bb.m:                                             ; preds = %._crit_edge
  %i.bs = load <2 x ptr>, ptr %5, align 8, !tbaa !282
  store <2 x ptr> %i.bs, ptr %10, align 16, !tbaa !282
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !283
  store ptr %i.bv, ptr %i.bt, align 16, !tbaa !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15TupleDataLayout10InitializeENS_6vectorINS_15AggregateObjectELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(217) %i.bj, ptr noundef nonnull %10)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bx = load ptr, ptr %10, align 16, !tbaa !77
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !80
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb15AggregateObjectEEEvT_S5_(ptr noundef %i.bx, ptr noundef %i.by)
          to label %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.p

_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.n
  %i.bz = load ptr, ptr %10, align 16, !tbaa !77  ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #39
  br label %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #41
  unreachable

_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  %i.cc = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !872 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !1251
  %i.cg = load i64, ptr %i.az, align 8, !tbaa !1248 ; 2 uses
  %i.ch = mul i64 %i.cg, %i.ce
  %i.ci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ch) #38
          to label %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit unwind label %bb.t ; 2 uses

_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit: ; preds = %bb.q
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !382 ; 2 uses
  store ptr %i.ci, ptr %i.q, align 8, !tbaa !382
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #39
  %.pre67 = load ptr, ptr %i.q, align 8, !tbaa !382
  %.pre68 = load i64, ptr %i.az, align 8, !tbaa !1248
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  %i.ck = phi i64 [ %.pre68, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.cg, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit ] ; 2 uses
  %i.cl = phi ptr [ %.pre67, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.ci, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIhEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !1252
  %i.cn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #38
          to label %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit unwind label %bb.u ; 2 uses

_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.co = load ptr, ptr %i.r, align 8, !tbaa !317 ; 2 uses
  store ptr %i.cn, ptr %i.r, align 8, !tbaa !317
  %.not.i.i.i.i.i42 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.co) #39
  %.pre69 = load ptr, ptr %i.r, align 8, !tbaa !317
  %.pre70 = load i64, ptr %i.az, align 8, !tbaa !1248
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit
  %i.cp = phi i64 [ %.pre70, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.ck, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit ]
  %i.cq = phi ptr [ %.pre69, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i ], [ %i.cn, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit ]
  call void @llvm.memset.p0.i64(ptr align 1 %i.cq, i8 0, i64 %i.cp, i1 false)
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.i)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.v

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !427
  %i.ct = load i64, ptr %i.az, align 8, !tbaa !1248
  %.not66 = icmp eq i64 %i.ct, 0
end_hunk_3
begin_hunk_4_@_ZN6duckdb25PerfectAggregateHashTable7CombineERS0_:bb.a
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %3, i64 noundef 2048)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 51)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %5, i64 noundef 2048)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #40
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !427
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1252
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1252
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_14ArenaAllocatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr %6, align 8, !tbaa !309
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !310
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1248 ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.n

._crit_edge:                                      ; preds = %bb.s, %bb.g
  %.024.lcssa = phi i64 [ 0, %bb.g ], [ %.125, %bb.s ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.t unwind label %bb.aa

bb.h:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #40
  br label %bb.af

bb.i:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.j:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #40
  br label %bb.ae

bb.k:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.l:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.m:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.n:                                             ; preds = %.lr.ph, %bb.s
  %i.z = phi i64 [ %i.m, %.lr.ph ], [ %i.am, %bb.s ] ; 2 uses
  %.02351 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.s ] ; 3 uses
  %.02450 = phi i64 [ 0, %.lr.ph ], [ %.125, %bb.s ] ; 4 uses
  %.02649 = phi ptr [ %i.h, %.lr.ph ], [ %i.ap, %bb.s ] ; 2 uses
  %.02748 = phi ptr [ %i.f, %.lr.ph ], [ %i.ao, %bb.s ] ; 2 uses
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !317
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.02351
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !425, !range !66, !noundef !69
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !317
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.02351
  store i8 1, ptr %i.af, align 1, !tbaa !425
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02450
  store ptr %.02748, ptr %i.ag, align 8, !tbaa !382
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02450
  store ptr %.02649, ptr %i.ah, align 8, !tbaa !382
  %i.ai = add i64 %.02450, 1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 2048
  br i1 %i.aj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ak = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6duckdb13RowOperations13CombineStatesERNS_18RowOperationsStateERNS_15TupleDataLayoutERNS_6VectorES6_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(217) %i.ak, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef 2048)
          to label %._crit_edge52 unwind label %bb.r

._crit_edge52:                                    ; preds = %bb.q
  %.pre = load i64, ptr %i.l, align 8, !tbaa !1248
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %._crit_edge52, %bb.o, %bb.n
  %i.am = phi i64 [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %.pre, %._crit_edge52 ] ; 2 uses
  %.125 = phi i64 [ %.02450, %bb.n ], [ %i.ai, %bb.o ], [ 0, %._crit_edge52 ] ; 2 uses
  %i.an = load i64, ptr %i.q, align 8, !tbaa !1251 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02748, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.02649, i64 %i.an
  %i.aq = add nuw i64 %.02351, 1                  ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.am
  br i1 %i.ar, label %bb.n, label %._crit_edge, !llvm.loop !1324

bb.t:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb13RowOperations13CombineStatesERNS_18RowOperationsStateERNS_15TupleDataLayoutERNS_6VectorES6_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(217) %i.s, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %.024.lcssa)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1255 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1325
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !309
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !309
  store ptr null, ptr %i.at, align 8, !tbaa !309
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !1255
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.w:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !1254 ; 10 uses
  %i.bb = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.x, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #38
          to label %.noexc43 unwind label %bb.aa  ; 10 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !309
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !309
  store ptr null, ptr %i.at, align 8, !tbaa !309
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.av
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc43
  %7 = sub i64 %i.bb, %i.bc
  %8 = add i64 %7, -8                             ; 2 uses
  %i.bo = lshr i64 %8, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bq = add i64 %i.bb, -8
  %i.br = sub i64 %i.bq, %i.bc
  %i.bs = and i64 %i.br, -8
  %i.bt = add i64 %i.bs, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bl, i64 %i.bt
  %scevgep61 = getelementptr i8, ptr %i.ba, i64 %i.bt
  %bound0 = icmp ult ptr %i.bl, %scevgep61
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bl, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ba, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bx ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.ba, i64 %i.bx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.by = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !309, !alias.scope !1331, !noalias !1326
  %wide.load63 = load <2 x i64>, ptr %i.by, align 8, !tbaa !309, !alias.scope !1331, !noalias !1326
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !309, !alias.scope !1334, !noalias !1331
  store <2 x i64> %wide.load63, ptr %i.bz, align 8, !tbaa !309, !alias.scope !1334, !noalias !1331
  %i.ca = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !309, !alias.scope !1331, !noalias !1326
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !309, !alias.scope !1331, !noalias !1326
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader65

.lr.ph.i.i.i.i.i.i.i.preheader65:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader65, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !309, !alias.scope !1329, !noalias !1326
  store i64 %i.cc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !309, !alias.scope !1326, !noalias !1329
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !309, !alias.scope !1329, !noalias !1326
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1337

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc43
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc43 ], [ %i.bv, %middle.block ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ba) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !1254
  store ptr %i.cf, ptr %i.au, align 8, !tbaa !1255
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.cg, ptr %i.aw, align 8, !tbaa !1325
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1338, !nonnull !69, !align !336
  %i.cj = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc44 unwind label %bb.ab  ; 3 uses

.noexc44:                                         ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  invoke void @_ZN6duckdb14ArenaAllocatorC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef 2048)
          to label %_ZN6duckdb9make_uniqINS_14ArenaAllocatorEJRNS_9AllocatorEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.z, !noalias !1339

bb.z:                                             ; preds = %.noexc44
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cj) #39, !noalias !1339
  br label %.body

_ZN6duckdb9make_uniqINS_14ArenaAllocatorEJRNS_9AllocatorEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc44
  %i.cl = load ptr, ptr %i.at, align 8, !tbaa !309 ; 3 uses
  store ptr %i.cj, ptr %i.at, align 8, !tbaa !309
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14ArenaAllocatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14ArenaAllocatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14ArenaAllocatorEJRNS_9AllocatorEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @_ZN6duckdb14ArenaAllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cl) #40
  call void @_ZdlPv(ptr noundef nonnull %i.cl) #39
  br label %_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb14ArenaAllocatorEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_14ArenaAllocatorEJRNS_9AllocatorEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.cm = load ptr, ptr %i.k, align 8, !tbaa !318 ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i45, label %_ZN6duckdb18RowOperationsStateD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.cm) #40
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #39
  br label %_ZN6duckdb18RowOperationsStateD2Ev.exit

_ZN6duckdb18RowOperationsStateD2Ev.exit:          ; preds = %_ZNSt10unique_ptrIN6duckdb14ArenaAllocatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void

bb.aa:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.x, %bb.t, %._crit_edge
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ArenaAllocatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.z, %bb.aa, %bb.r
  %.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.cn, %bb.aa ], [ %i.co, %bb.ab ], [ %i.ck, %bb.z ]
  call void @_ZN6duckdb18RowOperationsStateD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.y, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %bb.ac, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.k ], [ %.pn.pn, %bb.ac ], [ %i.x, %bb.l ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.j, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ad ], [ %i.v, %bb.j ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ae ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25PerfectAggregateHashTable4ScanERmRNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = alloca [2048 x i32], align 16            ; 12 uses
  %5 = alloca %"struct.duckdb::RowOperationsState", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !1248
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi i64 [ %i.f, %.lr.ph ], [ %i.ab, %bb.d ] ; 4 uses
  %.043 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 4 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !317
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !425, !range !66, !noundef !69
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !1252
end_hunk_4
begin_hunk_5_@_ZNK6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EEdeEv:bb.a
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.e) #39
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #40
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.a, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !1389
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16PhysicalOperator5PrintEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(136) %0, i8 noundef zeroext 0)
  invoke void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.d) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.h) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %i.g
}

declare void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16PhysicalOperator11GetChildrenEv(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::vector.865") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.013.021 = load ptr, ptr %i.a, align 8, !tbaa !1409 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.013.021, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa18 = phi ptr [ null, %bb.a ], [ %i.ao, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa18, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit
  %i.d = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ] ; 6 uses
  %.sroa.013.023 = phi ptr [ %.sroa.013.021, %.lr.ph ], [ %.sroa.013.0, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.e = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.013.023, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1410 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !1412
  %.not.i.i = icmp eq ptr %i.d, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.g to i64
  store i64 %i.i, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !1415
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #38
          to label %.noexc10 unwind label %.loopexit ; 8 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.g to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %i.x = ptrtoaddr ptr %i.u to i64
  %2 = sub i64 %i.k, %i.l
  %3 = add i64 %2, -8                             ; 2 uses
  %i.y = lshr i64 %3, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  %i.aa = sub i64 %i.l, %i.x
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.e, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.e, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.af = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep39, align 8, !alias.scope !1419, !noalias !1416
  %wide.load40 = load <2 x i64>, ptr %i.af, align 8, !alias.scope !1419, !noalias !1416
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1416, !noalias !1419
  store <2 x i64> %wide.load40, ptr %i.ag, align 8, !alias.scope !1416, !noalias !1419
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader42

.lr.ph.i.i.i.i.i.i.i.preheader42:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader42, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader42 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader42 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1419, !noalias !1416
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1416, !noalias !1419
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1422

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc10 ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.al, ptr %i.b, align 8, !tbaa !1415
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.am, ptr %i.c, align 8, !tbaa !1412
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.an = phi ptr [ %i.al, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ]
  %i.ao = phi ptr [ %i.u, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.013.0 = load ptr, ptr %.sroa.013.023, align 8, !tbaa !1409 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, null
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.e, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16PhysicalOperator23SetEstimatedCardinalityERNS_27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.1609", align 8  ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !364
  store i32 1970039845, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !365
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.e, align 4, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !tbaa !39, !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !1426
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !1426
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %2, align 8, !tbaa !433, !noalias !1426 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !436, !noalias !1426 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.j) #39
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !437

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !433, !noalias !1426
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.n = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i, label %.noexc.i10, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.n) #39
  br label %.noexc.i10

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1426
  br label %.body

.noexc.i10:                                       ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 25, ptr %i.a, align 8, !tbaa !39
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.k   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i10
  store ptr %i.q, ptr %5, align 8, !tbaa !54
  %i.r = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.q, ptr noundef nonnull align 1 dereferenceable(25) @.str.24, i64 25, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !365
  %i.t = load ptr, ptr %5, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixERKS6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.l       ; 9 uses

bb.d:                                             ; preds = %.noexc11
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %3, align 8, !tbaa !54     ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK6duckdb25RadixPartitionedHashTable8FinalizeERNS_13ClientContextERNS_15GlobalSinkStateE:bb.a
vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ar = add i64 %i.ak, -8
  %i.as = sub i64 %i.ar, %i.af
  %i.at = and i64 %i.as, -8
  %i.au = add i64 %i.at, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.au
  %scevgep87 = getelementptr i8, ptr %i.ad, i64 %i.au
  %bound0 = icmp ult ptr %i.am, %scevgep87
  %bound1 = icmp ult ptr %i.ad, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader119, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.ad, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ay ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.ad, i64 %i.ay ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  %i.az = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep88, align 8, !tbaa !1698, !alias.scope !1809, !noalias !1804
  %wide.load89 = load <2 x i64>, ptr %i.az, align 8, !tbaa !1698, !alias.scope !1809, !noalias !1804
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1698, !alias.scope !1812, !noalias !1809
  store <2 x i64> %wide.load89, ptr %i.ba, align 8, !tbaa !1698, !alias.scope !1812, !noalias !1809
  %i.bb = getelementptr i8, ptr %next.gep88, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep88, align 8, !tbaa !1698, !alias.scope !1809, !noalias !1804
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !1698, !alias.scope !1809, !noalias !1804
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1814

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader119

.lr.ph.i.i.i.i.i.preheader119:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader119, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader119 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1807, !noalias !1804
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1804, !noalias !1807
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1807, !noalias !1804
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1815

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc52
  %.not.i8.i = icmp eq ptr %i.ad, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.am, ptr %i.z, align 8, !tbaa !1696
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store ptr %i.bg, ptr %i.ai, align 8, !tbaa !1697
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.x
  store ptr %i.bh, ptr %i.ab, align 8, !tbaa !1803
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %.not67 = icmp eq ptr %i.t, %i.u
  br i1 %.not67, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.p

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

bb.n:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

bb.p:                                             ; preds = %.lr.ph, %bb.ai
  %.04366 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %bb.ai ] ; 2 uses
  %i.bo = load ptr, ptr %i.r, align 8, !tbaa !487
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.04366 ; 4 uses
  %i.bq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.br = invoke noundef i64 @_ZNK6duckdb19TupleDataCollection11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.bq)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.bs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.bs)
          to label %bb.t unwind label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !39
  %i.bv = call noundef i64 @llvm.umax.i64(i64 %i.bu, i64 4096)
  %i.bw = uitofp i64 %i.bv to double
  %i.bx = fmul nnan double %i.bw, 1.500000e+00
  %i.by = fptoui double %i.bx to i64
  %i.bz = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.by)
          to label %_ZN6duckdb25GroupedAggregateHashTable19GetCapacityForCountEm.exit unwind label %bb.ae

_ZN6duckdb25GroupedAggregateHashTable19GetCapacityForCountEm.exit: ; preds = %bb.t
  %i.ca = shl i64 %i.bz, 3
  %i.cb = add i64 %i.ca, %i.br
  %i.cc = load i64, ptr %i.bi, align 8, !tbaa !1816
  %i.cd = call noundef i64 @llvm.umax.i64(i64 %i.cc, i64 %i.cb)
  store i64 %i.cd, ptr %i.bi, align 8, !tbaa !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.ce = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #38
          to label %bb.u unwind label %bb.af      ; 7 uses

bb.u:                                             ; preds = %_ZN6duckdb25GroupedAggregateHashTable19GetCapacityForCountEm.exit
  %i.cf = load i64, ptr %i.bp, align 8, !tbaa !376, !noalias !1817
  store ptr null, ptr %i.bp, align 8, !tbaa !376, !noalias !1817
  store i8 1, ptr %i.ce, align 1, !tbaa !1457, !noalias !1817
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.cg, i8 0, i64 65, i1 false), !noalias !1817
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !376, !noalias !1817
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  store double 0.000000e+00, ptr %i.ci, align 8, !tbaa !1820, !noalias !1817
  store ptr %i.ce, ptr %3, align 8, !tbaa !1698, !alias.scope !1817
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !1697 ; 6 uses
  %i.ck = load ptr, ptr %i.ab, align 8, !tbaa !1803
  %.not.i = icmp eq ptr %i.cj, %i.ck
  %i.cl = ptrtoint ptr %i.ce to i64               ; 2 uses
  br i1 %.not.i, label %bb.v, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.u
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !1698
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cm, ptr %i.bj, align 8, !tbaa !1697
  br label %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !1696 ; 10 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc55 unwind label %bb.ag

.noexc55:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #38
          to label %.noexc56 unwind label %.thread ; 10 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  store i64 %i.cl, ptr %i.cz, align 8, !tbaa !1698
  store ptr null, ptr %3, align 8, !tbaa !1698
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc56
  %4 = sub i64 %i.co, %i.cp
  %5 = add i64 %4, -8                             ; 2 uses
  %i.da = lshr i64 %5, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check100 = icmp ult i64 %5, 56
  br i1 %min.iters.check100, label %.lr.ph.i.i.i.i.i.i.preheader115, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep92 = getelementptr i8, ptr %i.cy, i64 8
  %i.dc = add i64 %i.co, -8
  %i.dd = sub i64 %i.dc, %i.cp
  %i.de = and i64 %i.dd, -8                       ; 2 uses
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 %i.de
  %scevgep94 = getelementptr i8, ptr %i.cn, i64 8
  %scevgep95 = getelementptr i8, ptr %scevgep94, i64 %i.de
  %bound096 = icmp ult ptr %i.cy, %scevgep95
  %bound197 = icmp ult ptr %i.cn, %scevgep93
  %found.conflict98 = and i1 %bound096, %bound197
  br i1 %found.conflict98, label %.lr.ph.i.i.i.i.i.i.preheader115, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck91
  %n.vec103 = and i64 %i.db, 4611686018427387900  ; 3 uses
  %i.df = shl i64 %n.vec103, 3                    ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cy, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cn, i64 %i.df
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph101
  %index105 = phi i64 [ 0, %vector.ph101 ], [ %index.next110, %vector.body104 ] ; 2 uses
  %i.di = shl i64 %index105, 3                    ; 2 uses
  %next.gep106 = getelementptr i8, ptr %i.cy, i64 %i.di ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.cn, i64 %i.di ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.dj = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load108 = load <2 x i64>, ptr %next.gep107, align 8, !tbaa !1698, !alias.scope !1826, !noalias !1821
  %wide.load109 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !1698, !alias.scope !1826, !noalias !1821
  %i.dk = getelementptr i8, ptr %next.gep106, i64 16
  store <2 x i64> %wide.load108, ptr %next.gep106, align 8, !tbaa !1698, !alias.scope !1829, !noalias !1826
  store <2 x i64> %wide.load109, ptr %i.dk, align 8, !tbaa !1698, !alias.scope !1829, !noalias !1826
  %i.dl = getelementptr i8, ptr %next.gep107, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep107, align 8, !tbaa !1698, !alias.scope !1826, !noalias !1821
  store <2 x ptr> splat (ptr null), ptr %i.dl, align 8, !tbaa !1698, !alias.scope !1826, !noalias !1821
  %index.next110 = add nuw i64 %index105, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.dm, label %middle.block111, label %vector.body104, !llvm.loop !1831

middle.block111:                                  ; preds = %vector.body104
  %cmp.n112 = icmp eq i64 %i.db, %n.vec103
  br i1 %cmp.n112, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader115

.lr.ph.i.i.i.i.i.i.preheader115:                  ; preds = %vector.memcheck91, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block111
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cy, %vector.memcheck91 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dg, %middle.block111 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %vector.memcheck91 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dh, %middle.block111 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader115, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader115 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader115 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.dn = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1824, !noalias !1821
  store i64 %i.dn, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1821, !noalias !1824
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !1698, !alias.scope !1824, !noalias !1821
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, %i.cj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1832

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block111, %.noexc56
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cy, %.noexc56 ], [ %i.dg, %middle.block111 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cn) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.x
  store ptr %i.cy, ptr %i.z, align 8, !tbaa !1696
  store ptr %i.dq, ptr %i.bj, align 8, !tbaa !1697
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.dr, ptr %i.ab, align 8, !tbaa !1803
  %.pr = load ptr, ptr %3, align 8, !tbaa !1698   ; 2 uses
  %.not.i57 = icmp eq ptr %.pr, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZNKSt14default_deleteIN6duckdb18AggregatePartitionEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.pr)
  br label %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br i1 %i.q, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit
  %i.ds = atomicrmw add ptr %i.bk, i64 1 seq_cst, align 8 ; 0 uses
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18AggregatePartitionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.du = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18AggregatePartitionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 88
  store atomic double 1.000000e+00, ptr %i.dv seq_cst, align 8
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18AggregatePartitionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18AggregatePartitionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 72
  store i8 2, ptr %i.dy, align 8, !tbaa !1833
  br label %bb.ai

bb.ae:                                            ; preds = %bb.t, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.s, %bb.r, %bb.q, %bb.p
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

bb.af:                                            ; preds = %_ZN6duckdb25GroupedAggregateHashTable19GetCapacityForCountEm.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit59

.thread:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !1698  ; 2 uses
  %.not.i58 = icmp eq ptr %.pre, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit59, label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag
  %lpad.phi80 = phi { ptr, i32 } [ %lpad.loopexit, %.thread ], [ %lpad.loopexit.split-lp, %bb.ag ]
  %i.eb = phi ptr [ %i.ce, %.thread ], [ %.pre, %bb.ag ]
  call void @_ZNKSt14default_deleteIN6duckdb18AggregatePartitionEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.eb)
  br label %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit59

_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit59: ; preds = %bb.ah, %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.af ], [ %lpad.loopexit.split-lp, %bb.ag ], [ %lpad.phi80, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

bb.ai:                                            ; preds = %bb.ad, %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit
  %i.ec = add nuw i64 %.04366, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, %i.y
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !1836

bb.aj:                                            ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i64 0, ptr %i.ed, align 8, !tbaa !1801
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18AggregatePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ef = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %.loopexit
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !1797
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1816
  %i.ek = add i64 %i.ej, %i.eh
  invoke void @_ZN6duckdb20TemporaryMemoryState21SetMinimumReservationEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, i64 noundef %i.ek)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.el = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6duckdb20TemporaryMemoryState7SetZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.el)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.an

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.am
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 1, ptr %i.em, align 8, !tbaa !1684
  %i.en = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #40 ; 0 uses
  ret void

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %.loopexit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit61

_ZNSt11unique_lockISt5mutexED2Ev.exit61:          ; preds = %bb.an, %bb.n, %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit59, %bb.ae, %bb.o, %bb.m
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.an ], [ %i.bl, %bb.m ], [ %i.bm, %bb.n ], [ %i.bn, %bb.o ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb18AggregatePartitionESt14default_deleteIS1_EED2Ev.exit59 ], [ %i.dz, %bb.ae ]
  %i.ep = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #40 ; 0 uses
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn
}

end_hunk_6
begin_hunk_7_@_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb14ArenaAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #40
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i8, ptr %2, align 1, !tbaa !2121
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 noundef zeroext %i.r)
          to label %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKNS0_13LogicalTypeIdEEEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKNS0_13LogicalTypeIdEEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKNS0_13LogicalTypeIdEEEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKNS0_13LogicalTypeIdEEEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKNS0_13LogicalTypeIdEEEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i) #40
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i) #40
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2122

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKNS0_13LogicalTypeIdEEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb11LogicalTypeEEE9constructIS1_JRKNS0_13LogicalTypeIdEEEEvRS2_PT_DpOT0_.exit ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i27
  %.012.i.i.i.i28 = phi ptr [ %i.w, %.lr.ph.i.i.i.i27 ], [ %i.u, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.v, %.lr.ph.i.i.i.i27 ], [ %1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i29) #40
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i29) #40
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.v, %i.b
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27, !llvm.loop !2122

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i.i27, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i31 = phi ptr [ %i.u, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.w, %.lr.ph.i.i.i.i27 ]
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i.i31, ptr %i.a, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.y, ptr %i.x, align 8, !tbaa !75
  ret void

bb.d:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #40 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #39
  invoke void @__cxa_rethrow() #37
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.z

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #41
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb15TupleDataLayoutESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb15TupleDataLayoutESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb15TupleDataLayoutD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %i.a) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb15TupleDataLayoutESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb15TupleDataLayoutESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb15TupleDataLayoutESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1992 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !272
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #40
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6duckdb15TupleDataLayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(217)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb14ExpressionTypeESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN6duckdb14ExpressionTypeES1_EvT_S3_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !865
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !304  ; 12 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !303     ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  %.pre92 = load ptr, ptr %i.c, align 8, !tbaa !304
  br label %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !303
  store i8 %i.q, ptr %i.d, align 1, !tbaa !303
  br label %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre92, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !304
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %.lr.ph.preheader.i.i.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %.lr.ph.preheader.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !303
  store i8 %i.z, ptr %i.y, align 1, !tbaa !303
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false), !tbaa !303
  br label %_ZSt4fillIPN6duckdb14ExpressionTypeES1_EvT_S3_RKT0_.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPN6duckdb14ExpressionTypeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.k
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false), !tbaa !303
  br label %_ZSt24__uninitialized_fill_n_aIPN6duckdb14ExpressionTypeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPN6duckdb14ExpressionTypeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !304
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !55

bb.l:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN6duckdb14ExpressionTypeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !304
  br label %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN6duckdb14ExpressionTypeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.n, label %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.n:                                             ; preds = %bb.m
  %i.af = load i8, ptr %1, align 1, !tbaa !303
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !303
  br label %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit69: ; preds = %bb.n, %bb.m, %bb.l
  %i.ag = phi ptr [ %.0.i.i.i.i.i, %bb.n ], [ %.0.i.i.i.i.i, %bb.m ], [ %.pre, %bb.l ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !304
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPN6duckdb14ExpressionTypeES1_EvT_S3_RKT0_.exit, label %.lr.ph.preheader.i.i.i71

.lr.ph.preheader.i.i.i71:                         ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false), !tbaa !303
  br label %_ZSt4fillIPN6duckdb14ExpressionTypeES1_EvT_S3_RKT0_.exit

bb.o:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !305   ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.p, label %_ZNKSt6vectorIN6duckdb14ExpressionTypeESaIS1_EE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #37
  unreachable

_ZNKSt6vectorIN6duckdb14ExpressionTypeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIN6duckdb14ExpressionTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNKSt6vectorIN6duckdb14ExpressionTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.q ], [ null, %_ZNKSt6vectorIN6duckdb14ExpressionTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %.pre.i.i.i.i.i.i.i75 = load i8, ptr %3, align 1, !tbaa !303
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %.pre.i.i.i.i.i.i.i75, i64 %2, i1 false), !tbaa !303
  %i.aw = icmp sgt i64 %i.as, 1
  br i1 %i.aw, label %bb.s, label %bb.t, !prof !55

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.t:                                             ; preds = %bb.r
  %i.ax = icmp eq i64 %i.as, 1
  br i1 %i.ax, label %bb.u, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load i8, ptr %i.ai, align 1, !tbaa !303
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !303
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.u, %bb.t, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.ba = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 1
  br i1 %i.bb, label %bb.v, label %bb.w, !prof !55

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %1, i64 %i.ba, i1 false)
  br label %bb.y

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.bc = icmp eq i64 %i.ba, 1
  br i1 %i.bc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bd = load i8, ptr %1, align 1, !tbaa !303
  store i8 %i.bd, ptr %i.az, align 1, !tbaa !303
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %.not.i79 = icmp eq ptr %i.ai, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseIN6duckdb14ExpressionTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZdlPv(ptr noundef nonnull %i.ai) #39
  br label %_ZNSt12_Vector_baseIN6duckdb14ExpressionTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb14ExpressionTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.y, %bb.z
  store ptr %i.au, ptr %0, align 8, !tbaa !305
  store ptr %i.be, ptr %i.c, align 8, !tbaa !304
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !865
  br label %_ZSt4fillIPN6duckdb14ExpressionTypeES1_EvT_S3_RKT0_.exit

_ZSt4fillIPN6duckdb14ExpressionTypeES1_EvT_S3_RKT0_.exit: ; preds = %.lr.ph.preheader.i.i.i, %_ZSt22__uninitialized_move_aIPN6duckdb14ExpressionTypeES2_SaIS1_EET0_T_S5_S4_RT1_.exit69, %.lr.ph.preheader.i.i.i71, %_ZNSt12_Vector_baseIN6duckdb14ExpressionTypeESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

declare void @_ZN6duckdb25RadixPartitionedTupleDataC1ERNS_13BufferManagerENS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagEmm(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKmS9_EEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !436  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2053
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !364
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !365  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !54
  %i.o = load i64, ptr %i.i, align 8, !tbaa !272
  store i64 %i.o, ptr %i.g, align 8, !tbaa !272
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !365
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !365
  store ptr %i.i, ptr %i.f, align 8, !tbaa !54
  store i64 0, ptr %i.q, align 8, !tbaa !365
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !436
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !436
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !54 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = icmp eq ptr %.pre11, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !413
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
end_hunk_7
begin_hunk_8_@"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEEvT_SD_SD_T0_SE_T1_":bb.a

tailrecurse:                                      ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.054.0 = phi ptr [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %.sroa.051.0 = phi ptr [ %i.k, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.q, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %.043 = phi i64 [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %.0 = phi i64 [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.v, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %i.w = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.054.0, ptr %.tr6776, ptr %.sroa.051.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEEvT_SD_SD_T0_SE_T1_"(ptr %.tr75, ptr %.sroa.054.0, ptr %i.w, i64 noundef %.0, i64 noundef %.043, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.x = sub nsw i64 %.tr6977, %.0                ; 2 uses
  %i.y = sub nsw i64 %.tr7078, %.043              ; 2 uses
  %i.z = icmp eq i64 %i.x, 0
  %i.aa = icmp eq i64 %i.y, 0
  %or.cond = or i1 %i.z, %i.aa
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc ptr @"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEET_SD_SD_RKT0_T1_"(ptr %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_val") align 8 captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, label %._crit_edge

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2182
  %i.h = load ptr, ptr %3, align 8, !tbaa !2184, !nonnull !69, !align !336 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1008 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !69, !align !336
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.016 = phi i64 [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.sroa.011.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.l = lshr i64 %.016, 1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015, i64 %i.l ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.q)
  %i.s = load i64, ptr %i.m, align 8, !tbaa !39
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.v)
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39
  %i.y = uitofp i64 %i.x to double
  %i.z = load double, ptr %i.i, align 8, !tbaa !851
  %i.aa = fmul double %i.z, %i.y
  %i.ab = fptoui double %i.aa to i64
  %i.ac = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.ab)
  %i.ad = tail call noundef i64 @llvm.umax.i64(i64 %i.ac, i64 16384)
  %i.ae = shl i64 %i.ad, 3
  %i.af = add i64 %i.ae, %i.r
  %i.ag = load i64, ptr %2, align 8, !tbaa !39
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  %i.ak = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.aj)
  %i.al = load i64, ptr %2, align 8, !tbaa !39
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ao)
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !39
  %i.ar = uitofp i64 %i.aq to double
  %i.as = load double, ptr %i.i, align 8, !tbaa !851
  %i.at = fmul double %i.as, %i.ar
  %i.au = fptoui double %i.at to i64
  %i.av = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.au)
  %i.aw = tail call noundef i64 @llvm.umax.i64(i64 %i.av, i64 16384)
  %i.ax = shl i64 %i.aw, 3
  %i.ay = add i64 %i.ax, %i.ak
  %i.az = load i64, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.ba = udiv i64 %i.af, %i.az
  %i.bb = udiv i64 %i.ay, %i.az
  %i.bc = icmp ult i64 %i.ba, %i.bb               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.be = xor i64 %i.l, -1
  %i.bf = add nsw i64 %.016, %i.be
  %.sroa.011.1 = select i1 %i.bc, ptr %i.bd, ptr %.sroa.011.015 ; 2 uses
  %.1 = select i1 %i.bc, i64 %i.bf, i64 %i.l      ; 2 uses
  %i.bg = icmp sgt i64 %.1, 0
  br i1 %i.bg, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %._crit_edge, !llvm.loop !2187

._crit_edge:                                      ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, %bb.a
  %.sroa.011.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.011.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  ret ptr %.sroa.011.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal fastcc ptr @"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEET_SD_SD_RKT0_T1_"(ptr %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Val_comp_iter") align 8 captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, label %._crit_edge

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2182
  %i.h = load ptr, ptr %3, align 8, !tbaa !2184, !nonnull !69, !align !336 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1008 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !69, !align !336
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.016 = phi i64 [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.sroa.011.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.l = lshr i64 %.016, 1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015, i64 %i.l ; 3 uses
  %i.n = load i64, ptr %2, align 8, !tbaa !39
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.q)
  %i.s = load i64, ptr %2, align 8, !tbaa !39
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.v)
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39
  %i.y = uitofp i64 %i.x to double
  %i.z = load double, ptr %i.i, align 8, !tbaa !851
  %i.aa = fmul double %i.z, %i.y
  %i.ab = fptoui double %i.aa to i64
  %i.ac = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.ab)
  %i.ad = tail call noundef i64 @llvm.umax.i64(i64 %i.ac, i64 16384)
  %i.ae = shl i64 %i.ad, 3
  %i.af = add i64 %i.ae, %i.r
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !39
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  %i.ak = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.aj)
  %i.al = load i64, ptr %i.m, align 8, !tbaa !39
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ao)
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !39
  %i.ar = uitofp i64 %i.aq to double
  %i.as = load double, ptr %i.i, align 8, !tbaa !851
  %i.at = fmul double %i.as, %i.ar
  %i.au = fptoui double %i.at to i64
  %i.av = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.au)
  %i.aw = tail call noundef i64 @llvm.umax.i64(i64 %i.av, i64 16384)
  %i.ax = shl i64 %i.aw, 3
  %i.ay = add i64 %i.ax, %i.ak
  %i.az = load i64, ptr %i.k, align 8, !tbaa !39  ; 2 uses
  %i.ba = udiv i64 %i.af, %i.az
  %i.bb = udiv i64 %i.ay, %i.az
  %i.bc = icmp ult i64 %i.ba, %i.bb               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.be = xor i64 %i.l, -1
  %i.bf = add nsw i64 %.016, %i.be
  %.sroa.011.1 = select i1 %i.bc, ptr %.sroa.011.015, ptr %i.bd ; 2 uses
  %.1 = select i1 %i.bc, i64 %i.l, i64 %i.bf      ; 2 uses
  %i.bg = icmp sgt i64 %.1, 0
  br i1 %i.bg, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %._crit_edge, !llvm.loop !2188

._crit_edge:                                      ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, %bb.a
  %.sroa.011.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.011.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  ret ptr %.sroa.011.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = sub i64 %i.g, %i.d
  %4 = add i64 %3, -8                             ; 2 uses
  %i.l = lshr i64 %4, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check166 = icmp ult i64 %4, 120
  br i1 %min.iters.check166, label %.lr.ph.i.preheader183, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.lr.ph.i.preheader
  %i.n = add i64 %i.g, -8
  %i.o = sub i64 %i.n, %i.d
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep160 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep161 = getelementptr i8, ptr %1, i64 %i.q
  %bound0162 = icmp ult ptr %0, %scevgep161
  %bound1163 = icmp ult ptr %1, %scevgep160
  %found.conflict164 = and i1 %bound0162, %bound1163
  br i1 %found.conflict164, label %.lr.ph.i.preheader183, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck159
  %n.vec169 = and i64 %i.m, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec169, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph167
  %index171 = phi i64 [ 0, %vector.ph167 ], [ %index.next178, %vector.body170 ] ; 2 uses
  %i.u = shl i64 %index171, 3                     ; 2 uses
  %next.gep172 = getelementptr i8, ptr %1, i64 %i.u ; 3 uses
  %next.gep173 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep173, i64 16 ; 2 uses
  %wide.load174 = load <2 x i64>, ptr %next.gep173, align 8, !tbaa !39, !alias.scope !2189, !noalias !2192
  %wide.load175 = load <2 x i64>, ptr %i.v, align 8, !tbaa !39, !alias.scope !2189, !noalias !2192
  %i.w = getelementptr i8, ptr %next.gep172, i64 16 ; 2 uses
  %wide.load176 = load <2 x i64>, ptr %next.gep172, align 8, !tbaa !39, !alias.scope !2192
  %wide.load177 = load <2 x i64>, ptr %i.w, align 8, !tbaa !39, !alias.scope !2192
  store <2 x i64> %wide.load176, ptr %next.gep173, align 8, !tbaa !39, !alias.scope !2189, !noalias !2192
  store <2 x i64> %wide.load177, ptr %i.v, align 8, !tbaa !39, !alias.scope !2189, !noalias !2192
  store <2 x i64> %wide.load174, ptr %next.gep172, align 8, !tbaa !39, !alias.scope !2192
  store <2 x i64> %wide.load175, ptr %i.w, align 8, !tbaa !39, !alias.scope !2192
  %index.next178 = add nuw i64 %index171, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.x, label %middle.block179, label %vector.body170, !llvm.loop !2194

middle.block179:                                  ; preds = %vector.body170
  %cmp.n180 = icmp eq i64 %i.m, %n.vec169
  br i1 %cmp.n180, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader183

.lr.ph.i.preheader183:                            ; preds = %vector.memcheck159, %.lr.ph.i.preheader, %middle.block179
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck159 ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block179 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck159 ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block179 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader183, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader183 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader183 ] ; 3 uses
  %i.y = load i64, ptr %.sroa.04.07.i, align 8, !tbaa !39
  %i.z = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !39
  store i64 %i.z, ptr %.sroa.04.07.i, align 8, !tbaa !39
  store i64 %i.y, ptr %.sroa.0.08.i, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !2195

bb.d:                                             ; preds = %bb.c
  %i.ac = sub i64 %i.c, %i.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.042.0 = phi ptr [ %0, %bb.d ], [ %.sroa.042.0.be, %.backedge ] ; 22 uses
  %.085 = phi i64 [ %i.i, %bb.d ], [ %.085.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ae = sub nsw i64 %.0, %.085                  ; 10 uses
  %i.af = icmp slt i64 %.085, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.085, 1
  br i1 %i.ag, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.ah = load i64, ptr %.sroa.042.0, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 8
  %.idx87 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.042.0, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !39
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.085 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 6
  br i1 %min.iters.check, label %.lr.ph100.preheader184, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.an = shl i64 %.0, 3
  %i.ao = sub i64 %.0, %.085
  %i.ap = shl i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %.sroa.042.0, i64 %i.ap
  %scevgep128 = getelementptr i8, ptr %.sroa.042.0, i64 %i.an
  %bound0 = icmp ult ptr %.sroa.042.0, %scevgep128
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader184, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.042.0, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.am, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.042.0, i64 %i.at ; 3 uses
  %next.gep129 = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !39, !alias.scope !2196, !noalias !2199
  %wide.load130 = load <2 x i64>, ptr %i.au, align 8, !tbaa !39, !alias.scope !2196, !noalias !2199
  %i.av = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load131 = load <2 x i64>, ptr %next.gep129, align 8, !tbaa !39, !alias.scope !2199
  %wide.load132 = load <2 x i64>, ptr %i.av, align 8, !tbaa !39, !alias.scope !2199
  store <2 x i64> %wide.load131, ptr %next.gep, align 8, !tbaa !39, !alias.scope !2196, !noalias !2199
  store <2 x i64> %wide.load132, ptr %i.au, align 8, !tbaa !39, !alias.scope !2196, !noalias !2199
  store <2 x i64> %wide.load, ptr %next.gep129, align 8, !tbaa !39, !alias.scope !2199
  store <2 x i64> %wide.load130, ptr %i.av, align 8, !tbaa !39, !alias.scope !2199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge101, label %.lr.ph100.preheader184

.lr.ph100.preheader184:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.02998.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph100.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.042.197.ph = phi ptr [ %.sroa.042.0, %vector.memcheck ], [ %.sroa.042.0, %.lr.ph100.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.sroa.039.096.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph100.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %i.ax = sub i64 %.0, %.085
  %xtraiter192 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader184, %.lr.ph100.prol
  %.02998.prol = phi i64 [ %i.bc, %.lr.ph100.prol ], [ %.02998.ph, %.lr.ph100.preheader184 ]
  %.sroa.042.197.prol = phi ptr [ %i.ba, %.lr.ph100.prol ], [ %.sroa.042.197.ph, %.lr.ph100.preheader184 ] ; 3 uses
  %.sroa.039.096.prol = phi ptr [ %i.bb, %.lr.ph100.prol ], [ %.sroa.039.096.ph, %.lr.ph100.preheader184 ] ; 3 uses
  %prol.iter194 = phi i64 [ %prol.iter194.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader184 ]
  %i.ay = load i64, ptr %.sroa.042.197.prol, align 8, !tbaa !39
  %i.az = load i64, ptr %.sroa.039.096.prol, align 8, !tbaa !39
  store i64 %i.az, ptr %.sroa.042.197.prol, align 8, !tbaa !39
  store i64 %i.ay, ptr %.sroa.039.096.prol, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.042.197.prol, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.039.096.prol, i64 8 ; 2 uses
  %i.bc = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter194.next = add i64 %prol.iter194, 1   ; 2 uses
  %prol.iter194.cmp.not = icmp eq i64 %prol.iter194.next, %xtraiter192
  br i1 %prol.iter194.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !2202

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader184
  %.lcssa.unr = phi ptr [ poison, %.lr.ph100.preheader184 ], [ %i.ba, %.lr.ph100.prol ]
  %.02998.unr = phi i64 [ %.02998.ph, %.lr.ph100.preheader184 ], [ %i.bc, %.lr.ph100.prol ]
  %.sroa.042.197.unr = phi ptr [ %.sroa.042.197.ph, %.lr.ph100.preheader184 ], [ %i.ba, %.lr.ph100.prol ]
  %.sroa.039.096.unr = phi ptr [ %.sroa.039.096.ph, %.lr.ph100.preheader184 ], [ %i.bb, %.lr.ph100.prol ]
  %i.bd = sub i64 %.02998.ph, %.0
  %i.be = add i64 %i.bd, %.085
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge101, label %.lr.ph100

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %middle.block, %bb.g
  %.sroa.042.1.lcssa = phi ptr [ %.sroa.042.0, %bb.g ], [ %i.ar, %middle.block ], [ %.lcssa.unr, %.lr.ph100.prol.loopexit ], [ %i.bv, %.lr.ph100 ]
  %i.bg = srem i64 %.0, %.085                     ; 2 uses
  %.not32 = icmp eq i64 %i.bg, 0
  br i1 %.not32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %.02998 = phi i64 [ %i.bx, %.lr.ph100 ], [ %.02998.unr, %.lr.ph100.prol.loopexit ]
  %.sroa.042.197 = phi ptr [ %i.bv, %.lr.ph100 ], [ %.sroa.042.197.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.sroa.039.096 = phi ptr [ %i.bw, %.lr.ph100 ], [ %.sroa.039.096.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %i.bh = load i64, ptr %.sroa.042.197, align 8, !tbaa !39
  %i.bi = load i64, ptr %.sroa.039.096, align 8, !tbaa !39
  store i64 %i.bi, ptr %.sroa.042.197, align 8, !tbaa !39
  store i64 %i.bh, ptr %.sroa.039.096, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !39
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !39
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !39
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !39
end_hunk_8
begin_hunk_9_@_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKmS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !436
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !54 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.x = icmp eq ptr %.pre11, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13OperatorStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13OperatorStateD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13OperatorState8FinalizeERKNS_16PhysicalOperatorERNS_16ExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19GlobalOperatorStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19GlobalOperatorStateD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb19GlobalOperatorState10MaxThreadsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i64 %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_8PipelineELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1556
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #40
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_20PhysicalVerifyVectorEJRNS_16PhysicalOperatorERNS_23DebugVectorVerificationEEEES4_DpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 144) ; 4 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !1637
  tail call void @_ZN6duckdb20PhysicalVerifyVectorC1ERNS_12PhysicalPlanERNS_16PhysicalOperatorENS_23DebugVectorVerificationE(ptr noundef nonnull align 8 dereferenceable(137) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i8 noundef zeroext %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2243 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2244
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.a to i64
  store i64 %i.h, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !2243
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !2243
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !1613 ; 7 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #38 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.a to i64
  store i64 %i.x, ptr %i.w, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = ptrtoaddr ptr %i.v to i64
  %3 = sub i64 %i.l, %i.m
  %4 = add i64 %3, -8                             ; 2 uses
  %i.z = lshr i64 %4, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.ab = sub i64 %i.m, %i.y
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.k, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.ag = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !alias.scope !2248, !noalias !2245
  %wide.load9 = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !2248, !noalias !2245
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2245, !noalias !2248
  store <2 x i64> %wide.load9, ptr %i.ah, align 8, !alias.scope !2245, !noalias !2248
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !2248, !noalias !2245
  store i64 %i.aj, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !2245, !noalias !2248
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2251

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.v, ptr %i.c, align 8, !tbaa !1613
  store ptr %i.am, ptr %i.d, align 8, !tbaa !2243
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.an, ptr %i.f, align 8, !tbaa !2244
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret ptr %i.a
}

declare noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb20PhysicalVerifyVectorC1ERNS_12PhysicalPlanERNS_16PhysicalOperatorENS_23DebugVectorVerificationE(ptr noundef nonnull align 8 dereferenceable(137), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(136), i8 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1258 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1257   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2) #40
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i) #40
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i) #40
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2252

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19) #40
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i19) #40
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !2252

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !1257
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !1258
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8, !tbaa !1238
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !354    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !284
  store ptr null, ptr %i.r, align 8, !tbaa !271
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !284
  store ptr null, ptr %2, align 8, !tbaa !270
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i

end_hunk_9
