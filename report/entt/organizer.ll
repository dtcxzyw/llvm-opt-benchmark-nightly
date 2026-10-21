Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/organizer?download=true
inline.NumInlined: 8145
inline.NumDeleted: 3037
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE7reserveEm:bb.a
  store <4 x ptr> %i.ac, ptr %i.s, align 8, !tbaa !119, !alias.scope !812
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !813
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %.not.i.i.i = icmp eq ptr %i.ad, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !42

_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !81
  br label %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit

_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit
  %i.af = phi ptr [ %.pre, %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.af, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !80
  %i.al = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %1
  store ptr %i.al, ptr %i.b, align 8, !tbaa !131
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4entt15basic_organizerINS0_14basic_registryINS0_6entityESaIS3_EEEE6vertexESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt10basic_flowISaIjEE5graphEv(ptr dead_on_unwind noalias writable sret(%"class.entt::adjacency_matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 3 uses
  %i.i = mul i64 %i.h, %i.h                       ; 5 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.165) #29
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %.noexc5

.noexc5:                                          ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.k = shl nuw nsw i64 %i.i, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #30 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !122
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !129
  store i64 0, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.p = add nsw i64 %i.i, -1                     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc5
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.p, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc5, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.r, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.o, %.noexc5 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  store i64 %i.h, ptr %i.t, align 8, !tbaa !163
  invoke void @_ZNK4entt10basic_flowISaIjEE11setup_graphERNS_16adjacency_matrixINS_12directed_tagESaImEEE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.t, align 8, !tbaa !163  ; 5 uses
  %.not27.i = icmp eq i64 %i.u, 0
  br i1 %.not27.i, label %_ZNK4entt10basic_flowISaIjEE20transitive_reductionERNS_16adjacency_matrixINS_12directed_tagESaImEEE.exit, label %.preheader23.lr.ph.i

.preheader23.lr.ph.i:                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !121
  %i.w = load ptr, ptr %0, align 8, !tbaa !122    ; 16 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 6 uses
  br label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.d, %.preheader23.lr.ph.i
  %.pre3031.i = phi i64 [ %i.u, %.preheader23.lr.ph.i ], [ %.pr, %bb.d ]
  %.01926.i = phi i64 [ 0, %.preheader23.lr.ph.i ], [ %i.ab, %bb.d ] ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader23.i
  %.pre30.i = phi i64 [ %.pre3031.i, %.preheader23.i ], [ %.pr, %bb.e ] ; 2 uses
  %.01825.i = phi i64 [ 0, %.preheader23.i ], [ %i.ac, %bb.e ] ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.e
  %i.ab = add nuw i64 %.01926.i, 1                ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond29.not.i, label %_ZNK4entt10basic_flowISaIjEE18transitive_closureERNS_16adjacency_matrixINS_12directed_tagESaImEEE.exit, label %.preheader23.i, !llvm.loop !815

bb.e:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i
  %i.ac = add nuw i64 %.01825.i, 1                ; 2 uses
  %exitcond28.not.i = icmp eq i64 %i.ac, %i.u
  br i1 %exitcond28.not.i, label %bb.d, label %.preheader.i, !llvm.loop !816

bb.f:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i, %.preheader.i
  %.pre3033.i = phi i64 [ %.pre30.i, %.preheader.i ], [ %.pr, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i ] ; 4 uses
  %i.ad = phi i64 [ %.pre30.i, %.preheader.i ], [ %i.aq, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i ] ; 6 uses
  %.024.i = phi i64 [ 0, %.preheader.i ], [ %i.ar, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i ] ; 3 uses
  %i.ae = mul i64 %i.ad, %.01825.i                ; 2 uses
  %i.af = add i64 %i.ae, %.01926.i                ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.aa
  br i1 %i.ag, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !82
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i
  %i.aj = mul i64 %i.ad, %.01926.i
  %i.ak = add i64 %i.aj, %.024.i                  ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aa
  br i1 %i.al, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit21.i, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit21.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ak
  %i.an = load i64, ptr %i.am, align 8, !tbaa !82
  %.not22.i = icmp eq i64 %i.an, 0
  br i1 %.not22.i, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit21.i
  %i.ao = getelementptr [8 x i8], ptr %i.w, i64 %i.ae
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.024.i
  store i64 1, ptr %i.ap, align 8, !tbaa !82, !noalias !825
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !163 ; 2 uses
  br label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i: ; preds = %bb.h, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit21.i, %bb.g, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i, %bb.f
  %.pr = phi i64 [ %.pre3033.i, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit21.i ], [ %.pre.i, %bb.h ], [ %.pre3033.i, %bb.g ], [ %.pre3033.i, %bb.f ], [ %.pre3033.i, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i ] ; 13 uses
  %i.aq = phi i64 [ %i.ad, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit21.i ], [ %.pre.i, %bb.h ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ], [ %i.ad, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i ]
  %i.ar = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %i.u
  br i1 %exitcond.not.i, label %bb.e, label %bb.f, !llvm.loop !819

_ZNK4entt10basic_flowISaIjEE18transitive_closureERNS_16adjacency_matrixINS_12directed_tagESaImEEE.exit: ; preds = %bb.d
  %.not36.i = icmp eq i64 %.pr, 0
  br i1 %.not36.i, label %_ZNK4entt10basic_flowISaIjEE20transitive_reductionERNS_16adjacency_matrixINS_12directed_tagESaImEEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK4entt10basic_flowISaIjEE18transitive_closureERNS_16adjacency_matrixINS_12directed_tagESaImEEE.exit
  %xtraiter = and i64 %.pr, 3                     ; 3 uses
  %i.as = icmp ult i64 %.pr, 4
  br i1 %i.as, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.pr, -4
  br label %.lr.ph.i

.preheader30.lr.ph.i.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader30.lr.ph.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader30.lr.ph.i.unr-lcssa, %.lr.ph.i.preheader
  %.02632.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bs, %.preheader30.lr.ph.i.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.02632.i.epil = phi i64 [ %i.ax, %.lr.ph.i.epil ], [ %.02632.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = load i64, ptr %i.t, align 8, !tbaa !163
  %i.au = mul i64 %i.at, %.02632.i.epil
  %i.av = getelementptr [8 x i8], ptr %i.w, i64 %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %.02632.i.epil
  store i64 0, ptr %i.aw, align 8, !tbaa !82
  %i.ax = add nuw i64 %.02632.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader30.lr.ph.i, label %.lr.ph.i.epil, !llvm.loop !820

.preheader30.lr.ph.i:                             ; preds = %.lr.ph.i.epil, %.preheader30.lr.ph.i.unr-lcssa
  %.pre42.pre.i = load i64, ptr %i.t, align 8, !tbaa !163 ; 2 uses
  %xtraiter31 = and i64 %.pr, 1
  %i.ay = icmp eq i64 %.pr, 1
  %unroll_iter38 = and i64 %.pr, -2
  %lcmp.mod33.not = icmp eq i64 %xtraiter31, 0
  %lcmp.mod37 = trunc i64 %.pr to i1
  br label %.preheader30.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02632.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bs, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.az = load i64, ptr %i.t, align 8, !tbaa !163
  %i.ba = mul i64 %i.az, %.02632.i
  %i.bb = getelementptr [8 x i8], ptr %i.w, i64 %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %.02632.i
  store i64 0, ptr %i.bc, align 8, !tbaa !82
  %i.bd = or disjoint i64 %.02632.i, 1            ; 2 uses
  %i.be = load i64, ptr %i.t, align 8, !tbaa !163
  %i.bf = mul i64 %i.be, %i.bd
  %i.bg = getelementptr [8 x i8], ptr %i.w, i64 %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bd
  store i64 0, ptr %i.bh, align 8, !tbaa !82
  %i.bi = or disjoint i64 %.02632.i, 2            ; 2 uses
  %i.bj = load i64, ptr %i.t, align 8, !tbaa !163
  %i.bk = mul i64 %i.bj, %i.bi
  %i.bl = getelementptr [8 x i8], ptr %i.w, i64 %i.bk
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bi
  store i64 0, ptr %i.bm, align 8, !tbaa !82
  %i.bn = or disjoint i64 %.02632.i, 3            ; 2 uses
  %i.bo = load i64, ptr %i.t, align 8, !tbaa !163
  %i.bp = mul i64 %i.bo, %i.bn
  %i.bq = getelementptr [8 x i8], ptr %i.w, i64 %i.bp
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bn
  store i64 0, ptr %i.br, align 8, !tbaa !82
  %i.bs = add nuw i64 %.02632.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader30.lr.ph.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !821

.preheader30.i:                                   ; preds = %bb.i, %.preheader30.lr.ph.i
  %.pre4347.i = phi i64 [ %.pre42.pre.i, %.preheader30.lr.ph.i ], [ %.pre4247.i, %bb.i ]
  %.pre42.i.a = phi i64 [ %.pre42.pre.i, %.preheader30.lr.ph.i ], [ %.pre4143.i, %bb.i ] ; 2 uses
  %.02535.i = phi i64 [ 0, %.preheader30.lr.ph.i ], [ %i.bt, %bb.i ] ; 5 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7
  %i.bt = add nuw i64 %.02535.i, 1                ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bt, %.pr
  br i1 %exitcond40.not.i, label %_ZNK4entt10basic_flowISaIjEE20transitive_reductionERNS_16adjacency_matrixINS_12directed_tagESaImEEE.exit, label %.preheader30.i, !llvm.loop !822

bb.j:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7, %.preheader30.i
  %.pre4250.i = phi i64 [ %.pre4347.i, %.preheader30.i ], [ %.pre4247.i, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7 ] ; 6 uses
  %.pre41.i = phi i64 [ %.pre42.i.a, %.preheader30.i ], [ %.pre4143.i, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7 ] ; 2 uses
  %i.bu = phi i64 [ %.pre42.i.a, %.preheader30.i ], [ %i.dd, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7 ] ; 3 uses
  %.02434.i = phi i64 [ 0, %.preheader30.i ], [ %i.de, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7 ] ; 5 uses
  %i.bv = mul i64 %.02434.i, %i.bu
  %i.bw = add i64 %i.bv, %.02535.i                ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.aa
  br i1 %i.bx, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i8, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i8: ; preds = %bb.j
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bw
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !82
  %.not.i9 = icmp eq i64 %i.bz, 0
  br i1 %.not.i9, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7, label %.preheader.i10.preheader

.preheader.i10.preheader:                         ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i8
  br i1 %i.ay, label %.preheader.i10.epil.preheader, label %.preheader.i10

.preheader.i10:                                   ; preds = %.preheader.i10.preheader, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1
  %.pre4145.i = phi i64 [ %.pre4144.i.1, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1 ], [ %.pre4250.i, %.preheader.i10.preheader ] ; 2 uses
  %i.ca = phi i64 [ %i.ct, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1 ], [ %.pre4250.i, %.preheader.i10.preheader ] ; 4 uses
  %.033.i = phi i64 [ %i.cu, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1 ], [ 0, %.preheader.i10.preheader ] ; 4 uses
  %niter39 = phi i64 [ %niter39.next.1, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1 ], [ 0, %.preheader.i10.preheader ]
  %i.cb = mul i64 %i.ca, %.02535.i
  %i.cc = add i64 %i.cb, %.033.i                  ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.aa
  br i1 %i.cd, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i: ; preds = %.preheader.i10
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cc
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !82
  %.not29.i = icmp eq i64 %i.cf, 0
  br i1 %.not29.i, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i
  %i.cg = mul i64 %i.ca, %.02434.i
  %i.ch = getelementptr [8 x i8], ptr %i.w, i64 %i.cg
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %.033.i
  store i64 0, ptr %i.ci, align 8, !tbaa !82
  %.pre.i11.a = load i64, ptr %i.t, align 8, !tbaa !163 ; 2 uses
  br label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i: ; preds = %bb.k, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i, %.preheader.i10
  %.pre4144.i.a = phi i64 [ %.pre4145.i, %.preheader.i10 ], [ %.pre4145.i, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i ], [ %.pre.i11.a, %bb.k ] ; 2 uses
  %i.cj = phi i64 [ %i.ca, %.preheader.i10 ], [ %i.ca, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i ], [ %.pre.i11.a, %bb.k ] ; 4 uses
  %i.ck = or disjoint i64 %.033.i, 1              ; 2 uses
  %i.cl = mul i64 %i.cj, %.02535.i
  %i.cm = add i64 %i.cl, %i.ck                    ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.aa
  br i1 %i.cn, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.1, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.1: ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !82
  %.not29.i.1 = icmp eq i64 %i.cp, 0
  br i1 %.not29.i.1, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1, label %bb.l

bb.l:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.1
  %i.cq = mul i64 %i.cj, %.02434.i
  %i.cr = getelementptr [8 x i8], ptr %i.w, i64 %i.cq
  %i.cs = getelementptr [8 x i8], ptr %i.cr, i64 %i.ck
  store i64 0, ptr %i.cs, align 8, !tbaa !82
  %.pre.i11.1.a = load i64, ptr %i.t, align 8, !tbaa !163 ; 2 uses
  br label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1: ; preds = %bb.l, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.1, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i
  %.pre4144.i.1 = phi i64 [ %.pre4144.i.a, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i ], [ %.pre4144.i.a, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.1 ], [ %.pre.i11.1.a, %bb.l ] ; 3 uses
  %i.ct = phi i64 [ %i.cj, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i ], [ %i.cj, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.1 ], [ %.pre.i11.1.a, %bb.l ] ; 4 uses
  %i.cu = add nuw i64 %.033.i, 2                  ; 2 uses
  %niter39.next.1 = add i64 %niter39, 2           ; 2 uses
  %niter39.ncmp.1 = icmp eq i64 %niter39.next.1, %unroll_iter38
  br i1 %niter39.ncmp.1, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa, label %.preheader.i10, !llvm.loop !823

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa: ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.thread.i.1
  br i1 %lcmp.mod33.not, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7, label %.preheader.i10.epil.preheader

.preheader.i10.epil.preheader:                    ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa, %.preheader.i10.preheader
  %.pre4145.i.epil.init = phi i64 [ %.pre4250.i, %.preheader.i10.preheader ], [ %.pre4144.i.1, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ %.pre4250.i, %.preheader.i10.preheader ], [ %i.ct, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa ] ; 6 uses
  %.033.i.epil.init = phi i64 [ 0, %.preheader.i10.preheader ], [ %i.cu, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.cv = mul i64 %.epil.init, %.02535.i
  %i.cw = add i64 %i.cv, %.033.i.epil.init        ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.aa
  br i1 %i.cx, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.epil, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.epil: ; preds = %.preheader.i10.epil.preheader
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !82
  %.not29.i.epil = icmp eq i64 %i.cz, 0
  br i1 %.not29.i.epil, label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7, label %bb.m

bb.m:                                             ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.epil
  %i.da = mul i64 %.epil.init, %.02434.i
  %i.db = getelementptr [8 x i8], ptr %i.w, i64 %i.da
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %.033.i.epil.init
  store i64 0, ptr %i.dc, align 8, !tbaa !82
  %.pre.i11.epil = load i64, ptr %i.t, align 8, !tbaa !163 ; 3 uses
  br label %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7

_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7: ; preds = %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa, %bb.m, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.epil, %.preheader.i10.epil.preheader, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i8, %bb.j
  %.pre4247.i = phi i64 [ %.pre4250.i, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i8 ], [ %.pre4250.i, %bb.j ], [ %.pre4144.i.1, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa ], [ %.pre4145.i.epil.init, %.preheader.i10.epil.preheader ], [ %.pre4145.i.epil.init, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.epil ], [ %.pre.i11.epil, %bb.m ] ; 2 uses
  %.pre4143.i = phi i64 [ %.pre41.i, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i8 ], [ %.pre41.i, %bb.j ], [ %i.ct, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa ], [ %.epil.init, %.preheader.i10.epil.preheader ], [ %.epil.init, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.epil ], [ %.pre.i11.epil, %bb.m ] ; 2 uses
  %i.dd = phi i64 [ %i.bu, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.i8 ], [ %i.bu, %bb.j ], [ %i.ct, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit.thread.i7.loopexit.unr-lcssa ], [ %.epil.init, %.preheader.i10.epil.preheader ], [ %.epil.init, %_ZNK4entt16adjacency_matrixINS_12directed_tagESaImEE8containsEmm.exit28.i.epil ], [ %.pre.i11.epil, %bb.m ]
  %i.de = add nuw i64 %.02434.i, 1                ; 2 uses
  %exitcond39.not.i = icmp eq i64 %i.de, %.pr
  br i1 %exitcond39.not.i, label %bb.i, label %bb.j, !llvm.loop !824

bb.n:                                             ; preds = %bb.b
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %0, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i, label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !129
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #27
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit

_ZNK4entt10basic_flowISaIjEE20transitive_reductionERNS_16adjacency_matrixINS_12directed_tagESaImEEE.exit: ; preds = %bb.i, %bb.c, %_ZNK4entt10basic_flowISaIjEE18transitive_closureERNS_16adjacency_matrixINS_12directed_tagESaImEEE.exit
  ret void

_ZN4entt16adjacency_matrixINS_12directed_tagESaImEED2Ev.exit: ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %i.df
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt10basic_flowISaIjEE11setup_graphERNS_16adjacency_matrixINS_12directed_tagESaImEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  br label %bb.b

._crit_edge173:                                   ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph172, %._crit_edge
  %.sroa.0140.0170 = phi ptr [ %i.b, %.lr.ph172 ], [ %i.ef, %._crit_edge ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0140.0170, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0140.0170, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !375  ; 9 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !375  ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.i
  br i1 %i.k, label %._crit_edge, label %.lr.ph169

.lr.ph169:                                        ; preds = %bb.b
  %i.l = ptrtoint ptr %i.i to i64                 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph169, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E0_ESJ_SJ_SJ_T0_.exit.thread
  %.sroa.0119.0168 = phi ptr [ %i.j, %.lr.ph169 ], [ %.sroa.0119.7, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E0_ESJ_SJ_SJ_T0_.exit.thread ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0119.0168, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !373, !range !94, !noundef !95
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0119.0168, i64 16 ; 12 uses
  %i.q = icmp eq ptr %i.p, %i.i
  br i1 %i.q, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E0_ESJ_SJ_SJ_T0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0119.0168, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !373, !range !94, !noundef !95
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %.sroa.0119.0168, align 8, !tbaa !372
  %i.v = load i64, ptr %i.p, align 8, !tbaa !372
  %i.w = load i64, ptr %i.f, align 8, !tbaa !163, !noalias !842
  %i.x = mul i64 %i.w, %i.u
  %i.y = load ptr, ptr %1, align 8, !tbaa !122, !noalias !842
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.v
  store i64 1, ptr %i.aa, align 8, !tbaa !82, !noalias !842
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E0_ESJ_SJ_SJ_T0_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.p to i64
  %i.ac = sub i64 %i.l, %i.ab                     ; 3 uses
  %i.ad = ashr i64 %i.ac, 6                       ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %i.af = and i64 %i.ac, -64
  %scevgep.i.i.i = getelementptr i8, ptr %i.p, i64 %i.af ; 2 uses
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.k, %.lr.ph.preheader.i.i.i
  %.045.i.i.i = phi i64 [ %i.at, %bb.k ], [ %i.ad, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i = phi ptr [ %i.as, %bb.k ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !373, !range !94, !noundef !95
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i14
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !373, !range !94, !noundef !95
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.loopexit.split.loop.exit35.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i, i64 40
  %i.an = load i8, ptr %i.am, align 8, !tbaa !373, !range !94, !noundef !95
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.loopexit.split.loop.exit37.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !373, !range !94, !noundef !95
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.loopexit.split.loop.exit39.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i, i64 64
  %i.at = add nsw i64 %.045.i.i.i, -1
  %i.au = icmp sgt i64 %.045.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i14, label %._crit_edge.loopexit.i.i.i, !llvm.loop !828

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre50.i.i.i = sub i64 %i.l, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %.pre-phi51.i.i.i = phi i64 [ %.pre50.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.025.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.p, %bb.g ] ; 5 uses
  %i.av = ashr exact i64 %.pre-phi51.i.i.i, 4
  switch i64 %i.av, label %.lr.ph166 [
    i64 3, label %bb.l
    i64 2, label %bb.n
    i64 1, label %bb.p
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !373, !range !94, !noundef !95
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i
  %.sroa.025.1.i.i.i = phi ptr [ %i.az, %bb.m ], [ %.sroa.025.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !373, !range !94, !noundef !95
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i
  %.sroa.025.2.i.i.i = phi ptr [ %i.bd, %bb.o ], [ %.sroa.025.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i.i.i, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !373, !range !94, !noundef !95
  %i.bg = trunc nuw i8 %i.bf to i1
  %spec.select.i.i.i = select i1 %i.bg, ptr %.sroa.025.2.i.i.i, ptr %i.i
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit

.loopexit.split.loop.exit35.i.i.i:                ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i, i64 16
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit

.loopexit.split.loop.exit37.i.i.i:                ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i, i64 32
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit

.loopexit.split.loop.exit39.i.i.i:                ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i, i64 48
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit: ; preds = %.lr.ph.i.i.i14, %bb.l, %bb.n, %bb.p, %.loopexit.split.loop.exit35.i.i.i, %.loopexit.split.loop.exit37.i.i.i, %.loopexit.split.loop.exit39.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.025.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %i.bj, %.loopexit.split.loop.exit39.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i, %bb.l ], [ %i.bi, %.loopexit.split.loop.exit37.i.i.i ], [ %i.bh, %.loopexit.split.loop.exit35.i.i.i ], [ %.sroa.025.044.i.i.i, %.lr.ph.i.i.i14 ] ; 4 uses
  %i.bk = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.i
  br i1 %i.bk, label %.lr.ph166, label %.preheader149

.preheader149:                                    ; preds = %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E_ESJ_SJ_SJ_T0_.exit
  %i.bl = icmp eq ptr %i.p, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %i.bl, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt4pairImbESt6vectorIS3_SaIS3_EEEEZNK4entt10basic_flowISaIjEE11setup_graphERNSA_16adjacency_matrixINSA_12directed_tagESaImEEEEUlRKT_E0_ESJ_SJ_SJ_T0_.exit.thread, label %.lr.ph163

.lr.ph163:                                        ; preds = %.preheader149
  %i.bm = load ptr, ptr %1, align 8, !tbaa !122, !noalias !843 ; 2 uses
  br label %_ZN4entt16adjacency_matrixINS_12directed_tagESaImEE6insertEmm.exit26

end_hunk_0
