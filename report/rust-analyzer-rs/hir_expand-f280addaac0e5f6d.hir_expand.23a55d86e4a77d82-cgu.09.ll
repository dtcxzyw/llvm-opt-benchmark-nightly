inline.NumInlined: 1298
inline.NumDeleted: 549
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath11textual_len:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !9
  %i.am = add i64 %i.al, %i.ad
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i, i64 %.sroa.04.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.val.i.3 = load ptr, ptr %i.ao, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ap = ptrtoint ptr %.val.i.3 to i64
  %i.aq = and i64 %i.ap, 1
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr i8, ptr %.val.i.3, i64 %i.ar ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !9
  %i.av = add i64 %i.au, %i.am                    ; 3 uses
  %i.aw = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.aw, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %.sroa.0.0, %.preheader.preheader ], [ %i.av, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.bf, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.be, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load ptr, ptr %i.ax, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ay = ptrtoint ptr %.val.i.epil to i64
  %i.az = and i64 %i.ay, 1
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr i8, ptr %.val.i.epil, i64 %i.ba ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !9
  %i.be = add i64 %i.bd, %.sroa.02.0.i.epil       ; 2 uses
  %i.bf = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit, label %.preheader.epil, !llvm.loop !606

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0, %bb.e ], [ %i.av, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1B_8adapters3map8map_foldRBQ_jjNCNvMs_NtBU_8mod_pathNtB32_7ModPath11textual_len0NvYjNtNtNtBb_3ops5arith3Add3addE0EBU_.exit.loopexit.unr-lcssa ], [ %i.be, %.preheader.epil ]
  ret i64 %.sroa.0.0.i

bb.f:                                             ; preds = %bb.b
  %i.bg = zext i8 %i.d to i64
  %i.bh = mul nuw nsw i64 %i.bg, 5
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath12push_segment(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !608, !noalias !613, !noundef !9 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !608, !noalias !613, !nonnull !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sink10.i.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink9.i.i = select i1 %i.c, ptr %i.e, ptr %i.a ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  %i.f = load i64, ptr %.sink9.i.i, align 8, !alias.scope !615, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, %.sink.i.i
  br i1 %i.g, label %bb.c, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushBM_.exit, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_(ptr nonnull %1) #31
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !alias.scope !615, !nonnull !9, !noundef !9
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !615
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushBM_.exit

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushBM_.exit: ; preds = %bb.a, %bb.d
  %i.k = phi i64 [ %.pre.i, %bb.d ], [ %i.f, %bb.a ]
  %.sroa.01.0.i = phi ptr [ %i.e, %bb.d ], [ %.sink9.i.i, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.d ], [ %.sink10.i.i, %bb.a ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.k
  store ptr %1, ptr %i.l, align 8
  %i.m = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !615, !noundef !9
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %.sroa.01.0.i, align 8, !alias.scope !615
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath3len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !616, !noalias !619, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !616, !noalias !619
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !598, !noundef !9
  switch i8 %i.f, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.h = load i8, ptr %i.g, align 1, !noundef !9
  %i.i = zext i8 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ]
  %i.j = icmp ugt i64 %i.b, 1
  %.sink10.i = select i1 %i.j, i64 %i.d, i64 %i.b
  %i.k = add i64 %.sroa.0.0, %.sink10.i
  ret i64 %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath7from_tt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 10 uses
  %i.e = alloca [88 x i8], align 8                ; 12 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.25.i = alloca [16 x i8], align 8         ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(40) %3, i64 40, i1 false), !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !624
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.k, align 8, !noalias !624
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !624
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc.i unwind label %.loopexit.split-lp433.i, !noalias !624

.noexc.i:                                         ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8, !range !628, !noalias !629, !noundef !9 ; 2 uses
  %.not20.i.i = icmp eq i64 %i.l, -2
  br i1 %.not20.i.i, label %.loopexit437.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc.i
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.noexc139.i, %.lr.ph.i.i
  %i.m = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.n, %.noexc139.i ]
  %.sroa.511.0.copyload.i.i = load i32, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !629 ; 5 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.m, -1
  %.not.i.i.i = icmp eq i32 %.sroa.511.0.copyload.i.i, -1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc139.i unwind label %.loopexit432.i, !noalias !624

.noexc139.i:                                      ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8, !range !628, !noalias !629, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, -2
  br i1 %.not.i.i, label %.loopexit437.i, label %bb.b

.thread413.i:                                     ; preds = %.loopexit418.i, %.loopexit.split-lp419.loopexit.i, %.loopexit.split-lp419.loopexit.split-lp.i, %bb.af, %.loopexit.split-lp428.i, %bb.an, %bb.ar, %.thread.thread510.i, %.body.i, %.loopexit.split-lp433.i, %.loopexit432.i
  %.pn92.i = phi { ptr, i32 } [ %i.bh, %bb.an ], [ %lpad.loopexit.split-lp430.i, %.loopexit.split-lp428.i ], [ %lpad.thr_comm508.i, %.thread.thread510.i ], [ %.pn90496.i, %bb.ar ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit434.i, %.loopexit432.i ], [ %lpad.loopexit.split-lp435.i, %.loopexit.split-lp433.i ], [ %i.bd, %bb.af ], [ %lpad.loopexit.split-lp424.i, %.loopexit.split-lp419.loopexit.split-lp.i ], [ %lpad.loopexit420.i, %.loopexit418.i ], [ %lpad.loopexit423.i, %.loopexit.split-lp419.loopexit.i ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EEB1f_.exit.i unwind label %bb.aa, !noalias !633

.loopexit432.i:                                   ; preds = %bb.c
  %lpad.loopexit434.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread413.i

.loopexit.split-lp433.i:                          ; preds = %bb.as, %bb.ap, %.thread375.i, %bb.a
  %lpad.loopexit.split-lp435.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread413.i

bb.d:                                             ; preds = %bb.b
  %.sroa.7272.4.copyload273.i = load i32, ptr %.sroa.612.0..sroa_idx.i.i, align 4, !noalias !634
  %.sroa.9.4..sroa.612.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.9.4.copyload274.i = load ptr, ptr %.sroa.9.4..sroa.612.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !634 ; 12 uses
  %.sroa.10275.4..sroa.612.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10275.4..sroa.612.0..sroa_idx.i.sroa_idx.i, i64 16, i1 false), !noalias !624
  %.sroa.10275.sroa.4.0..sroa.10275.4..sroa.612.0..sroa_idx.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.o = load <2 x i32>, ptr %.sroa.10275.sroa.4.0..sroa.10275.4..sroa.612.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !634
  %.sroa.10275.sroa.4.0.copyload.i = load i32, ptr %.sroa.10275.sroa.4.0..sroa.10275.4..sroa.612.0..sroa_idx.i.sroa_idx.sroa_idx.i, align 8, !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !624
  switch i32 %.sroa.511.0.copyload.i.i, label %default.unreachable.i [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 0, label %.sink.split.i
  ]

.loopexit437.i:                                   ; preds = %.noexc139.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !624
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 -1, ptr %i.p, align 8, !alias.scope !621, !noalias !635
  br label %bb.e

bb.e:                                             ; preds = %bb.as, %.loopexit437.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !624
  br label %_RNvNtCs33K2ylI4knu_10hir_expand8mod_path15convert_path_tt.exit

default.unreachable.i:                            ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %.sroa.7272.4.copyload273.i, 58
  br i1 %i.q, label %bb.h, label %.sink.split.i

bb.g:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.4.copyload274.i) ]
  %i.r = icmp eq ptr %.sroa.9.4.copyload274.i, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols12dollar_crate10SYMBOL_STR
  br i1 %i.r, label %bb.am, label %bb.n

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !624
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc154.i unwind label %.thread500.i, !noalias !624

.thread500.i:                                     ; preds = %bb.h
  %lpad.thr_comm.split-lp501.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.noexc154.i:                                      ; preds = %bb.h
  %i.s = load i64, ptr %i.d, align 8, !range !628, !noalias !636, !noundef !9 ; 2 uses
  %.not20.i142.i = icmp eq i64 %i.s, -2
  br i1 %.not20.i142.i, label %.loopexit417.i, label %.lr.ph.i143.i

.lr.ph.i143.i:                                    ; preds = %.noexc154.i
  %.sroa.511.0..sroa_idx.i144.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.612.0..sroa_idx.i145.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %bb.i

bb.i:                                             ; preds = %.noexc155.i, %.lr.ph.i143.i
  %i.t = phi i64 [ %i.s, %.lr.ph.i143.i ], [ %i.u, %.noexc155.i ]
  %.sroa.511.0.copyload.i146.i = load i32, ptr %.sroa.511.0..sroa_idx.i144.i, align 8, !noalias !636 ; 3 uses
  %.not.i.i.i.i147.i = icmp ne i64 %i.t, -1
  %.not.i.i148.i = icmp eq i32 %.sroa.511.0.copyload.i146.i, -1
  %or.cond.i.i149.i = select i1 %.not.i.i.i.i147.i, i1 true, i1 %.not.i.i148.i
  br i1 %or.cond.i.i149.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc155.i unwind label %.thread491.i, !noalias !624

.noexc155.i:                                      ; preds = %bb.j
  %i.u = load i64, ptr %i.d, align 8, !range !628, !noalias !636, !noundef !9 ; 2 uses
  %.not.i152.i = icmp eq i64 %i.u, -2
  br i1 %.not.i152.i, label %.loopexit417.i, label %bb.i

bb.k:                                             ; preds = %bb.m
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.thread491.i:                                     ; preds = %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.l:                                             ; preds = %bb.i
  %.sroa.7.4.copyload280.i = load i32, ptr %.sroa.612.0..sroa_idx.i145.i, align 4, !noalias !640
  %.sroa.9281.4..sroa.612.0..sroa_idx.i145.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.9281.4.copyload282.i = load ptr, ptr %.sroa.9281.4..sroa.612.0..sroa_idx.i145.sroa_idx.i, align 8, !noalias !640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !624
  %i.v = icmp eq i32 %.sroa.511.0.copyload.i146.i, 1
  %i.w = icmp eq i32 %.sroa.7.4.copyload280.i, 58
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i, label %bb.m

.loopexit417.i:                                   ; preds = %.noexc155.i, %.noexc154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !624
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 -1, ptr %i.x, align 8, !alias.scope !621, !noalias !635
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.511.0.copyload.i146.i, ptr %.sroa.9281.4.copyload282.i)
          to label %bb.as unwind label %bb.k, !noalias !624

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i: ; preds = %bb.l, %bb.al, %bb.ak, %.thread410.i
  %.sroa.8.0.i = phi i8 [ %.sroa.037.0.i, %bb.ak ], [ %.sroa.037.0.i, %bb.al ], [ %.sroa.037.0.i, %.thread410.i ], [ undef, %bb.l ] ; 2 uses
  %.sroa.029.0.i = phi i8 [ 1, %bb.ak ], [ 1, %bb.al ], [ 1, %.thread410.i ], [ 3, %bb.l ] ; 2 uses
  %i.y = icmp eq i32 %.sroa.511.0.copyload.i.i, 2
  br i1 %i.y, label %.thread375.i, label %bb.ap

bb.n:                                             ; preds = %bb.g
  %i.z = icmp eq ptr %.sroa.9.4.copyload274.i, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5self_10SYMBOL_STR
  br i1 %i.z, label %.thread375.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = icmp eq ptr %.sroa.9.4.copyload274.i, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols6super_10SYMBOL_STR
  br i1 %i.aa, label %.preheader.i, label %bb.p

.preheader.i:                                     ; preds = %bb.o
  %.sroa.511.0..sroa_idx.i198.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8287.4..sroa.612.0..sroa_idx.i199.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.ab = icmp eq ptr %.sroa.9.4.copyload274.i, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols6crate_10SYMBOL_STR
  br i1 %i.ab, label %.thread375.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !624
  store ptr %.sroa.9.4.copyload274.i, ptr %i.g, align 8, !noalias !624
  %.sroa.25.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, i64 16, i1 false), !noalias !624
  %.sroa.25250.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store <2 x i32> %i.o, ptr %.sroa.25250.8..sroa_idx.i, align 8, !noalias !624
  %i.ac = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.s unwind label %bb.r, !noalias !624 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.r ], [ %i.ak, %bb.t ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand(ptr nonnull %.sroa.9.4.copyload274.i) #31
          to label %.thread413.i unwind label %bb.aa, !noalias !624

bb.s:                                             ; preds = %bb.q
  %i.ae = load i64, ptr %i.k, align 8, !alias.scope !641, !noalias !646, !noundef !9 ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 1                   ; 2 uses
  %i.ag = load ptr, ptr %i.i, align 8, !alias.scope !641, !noalias !646, !nonnull !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sink10.i.i.i = select i1 %i.af, ptr %i.ag, ptr %i.i
  %.sink9.i.i.i = select i1 %i.af, ptr %i.ah, ptr %i.k ; 2 uses
  %.sink.i.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.ai = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !648, !noalias !624, !noundef !9 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %.sink.i.i.i
  br i1 %i.aj, label %bb.u, label %bb.x, !prof !22

bb.t:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_(ptr nonnull %i.ac) #31
          to label %.body.i unwind label %bb.w, !noalias !624

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.v unwind label %bb.t, !noalias !624

bb.v:                                             ; preds = %bb.u
  %i.al = load ptr, ptr %i.i, align 8, !alias.scope !648, !noalias !624, !nonnull !9, !noundef !9
  %.pre.i.i = load i64, ptr %i.ah, align 8, !alias.scope !648, !noalias !624
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !624
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.s
  %i.an = phi i64 [ %.pre.i.i, %bb.v ], [ %i.ai, %bb.s ]
  %.sroa.01.0.i.i = phi ptr [ %i.ah, %bb.v ], [ %.sink9.i.i.i, %bb.s ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.al, %bb.v ], [ %.sink10.i.i.i, %bb.s ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.an
  store ptr %i.ac, ptr %i.ao, align 8, !noalias !624
  %i.ap = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !648, !noalias !624, !noundef !9
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %.sroa.01.0.i.i, align 8, !alias.scope !648, !noalias !624
  %i.ar = ptrtoint ptr %.sroa.9.4.copyload274.i to i64
  %i.as = and i64 %i.ar, 1
  %.not.i.i.i.i192.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i192.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = getelementptr i8, ptr %.sroa.9.4.copyload274.i, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.at)
          to label %.noexc193.i unwind label %.thread.thread510.i, !noalias !624

.noexc193.i:                                      ; preds = %bb.y
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !624
  store ptr %i.aw, ptr %i.c, align 8, !noalias !624
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8, !noalias !624
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %bb.z, label %.noexc194.i, !prof !22

bb.z:                                             ; preds = %.noexc193.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc194.i unwind label %.thread.thread510.i, !noalias !624

.noexc194.i:                                      ; preds = %bb.z, %.noexc193.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !624
  store ptr %i.aw, ptr %i.b, align 8, !noalias !624
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc195.i unwind label %.thread.thread510.i, !noalias !624

.noexc195.i:                                      ; preds = %.noexc194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !624
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.noexc195.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !624
  br label %.thread375.i

bb.aa:                                            ; preds = %bb.ar, %bb.af, %.body.i, %.thread413.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !633
  unreachable

bb.ab:                                            ; preds = %bb.ag, %.preheader.i
  %.sroa.037.0.i = phi i8 [ %i.be, %bb.ag ], [ 1, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !624
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc208.i unwind label %.loopexit.split-lp419.loopexit.i, !noalias !624

.noexc208.i:                                      ; preds = %bb.ab
  %i.ba = load i64, ptr %i.a, align 8, !range !628, !noalias !649, !noundef !9 ; 2 uses
  %.not20.i196.i = icmp eq i64 %i.ba, -2
  br i1 %.not20.i196.i, label %.thread410.i, label %.lr.ph.i197.i

.lr.ph.i197.i:                                    ; preds = %.noexc208.i, %.noexc209.i
  %i.bb = phi i64 [ %i.bc, %.noexc209.i ], [ %i.ba, %.noexc208.i ]
  %.sroa.511.0.copyload.i200.i = load i32, ptr %.sroa.511.0..sroa_idx.i198.i, align 8, !noalias !649 ; 3 uses
  %.not.i.i.i.i201.i = icmp ne i64 %i.bb, -1
  %.not.i.i202.i = icmp eq i32 %.sroa.511.0.copyload.i200.i, -1
  %or.cond.i.i203.i = select i1 %.not.i.i.i.i201.i, i1 true, i1 %.not.i.i202.i
  br i1 %or.cond.i.i203.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i197.i
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %.noexc209.i unwind label %.loopexit418.i, !noalias !624

.noexc209.i:                                      ; preds = %bb.ac
  %i.bc = load i64, ptr %i.a, align 8, !range !628, !noalias !649, !noundef !9 ; 2 uses
  %.not.i206.i = icmp eq i64 %i.bc, -2
  br i1 %.not.i206.i, label %.thread410.i, label %.lr.ph.i197.i

.loopexit418.i:                                   ; preds = %bb.ac
  %lpad.loopexit420.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread413.i

.loopexit.split-lp419.loopexit.i:                 ; preds = %bb.ab
  %lpad.loopexit423.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread413.i

.loopexit.split-lp419.loopexit.split-lp.i:        ; preds = %bb.al
  %lpad.loopexit.split-lp424.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread413.i

bb.ad:                                            ; preds = %.lr.ph.i197.i
  %.sroa.8287.4.copyload.i = load ptr, ptr %.sroa.8287.4..sroa.612.0..sroa_idx.i199.sroa_idx.i, align 8, !noalias !653 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !624
  %cond.i = icmp eq i32 %.sroa.511.0.copyload.i200.i, 2
  br i1 %cond.i, label %bb.ae, label %bb.al

.thread410.i:                                     ; preds = %.noexc208.i, %.noexc209.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !624
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !624
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8287.4.copyload.i) ]
  store ptr %.sroa.8287.4.copyload.i, ptr %i.h, align 8, !noalias !624
  %.not81.i = icmp eq ptr %.sroa.8287.4.copyload.i, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols6super_10SYMBOL_STR
  br i1 %.not81.i, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ai, %bb.ah
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand(ptr nonnull %.sroa.8287.4.copyload.i) #31
          to label %.thread413.i unwind label %bb.aa, !noalias !624

.loopexit.split-lp428.i:                          ; preds = %bb.aj
  %lpad.loopexit.split-lp430.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread413.i

bb.ag:                                            ; preds = %bb.ae
  %i.be = add i8 %.sroa.037.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !624
  br label %bb.ab

bb.ah:                                            ; preds = %bb.ae
  %i.bf = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.ai unwind label %bb.af, !noalias !624

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noundef nonnull %i.bf)
          to label %bb.aj unwind label %bb.af, !noalias !624

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand(ptr nonnull %.sroa.8287.4.copyload.i)
          to label %bb.ak unwind label %.loopexit.split-lp428.i, !noalias !624

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !624
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i

bb.al:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.511.0.copyload.i200.i, ptr %.sroa.8287.4.copyload.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i unwind label %.loopexit.split-lp419.loopexit.split-lp.i, !noalias !624

bb.am:                                            ; preds = %bb.g
  %i.bg = invoke { i32, i32 } @_RNvNtCs33K2ylI4knu_10hir_expand8mod_path18resolve_crate_root(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef %.sroa.10275.sroa.4.0.copyload.i)
          to label %bb.ao unwind label %bb.an, !noalias !633 ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.thread413.i

bb.ao:                                            ; preds = %bb.am
  %i.bi = extractvalue { i32, i32 } %i.bg, 0      ; 2 uses
  %.not86.i = icmp eq i32 %i.bi, 0                ; 2 uses
  %i.bj = extractvalue { i32, i32 } %i.bg, 1
  %.sroa.9.sroa.4.1.i = select i1 %.not86.i, i32 undef, i32 %i.bj
  %.sroa.029.1.i = select i1 %.not86.i, i8 2, i8 4
  br label %.thread375.i

.thread375.i:                                     ; preds = %bb.p, %bb.ap, %bb.ao, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit.i, %bb.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i
  %.sroa.029.0383.i = phi i8 [ %.sroa.029.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i ], [ %.sroa.029.0.i, %bb.ap ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit.i ], [ %.sroa.029.1.i, %bb.ao ], [ 1, %bb.n ], [ 2, %bb.p ]
  %.sroa.8.0382.i = phi i8 [ %.sroa.8.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i ], [ %.sroa.8.0.i, %bb.ap ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit.i ], [ undef, %bb.ao ], [ 0, %bb.n ], [ undef, %bb.p ]
  %.sroa.9.sroa.4.0381.i = phi i32 [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i ], [ undef, %bb.ap ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit.i ], [ %.sroa.9.sroa.4.1.i, %bb.ao ], [ 0, %bb.n ], [ undef, %bb.p ]
  %.sroa.9.sroa.3.0380.i = phi i32 [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i ], [ undef, %bb.ap ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit.i ], [ %i.bi, %bb.ao ], [ 0, %bb.n ], [ undef, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !624
  invoke void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1y_8adapters10filter_map9FilterMapIB2w_NtNtCs4dcH4YgJDq_2tt4iter6TtIterNCNvNtBN_8mod_path15convert_path_tt0ENCB3O_s_0EEBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.aq unwind label %.loopexit.split-lp433.i, !noalias !633

bb.ap:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand.exit227.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.511.0.copyload.i.i, ptr %.sroa.9.4.copyload274.i)
          to label %.thread375.i unwind label %.loopexit.split-lp433.i, !noalias !624

bb.aq:                                            ; preds = %.thread375.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !635
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.029.0383.i, ptr %.sroa.440.0..sroa_idx.i, align 8, !alias.scope !621, !noalias !635
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.8.0382.i, ptr %.sroa.541.0..sroa_idx.i, align 1, !alias.scope !621, !noalias !635
  %.sroa.642.sroa.4.0..sroa.642.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.9.sroa.3.0380.i, ptr %.sroa.642.sroa.4.0..sroa.642.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !621, !noalias !635
  %.sroa.642.sroa.5.0..sroa.642.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.9.sroa.4.0381.i, ptr %.sroa.642.sroa.5.0..sroa.642.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !621, !noalias !635
  br label %_RNvNtCs33K2ylI4knu_10hir_expand8mod_path15convert_path_tt.exit

.thread.thread510.i:                              ; preds = %.noexc194.i, %bb.z, %bb.y
  %lpad.thr_comm508.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread413.i

bb.ar:                                            ; preds = %bb.k, %.thread491.i, %.thread500.i
  %.pn90496.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.thread491.i ], [ %lpad.thr_comm.split-lp.i, %bb.k ], [ %lpad.thr_comm.split-lp501.i, %.thread500.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 1, ptr %.sroa.9.4.copyload274.i) #31
          to label %.thread413.i unwind label %bb.aa, !noalias !624

.sink.split.i:                                    ; preds = %.loopexit417.i, %bb.f, %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 -1, ptr %i.bk, align 8, !alias.scope !621, !noalias !635
  br label %bb.as

bb.as:                                            ; preds = %.sink.split.i, %bb.m
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.511.0.copyload.i.i, ptr %.sroa.9.4.copyload274.i)
          to label %bb.e unwind label %.loopexit.split-lp433.i, !noalias !624

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EEB1f_.exit.i: ; preds = %.thread413.i
  resume { ptr, i32 } %.pn92.i

_RNvNtCs33K2ylI4knu_10hir_expand8mod_path15convert_path_tt.exit: ; preds = %bb.e, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !624
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath7is_Self(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !598, !alias.scope !654, !noalias !657, !noundef !9
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !659, !noalias !662, !noundef !9 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !659, !noalias !662
  %.sink10.i = select i1 %i.f, i64 %i.h, i64 %i.e
  %i.i = icmp eq i64 %.sink10.i, 1
  br i1 %i.i, label %bb.c, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.l, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !alias.scope !659, !noalias !662, !nonnull !9
  %.sink11.i = select i1 %i.f, ptr %i.j, ptr %0
  %i.k = load ptr, ptr %.sink11.i, align 8, !nonnull !9, !noundef !9
  %i.l = icmp eq ptr %i.k, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Self_10SYMBOL_STR
  br label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath7is_self(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !598, !alias.scope !664, !noalias !667, !noundef !9
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !669, !noalias !672, !noundef !9 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !669, !noalias !672
  %.sink10.i = select i1 %i.i, i64 %i.k, i64 %i.h
  %i.l = icmp eq i64 %.sink10.i, 0
  br label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef align 8 ptr @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8as_ident(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !598, !alias.scope !674, !noalias !677, !noundef !9
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !679, !noalias !682, !noundef !9 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1                     ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !alias.scope !679, !noalias !682, !nonnull !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !679, !noalias !682
  %.sink11.i = select i1 %i.f, ptr %i.g, ptr %0
  %.sink10.i = select i1 %i.f, i64 %i.i, i64 %i.e
  %i.j = icmp eq i64 %.sink10.i, 1
  %. = select i1 %i.j, ptr %.sink11.i, ptr null
  br label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %., %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8from_src(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 11 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [40 x i8], align 8                ; 27 uses
  %i.u = alloca [8 x i8], align 8                 ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 10 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.val = load ptr, ptr %i.x, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %3, ptr %i.w, align 8, !noalias !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !687
  invoke void @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path8segments(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %bb.d unwind label %bb.c, !noalias !687

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1u_8node_extNtB1q_4Path8segments0EECs33K2ylI4knu_10hir_expand.exit171.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs33K2ylI4knu_10hir_expand.exit.i, %bb.e, %bb.c
  %.pn66.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn66.pn.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs33K2ylI4knu_10hir_expand.exit.i ], [ %lpad.thr_comm.split-lp.i, %bb.e ], [ %i.ac, %bb.c ], [ %.pn66.pn.pn.pn13.i, %bb.eb ], [ %.pn66.pn.pn.pn13.i, %bb.dz ], [ %.pn66.pn.pn.pn13.i, %bb.ea ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !noalias !687, !noundef !9
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !noalias !687
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs33K2ylI4knu_10hir_expand.exit.i

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1u_8node_extNtB1q_4Path8segments0EECs33K2ylI4knu_10hir_expand.exit171.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs33K2ylI4knu_10hir_expand.exit.i unwind label %bb.az, !noalias !684

bb.c:                                             ; preds = %bb.j, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1u_8node_extNtB1q_4Path8segments0EECs33K2ylI4knu_10hir_expand.exit171.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !687
  %i.ad = invoke fastcc noundef ptr @_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1e_8node_extNtB1a_4Path8segments0ENtNtNtB6_6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16) %i.v)
          to label %bb.f unwind label %.thread.i, !noalias !684 ; 12 uses

.thread.i:                                        ; preds = %bb.q, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.e:                                             ; preds = %bb.dx, %bb.cm
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1u_8node_extNtB1q_4Path8segments0EECs33K2ylI4knu_10hir_expand.exit171.i

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ad, ptr %i.u, align 8, !noalias !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !687
  invoke void @_RNvMse_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes11PathSegment4kind(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.m unwind label %bb.l, !noalias !684

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 -1, ptr %i.ae, align 8, !alias.scope !684, !noalias !689
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs33K2ylI4knu_10hir_expand.exit106.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECs33K2ylI4knu_10hir_expand.exit106.i: ; preds = %bb.q, %bb.p, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !687
  %.val91.i = load ptr, ptr %i.v, align 8, !noalias !687, !noundef !9 ; 3 uses
  %i.af = icmp eq ptr %.val91.i, null
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1u_8node_extNtB1q_4Path8segments0EECs33K2ylI4knu_10hir_expand.exit.i, label %bb.i
end_hunk_0
