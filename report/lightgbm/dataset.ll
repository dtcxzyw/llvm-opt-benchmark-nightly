Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset?download=true
inline.NumInlined: 6241
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt6vectorIbSaIbEEaSERKS1_:bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !277    ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = shl nsw i64 %i.r, 3
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.c, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %bb.c
  %i.u = ashr exact i64 %i.r, 3
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.v
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.r) #35
  store ptr null, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.m, align 8
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !277 ; 2 uses
  %.pre32 = load i32, ptr %i.d, align 8, !tbaa !302 ; 2 uses
  %.pre33 = load ptr, ptr %1, align 8, !tbaa !277 ; 2 uses
  %.pre37 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre38 = ptrtoint ptr %.pre33 to i64           ; 2 uses
  %.pre40 = sub i64 %.pre37, %.pre38
  %.pre42 = shl nsw i64 %.pre40, 3
  %.pre44 = zext i32 %.pre32 to i64
  %.pre46 = add nsw i64 %.pre42, %.pre44          ; 2 uses
  %.not.i25 = icmp eq i64 %.pre46, 0
  br i1 %.not.i25, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread: ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.pre-phi4760 = phi i64 [ %.pre46, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.l, %bb.c ] ; 4 uses
  %i.x = add i64 %.pre-phi4760, 63                ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 2305843009213693944
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #36 ; 4 uses
  %i.ab = lshr i64 %i.x, 6
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !296
  store ptr %i.aa, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ad = sdiv i64 %.pre-phi4760, 64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = and i64 %.pre-phi4760, -9223372036854775745
  %i.ag = icmp ugt i64 %i.af, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.ag, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.ae, i64 %storemerge.idx.i.i.i.i
  %i.ah = trunc i64 %.pre-phi4760 to i32
  %i.ai = and i32 %i.ah, 63
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %storemerge.i.i.i.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ai, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.pre34 = load ptr, ptr %1, align 8, !tbaa !277 ; 2 uses
  %.pre35 = load ptr, ptr %i.b, align 8, !tbaa !277 ; 2 uses
  %.pre36 = load i32, ptr %i.d, align 8, !tbaa !302
  %.pre48 = ptrtoint ptr %.pre35 to i64
  %.pre50 = ptrtoint ptr %.pre34 to i64
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit:       ; preds = %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, %bb.b
  %.pre-phi51 = phi i64 [ %.pre50, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre38, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.h, %bb.b ]
  %.pre-phi49 = phi i64 [ %.pre48, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre37, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.g, %bb.b ]
  %i.ak = phi ptr [ %i.aa, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ null, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.o, %bb.b ] ; 3 uses
  %i.al = phi i32 [ %.pre36, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre32, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.e, %bb.b ] ; 2 uses
  %i.am = phi ptr [ %.pre35, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.c, %bb.b ]
  %i.an = phi ptr [ %.pre34, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre33, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.ao = sub i64 %.pre-phi49, %.pre-phi51        ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 8
  br i1 %i.ap, label %bb.d, label %bb.e, !prof !188

bb.d:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr align 8 %i.an, i64 %i.ao, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  %i.aq = icmp eq i64 %i.ao, 8
  br i1 %i.aq, label %bb.f, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !45
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !45
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d
  %i.as = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao ; 2 uses
  %.not.i30 = icmp eq i32 %i.al, 0
  br i1 %.not.i30, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.at = zext i32 %i.al to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.bj, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.at, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.au = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !45
  %i.ax = and i64 %i.aw, %i.av
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.az = shl nuw i64 1, %i.ay                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ba = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !45
  %i.bb = or i64 %i.ba, %i.az
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bc = xor i64 %i.az, -1
  %i.bd = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !45
  %i.be = and i64 %i.bd, %i.bc
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.be, %bb.h ], [ %i.bb, %bb.g ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !45
  %i.bf = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.bg = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.bg, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.bg, i32 0, i32 %i.bf
  %i.bh = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.bi = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.bi, i32 0, i32 %i.bh ; 2 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.bi, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 2 uses
  %i.bj = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !18

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ]
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.as, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19FastFeatureBundlingERKSt6vectorISt10unique_ptrINS_9BinMapperESt14default_deleteIS2_EESaIS5_EEPPiPPdPKiiiRKS0_IiSaIiEEibbPS0_IaSaIaEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.120") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10, ptr noundef %11) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::vector.23", align 8   ; 19 uses
  %14 = alloca %"class.std::vector.3", align 8    ; 13 uses
  %15 = alloca %"class.std::vector.120", align 8  ; 12 uses
  %16 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %17 = alloca %"class.std::vector.64", align 8   ; 12 uses
  %18 = alloca %"class.std::vector.64", align 8   ; 10 uses
  %19 = alloca %"class.std::vector.120", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 28, ptr %i.a, align 8, !tbaa !45
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %12, align 8, !tbaa !47
  %i.d = load i64, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.c, ptr noundef nonnull align 1 dereferenceable(28) @.str.37, i64 28, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !49
  %i.f = load ptr, ptr %12, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.h = load ptr, ptr %12, align 8, !tbaa !47    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !48
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205  ; 4 uses
  %i.n = load ptr, ptr %7, align 8, !tbaa !200    ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1152921504606846975
  br i1 %i.s, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
          to label %.noexc94 unwind label %bb.g

.noexc94:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %.not386 = icmp eq ptr %i.m, %i.n
  br i1 %.not386, label %._crit_edge, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.v = shl nuw nsw i64 %i.q, 1
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36
          to label %.noexc95 unwind label %bb.g   ; 6 uses

.noexc95:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %13, align 8, !tbaa !210   ; 4 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !270
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.c:                                             ; preds = %.noexc95
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.c, %.noexc95
  %.not.i8.i = icmp eq ptr %i.x, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !249
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.af) #35
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.d
  store ptr %i.w, ptr %13, align 8, !tbaa !210
  store ptr %i.w, ptr %i.u, align 8, !tbaa !270
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r ; 3 uses
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !249
  %.pre = load ptr, ptr %7, align 8, !tbaa !184   ; 2 uses
  %.pre288 = load ptr, ptr %i.l, align 8, !tbaa !184 ; 4 uses
  %.not224259 = icmp eq ptr %.pre, %.pre288
  br i1 %.not224259, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit
  %.pre289 = load ptr, ptr %i.l, align 8, !tbaa !205
  %.pre290 = load ptr, ptr %7, align 8, !tbaa !200
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %20 = phi ptr [ %.pre290, %._crit_edge.loopexit ], [ %.pre288, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.m, %bb.b ] ; 4 uses
  %21 = phi ptr [ %.pre289, %._crit_edge.loopexit ], [ %.pre288, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.ai = ptrtoint ptr %21 to i64
  %i.aj = ptrtoint ptr %20 to i64                 ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 9223372036854775804
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
          to label %.noexc97 unwind label %.body.thread

.noexc97:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %.not225 = icmp eq ptr %21, %20
  br i1 %.not225, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #36
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i unwind label %.body.thread ; 2 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  %.pre291 = load ptr, ptr %i.l, align 8, !tbaa !205 ; 2 uses
  %.pre292 = load ptr, ptr %7, align 8, !tbaa !200 ; 2 uses
  %.pre302 = ptrtoint ptr %.pre291 to i64
  %.pre303 = ptrtoint ptr %.pre292 to i64
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit
  %i.ap = phi ptr [ %i.ag, %.lr.ph ], [ %i.cn, %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit ] ; 5 uses
  %i.aq = phi ptr [ %i.w, %.lr.ph ], [ %i.co, %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit ] ; 10 uses
  %i.ar = phi ptr [ %i.ag, %.lr.ph ], [ %i.cp, %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit ] ; 3 uses
  %i.as = phi ptr [ %i.w, %.lr.ph ], [ %i.cq, %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit ] ; 6 uses
  %.sroa.0214.0260 = phi ptr [ %.pre, %.lr.ph ], [ %i.cr, %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit ] ; 2 uses
  %i.at = load i32, ptr %.sroa.0214.0260, align 4, !tbaa !138 ; 2 uses
  %i.au = icmp slt i32 %i.at, %5
  br i1 %i.au, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.av ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.ap
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !138
  %i.ay = sext i32 %i.ax to i64
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !270
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = ptrtoint ptr %i.ap to i64
  %i.bb = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.l, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #37
          to label %.noexc99 unwind label %.loopexit.split-lp245

.noexc99:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #36
          to label %.noexc100 unwind label %.loopexit244 ; 5 uses

.noexc100:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !138
  %i.bn = sext i32 %i.bm to i64
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !45
  %i.bo = icmp sgt i64 %i.bc, 0
  br i1 %i.bo, label %bb.m, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc100
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.aq, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc100
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !249
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bs) #35
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.bk, ptr %13, align 8, !tbaa !210
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !270
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi ; 3 uses
  store ptr %i.bt, ptr %i.t, align 8, !tbaa !249
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit

.loopexit244:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit246 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

.loopexit.split-lp245:                            ; preds = %bb.l
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

bb.o:                                             ; preds = %bb.h
  %.not.i101 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i101, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %i.as, align 8, !tbaa !45
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.ah, align 8, !tbaa !270
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit

bb.q:                                             ; preds = %bb.o
  %i.bv = ptrtoint ptr %i.ar to i64
  %i.bw = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i102

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #37
          to label %.noexc107 unwind label %.loopexit.split-lp240

.noexc107:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i102: ; preds = %bb.q
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i103 = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i103, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i104 = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i104)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #36
          to label %.noexc108 unwind label %.loopexit239 ; 5 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i102
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !45
  %i.ch = icmp sgt i64 %i.bx, 0
  br i1 %i.ch, label %bb.s, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i105

bb.s:                                             ; preds = %.noexc108
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.aq, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i105

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i105: ; preds = %bb.s, %.noexc108
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.not.i17.i.i106 = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i106, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i105
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !249
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.cl) #35
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i105
  store ptr %i.cf, ptr %13, align 8, !tbaa !210
  store ptr %i.ci, ptr %i.ah, align 8, !tbaa !270
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd ; 3 uses
  store ptr %i.cm, ptr %i.t, align 8, !tbaa !249
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit

.loopexit239:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i102
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

.loopexit.split-lp240:                            ; preds = %bb.r
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

_ZNSt6vectorImSaImEE12emplace_backIJRKiEEERmDpOT_.exit: ; preds = %bb.p, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.j
  %i.cn = phi ptr [ %i.ap, %bb.p ], [ %i.cm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ap, %bb.j ]
  %i.co = phi ptr [ %i.aq, %bb.p ], [ %i.cf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.aq, %bb.j ]
  %i.cp = phi ptr [ %i.ar, %bb.p ], [ %i.cm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ap, %bb.j ]
  %i.cq = phi ptr [ %i.bu, %bb.p ], [ %i.ci, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.az, %bb.j ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0214.0260, i64 4 ; 2 uses
  %.not224 = icmp eq ptr %i.cr, %.pre288
  br i1 %.not224, label %._crit_edge.loopexit, label %bb.h

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.f
  %.pre-phi304 = phi i64 [ %.pre303, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.aj, %bb.f ]
  %.pre-phi = phi i64 [ %.pre302, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.aj, %bb.f ]
  %i.cs = phi ptr [ %.pre292, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %20, %bb.f ]
  %i.ct = phi ptr [ %.pre291, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %20, %bb.f ]
  %.sroa.0193.2 = phi ptr [ %i.am, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.f ] ; 4 uses
  %.sroa.23.2 = phi ptr [ %i.an, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.f ] ; 2 uses
  %i.cu = sub i64 %.pre-phi, %.pre-phi304
  %i.cv = lshr exact i64 %i.cu, 2
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph265, label %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge"

._crit_edge266:                                   ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.cy = icmp eq ptr %.sroa.0193.4, %.sroa.14.2
  br i1 %i.cy, label %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge", label %bb.u

"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge": ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %._crit_edge266
  %.sroa.23.0.lcssa404.a = phi ptr [ %.sroa.23.4, %._crit_edge266 ], [ %.sroa.23.2, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ]
  %.sroa.14.0.lcssa401 = phi ptr [ %.sroa.14.2, %._crit_edge266 ], [ %.sroa.0193.2, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %.sroa.0193.0.lcssa392.a = phi ptr [ %.sroa.0193.4, %._crit_edge266 ], [ %.sroa.0193.2, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %.pre313 = ptrtoint ptr %.sroa.14.0.lcssa401 to i64
  %.pre315 = ptrtoint ptr %.sroa.0193.0.lcssa392.a to i64 ; 2 uses
  %.pre317 = sub i64 %.pre313, %.pre315
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit"

bb.u:                                             ; preds = %._crit_edge266
  %i.cz = ptrtoint ptr %.sroa.14.2 to i64         ; 2 uses
  %i.da = ptrtoint ptr %.sroa.0193.4 to i64       ; 2 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 2 uses
  %i.dd = add nsw i64 %i.dc, 1
  %i.de = sdiv i64 %i.dd, 2                       ; 4 uses
  %i.df = icmp sgt i64 %i.dc, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.dk, %select.unfold.i.i.i.i ], [ %i.de, %bb.u ] ; 4 uses
  %i.dg = shl nuw nsw i64 %.010.i.i.i.i, 2
  %i.dh = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.dg, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #41 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.di = icmp eq i64 %.010.i.i.i.i, 1
  %i.dj = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.dk = lshr i64 %i.dj, 1
  br i1 %i.di, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !505

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.u
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.u ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %.sroa.12.0.i.i = phi ptr [ null, %bb.u ], [ %i.dh, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 7 uses
  %i.dl = icmp eq i64 %i.de, %.sroa.5.0.i.i
  br i1 %i.dl, label %bb.v, label %bb.x, !prof !188

bb.v:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i
  %i.dm = getelementptr inbounds [4 x i8], ptr %.sroa.0193.4, i64 %i.de ; 4 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS9_9BinMapperESt14default_deleteISB_EESaISE_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EEEvT_SV_T0_T1_"(ptr %.sroa.0193.4, ptr %i.dm, ptr noundef %.sroa.12.0.i.i, ptr nonnull %13)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS9_9BinMapperESt14default_deleteISB_EESaISE_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EEEvT_SV_T0_T1_"(ptr %i.dm, ptr nonnull %.sroa.14.2, ptr noundef %.sroa.12.0.i.i, ptr nonnull %13)
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.cz, %i.dn
  %i.dp = ashr exact i64 %i.do, 2
  %i.dq = ptrtoint ptr %13 to i64
  call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS9_9BinMapperESt14default_deleteISB_EESaISE_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EEEvT_SV_SV_T0_SW_T1_T2_"(ptr %.sroa.0193.4, ptr %i.dm, ptr nonnull %.sroa.14.2, i64 noundef %i.de, i64 noundef %i.dp, ptr noundef %.sroa.12.0.i.i, i64 %i.dq)
  br label %bb.aa

bb.w:                                             ; preds = %bb.z, %bb.y
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = shl i64 %.sroa.5.0.i.i, 2
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.ds) #18
  br label %.body

bb.x:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit.i.i
  %i.dt = icmp eq ptr %.sroa.12.0.i.i, null
  br i1 %i.dt, label %bb.y, label %bb.z, !prof !185

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS9_9BinMapperESt14default_deleteISB_EESaISE_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EEEvT_SV_T0_"(ptr %.sroa.0193.4, ptr nonnull %.sroa.14.2, ptr nonnull %13)
          to label %bb.aa unwind label %bb.w

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS9_9BinMapperESt14default_deleteISB_EESaISE_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EEEvT_SV_T0_T1_T2_"(ptr %.sroa.0193.4, ptr nonnull %.sroa.14.2, ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %.sroa.5.0.i.i, ptr nonnull %13)
          to label %bb.aa unwind label %bb.w

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.v
  %i.du = shl i64 %.sroa.5.0.i.i, 2
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.du) #18
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit"

.body.thread:                                     ; preds = %bb.e, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

.lr.ph265:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.dw = phi ptr [ %i.em, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ %i.cs, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ]
  %i.dx = phi ptr [ %i.en, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ %i.ct, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ]
  %storemerge264 = phi i32 [ %i.eo, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %.sroa.23.0263 = phi ptr [ %.sroa.23.4, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ %.sroa.23.2, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 5 uses
  %.sroa.14.0262 = phi ptr [ %.sroa.14.2, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ %.sroa.0193.2, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %.sroa.0193.0261 = phi ptr [ %.sroa.0193.4, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ %.sroa.0193.2, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 7 uses
  %.not.i109 = icmp eq ptr %.sroa.14.0262, %.sroa.23.0263
  br i1 %.not.i109, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph265
  store i32 %storemerge264, ptr %.sroa.14.0262, align 4, !tbaa !138
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.ac:                                            ; preds = %.lr.ph265
  %i.dy = ptrtoint ptr %.sroa.23.0263 to i64
  %i.dz = ptrtoint ptr %.sroa.0193.0261 to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 6 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775804
  br i1 %i.eb, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #37
          to label %.noexc113 unwind label %.loopexit.split-lp235

.noexc113:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.ec = ashr exact i64 %i.ea, 2                 ; 3 uses
  %.sroa.speculated.i.i.i110 = call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i110, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 2305843009213693951)
  %i.eg = select i1 %i.ee, i64 2305843009213693951, i64 %i.ef ; 3 uses
  %.not.i.i.i111 = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i111)
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #36
          to label %.noexc114 unwind label %.loopexit234 ; 4 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ea ; 2 uses
  store i32 %storemerge264, ptr %i.ej, align 4, !tbaa !138
  %i.ek = icmp sgt i64 %i.ea, 0
  br i1 %i.ek, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ae:                                            ; preds = %.noexc114
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr align 4 %.sroa.0193.0261, i64 %i.ea, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ae, %.noexc114
  %.not.i17.i.i112 = icmp eq ptr %.sroa.0193.0261, null
  br i1 %.not.i17.i.i112, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0193.0261, i64 noundef %i.ea) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eg
  %.pre293 = load ptr, ptr %i.l, align 8, !tbaa !205
  %.pre294 = load ptr, ptr %7, align 8, !tbaa !200
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ab
  %i.em = phi ptr [ %.pre294, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dw, %bb.ab ] ; 2 uses
  %i.en = phi ptr [ %.pre293, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dx, %bb.ab ] ; 2 uses
  %.sroa.0193.4 = phi ptr [ %i.ei, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0193.0261, %bb.ab ] ; 11 uses
  %.pn228 = phi ptr [ %i.ej, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.14.0262, %bb.ab ]
  %.sroa.23.4 = phi ptr [ %i.el, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.23.0263, %bb.ab ] ; 4 uses
  %.sroa.14.2 = getelementptr inbounds nuw i8, ptr %.pn228, i64 4 ; 9 uses
  %i.eo = add nuw nsw i32 %storemerge264, 1       ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = lshr exact i64 %i.er, 2
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp slt i32 %i.eo, %i.et
  br i1 %i.eu, label %.lr.ph265, label %._crit_edge266, !llvm.loop !506

.loopexit234:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit236 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp235:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp237 = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit": ; preds = %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge", %bb.aa
  %i.ev = phi i1 [ true, %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge" ], [ false, %bb.aa ]
  %.sroa.23.0.lcssa403 = phi ptr [ %.sroa.23.0.lcssa404.a, %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge" ], [ %.sroa.23.4, %bb.aa ] ; 2 uses
  %.sroa.14.0.lcssa402 = phi ptr [ %.sroa.14.0.lcssa401, %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge" ], [ %.sroa.14.2, %bb.aa ]
  %.sroa.0193.0.lcssa391 = phi ptr [ %.sroa.0193.0.lcssa392.a, %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge" ], [ %.sroa.0193.4, %bb.aa ] ; 4 uses
  %.pre-phi318 = phi i64 [ %.pre317, %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge" ], [ %i.db, %bb.aa ] ; 4 uses
  %.pre-phi316 = phi i64 [ %.pre315, %"._crit_edge266._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit_crit_edge" ], [ %i.da, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ew = icmp ugt i64 %.pre-phi318, 9223372036854775804
  br i1 %i.ew, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8LightGBM19FastFeatureBundlingERKS3_ISt10unique_ptrINS7_9BinMapperESt14default_deleteIS9_EESaISC_EEPS2_PPdPKiiiRKS5_ibbPS3_IaSaIaEEE3$_0EvT_SS_T0_.exit"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
          to label %.noexc119 unwind label %bb.ak

.noexc119:                                        ; preds = %bb.ag
  unreachable

end_hunk_0
