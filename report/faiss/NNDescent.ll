Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NNDescent?download=true
inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5faiss9NNDescent6updateEv.omp_outlined.7:bb.a
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55   ; 4 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 12
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = xor i64 %i.ac, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.t, ptr %i.v, i64 noundef %i.ad)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.t, ptr %i.v)
          to label %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit_crit_edge unwind label %.loopexit

.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit_crit_edge: ; preds = %.noexc
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !49
  %.pre48 = load ptr, ptr %i.s, align 8, !tbaa !27
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit_crit_edge, %bb.c
  %i.ae = phi ptr [ %.pre48, %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit_crit_edge ], [ %i.t, %bb.c ] ; 6 uses
  %i.af = phi ptr [ %.pre, %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit_crit_edge ], [ %i.t, %bb.c ] ; 4 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64               ; 4 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 12
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !93  ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 5 uses
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.al ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, %i.an
  br i1 %.not.i.i, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN5faiss9nndescent8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5faiss9nndescent8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.an, ptr %i.u, align 8, !tbaa !49
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN5faiss9nndescent8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.ao = phi ptr [ %i.an, %_ZSt8_DestroyIPN5faiss9nndescent8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.af, %bb.e ], [ %i.af, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 2 uses
  %i.ap = icmp slt i32 %i.ak, 0
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE6resizeEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE6resizeEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ah                    ; 2 uses
  %i.au = sdiv exact i64 %i.at, 12
  %i.av = icmp ult i64 %i.au, %i.al
  br i1 %i.av, label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = sub i64 %i.aw, %i.ah                    ; 3 uses
  %i.ay = mul nuw nsw i64 %i.al, 12
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #27
          to label %.noexc34 unwind label %.loopexit ; 6 uses

.noexc34:                                         ; preds = %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i
  %i.ba = icmp sgt i64 %i.ax, 0
  br i1 %i.ba, label %bb.h, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.h:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.az, ptr align 4 %i.ae, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.h, %.noexc34
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.at) #25
  br label %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.az, ptr %i.s, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax ; 2 uses
  store ptr %i.bb, ptr %i.u, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.al
  store ptr %i.bc, ptr %i.aq, align 8, !tbaa !28
  %.pre49 = ptrtoint ptr %i.az to i64
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.g
  %.pre-phi = phi i64 [ %.pre49, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.ah, %bb.g ]
  %i.bd = phi ptr [ %i.az, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.ae, %bb.g ]
  %i.be = phi ptr [ %i.bb, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.ao, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !9
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !107 ; 3 uses
  %i.bi = add nsw i32 %i.bh, %i.bg
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = sub i64 %i.bj, %.pre-phi
  %i.bl = sdiv exact i64 %i.bk, 12
  %i.bm = trunc i64 %i.bl to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bm) ; 2 uses
  %i.bn = icmp sgt i32 %.sroa.speculated, 0
  %i.bo = icmp sgt i32 %i.bh, 0
  %or.cond38 = and i1 %i.bn, %i.bo
  br i1 %or.cond38, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit
  %i.bp = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02839 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !108, !range !109, !noundef !110
  %i.bt = zext nneg i8 %i.bs to i32
  %spec.select = add nuw nsw i32 %.02839, %i.bt   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next, %i.bp
  %i.bv = icmp slt i32 %spec.select, %i.bh
  %or.cond = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !111

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.bw = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit
  %.0.lcssa = phi i32 [ 0, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE7reserveEm.exit ], [ %i.bw, %.critedge.loopexit ]
  store i32 %.0.lcssa, ptr %i.bf, align 8, !tbaa !9
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !37
  %i.by = sext i32 %i.bx to i64
  %.not.not = icmp slt i64 %indvars.iv45, %i.by
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.d, %.noexc, %_ZNSt12_Vector_baseIN5faiss9nndescent8NeighborESaIS2_EE11_M_allocateEm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bz = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.bz) #28
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss9NNDescent6updateEv.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::mersenne_twister_engine", align 8 ; 29 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !90
  %i.g = tail call i32 @omp_get_thread_num()
  %i.h = mul nsw i32 %i.f, 5081
  %i.i = add nsw i32 %i.h, %i.g
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  store i64 %i.j, ptr %3, align 8, !tbaa !67
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.j, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.x, %bb.c ] ; 4 uses
  %i.k = getelementptr [8 x i8], ptr %3, i64 %.011.i.i
  %i.l = lshr i64 %store_forwarded, 30
  %i.m = xor i64 %i.l, %store_forwarded
  %i.n = mul nuw nsw i64 %i.m, 1812433253
  %i.o = add nuw i64 %i.n, %.011.i.i              ; 2 uses
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  store i64 %i.p, ptr %i.k, align 8, !tbaa !67
  %i.q = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, 624
  br i1 %exitcond.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr [8 x i8], ptr %3, i64 %i.q
  %i.s = lshr i64 %i.p, 30
  %i.t = xor i64 %i.s, %i.o
  %i.u = mul i64 %i.t, 1812433253
  %i.v = add i64 %i.u, %i.q
  %i.w = and i64 %i.v, 4294967295                 ; 2 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !67
  %i.x = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4992 ; 3 uses
  store i64 624, ptr %i.y, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !99  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !37    ; 3 uses
  br i1 %i.ab, label %bb.e, label %bb.ap

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %i.aa, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !37
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !37
  %i.ae = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ac) ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !37
  %i.af = load i32, ptr %i.a, align 4, !tbaa !37  ; 2 uses
  %.not106 = icmp sgt i32 %i.af, %i.ae
  br i1 %.not106, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.phi.trans.insert.i.i87 = getelementptr inbounds nuw i8, ptr %3, i64 1816 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4984 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 3168 ; 2 uses
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4984
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 1808
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4984
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph109, %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.ar = phi i64 [ 624, %.lr.ph109 ], [ %i.bk, %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 2 uses
  %indvars.iv115 = phi i64 [ %i.ak, %.lr.ph109 ], [ %indvars.iv.next116, %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 9 uses
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw [168 x i8], ptr %i.as, i64 %indvars.iv115 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !9
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 104 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 112 ; 2 uses
  %i.be = trunc nsw i64 %indvars.iv115 to i32
  %i.bf = trunc nsw i64 %indvars.iv115 to i32
  %i.bg = trunc nsw i64 %indvars.iv115 to i32
  %i.bh = trunc nsw i64 %indvars.iv115 to i32
  %i.bi = trunc nsw i64 %indvars.iv115 to i32
  %i.bj = trunc nsw i64 %indvars.iv115 to i32
  br label %bb.m

._crit_edge:                                      ; preds = %bb.ao, %bb.f
  %i.bk = phi i64 [ %i.ar, %bb.f ], [ %i.nf, %bb.ao ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !55 ; 11 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !55
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = icmp slt i64 %i.br, 24
  br i1 %i.bs, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bt = udiv exact i64 %i.br, 12                ; 3 uses
  %i.bu = add nsw i64 %i.bt, -2                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 3 uses
  %i.bw = add nsw i64 %i.bt, -1
  %i.bx = lshr i64 %i.bw, 1                       ; 2 uses
  %i.by = and i64 %i.bt, 1
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = or disjoint i64 %i.bu, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bv
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %bb.g
  %.012.i.i = phi i64 [ %i.bv, %bb.g ], [ %i.dc, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.cd = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.cd, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !53
  %i.ce = icmp slt i64 %.012.i.i, %i.bx
  br i1 %i.ce, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.043.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.h ] ; 2 uses
  %i.cf = shl i64 %.043.i.i.i, 1                  ; 2 uses
  %i.cg = add i64 %i.cf, 2                        ; 2 uses
  %i.ch = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.cg
  %i.ci = or disjoint i64 %i.cf, 1                ; 2 uses
  %i.cj = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !57
  %i.co = fcmp olt float %i.cl, %i.cn
  %spec.select.i.i.i = select i1 %i.co, i64 %i.ci, i64 %i.cg ; 4 uses
  %i.cp = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %spec.select.i.i.i
  %i.cq = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %.043.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cq, ptr noundef nonnull align 4 dereferenceable(9) %i.cp, i64 9, i1 false), !tbaa.struct !50
  %i.cr = icmp slt i64 %spec.select.i.i.i, %i.bx
  br i1 %i.cr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !62

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.h ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cs = icmp eq i64 %.0.lcssa.i.i.i, %i.bv
  %or.cond.i.i = select i1 %i.bz, i1 %i.cs, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cc, ptr noundef nonnull align 4 dereferenceable(9) %i.cb, i64 9, i1 false), !tbaa.struct !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.ca, %bb.i ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ct = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ct, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %.sroa.013.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.05.0.copyload.i.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.cu = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i to float
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.022.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.01023.i.i.i.i, %bb.l ] ; 3 uses
  %.01023.in.i.i.i.i = add nsw i64 %.022.i.i.i.i, -1
  %.01023.i.i.i.i = sdiv i64 %.01023.in.i.i.i.i, 2 ; 4 uses
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %.01023.i.i.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !57
  %i.cy = fcmp olt float %i.cx, %i.cu
  br i1 %i.cy, label %bb.l, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cz, ptr noundef nonnull align 4 dereferenceable(9) %i.cv, i64 9, i1 false), !tbaa.struct !50
  %i.da = icmp sgt i64 %.01023.i.i.i.i, %.012.i.i
  br i1 %i.da, label %bb.k, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !61

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.j ], [ %.01023.i.i.i.i, %bb.l ], [ %.022.i.i.i.i, %bb.k ]
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i, ptr %i.db, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !53
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.dc = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.h, !llvm.loop !112

bb.m:                                             ; preds = %.lr.ph, %bb.ao
  %i.dd = phi i64 [ %i.ar, %.lr.ph ], [ %i.nf, %bb.ao ] ; 10 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %i.de = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv ; 6 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !60 ; 3 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = load ptr, ptr %i.ag, align 8, !tbaa !94
  %i.dj = getelementptr inbounds nuw [168 x i8], ptr %i.di, i64 %i.dh ; 12 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !108, !range !109, !noundef !110
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %0, align 8, !tbaa !24    ; 5 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bb = sub i64 %i.k, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2                 ; 4 uses
  %i.bd = sub nsw i64 2305843009213693951, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.e)
  %i.bf = add nsw i64 %.sroa.speculated.i, %i.bc  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.bc
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 2305843009213693951)
  %i.bi = select i1 %i.bg, i64 2305843009213693951, i64 %i.bh ; 3 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #27
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bl = phi ptr [ %i.bk, %bb.y ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bm = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bn = sub i64 %i.bm, %i.ba                    ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, 4
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !48

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bl, ptr align 4 %i.az, i64 %i.bn, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bp = icmp eq i64 %i.bn, 4
  br i1 %i.bp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load i32, ptr %i.az, align 4, !tbaa !37
  store i32 %i.bq, ptr %i.bl, align 4, !tbaa !37
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.br = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn ; 3 uses
  %i.bs = icmp sgt i64 %i.d, 4
  br i1 %i.bs, label %bb.ad, label %bb.ae, !prof !48

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.br, ptr align 4 %2, i64 %i.d, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bt = icmp eq i64 %i.d, 4
  br i1 %i.bt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bu = load i32, ptr %2, align 4, !tbaa !37
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.d ; 3 uses
  %i.bw = sub i64 %i.k, %i.bm                     ; 4 uses
  %i.bx = icmp sgt i64 %i.bw, 4
  br i1 %i.bx, label %bb.ah, label %bb.ai, !prof !48

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %1, i64 %i.bw, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.by = icmp eq i64 %i.bw, 4
  br i1 %i.by, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bz = load i32, ptr %1, align 4, !tbaa !37
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw
  %.not.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cb = sub i64 %i.j, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.cb) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bl, ptr %0, align 8, !tbaa !24
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !25
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bi
  store ptr %i.cc, ptr %i.f, align 8, !tbaa !26
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss9NNDescent9nndescentERNS_16DistanceComputerEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::vector.0", align 8     ; 14 uses
  %4 = alloca %"class.std::vector.16", align 8    ; 14 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37   ; 4 uses
  %i.f = tail call i32 @llvm.smin.i32(i32 %i.e, i32 100)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.noexc18

.noexc18:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #27 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !26
  store i32 0, ptr %i.j, align 4, !tbaa !37
  %i.m = getelementptr i8, ptr %i.j, i64 4        ; 3 uses
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc18
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8
  br label %bb.b

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.noexc18, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.p, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc18 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.ph, ptr %i.r, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.s = mul nuw nsw i64 %i.g, 24                 ; 3 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #27
          to label %.noexc21 unwind label %.thread ; 4 uses

.noexc21:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.t, ptr %4, align 8, !tbaa !128
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.t, i64 %i.s
  %i.v = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  br label %bb.b

bb.b:                                             ; preds = %.noexc21, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.j, %.noexc21 ] ; 2 uses
  %i.x = phi ptr [ %i.q, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.r, %.noexc21 ]
  %.0.i.i.i.i.i30 = phi i64 [ 0, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.v, %.noexc21 ]
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.u, %.noexc21 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc21 ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.z, align 8, !tbaa !131
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.y, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !90
  %i.ac = mul nsw i32 %i.ab, 6577
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  store i64 %i.ad, ptr %5, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ %i.ad, %bb.b ], [ %i.aq, %bb.d ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.b ], [ %i.ar, %bb.d ] ; 4 uses
  %i.ae = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.af = lshr i64 %store_forwarded, 30
  %i.ag = xor i64 %i.af, %store_forwarded
  %i.ah = mul nuw nsw i64 %i.ag, 1812433253
  %i.ai = add nuw i64 %i.ah, %.011.i.i            ; 2 uses
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !67
  %i.ak = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, 624
  br i1 %exitcond.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr [8 x i8], ptr %5, i64 %i.ak
  %i.am = lshr i64 %i.aj, 30
  %i.an = xor i64 %i.am, %i.ai
  %i.ao = mul i64 %i.an, 1812433253
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = and i64 %i.ap, 4294967295               ; 2 uses
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !67
  %i.ar = add nuw nsw i64 %.011.i.i, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 4992
  store i64 624, ptr %i.as, align 8, !tbaa !65
  %i.at = ptrtoint ptr %i.w to i64
  %i.au = sub i64 %.0.i.i.i.i.i30, %i.at
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %5, ptr noundef %i.w, i32 noundef %i.aw, i32 noundef %i.e)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.ax, ptr %i.c, align 4, !tbaa !37
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi.omp_outlined, ptr nonnull align 8 dereferenceable(24) %3, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull align 8 dereferenceable(88) %0, ptr nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us
  %.033.us = phi i32 [ %i.ea, %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !92
  %i.bg = load i32, ptr %i.bc, align 8, !tbaa !98
  %i.bh = mul nsw i32 %i.bg, %i.bf
  %i.bi = sext i32 %i.bh to i64
  %i.bj = invoke noundef i64 @_ZN5faiss17InterruptCallback15get_period_hintEm(i64 noundef %i.bi)
          to label %.noexc23.us unwind label %.loopexit.split-lp.split.us ; 2 uses

.noexc23.us:                                      ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !67
  %i.bk = load i32, ptr %i.d, align 4, !tbaa !99  ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.preheader.i.us, label %.loopexit32.us

.lr.ph.preheader.i.us:                            ; preds = %.noexc23.us
  %i.bm = zext nneg i32 %i.bk to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.noexc24.us, %.lr.ph.preheader.i.us
  %i.bn = phi i64 [ %i.bs, %.noexc24.us ], [ %i.bm, %.lr.ph.preheader.i.us ]
  %storemerge6.i.us = phi i64 [ %i.bq, %.noexc24.us ], [ 0, %.lr.ph.preheader.i.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bo = add nsw i64 %storemerge6.i.us, %i.bj
  %.sroa.speculated.i.us = call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bn)
  store i64 %.sroa.speculated.i.us, ptr %i.b, align 8, !tbaa !67
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @_ZN5faiss9NNDescent4joinERNS_16DistanceComputerE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(88) %0, ptr nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN5faiss17InterruptCallback5checkEv()
          to label %.noexc24.us unwind label %.loopexit.split.us

.noexc24.us:                                      ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !67
  %i.bq = add nsw i64 %i.bp, %i.bj                ; 3 uses
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !67
  %i.br = load i32, ptr %i.d, align 4, !tbaa !99
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = icmp slt i64 %i.bq, %i.bs
  br i1 %i.bt, label %.lr.ph.i.us, label %.loopexit32.us, !llvm.loop !100

.loopexit32.us:                                   ; preds = %.noexc24.us, %.noexc23.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.7, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.8, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.9, ptr nonnull align 8 dereferenceable(88) %0)
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2                 ; 2 uses
  %.not.i.us = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.us, label %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us, label %.lr.ph.i25.us

.lr.ph.i25.us:                                    ; preds = %.loopexit32.us
  %i.ca = load ptr, ptr %i.bd, align 8, !tbaa !94
  %i.cb = load ptr, ptr %4, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.us, %.lr.ph.i25.us
  %.02532.i.us = phi i64 [ 0, %.lr.ph.i25.us ], [ %i.du, %._crit_edge.i.us ] ; 3 uses
  %.02631.i.us = phi float [ 0.000000e+00, %.lr.ph.i25.us ], [ %i.dt, %._crit_edge.i.us ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.02532.i.us
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [168 x i8], ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.02532.i.us ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !27 ; 5 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = sdiv exact i64 %i.cn, 12                ; 3 uses
  %.not36.i.us = icmp eq ptr %i.cj, %i.ck
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !25 ; 2 uses
  %.pre43.i.us = load ptr, ptr %i.ch, align 8, !tbaa !24 ; 5 uses
  %.pre44.i.us = ptrtoint ptr %.pre.i.us to i64   ; 3 uses
  %.pre45.i.us = ptrtoint ptr %.pre43.i.us to i64 ; 5 uses
  br i1 %.not36.i.us, label %._crit_edge.i.us, label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %bb.g
  %.not37.i.us = icmp eq ptr %.pre.i.us, %.pre43.i.us
  br i1 %.not37.i.us, label %._crit_edge.i.us, label %.preheader.us.preheader.i.us

.preheader.us.preheader.i.us:                     ; preds = %.preheader.lr.ph.i.us
  %i.cp = sub i64 %.pre44.i.us, %.pre45.i.us
  %i.cq = ashr exact i64 %i.cp, 2                 ; 3 uses
  %xtraiter = and i64 %i.co, 1
  %i.cr = icmp eq i64 %i.cn, 12
  br i1 %i.cr, label %.preheader.us.i.us.epil.preheader, label %.preheader.us.preheader.i.us.new

.preheader.us.preheader.i.us.new:                 ; preds = %.preheader.us.preheader.i.us
  %unroll_iter = and i64 %i.co, -2
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %..loopexit_crit_edge.us.i.us.1, %.preheader.us.preheader.i.us.new
  %.02329.us.i.us = phi i64 [ 0, %.preheader.us.preheader.i.us.new ], [ %i.dh, %..loopexit_crit_edge.us.i.us.1 ] ; 3 uses
  %.02428.us.i.us = phi float [ 0.000000e+00, %.preheader.us.preheader.i.us.new ], [ %.1.us.i.us.1, %..loopexit_crit_edge.us.i.us.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.us.new ], [ %niter.next.1, %..loopexit_crit_edge.us.i.us.1 ]
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.02329.us.i.us
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.us.i.us
  %.027.us.i.us = phi i64 [ 0, %.preheader.us.i.us ], [ %i.cx, %bb.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.pre43.i.us, i64 %.027.us.i.us
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !37
  %i.cw = icmp eq i32 %i.ct, %i.cv
  br i1 %i.cw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = add nuw i64 %.027.us.i.us, 1            ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cx, %i.cq
  br i1 %exitcond.not.i.us, label %..loopexit_crit_edge.us.i.us, label %bb.h, !llvm.loop !134

bb.j:                                             ; preds = %bb.h
  %i.cy = fadd float %.02428.us.i.us, 1.000000e+00
  br label %..loopexit_crit_edge.us.i.us

..loopexit_crit_edge.us.i.us:                     ; preds = %bb.i, %bb.j
  %.1.us.i.us = phi float [ %i.cy, %bb.j ], [ %.02428.us.i.us, %bb.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.02329.us.i.us
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %..loopexit_crit_edge.us.i.us
  %.027.us.i.us.1 = phi i64 [ 0, %..loopexit_crit_edge.us.i.us ], [ %i.df, %bb.l ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre43.i.us, i64 %.027.us.i.us.1
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !37
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = add nuw i64 %.027.us.i.us.1, 1          ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.df, %i.cq
  br i1 %exitcond.not.i.us.1, label %..loopexit_crit_edge.us.i.us.1, label %bb.k, !llvm.loop !134

bb.m:                                             ; preds = %bb.k
  %i.dg = fadd float %.1.us.i.us, 1.000000e+00
  br label %..loopexit_crit_edge.us.i.us.1

..loopexit_crit_edge.us.i.us.1:                   ; preds = %bb.l, %bb.m
  %.1.us.i.us.1 = phi float [ %i.dg, %bb.m ], [ %.1.us.i.us, %bb.l ] ; 3 uses
  %i.dh = add nuw i64 %.02329.us.i.us, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.us.loopexit.unr-lcssa, label %.preheader.us.i.us, !llvm.loop !135

._crit_edge.i.us.loopexit.unr-lcssa:              ; preds = %..loopexit_crit_edge.us.i.us.1
end_hunk_1
begin_hunk_2_@_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi.omp_outlined:bb.a

._crit_edge76:                                    ; preds = %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_SA_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.048.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit, label %._crit_edge76.thread

._crit_edge76.thread:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %._crit_edge76
  %i.ct = sub i64 %.sroa.14.0.lcssa, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.0.lcssa, i64 noundef %i.ct) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit: ; preds = %._crit_edge76, %._crit_edge76.thread
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !37
  %i.cv = sext i32 %i.cu to i64
  %.not.not = icmp slt i64 %indvars.iv84, %i.cv
  br i1 %.not.not, label %.preheader, label %._crit_edge79

.lr.ph75:                                         ; preds = %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_SA_.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_SA_.exit ] ; 2 uses
  %i.cw = load ptr, ptr %6, align 8, !tbaa !128
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv84 ; 4 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %.sroa.048.0.lcssa, i64 %indvars.iv81 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !25 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph75
  %i.dd = load i32, ptr %i.cy, align 4, !tbaa !37
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !37
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store ptr %i.de, ptr %i.cz, align 8, !tbaa !25
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %.lr.ph75
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !24 ; 4 uses
  %i.dg = ptrtoint ptr %i.da to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775804
  br i1 %i.dj, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.dk = ashr exact i64 %i.di, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 2305843009213693951)
  %i.do = select i1 %i.dm, i64 2305843009213693951, i64 %i.dn ; 3 uses
  %.not.i.i.i38 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i38)
  %i.dp = shl nuw nsw i64 %i.do, 2
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #27
          to label %.noexc40 unwind label %.loopexit ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  %i.ds = load i32, ptr %i.cy, align 4, !tbaa !37
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !37
  %i.dt = icmp sgt i64 %i.di, 0
  br i1 %i.dt, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr align 4 %i.df, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %.noexc40
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.not.i17.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.di) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dq, ptr %i.cx, align 8, !tbaa !24
  store ptr %i.du, ptr %i.cz, align 8, !tbaa !25
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.dv, ptr %i.db, align 8, !tbaa !26
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.n
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.dw = load i32, ptr %i.s, align 8, !tbaa !91
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next82, %i.dx
  br i1 %i.dy, label %.lr.ph75, label %._crit_edge76.thread, !llvm.loop !140

._crit_edge79:                                    ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge79, %bb.a
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g
  %lpad.loopexit56 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %._crit_edge
  %lpad.loopexit59 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit56, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit59, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dz = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.dz) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss9NNDescent10init_graphERNS_16DistanceComputerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 8 uses
  %3 = alloca %"struct.faiss::nndescent::Nhood", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !99   ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 168
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.j
  %i.r = mul nuw nsw i64 %i.d, 168
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27 ; 4 uses
  %i.t = tail call noundef ptr @_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.h, ptr noundef %i.o, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19 ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE11_M_allocateEm.exit.i
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #25
  br label %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE11_M_allocateEm.exit.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.n, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw [168 x i8], ptr %i.s, i64 %i.d
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !96
  br label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5faiss9nndescent5NhoodESaIS2_EE13_M_deallocateEPS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !90
  %i.ad = mul nsw i32 %i.ac, 6007
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  store i64 %i.ae, ptr %2, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE7reserveEm.exit
  %store_forwarded = phi i64 [ %i.ae, %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE7reserveEm.exit ], [ %i.ar, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE7reserveEm.exit ], [ %i.as, %bb.f ] ; 4 uses
  %i.af = getelementptr [8 x i8], ptr %2, i64 %.011.i.i
  %i.ag = lshr i64 %store_forwarded, 30
  %i.ah = xor i64 %i.ag, %store_forwarded
  %i.ai = mul nuw nsw i64 %i.ah, 1812433253
  %i.aj = add nuw i64 %i.ai, %.011.i.i            ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !67
  %i.al = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr [8 x i8], ptr %2, i64 %i.al
  %i.an = lshr i64 %i.ak, 30
  %i.ao = xor i64 %i.an, %i.aj
  %i.ap = mul i64 %i.ao, 1812433253
  %i.aq = add i64 %i.ap, %i.al
  %i.ar = and i64 %i.aq, 4294967295               ; 2 uses
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !67
  %i.as = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.at, align 8, !tbaa !65
  %i.au = load i32, ptr %i.b, align 4, !tbaa !99  ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5faiss9nndescent5NhoodD2Ev.exit, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 2, ptr nonnull @_ZN5faiss9NNDescent10init_graphERNS_16DistanceComputerE.omp_outlined, ptr nonnull %0, ptr nonnull %1)
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN5faiss9nndescent5NhoodD2Ev.exit
  %i.bj = phi i32 [ %i.au, %.lr.ph ], [ %i.cq, %_ZN5faiss9nndescent5NhoodD2Ev.exit ]
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.cp, %_ZN5faiss9nndescent5NhoodD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bk = load i32, ptr %i.aw, align 8, !tbaa !93
  %i.bl = load i32, ptr %i.ax, align 4, !tbaa !107
  call void @_ZN5faiss9nndescent5NhoodC1EiiRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEi(ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef %i.bk, i32 noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(5000) %2, i32 noundef %i.bj)
  %i.bm = load ptr, ptr %i.ay, align 8, !tbaa !95 ; 3 uses
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5faiss9nndescent5NhoodC1EOS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.bm, ptr noundef nonnull align 8 dereferenceable(168) %3) #19
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !95
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 168
  store ptr %i.bp, ptr %i.ay, align 8, !tbaa !95
  br label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(168) %3)
          to label %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE9push_backEOS2_.exit unwind label %bb.o

_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %bb.i
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE9push_backEOS2_.exit
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.j, %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EE9push_backEOS2_.exit
  %i.bv = load ptr, ptr %i.bb, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !26
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.k, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ca = load ptr, ptr %i.bd, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i:                 ; preds = %bb.l, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i5.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.cg = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6.i

_ZNSt6vectorIiSaIiEED2Ev.exit6.i:                 ; preds = %bb.m, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i7.i, label %_ZN5faiss9nndescent5NhoodD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i
  %i.cl = load ptr, ptr %i.bi, align 8, !tbaa !28
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.co) #25
  br label %_ZN5faiss9nndescent5NhoodD2Ev.exit

_ZN5faiss9nndescent5NhoodD2Ev.exit:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cp = add nuw nsw i32 %.05, 1                 ; 2 uses
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !99  ; 2 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq
  br i1 %i.cr, label %bb.g, label %._crit_edge, !llvm.loop !141

bb.o:                                             ; preds = %bb.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5faiss9nndescent5NhoodD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.cs
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss9NNDescent10init_graphERNS_16DistanceComputerE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::mersenne_twister_engine", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !90
  %i.g = tail call i32 @omp_get_thread_num()
  %i.h = mul nsw i32 %i.f, 7741
  %i.i = add nsw i32 %i.h, %i.g
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  store i64 %i.j, ptr %4, align 8, !tbaa !67
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.j, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.x, %bb.c ] ; 4 uses
  %i.k = getelementptr [8 x i8], ptr %4, i64 %.011.i.i
  %i.l = lshr i64 %store_forwarded, 30
  %i.m = xor i64 %i.l, %store_forwarded
  %i.n = mul nuw nsw i64 %i.m, 1812433253
  %i.o = add nuw i64 %i.n, %.011.i.i              ; 2 uses
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  store i64 %i.p, ptr %i.k, align 8, !tbaa !67
  %i.q = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, 624
  br i1 %exitcond.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr [8 x i8], ptr %4, i64 %i.q
  %i.s = lshr i64 %i.p, 30
  %i.t = xor i64 %i.s, %i.o
  %i.u = mul i64 %i.t, 1812433253
  %i.v = add i64 %i.u, %i.q
  %i.w = and i64 %i.v, 4294967295                 ; 2 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !67
  %i.x = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 4992
  store i64 624, ptr %i.y, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !99  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %.pre60 = load i32, ptr %0, align 4, !tbaa !37  ; 3 uses
  br i1 %i.ab, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %i.aa, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !37
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %.pre60, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !37
  %i.ae = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ac) ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !37
  %i.af = load i32, ptr %i.a, align 4, !tbaa !37  ; 2 uses
  %.not51 = icmp sgt i32 %i.af, %i.ae
  br i1 %.not51, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = sext i32 %i.af to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph54, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv57 = phi i64 [ %i.aj, %.lr.ph54 ], [ %indvars.iv.next58, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 7 uses
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !107 ; 4 uses
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = icmp slt i32 %i.ak, 0
  br i1 %i.am, label %.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #27
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc30:                                         ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.al ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !37
  %i.aq = add nsw i64 %i.al, -1                   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc30
  %i.as = getelementptr i8, ptr %i.ao, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !37
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc30, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.ap, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ap, %.noexc30 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.044.0 = phi ptr [ %i.ao, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ao, %.noexc30 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %i.at = load i32, ptr %i.z, align 4, !tbaa !99
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef %.sroa.044.0, i32 noundef %i.ak, i32 noundef %i.at)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.au = load i32, ptr %i.ag, align 4, !tbaa !107
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aw = trunc nsw i64 %indvars.iv57 to i32
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit, %.preheader
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !94 ; 2 uses
  %i.ay = getelementptr inbounds nuw [168 x i8], ptr %i.ax, i64 %indvars.iv57 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = icmp slt i64 %i.bf, 24
  br i1 %i.bg, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bh = udiv exact i64 %i.bf, 12                ; 3 uses
  %i.bi = add nsw i64 %i.bh, -2                   ; 2 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 3 uses
  %i.bk = add nsw i64 %i.bh, -1
  %i.bl = lshr i64 %i.bk, 1                       ; 2 uses
  %i.bm = and i64 %i.bh, 1
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = or disjoint i64 %i.bi, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.bj
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %bb.h
  %.012.i.i = phi i64 [ %i.bj, %bb.h ], [ %i.cq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.br = getelementptr inbounds [12 x i8], ptr %i.ba, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.br, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !53
  %i.bs = icmp slt i64 %.012.i.i, %i.bl
  br i1 %i.bs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.043.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.i ] ; 2 uses
  %i.bt = shl i64 %.043.i.i.i, 1                  ; 2 uses
  %i.bu = add i64 %i.bt, 2                        ; 2 uses
  %i.bv = getelementptr inbounds [12 x i8], ptr %i.ba, i64 %i.bu
  %i.bw = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %i.ba, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !57
  %i.cc = fcmp olt float %i.bz, %i.cb
  %spec.select.i.i.i = select i1 %i.cc, i64 %i.bw, i64 %i.bu ; 4 uses
  %i.cd = getelementptr inbounds [12 x i8], ptr %i.ba, i64 %spec.select.i.i.i
  %i.ce = getelementptr inbounds [12 x i8], ptr %i.ba, i64 %.043.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ce, ptr noundef nonnull align 4 dereferenceable(9) %i.cd, i64 9, i1 false), !tbaa.struct !50
  %i.cf = icmp slt i64 %spec.select.i.i.i, %i.bl
  br i1 %i.cf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !62

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cg = icmp eq i64 %.0.lcssa.i.i.i, %i.bj
  %or.cond.i.i = select i1 %i.bn, i1 %i.cg, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bq, ptr noundef nonnull align 4 dereferenceable(9) %i.bp, i64 9, i1 false), !tbaa.struct !50
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.bo, %bb.j ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ch = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ch, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %.sroa.013.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.05.0.copyload.i.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.ci = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i.i.i to float
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.022.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.01023.i.i.i.i, %bb.m ] ; 3 uses
  %.01023.in.i.i.i.i = add nsw i64 %.022.i.i.i.i, -1
  %.01023.i.i.i.i = sdiv i64 %.01023.in.i.i.i.i, 2 ; 4 uses
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %.01023.i.i.i.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !57
  %i.cm = fcmp olt float %i.cl, %i.ci
  br i1 %i.cm, label %bb.m, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cn, ptr noundef nonnull align 4 dereferenceable(9) %i.cj, i64 9, i1 false), !tbaa.struct !50
  %i.co = icmp sgt i64 %.01023.i.i.i.i, %.012.i.i
  br i1 %i.co, label %bb.l, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !61

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.k ], [ %.01023.i.i.i.i, %bb.m ], [ %.022.i.i.i.i, %bb.l ]
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i, ptr %i.cp, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !53
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.cq = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit, label %bb.i, !llvm.loop !112

bb.n:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.044.0, i64 %indvars.iv
end_hunk_2
begin_hunk_3_@_ZN5faiss9NNDescent5buildERNS_16DistanceComputerEib:bb.a
  %i.cw = phi i32 [ %i.cm, %.lr.ph ], [ %i.dj, %bb.ae ]
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !60 ; 2 uses
  %i.cz = load i32, ptr %i.as, align 4, !tbaa !99
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !150
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9NNDescent5buildERNS_16DistanceComputerEib, ptr noundef nonnull @.str.4, i32 noundef 454) #29 ; 0 uses
  tail call void @abort() #28
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dd = mul nsw i32 %i.cw, %i.cs
  %i.de = trunc nuw nsw i64 %indvars.iv to i32
  %i.df = add nsw i32 %i.dd, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.at, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  store i32 %i.cy, ptr %i.di, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %bb.ac, label %._crit_edge, !llvm.loop !152

bb.af:                                            ; preds = %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit
  %i.dm = load i32, ptr %i.as, align 4, !tbaa !99
  %i.dn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dm) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt6vectorIN5faiss9nndescent5NhoodESaIS2_EED2Ev.exit
  ret void

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn39.pn

bb.ai:                                            ; preds = %bb.p, %bb.g
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss9NNDescent6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !83, !range !109, !noundef !110
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !32
  store i8 0, ptr %i.c, align 8, !tbaa !35
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #19 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64                ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %6, align 8, !tbaa !36
  %i.j = load i64, ptr %i.d, align 8, !tbaa !32
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #19 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.m = call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss9NNDescent6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE, ptr noundef nonnull @.str.4, i32 noundef 472)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.al unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.n, %bb.h ]
  %i.o = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit103

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.t, i32 %2) ; 12 uses
  %i.u = add nsw i32 %.sroa.speculated, 1         ; 5 uses
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = icmp slt i32 %.sroa.speculated, -1
  br i1 %i.w, label %.noexc, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %.noexc95, label %.noexc91

.noexc91:                                         ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.x = mul nuw nsw i64 %i.v, 12
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, i8 0, i64 12, i1 false)
  %i.z = add nsw i64 %i.v, -1                     ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.z, 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.k
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ab, %bb.k ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(9) %i.y, i64 9, i1 false), !tbaa.struct !50
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !153

.noexc95:                                         ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc91
  %i.ae = zext nneg i32 %.sroa.speculated to i64  ; 6 uses
  %.not.i.i.i.i92 = icmp eq i32 %.sroa.speculated, 0 ; 2 uses
  br i1 %.not.i.i.i.i92, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc96 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit101 ; 5 uses

.noexc96:                                         ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !37
  %i.ai = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc96
  %i.ak = getelementptr i8, ptr %i.ag, i64 4
  %.idx.i.i.i.i.i.i.i93 = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %.idx.i.i.i.i.i.i.i93, i1 false), !tbaa !37
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc96, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc96 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0108.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc96 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !90
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  store i64 %i.an, ptr %7, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %store_forwarded = phi i64 [ %i.an, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.ba, %bb.n ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.bb, %bb.n ] ; 4 uses
  %i.ao = getelementptr [8 x i8], ptr %7, i64 %.011.i.i
  %i.ap = lshr i64 %store_forwarded, 30
  %i.aq = xor i64 %i.ap, %store_forwarded
  %i.ar = mul nuw nsw i64 %i.aq, 1812433253
  %i.as = add nuw i64 %i.ar, %.011.i.i            ; 2 uses
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !67
  %i.au = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, 624
  br i1 %exitcond.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr [8 x i8], ptr %7, i64 %i.au
  %i.aw = lshr i64 %i.at, 30
  %i.ax = xor i64 %i.aw, %i.as
  %i.ay = mul i64 %i.ax, 1812433253
  %i.az = add i64 %i.ay, %i.au
  %i.ba = and i64 %i.az, 4294967295               ; 2 uses
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !67
  %i.bb = add nuw nsw i64 %.011.i.i, 2
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4992
  store i64 624, ptr %i.bc, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !99
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %7, ptr noundef %.sroa.0108.0, i32 noundef %.sroa.speculated, i32 noundef %i.be)
          to label %.preheader134 unwind label %bb.p

.preheader134:                                    ; preds = %bb.o
  br i1 %.not.i.i.i.i92, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q
  %.idx = mul nuw nsw i64 %i.ae, 12               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx ; 2 uses
  %i.bg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.bh = shl nuw nsw i64 %i.bg, 1
  %i.bi = xor i64 %i.bh, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %i.y, ptr nonnull %i.bf, i64 noundef %i.bi)
          to label %.noexc97 unwind label %.thread180

.noexc97:                                         ; preds = %._crit_edge
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr nonnull %i.y, ptr nonnull %i.bf)
          to label %.lr.ph143 unwind label %.thread180

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %.preheader134, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.preheader134 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0108.0, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !37 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load ptr, ptr %1, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef float %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.bm)
          to label %bb.q unwind label %.thread

bb.q:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv ; 3 uses
  store i32 %i.bl, ptr %i.br, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !51
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 1, ptr %.sroa.5105.0..sroa_idx, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !154

.thread:                                          ; preds = %.lr.ph
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph143:                                        ; preds = %.noexc97
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = add nsw i32 %.sroa.speculated, -1       ; 3 uses
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.cb = icmp sgt i32 %.sroa.speculated, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.r

.preheader:                                       ; preds = %.loopexit, %.preheader134
  %i.cd = icmp sgt i32 %2, 0
  br i1 %i.cd, label %.lr.ph145.preheader, label %._crit_edge146

.lr.ph145.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ce = icmp eq i32 %2, 1
  br i1 %i.ce, label %.lr.ph145.epil.preheader, label %.lr.ph145.preheader.new

.lr.ph145.preheader.new:                          ; preds = %.lr.ph145.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph145

bb.r:                                             ; preds = %.lr.ph143, %.loopexit
  %.074142 = phi i32 [ 0, %.lr.ph143 ], [ %.175, %.loopexit ] ; 3 uses
  %i.cf = sext i32 %.074142 to i64
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !108, !range !109, !noundef !110
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.ch, align 4, !tbaa !108
  %i.ck = load i32, ptr %i.cg, align 4, !tbaa !60
  %i.cl = load i32, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph141, label %.loopexit

.thread180:                                       ; preds = %._crit_edge, %.noexc97
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph141:                                        ; preds = %bb.s, %bb.af
  %i.co = phi i32 [ %i.es, %bb.af ], [ %i.cl, %bb.s ]
  %.068139 = phi i32 [ %i.er, %bb.af ], [ 0, %bb.s ] ; 2 uses
  %.069138 = phi i32 [ %.372, %bb.af ], [ %.sroa.speculated, %bb.s ] ; 3 uses
  %i.cp = mul nsw i32 %i.co, %i.ck
  %i.cq = add nsw i32 %i.cp, %.068139
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !37 ; 5 uses
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = load ptr, ptr %5, align 8, !tbaa !63
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cv)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph141
  br i1 %i.cz, label %bb.af, label %bb.v

bb.u:                                             ; preds = %bb.v, %.lr.ph141
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.v:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %5, align 8, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cv)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %1, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef float %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cv)
          to label %bb.x unwind label %bb.y       ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.dj = load float, ptr %i.bz, align 4, !tbaa !57
  %i.dk = fcmp ult float %i.di, %i.dj
  br i1 %i.dk, label %bb.z, label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  %i.dm = bitcast float %i.di to i32
  %.sroa.0.sroa.4.0.insert.ext = zext i32 %i.dm to i64
  %.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %i.cu to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext ; 2 uses
  %i.dn = load float, ptr %i.ca, align 4, !tbaa !57
  %i.do = fcmp ogt float %i.dn, %i.di
  br i1 %i.do, label %bb.aa, label %.preheader68.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull align 4 %i.y, i64 %.idx, i1 false)
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.y, align 4
  store i8 1, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !53
  br label %_ZN5faiss9nndescent16insert_into_poolEPNS0_8NeighborEiS1_.exit

.preheader68.i:                                   ; preds = %bb.z
  br i1 %i.cb, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not168 = icmp eq i32 %.063..i, 0
  br i1 %.not168, label %._crit_edge.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %.preheader.i
  %i.dp = zext nneg i32 %.063..i to i64
  br label %.lr.ph74.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.071.i = phi i32 [ %..0.i, %.lr.ph.i ], [ %i.bw, %.preheader68.i ] ; 2 uses
  %.06370.i = phi i32 [ %.063..i, %.lr.ph.i ], [ 0, %.preheader68.i ] ; 2 uses
end_hunk_3
