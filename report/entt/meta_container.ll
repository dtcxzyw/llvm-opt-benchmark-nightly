Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_container?download=true
inline.NumInlined: 11203
inline.NumDeleted: 3081
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4entt36basic_meta_sequence_container_traitsISt5dequeIiSaIiEEE5eraseERKNS_8meta_ctxEPvRKNS_23meta_sequence_container13meta_iteratorE:bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

_ZN4entt23meta_sequence_container13meta_iteratorC2ITkSt22bidirectional_iteratorSt15_Deque_iteratorIiRiPiEEERKNS_8meta_ctxET_.exit: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load <2 x ptr>, ptr %5, align 16, !tbaa !104
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !104
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load <2 x ptr>, ptr %i.w, align 16, !tbaa !136
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !136
  store ptr %i.q, ptr %i.t, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !312  ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !356
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !313
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !314  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !356  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 3 uses
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = sub nuw i64 %1, %i.ac
  tail call void @_ZNSt5dequeIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ae)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.ac
  br i1 %i.af, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !313, !noalias !2135 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.z, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = add nsw i64 %i.ak, %1                   ; 5 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.an = icmp samesign ult i64 %i.al, 128
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.x, i64 %1
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = lshr i64 %i.al, 7
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.aq = ashr i64 %i.al, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = phi i64 [ %i.ap, %bb.g ], [ %i.aq, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !104, !noalias !2135 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.av = shl nsw i64 %i.ar, 7
  %i.aw = sub nsw i64 %i.al, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.aw
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit:         ; preds = %bb.f, %bb.i
  %.sroa.4.0 = phi ptr [ %i.w, %bb.f ], [ %i.au, %bb.i ]
  %.sroa.2.0 = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.i ]
  %.sroa.6.0 = phi ptr [ %i.f, %bb.f ], [ %i.as, %bb.i ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.ax, %bb.i ]
  %i.ay = icmp ult ptr %.sroa.6.0, %i.d
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit

.lr.ph.i.i:                                       ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit, %.lr.ph.i.i
  %.06.i.pn.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %.sroa.6.0, %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i, i64 8 ; 3 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !104
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef 512) #30
  %i.ba = icmp ult ptr %.06.i.i, %i.d
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit, !llvm.loop !11

_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit: ; preds = %.lr.ph.i.i, %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !104
  store ptr %.sroa.2.0, ptr %i.o, align 8, !tbaa !104
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !104
  store ptr %.sroa.6.0, ptr %i.c, align 8, !tbaa !357
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !364, !noalias !2143 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !316, !noalias !2143 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = add nsw i64 %i.h, -1                     ; 2 uses
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw i64 %1, %i.i
  tail call void @_ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.k), !noalias !2143
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !356, !noalias !2144 ; 2 uses
  %.pre6.i = load ptr, ptr %i.b, align 8, !tbaa !314, !noalias !2144
  %.pre7.i = ptrtoint ptr %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi i64 [ %.pre7.i, %bb.c ], [ %i.f, %bb.b ]
  %i.l = phi ptr [ %.pre6.i, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !313, !noalias !2144 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !312, !noalias !2144 ; 4 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %.pre-phi.i, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.t, %1                     ; 5 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = icmp samesign ult i64 %i.u, 128
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds [4 x i8], ptr %i.m, i64 %1
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

bb.g:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.u, 7
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.z = ashr i64 %i.u, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = phi i64 [ %i.y, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !104, !noalias !2144 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 512
  %i.ae = shl nsw i64 %i.aa, 7
  %i.af = sub nsw i64 %i.u, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.af
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit: ; preds = %bb.f, %bb.i
  %.sroa.6.0 = phi ptr [ %i.o, %bb.f ], [ %i.ac, %bb.i ] ; 6 uses
  %.sroa.9.0 = phi ptr [ %i.l, %bb.f ], [ %i.ad, %bb.i ]
  %.sroa.12.0 = phi ptr [ %i.q, %bb.f ], [ %i.ab, %bb.i ] ; 4 uses
  %storemerge.i.i.i = phi ptr [ %i.x, %bb.f ], [ %i.ag, %bb.i ] ; 6 uses
  %i.ah = icmp eq ptr %i.m, %storemerge.i.i.i
  br i1 %i.ah, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  store i32 0, ptr %i.m, align 4, !tbaa !134
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.l
  br i1 %i.aj, label %bb.k, label %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  br label %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i

_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i:     ; preds = %bb.k, %bb.j
  %.sroa.9.0.i.i = phi ptr [ %i.ak, %bb.k ], [ %i.q, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %i.am, %bb.k ], [ %i.l, %bb.j ] ; 2 uses
  %i.ao = phi ptr [ %i.al, %bb.k ], [ %i.ai, %bb.j ] ; 5 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = ptrtoaddr ptr %storemerge.i.i.i to i64  ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %storemerge.i.i.i
  br i1 %i.ar, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i
  %i.as = ptrtoaddr ptr %i.an to i64
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.9.0.i.i, %.sroa.12.0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i29.i.i.i.preheader.i.i.i, label %bb.m

.lr.ph.i29.i.i.i.preheader.i.i.i:                 ; preds = %bb.l
  %i.at = add i64 %i.aq, -4
  %i.au = sub i64 %i.at, %i.ap
  %i.av = and i64 %i.au, -4
  %i.aw = add i64 %i.av, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.aw, i1 false), !tbaa !134
  br label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit

bb.m:                                             ; preds = %bb.l
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.m
  %i.ax = add i64 %i.as, -4
  %i.ay = sub i64 %i.ax, %i.ap
  %i.az = and i64 %i.ay, -4
  %i.ba = add i64 %i.az, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.ba, i1 false), !tbaa !134
  br label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %bb.m
  %.034.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i, i64 8 ; 2 uses
  %i.bb = icmp ult ptr %.034.i.i.i.i.i.i, %.sroa.12.0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i
  %i.bc = load i32, ptr %i.m, align 4, !tbaa !134 ; 2 uses
  %.not5.i18.i.i.i.i.i.i = icmp eq ptr %.sroa.6.0, %storemerge.i.i.i
  br i1 %.not5.i18.i.i.i.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %2 = ptrtoaddr ptr %.sroa.6.0 to i64
  %i.bd = add i64 %i.aq, -4
  %i.be = sub i64 %i.bd, %2                       ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 28
  br i1 %min.iters.check, label %.lr.ph.i19.i.i.i.i.i.i.preheader23, label %vector.ph16

vector.ph16:                                      ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %.sroa.6.0, i64 %i.bh
  %broadcast.splatinsert17 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat18 = shufflevector <4 x i32> %broadcast.splatinsert17, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph16
  %index20 = phi i64 [ 0, %vector.ph16 ], [ %index.next21, %vector.body19 ] ; 2 uses
  %i.bj = shl i64 %index20, 2
  %next.gep = getelementptr i8, ptr %.sroa.6.0, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat18, ptr %next.gep, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat18, ptr %i.bk, align 4, !tbaa !134
  %index.next21 = add nuw i64 %index20, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next21, %n.vec
  br i1 %i.bl, label %middle.block22, label %vector.body19, !llvm.loop !2140

middle.block22:                                   ; preds = %vector.body19
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader23

.lr.ph.i19.i.i.i.i.i.i.preheader23:               ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader, %middle.block22
  %.06.i20.i.i.i.i.i.i.ph = phi ptr [ %.sroa.6.0, %.lr.ph.i19.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block22 ]
  br label %.lr.ph.i19.i.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i.i:                           ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader23, %.lr.ph.i19.i.i.i.i.i.i
  %.06.i20.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i19.i.i.i.i.i.i ], [ %.06.i20.i.i.i.i.i.i.ph, %.lr.ph.i19.i.i.i.i.i.i.preheader23 ] ; 2 uses
  store i32 %i.bc, ptr %.06.i20.i.i.i.i.i.i, align 4, !tbaa !134
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %i.bm, %storemerge.i.i.i
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %.lr.ph.i19.i.i.i.i.i.i, !llvm.loop !2141

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.035.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.034.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bn = load i32, ptr %i.m, align 4, !tbaa !134
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.bo = load ptr, ptr %.035.i.i.i.i.i.i, align 8, !tbaa !104 ; 32 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bo, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.bp, align 4, !tbaa !134
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store <4 x i32> %broadcast.splat, ptr %i.bq, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.br, align 4, !tbaa !134
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store <4 x i32> %broadcast.splat, ptr %i.bs, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.bt, align 4, !tbaa !134
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  store <4 x i32> %broadcast.splat, ptr %i.bu, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.bv, align 4, !tbaa !134
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  store <4 x i32> %broadcast.splat, ptr %i.bw, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.bx, align 4, !tbaa !134
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 160
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 176
  store <4 x i32> %broadcast.splat, ptr %i.by, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.bz, align 4, !tbaa !134
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  store <4 x i32> %broadcast.splat, ptr %i.ca, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.cb, align 4, !tbaa !134
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  store <4 x i32> %broadcast.splat, ptr %i.cc, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.cd, align 4, !tbaa !134
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  store <4 x i32> %broadcast.splat, ptr %i.ce, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.cf, align 4, !tbaa !134
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 288
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 304
  store <4 x i32> %broadcast.splat, ptr %i.cg, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.ch, align 4, !tbaa !134
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 320
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 336
  store <4 x i32> %broadcast.splat, ptr %i.ci, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4, !tbaa !134
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 352
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 368
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.cl, align 4, !tbaa !134
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 384
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 400
  store <4 x i32> %broadcast.splat, ptr %i.cm, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 4, !tbaa !134
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 416
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 432
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.cp, align 4, !tbaa !134
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 448
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bo, i64 464
  store <4 x i32> %broadcast.splat, ptr %i.cq, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 4, !tbaa !134
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 480
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bo, i64 496
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 4, !tbaa !134
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 4, !tbaa !134
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %.0.i.i.i.i.i.i, %.sroa.12.0
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !2142

_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit: ; preds = %.lr.ph.i19.i.i.i.i.i.i, %middle.block22, %._crit_edge.i.i.i.i.i.i, %.lr.ph.i29.i.i.i.preheader.i.i.i, %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  store ptr %storemerge.i.i.i, ptr %i.a, align 8, !tbaa !104
  store ptr %.sroa.6.0, ptr %i.n, align 8, !tbaa !104
  store ptr %.sroa.9.0, ptr %i.b, align 8, !tbaa !104
  store ptr %.sroa.12.0, ptr %i.p, align 8, !tbaa !357
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt15_Deque_iteratorIiRKiPS4_EEEvPKvlPNS_8meta_anyE(ptr noundef %0, i64 noundef %1, ptr noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = load ptr, ptr %0, align 8, !tbaa !359    ; 3 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %2), !inline_history !34
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.d, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1779859874, ptr %i.e, align 8, !tbaa !109
  store ptr null, ptr %i.b, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 4, ptr %i.f, align 4, !tbaa !111
  store ptr %i.a, ptr %2, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.g, align 8, !tbaa !136
  %i.i = icmp eq ptr %i.h, @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv
  br i1 %i.i, label %bb.d, label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

bb.d:                                             ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115
  br label %_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit

_ZN4entt8meta_any7emplaceIRKiJS3_EEEvDpOT0_.exit: ; preds = %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ null, %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.l, ptr %i.m, align 8, !tbaa !115
  br label %_ZSt9__advanceISt15_Deque_iteratorIiRKiPS1_ElEvRT_T0_St26random_access_iterator_tag.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !360
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = add nsw i64 %i.s, %1                     ; 5 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = icmp samesign ult i64 %i.t, 128
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds [4 x i8], ptr %i.a, i64 %1
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.x = lshr i64 %i.t, 7
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.y = ashr i64 %i.t, 7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi i64 [ %i.x, %bb.h ], [ %i.y, %bb.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !362
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.z ; 2 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !362
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 3 uses
end_hunk_0
