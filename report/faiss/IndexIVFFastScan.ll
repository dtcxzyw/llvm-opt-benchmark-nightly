Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFFastScan?download=true
inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE:bb.a
  %i.h = alloca i8, align 1                       ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.std::vector.89", align 8   ; 17 uses
  %15 = alloca %"class.std::vector.100", align 8  ; 11 uses
  %i.j = alloca i8, align 1                       ; 7 uses
  %16 = alloca %class.anon.105, align 8           ; 5 uses
  %17 = alloca %class.anon.106, align 8           ; 5 uses
  %18 = alloca %class.anon.107, align 8           ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !72
  store i64 %3, ptr %i.b, align 8, !tbaa !72
  store ptr %4, ptr %i.c, align 8, !tbaa !99
  store ptr %5, ptr %i.d, align 8, !tbaa !45
  store i32 %7, ptr %i.e, align 4, !tbaa !100
  %i.m = icmp eq i64 %1, 0
  br i1 %i.m, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80
  %i.p = icmp eq i32 %i.o, 32
  br i1 %i.p, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.q, ptr %10, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !41
  store i8 0, ptr %i.q, align 8, !tbaa !32
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.42) #27 ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = zext nneg i32 %i.s to i64                ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.v)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %10, align 8, !tbaa !31
  %i.x = load i64, ptr %i.r, align 8, !tbaa !41
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.w, i64 noundef %i.x, ptr noundef nonnull @.str, ptr noundef nonnull @.str.42) #27 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.u)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.aa = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.2, i32 noundef 1334)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #39
          to label %bb.be unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aa) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.ab, %bb.i ]
  %i.ac = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.q
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bd

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ null, %bb.k ]
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.am = load i64, ptr %i.al, align 8, !tbaa !81
  %i.an = mul i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.g, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ao = and i64 %1, 6917529027641081856
  %.not60 = icmp eq i64 %i.ao, 0
  %i.ap = shl i64 %1, 3
  %i.aq = select i1 %.not60, i64 %i.ap, i64 -1
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #41
          to label %bb.n unwind label %bb.ae      ; 4 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.ar, ptr %13, align 8, !tbaa !99
  %i.as = load ptr, ptr %0, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(26) %8)
          to label %bb.o unwind label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.av = load ptr, ptr %0, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.p unwind label %.thread196

bb.p:                                             ; preds = %bb.o
  %i.az = xor i1 %i.ay, true
  %i.ba = zext i1 %i.az to i8
  store i8 %i.ba, ptr %i.h, align 1, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %i.bb = load i64, ptr %6, align 8, !tbaa !98    ; 4 uses
  store i64 %i.bb, ptr %i.i, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.bc = icmp sgt i64 %1, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %._crit_edge130.thread

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.not137 = icmp eq i64 %i.bb, 0
  br i1 %.not137, label %._crit_edge130.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.pre158 = phi i64 [ %.pre159, %._crit_edge ], [ %i.bb, %.preheader.lr.ph ] ; 2 uses
  %i.bg = phi i64 [ %i.dj, %._crit_edge ], [ %1, %.preheader.lr.ph ]
  %i.bh = phi i64 [ %i.dk, %._crit_edge ], [ %i.bb, %.preheader.lr.ph ] ; 2 uses
  %.val18.i.i.i145 = phi ptr [ %.val18.i.i.i146, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bi = phi ptr [ %i.dl, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bj = phi ptr [ %i.dm, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bk = phi i64 [ %i.dn, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %.044129 = phi i64 [ %i.do, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.045128 = phi i64 [ %.146.lcssa, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not138 = icmp eq i64 %i.bk, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bl = trunc i64 %.044129 to i32               ; 2 uses
  br label %bb.af

._crit_edge130.thread:                            ; preds = %bb.p, %.preheader.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit"

._crit_edge130:                                   ; preds = %._crit_edge
  %.val.pre = load ptr, ptr %14, align 8, !tbaa !261 ; 17 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.bo = icmp eq ptr %.val.pre, %i.dm
  br i1 %i.bo, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %bb.q

bb.q:                                             ; preds = %._crit_edge130
  %i.bp = ptrtoint ptr %i.dm to i64
  %i.bq = ptrtoint ptr %.val.pre to i64           ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = sdiv exact i64 %i.br, 12
  %i.bt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = xor i64 %i.bu, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_T1_"(ptr %.val.pre, ptr %i.dm, i64 noundef %i.bv)
  %i.bw = icmp sgt i64 %i.br, 192
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %.preheader.i28.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.bx = getelementptr i8, ptr %.val.pre, i64 4
  %scevgep.i.i.i = getelementptr i8, ptr %.val.pre, i64 12
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 12, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.w ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.val.pre, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.w ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.val.pre, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.by = getelementptr i8, ptr %.pn18.i.i.i.i, i64 16
  %.val2.i.i.i.i.i = load i32, ptr %i.by, align 4, !tbaa !145 ; 3 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !145
  %i.bz = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.bz, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i.ptr.i.i.i, align 4, !tbaa !100
  %i.ca = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 12
  br i1 %i.ca, label %bb.t, label %bb.u, !prof !75

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.val.pre, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val.pre, i64 12, i1 false), !tbaa.struct !146
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  store <3 x i32> %.sroa.0.0.copyload, ptr %.val.pre, align 4, !tbaa !100
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %19 = load <2 x i32>, ptr %.sroa.0.019.i.ptr.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !100
  %i.cc = getelementptr i8, ptr %.pn18.i.i.i.i, i64 4
  %.val3.i11.i.i.i.i.i = load i32, ptr %i.cc, align 4, !tbaa !145
  %i.cd = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i11.i.i.i.i.i
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %.sroa.010.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.v ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !146
  %i.ce = getelementptr i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -20
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ce, align 4, !tbaa !145
  %i.cf = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !254

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.v
  %.sroa.010.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.v ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store <2 x i32> %19, ptr %.sroa.010.0.lcssa.i.i.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 12 ; 2 uses
  %i.cg = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 192
  br i1 %i.cg, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", label %bb.r, !llvm.loop !255

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i": ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.pre, i64 192 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.dm
  br i1 %i.ci, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.co, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.ch, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i" ] ; 7 uses
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !100 ; 2 uses
  %i.cj = load <2 x i32>, ptr %.sroa.0.06.i.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i18.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i, align 4, !tbaa !100
  %i.ck = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val3.i11.i.i19.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !145
  %i.cl = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i11.i.i19.i.i.i
  br i1 %i.cl, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i"

.lr.ph.i.i24.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i, %.lr.ph.i.i24.i.i.i
  %.sroa.010.012.i.i25.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i25.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i26.i.i.i, i64 12, i1 false), !tbaa.struct !146
  %i.cm = getelementptr i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -20
  %.val3.i.i.i27.i.i.i = load i32, ptr %i.cm, align 4, !tbaa !145
  %i.cn = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i.i.i27.i.i.i
  br i1 %i.cn, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i", !llvm.loop !254

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i": ; preds = %.lr.ph.i.i24.i.i.i, %.lr.ph.i15.i.i.i
  %.sroa.010.0.lcssa.i.i21.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ], [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ] ; 2 uses
  store <2 x i32> %i.cj, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val.sroa_idx.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i18.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i23.i.i.i, align 4, !tbaa !100
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 12 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.dm
  br i1 %i.cp, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i15.i.i.i, !llvm.loop !256

.preheader.i28.i.i.i:                             ; preds = %bb.q
  %.sroa.0.017.i29.i.i.i = getelementptr inbounds nuw i8, ptr %.val.pre, i64 12 ; 2 uses
  %i.cq = icmp eq ptr %.sroa.0.017.i29.i.i.i, %i.dm
  br i1 %i.cq, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i30.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %.preheader.i28.i.i.i
  %i.cr = getelementptr i8, ptr %.val.pre, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i30.i.i.i
  %.sroa.0.019.i31.i.i.i = phi ptr [ %.sroa.0.017.i29.i.i.i, %.lr.ph.i30.i.i.i ], [ %.sroa.0.0.i43.i.i.i, %bb.ad ] ; 7 uses
  %.pn18.i32.i.i.i = phi ptr [ %.val.pre, %.lr.ph.i30.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ad ] ; 5 uses
  %i.cs = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 16
  %.val2.i.i33.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !145 ; 3 uses
  %.val3.i.i34.i.i.i = load i32, ptr %i.cr, align 4, !tbaa !145
  %i.ct = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i34.i.i.i
  br i1 %i.ct, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %.sroa.0241.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i31.i.i.i, align 4, !tbaa !100
  %i.cu = ptrtoint ptr %.sroa.0.019.i31.i.i.i to i64
  %i.cv = sub i64 %i.cu, %i.bq                    ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 12
  br i1 %i.cw, label %bb.z, label %bb.aa, !prof !75

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 24
  %.neg23.i49.i.i.i = udiv exact i64 %i.cv, 12
  %.neg23.neg.i50.i.i.i = sub nsw i64 0, %.neg23.i49.i.i.i
  %i.cy = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %.neg23.neg.i50.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cy, ptr noundef nonnull align 4 dereferenceable(1) %.val.pre, i64 %i.cv, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cz = icmp eq i64 %i.cv, 12
  br i1 %i.cz, label %bb.ab, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val.pre, i64 12, i1 false), !tbaa.struct !146
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store <3 x i32> %.sroa.0241.0.copyload, ptr %.val.pre, align 4, !tbaa !100
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %20 = load <2 x i32>, ptr %.sroa.0.019.i31.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i37.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i, align 4, !tbaa !100
  %i.db = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 4
  %.val3.i11.i.i38.i.i.i = load i32, ptr %i.db, align 4, !tbaa !145
  %i.dc = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i11.i.i38.i.i.i
  br i1 %i.dc, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i"

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.ac, %.lr.ph.i.i44.i.i.i
  %.sroa.010.012.i.i45.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i45.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i46.i.i.i, i64 12, i1 false), !tbaa.struct !146
  %i.dd = getelementptr i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -20
  %.val3.i.i.i47.i.i.i = load i32, ptr %i.dd, align 4, !tbaa !145
  %i.de = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i.i47.i.i.i
  br i1 %i.de, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i", !llvm.loop !254

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i, %bb.ac
  %.sroa.010.0.lcssa.i.i40.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i, %bb.ac ], [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ] ; 2 uses
  store <2 x i32> %20, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val.sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i37.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i42.i.i.i, align 4, !tbaa !100
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i
  %.sroa.0.0.i43.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i, i64 12 ; 2 uses
  %i.df = icmp eq ptr %.sroa.0.0.i43.i.i.i, %i.dm
  br i1 %i.df, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %bb.x, !llvm.loop !255

bb.ae:                                            ; preds = %bb.m
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit101

.thread:                                          ; preds = %bb.n
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i100

.thread196:                                       ; preds = %bb.o
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i100

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit
  %.pre149 = load i64, ptr %i.a, align 8, !tbaa !72
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre159 = phi i64 [ %.pre158, %.preheader ], [ %.pre161, %._crit_edge.loopexit ]
  %i.dj = phi i64 [ %i.bg, %.preheader ], [ %.pre149, %._crit_edge.loopexit ] ; 2 uses
  %i.dk = phi i64 [ %i.bh, %.preheader ], [ %i.eq, %._crit_edge.loopexit ]
  %.val18.i.i.i146 = phi ptr [ %.val18.i.i.i145, %.preheader ], [ %.val18.i.i.i148, %._crit_edge.loopexit ]
  %i.dl = phi ptr [ %i.bi, %.preheader ], [ %i.er, %._crit_edge.loopexit ]
  %i.dm = phi ptr [ %i.bj, %.preheader ], [ %i.es, %._crit_edge.loopexit ] ; 8 uses
  %i.dn = phi i64 [ 0, %.preheader ], [ %i.eq, %._crit_edge.loopexit ]
  %.146.lcssa = phi i64 [ %.045128, %.preheader ], [ %i.et, %._crit_edge.loopexit ]
  %i.do = add nuw nsw i64 %.044129, 1             ; 2 uses
  %i.dp = icmp slt i64 %i.do, %i.dj
  br i1 %i.dp, label %.preheader, label %._crit_edge130, !llvm.loop !257

bb.af:                                            ; preds = %.lr.ph, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit
  %.pre160 = phi i64 [ %.pre158, %.lr.ph ], [ %.pre161, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 3 uses
  %i.dq = phi i64 [ %i.bh, %.lr.ph ], [ %i.eq, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %.val18.i.i.i = phi ptr [ %.val18.i.i.i145, %.lr.ph ], [ %.val18.i.i.i148, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 7 uses
  %i.dr = phi ptr [ %i.bi, %.lr.ph ], [ %i.er, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 5 uses
  %i.ds = phi ptr [ %i.bj, %.lr.ph ], [ %i.es, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 6 uses
  %.043127 = phi i64 [ 0, %.lr.ph ], [ %i.eu, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %.146126 = phi i64 [ %.045128, %.lr.ph ], [ %i.et, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %i.dt = load ptr, ptr %i.bd, align 8, !tbaa !103
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.146126
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !72 ; 2 uses
  %i.dw = icmp sgt i64 %i.dv, -1
  br i1 %i.dw, label %bb.ag, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

bb.ag:                                            ; preds = %bb.af
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  %i.dy = trunc i64 %.043127 to i32               ; 2 uses
  %.not.i.i = icmp eq ptr %i.ds, %i.dr
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.bl, ptr %i.ds, align 4, !tbaa !100
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dx, ptr %.sroa.6109.0..sroa_idx, align 4, !tbaa !100
  %.sroa.7112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %i.dy, ptr %.sroa.7112.0..sroa_idx, align 4, !tbaa !100
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 12 ; 2 uses
  store ptr %i.dz, ptr %i.be, align 8, !tbaa !262
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ea = ptrtoint ptr %i.dr to i64
  %i.eb = ptrtoint ptr %.val18.i.i.i to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 6 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.aj, label %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #39
          to label %.noexc unwind label %.loopexit.split-lp120.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.ee = sdiv exact i64 %i.ec, 12                ; 3 uses
  %i.ef = icmp eq ptr %i.dr, %.val18.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.ef, i64 1, i64 %i.ee
  %i.eg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ee ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ee
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eg, i64 768614336404564650)
  %i.ej = select i1 %i.eh, i64 768614336404564650, i64 %i.ei ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ej, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ek = mul nuw nsw i64 %i.ej, 12
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #41
          to label %.noexc87 unwind label %.loopexit.split-lp120.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %i.ec ; 4 uses
  store i32 %i.bl, ptr %i.em, align 4, !tbaa !100
  %.sroa.6109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %i.dx, ptr %.sroa.6109.0..sroa_idx110, align 4, !tbaa !100
  %.sroa.7112.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %i.dy, ptr %.sroa.7112.0..sroa_idx113, align 4, !tbaa !100
  %i.en = icmp sgt i64 %i.ec, 0
  br i1 %i.en, label %bb.ak, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i

bb.ak:                                            ; preds = %.noexc87
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.el, ptr align 4 %.val18.i.i.i, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i: ; preds = %bb.ak, %.noexc87
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 12 ; 2 uses
  %.not.i21.i.i.i = icmp eq ptr %.val18.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i.i, i64 noundef %i.ec) #40
  %.pre.pre = load i64, ptr %i.i, align 8, !tbaa !72
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i
  %.pre = phi i64 [ %.pre.pre, %bb.al ], [ %.pre160, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i ] ; 2 uses
  store ptr %i.el, ptr %14, align 8, !tbaa !149
  store ptr %i.eo, ptr %i.be, align 8, !tbaa !262
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.ej ; 2 uses
  store ptr %i.ep, ptr %i.bf, align 8, !tbaa !263
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

.loopexit.split-lp120.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.aj
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          cleanup
  %.val83.pre = load ptr, ptr %14, align 8
  br label %bb.ba

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit: ; preds = %bb.ah, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i, %bb.af
  %.pre161 = phi i64 [ %.pre160, %bb.ah ], [ %.pre, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %.pre160, %bb.af ] ; 2 uses
  %i.eq = phi i64 [ %i.dq, %bb.ah ], [ %.pre, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.dq, %bb.af ] ; 4 uses
  %.val18.i.i.i148 = phi ptr [ %.val18.i.i.i, %bb.ah ], [ %i.el, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %.val18.i.i.i, %bb.af ] ; 2 uses
  %i.er = phi ptr [ %i.dr, %bb.ah ], [ %i.ep, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.dr, %bb.af ] ; 2 uses
  %i.es = phi ptr [ %i.dz, %bb.ah ], [ %i.eo, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.ds, %bb.af ] ; 2 uses
  %i.et = add i64 %.146126, 1                     ; 2 uses
  %i.eu = add nuw i64 %.043127, 1                 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.eq
  br i1 %i.ev, label %bb.af, label %._crit_edge.loopexit, !llvm.loop !258

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit": ; preds = %bb.ad, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i", %._crit_edge130.thread, %.preheader.i28.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", %._crit_edge130
  %i.ew = phi ptr [ %i.bm, %._crit_edge130.thread ], [ %i.bn, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.bn, %._crit_edge130 ], [ %i.bn, %.preheader.i28.i.i.i ], [ %i.bn, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i" ], [ %i.bn, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.val75131 = load ptr, ptr %14, align 8, !tbaa !149 ; 3 uses
  %.val76132 = load ptr, ptr %i.ew, align 8, !tbaa !262 ; 2 uses
  %.not139 = icmp eq ptr %.val76132, %.val75131
  br i1 %.not139, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit"
  %i.ex = ptrtoint ptr %.val76132 to i64
  %i.ey = ptrtoint ptr %.val75131 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = sdiv exact i64 %i.ez, 12
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph135, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2SESaISF_EE9push_backEOSF_.exit
  %.val75156 = phi ptr [ %.val75131, %.lr.ph135 ], [ %.val75, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2SESaISF_EE9push_backEOSF_.exit ] ; 5 uses
  %.val.i.i.i = phi ptr [ null, %.lr.ph135 ], [ %.val.i.i.i153, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2SESaISF_EE9push_backEOSF_.exit ] ; 7 uses
  %i.ff = phi ptr [ null, %.lr.ph135 ], [ %i.gr, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2SESaISF_EE9push_backEOSF_.exit ] ; 5 uses
  %i.fg = phi ptr [ null, %.lr.ph135 ], [ %i.gs, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2SESaISF_EE9push_backEOSF_.exit ] ; 6 uses
  %i.fh = phi i64 [ %i.fa, %.lr.ph135 ], [ %i.gw, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2SESaISF_EE9push_backEOSF_.exit ]
  %.040133 = phi i64 [ 0, %.lr.ph135 ], [ %.0.lcssa, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2SESaISF_EE9push_backEOSF_.exit ] ; 7 uses
  %i.fi = getelementptr inbounds nuw [12 x i8], ptr %.val75156, i64 %.040133
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !145 ; 2 uses
  %i.fl = add nuw i64 %.040133, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.fl) ; 3 uses
  %i.fm = add i64 %umax, -1                       ; 2 uses
  %exitcond.not220 = icmp eq i64 %.040133, %i.fm
  br i1 %exitcond.not220, label %.critedge, label %.lr.ph223.preheader

.lr.ph223.preheader:                              ; preds = %bb.am
  %i.fn = load i64, ptr %i.fb, align 8, !tbaa !150
  %i.fo = add i64 %i.fn, %.040133
  br label %.lr.ph223

bb.an:                                            ; preds = %bb.ao
  %exitcond.not = icmp eq i64 %.0221, %i.fm
  br i1 %exitcond.not, label %.critedge, label %.lr.ph223, !llvm.loop !259

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %bb.an
  %.0221.in = phi i64 [ %.0221, %bb.an ], [ %.040133, %.lr.ph223.preheader ]
  %.0221 = add nuw i64 %.0221.in, 1               ; 6 uses
  %i.fp = icmp ult i64 %.0221, %i.fo
  br i1 %i.fp, label %bb.ao, label %.critedge

end_hunk_0
begin_hunk_1_@_ZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS_24SIMDResultHandlerToFloatERKNS0_15CoarseQuantizedEPmS8_RKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFERNS_19FastScanCodeScannerE:bb.a
          to label %bb.cn unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.q, %bb.i ]
  %i.r = load ptr, ptr %10, align 8, !tbaa !31    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.t = load i64, ptr %i.f, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cm

bb.k:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.w = load i64, ptr %i.v, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !81
  %i.z = mul i64 %i.y, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.aa = and i64 %1, 6917529027641081856
  %.not = icmp eq i64 %i.aa, 0
  %i.ab = shl i64 %1, 3
  %i.ac = select i1 %.not, i64 %i.ab, i64 -1
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #41
          to label %bb.l unwind label %bb.aj      ; 4 uses

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %0, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.ad, ptr noundef nonnull align 8 dereferenceable(26) %7)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !156
  %i.aj = and i32 %i.ai, 16
  %.not143 = icmp eq i32 %i.aj, 0
  %spec.select = select i1 %.not143, ptr %i.ad, ptr null
  %i.ak = load ptr, ptr %3, align 8, !tbaa !25
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %spec.select)
          to label %bb.n unwind label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %0, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 336
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.o unwind label %bb.ak

bb.o:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %4, align 8, !tbaa !98    ; 3 uses
  %i.ar = icmp sgt i64 %1, 0
  br i1 %i.ar, label %.preheader349.lr.ph, label %.loopexit347

.preheader349.lr.ph:                              ; preds = %bb.o
  %.not521 = icmp eq i64 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %.not521, label %.loopexit347, label %.preheader349.us

.preheader349.us:                                 ; preds = %.preheader349.lr.ph, %._crit_edge.us
  %.0135496.us = phi i64 [ %i.bt, %._crit_edge.us ], [ 0, %.preheader349.lr.ph ] ; 2 uses
  %.0136495.us = phi i64 [ %i.br, %._crit_edge.us ], [ 0, %.preheader349.lr.ph ]
  %.sroa.0291.0494.us = phi ptr [ %.sroa.0291.2.us, %._crit_edge.us ], [ null, %.preheader349.lr.ph ]
  %.sroa.22.0493.us = phi ptr [ %.sroa.22.2.us, %._crit_edge.us ], [ null, %.preheader349.lr.ph ]
  %.sroa.15.0492.us = phi ptr [ %.sroa.15.2.us, %._crit_edge.us ], [ null, %.preheader349.lr.ph ]
  %i.at = trunc i64 %.0135496.us to i32           ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader349.us, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us
  %.0134488.us = phi i64 [ 0, %.preheader349.us ], [ %i.bs, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us ] ; 2 uses
  %.1137487.us = phi i64 [ %.0136495.us, %.preheader349.us ], [ %i.br, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us ] ; 2 uses
  %.sroa.0291.1486.us = phi ptr [ %.sroa.0291.0494.us, %.preheader349.us ], [ %.sroa.0291.2.us, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us ] ; 8 uses
  %.sroa.22.1485.us = phi ptr [ %.sroa.22.0493.us, %.preheader349.us ], [ %.sroa.22.2.us, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us ] ; 6 uses
  %.sroa.15.1484.us = phi ptr [ %.sroa.15.0492.us, %.preheader349.us ], [ %.sroa.15.2.us, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us ] ; 6 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.1137487.us
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.q, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us

bb.q:                                             ; preds = %bb.p
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  %i.az = trunc i64 %.0134488.us to i32           ; 2 uses
  %.not.i.i.us = icmp eq ptr %.sroa.15.1484.us, %.sroa.22.1485.us
  br i1 %.not.i.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.at, ptr %.sroa.15.1484.us, align 4, !tbaa !100
  %.sroa.6286.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.15.1484.us, i64 4
  store i32 %i.ay, ptr %.sroa.6286.0..sroa_idx.us, align 4, !tbaa !100
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.15.1484.us, i64 8
  store i32 %i.az, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !100
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.15.1484.us, i64 12
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us

bb.s:                                             ; preds = %bb.q
  %i.bb = ptrtoint ptr %.sroa.22.1485.us to i64
  %i.bc = ptrtoint ptr %.sroa.0291.1486.us to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %.split.us, label %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.s
  %i.bf = sdiv exact i64 %i.bd, 12                ; 3 uses
  %i.bg = icmp eq ptr %.sroa.22.1485.us, %.sroa.0291.1486.us
  %.sroa.speculated.i.i.i.i.us = select i1 %i.bg, i64 1, i64 %i.bf
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 768614336404564650)
  %i.bk = select i1 %i.bi, i64 768614336404564650, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.us = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.us)
  %i.bl = mul nuw nsw i64 %i.bk, 12
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #41
          to label %.noexc185.us unwind label %.loopexit.split-lp351.loopexit.split-lp ; 4 uses

.noexc185.us:                                     ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bd ; 4 uses
  store i32 %i.at, ptr %i.bn, align 4, !tbaa !100
  %.sroa.6286.0..sroa_idx287.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.ay, ptr %.sroa.6286.0..sroa_idx287.us, align 4, !tbaa !100
  %.sroa.7.0..sroa_idx289.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.az, ptr %.sroa.7.0..sroa_idx289.us, align 4, !tbaa !100
  %i.bo = icmp sgt i64 %i.bd, 0
  br i1 %i.bo, label %bb.t, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us

bb.t:                                             ; preds = %.noexc185.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %.sroa.0291.1486.us, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us: ; preds = %bb.t, %.noexc185.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %.not.i21.i.i.i.us = icmp eq ptr %.sroa.0291.1486.us, null
  br i1 %.not.i21.i.i.i.us, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0291.1486.us, i64 noundef %i.bd) #40
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us: ; preds = %bb.u, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bk
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us: ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us, %bb.r, %bb.p
  %.sroa.15.2.us = phi ptr [ %.sroa.15.1484.us, %bb.p ], [ %i.bp, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %i.ba, %bb.r ] ; 14 uses
  %.sroa.22.2.us = phi ptr [ %.sroa.22.1485.us, %bb.p ], [ %i.bq, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %.sroa.22.1485.us, %bb.r ] ; 7 uses
  %.sroa.0291.2.us = phi ptr [ %.sroa.0291.1486.us, %bb.p ], [ %i.bm, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %.sroa.0291.1486.us, %bb.r ] ; 24 uses
  %i.br = add i64 %.1137487.us, 1                 ; 2 uses
  %i.bs = add nuw i64 %.0134488.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.aq
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.p, !llvm.loop !266

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us
  %i.bt = add nuw nsw i64 %.0135496.us, 1         ; 2 uses
  %exitcond610.not = icmp eq i64 %i.bt, %1
  br i1 %exitcond610.not, label %._crit_edge497, label %.preheader349.us, !llvm.loop !267

._crit_edge497:                                   ; preds = %._crit_edge.us
  %i.bu = icmp eq ptr %.sroa.0291.2.us, %.sroa.15.2.us
  br i1 %i.bu, label %.loopexit347, label %bb.v

bb.v:                                             ; preds = %._crit_edge497
  %i.bv = ptrtoint ptr %.sroa.15.2.us to i64
  %i.bw = ptrtoint ptr %.sroa.0291.2.us to i64    ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = sdiv exact i64 %i.bx, 12
  %i.bz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_T1_"(ptr %.sroa.0291.2.us, ptr %.sroa.15.2.us, i64 noundef %i.cb)
  %i.cc = icmp sgt i64 %i.bx, 192
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i28.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v
  %i.cd = getelementptr i8, ptr %.sroa.0291.2.us, i64 4
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0291.2.us, i64 12
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 12, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.ab ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0291.2.us, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.ab ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0291.2.us, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.ce = getelementptr i8, ptr %.pn18.i.i.i.i, i64 16
  %.val2.i.i.i.i.i = load i32, ptr %i.ce, align 4, !tbaa !158 ; 3 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.cd, align 4, !tbaa !158
  %i.cf = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.cf, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i.ptr.i.i.i, align 4, !tbaa !100
  %i.cg = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 12
  br i1 %i.cg, label %bb.y, label %bb.z, !prof !75

bb.y:                                             ; preds = %bb.x
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0291.2.us, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.0291.2.us, i64 12, i1 false), !tbaa.struct !146
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  store <3 x i32> %.sroa.0.0.copyload, ptr %.sroa.0291.2.us, align 4, !tbaa !100
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %14 = load <2 x i32>, ptr %.sroa.0.019.i.ptr.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !100
  %i.ci = getelementptr i8, ptr %.pn18.i.i.i.i, i64 4
  %.val3.i11.i.i.i.i.i = load i32, ptr %i.ci, align 4, !tbaa !158
  %i.cj = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i11.i.i.i.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aa, %.lr.ph.i.i.i.i.i
  %.sroa.010.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.aa ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !146
  %i.ck = getelementptr i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -20
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !158
  %i.cl = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !268

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.aa
  %.sroa.010.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store <2 x i32> %14, ptr %.sroa.010.0.lcssa.i.i.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !100
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 12 ; 2 uses
  %i.cm = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 192
  br i1 %i.cm, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", label %bb.w, !llvm.loop !269

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i": ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0291.2.us, i64 192 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %.sroa.15.2.us
  br i1 %i.co, label %.loopexit347, label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.cu, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.cn, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ] ; 7 uses
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !100 ; 2 uses
  %i.cp = load <2 x i32>, ptr %.sroa.0.06.i.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i18.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i, align 4, !tbaa !100
  %i.cq = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val3.i11.i.i19.i.i.i = load i32, ptr %i.cq, align 4, !tbaa !158
  %i.cr = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i11.i.i19.i.i.i
  br i1 %i.cr, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i"

.lr.ph.i.i24.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i, %.lr.ph.i.i24.i.i.i
  %.sroa.010.012.i.i25.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i25.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i26.i.i.i, i64 12, i1 false), !tbaa.struct !146
  %i.cs = getelementptr i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -20
  %.val3.i.i.i27.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !158
  %i.ct = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i.i.i27.i.i.i
  br i1 %i.ct, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i", !llvm.loop !268

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i": ; preds = %.lr.ph.i.i24.i.i.i, %.lr.ph.i15.i.i.i
  %.sroa.010.0.lcssa.i.i21.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ], [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ] ; 2 uses
  store <2 x i32> %i.cp, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val.sroa_idx.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i18.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i23.i.i.i, align 4, !tbaa !100
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 12 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %.sroa.15.2.us
  br i1 %i.cv, label %.loopexit347, label %.lr.ph.i15.i.i.i, !llvm.loop !270

.preheader.i28.i.i.i:                             ; preds = %bb.v
  %.sroa.0.017.i29.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0291.2.us, i64 12 ; 2 uses
  %i.cw = icmp eq ptr %.sroa.0.017.i29.i.i.i, %.sroa.15.2.us
  br i1 %i.cw, label %.loopexit347, label %.lr.ph.i30.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %.preheader.i28.i.i.i
  %i.cx = getelementptr i8, ptr %.sroa.0291.2.us, i64 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %.lr.ph.i30.i.i.i
  %.sroa.0.019.i31.i.i.i = phi ptr [ %.sroa.0.017.i29.i.i.i, %.lr.ph.i30.i.i.i ], [ %.sroa.0.0.i43.i.i.i, %bb.ai ] ; 7 uses
  %.pn18.i32.i.i.i = phi ptr [ %.sroa.0291.2.us, %.lr.ph.i30.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ai ] ; 5 uses
  %i.cy = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 16
  %.val2.i.i33.i.i.i = load i32, ptr %i.cy, align 4, !tbaa !158 ; 3 uses
  %.val3.i.i34.i.i.i = load i32, ptr %i.cx, align 4, !tbaa !158
  %i.cz = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i34.i.i.i
  br i1 %i.cz, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0887.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i31.i.i.i, align 4, !tbaa !100
  %i.da = ptrtoint ptr %.sroa.0.019.i31.i.i.i to i64
  %i.db = sub i64 %i.da, %i.bw                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 12
  br i1 %i.dc, label %bb.ae, label %bb.af, !prof !75

bb.ae:                                            ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 24
  %.neg23.i49.i.i.i = udiv exact i64 %i.db, 12
  %.neg23.neg.i50.i.i.i = sub nsw i64 0, %.neg23.i49.i.i.i
  %i.de = getelementptr inbounds [12 x i8], ptr %i.dd, i64 %.neg23.neg.i50.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.de, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0291.2.us, i64 %i.db, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.df = icmp eq i64 %i.db, 12
  br i1 %i.df, label %bb.ag, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dg, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.0291.2.us, i64 12, i1 false), !tbaa.struct !146
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ae
  store <3 x i32> %.sroa.0887.0.copyload, ptr %.sroa.0291.2.us, align 4, !tbaa !100
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  %15 = load <2 x i32>, ptr %.sroa.0.019.i31.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i37.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i, align 4, !tbaa !100
  %i.dh = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 4
  %.val3.i11.i.i38.i.i.i = load i32, ptr %i.dh, align 4, !tbaa !158
  %i.di = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i11.i.i38.i.i.i
  br i1 %i.di, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i"

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.ah, %.lr.ph.i.i44.i.i.i
  %.sroa.010.012.i.i45.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ah ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i45.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i46.i.i.i, i64 12, i1 false), !tbaa.struct !146
  %i.dj = getelementptr i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -20
  %.val3.i.i.i47.i.i.i = load i32, ptr %i.dj, align 4, !tbaa !158
  %i.dk = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i.i47.i.i.i
  br i1 %i.dk, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i", !llvm.loop !268

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i, %bb.ah
  %.sroa.010.0.lcssa.i.i40.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i, %bb.ah ], [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ] ; 2 uses
  store <2 x i32> %15, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, align 4, !tbaa !100
  %.sroa.5.0..val.sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i37.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i42.i.i.i, align 4, !tbaa !100
  br label %bb.ai

bb.ai:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i
  %.sroa.0.0.i43.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i, i64 12 ; 2 uses
  %i.dl = icmp eq ptr %.sroa.0.0.i43.i.i.i, %.sroa.15.2.us
  br i1 %i.dl, label %.loopexit347, label %bb.ac, !llvm.loop !269

bb.aj:                                            ; preds = %bb.k
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ak:                                            ; preds = %bb.l, %bb.m, %bb.n
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit227

.split.us:                                        ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #39
          to label %.noexc unwind label %.loopexit.split-lp351.loopexit.split-lp

.noexc:                                           ; preds = %.split.us
  unreachable

.loopexit.split-lp351.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us, %.split.us
  %lpad.loopexit.split-lp877 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit222

.loopexit347:                                     ; preds = %bb.ai, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i", %.preheader349.lr.ph, %bb.o, %._crit_edge497, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", %.preheader.i28.i.i.i
  %i.do = phi i1 [ false, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ true, %.preheader349.lr.ph ], [ false, %.preheader.i28.i.i.i ], [ true, %._crit_edge497 ], [ false, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ true, %bb.o ], [ false, %bb.ai ]
  %.sroa.0291.0.lcssa652 = phi ptr [ %.sroa.0291.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader349.lr.ph ], [ %.sroa.0291.2.us, %.preheader.i28.i.i.i ], [ %.sroa.0291.2.us, %._crit_edge497 ], [ %.sroa.0291.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.0291.2.us, %bb.ai ] ; 20 uses
  %.sroa.22.0.lcssa651 = phi ptr [ %.sroa.22.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader349.lr.ph ], [ %.sroa.22.2.us, %.preheader.i28.i.i.i ], [ %.sroa.22.2.us, %._crit_edge497 ], [ %.sroa.22.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.22.2.us, %bb.ai ] ; 4 uses
  %.sroa.15.0.lcssa650 = phi ptr [ %.sroa.15.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader349.lr.ph ], [ %.sroa.15.2.us, %.preheader.i28.i.i.i ], [ %.sroa.15.2.us, %._crit_edge497 ], [ %.sroa.15.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.15.2.us, %bb.ai ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !150 ; 2 uses
  %.not144 = icmp eq i64 %i.dq, 0
  %i.dr = shl i64 %i.dq, 32
  %i.ds = ashr exact i64 %i.dr, 32
  %i.dt = select i1 %.not144, i64 11, i64 %i.ds   ; 10 uses
  %i.du = load ptr, ptr %12, align 8, !tbaa !114
  %.not145 = icmp eq ptr %i.du, null
  br i1 %.not145, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.loopexit347
  %.not336 = icmp eq i64 %i.dt, 0
  br i1 %.not336, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = icmp ugt i64 %i.dt, 4611686018427387903
  br i1 %i.dv, label %bb.an, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #39
          to label %.noexc229 unwind label %.thread322

.noexc229:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.am
  %i.dw = shl nuw nsw i64 %i.dt, 1
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #41
          to label %.noexc230 unwind label %.thread322 ; 4 uses

.noexc230:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  store i16 0, ptr %i.dx, align 2, !tbaa !159
  %i.dy = add nsw i64 %i.dt, -1                   ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.noexc187, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc230
  %i.ea = getelementptr i8, ptr %i.dx, i64 2
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dy, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.ea, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !159
  br label %.noexc187

.noexc187:                                        ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc230
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.dt
  br label %.thread

.thread:                                          ; preds = %bb.al, %.noexc187
  %.sroa.0273.2 = phi ptr [ %i.dx, %.noexc187 ], [ null, %bb.al ] ; 2 uses
  %.sroa.16.2 = phi ptr [ %i.eb, %.noexc187 ], [ null, %bb.al ]
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %.sroa.0273.2, ptr %i.ec, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %bb.aq

.thread322:                                       ; preds = %bb.an, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit222

bb.ao:                                            ; preds = %.loopexit347
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ee = icmp ugt i64 %i.dt, 2305843009213693951
  br i1 %i.ee, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #39
          to label %.noexc188 unwind label %.loopexit.split-lp

.noexc188:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %.thread, %bb.ao
  %.sroa.16.0305 = phi ptr [ %.sroa.16.2, %.thread ], [ null, %bb.ao ] ; 6 uses
  %.sroa.0273.0302 = phi ptr [ %.sroa.0273.2, %.thread ], [ null, %bb.ao ] ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %.not646 = icmp eq i64 %i.dt, 0
  br i1 %.not646, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.eh = shl nuw nsw i64 %i.dt, 2
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #41
          to label %.noexc189 unwind label %.loopexit.split-lp ; 4 uses

.noexc189:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.ej = load ptr, ptr %13, align 8, !tbaa !164  ; 4 uses
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !165
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em                    ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 0
  br i1 %i.eo, label %bb.ar, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.ar:                                            ; preds = %.noexc189
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr align 4 %i.ej, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.ar, %.noexc189
  %.not.i8.i = icmp eq ptr %i.ej, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.ep = load ptr, ptr %i.ef, align 8, !tbaa !166
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.er) #40
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.as, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.ei, ptr %13, align 8, !tbaa !164
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !165
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.dt
  store ptr %i.es, ptr %i.ef, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.aq, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %i.et = ptrtoint ptr %.sroa.15.0.lcssa650 to i64
  %i.eu = ptrtoint ptr %.sroa.0291.0.lcssa652 to i64 ; 2 uses
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = sdiv exact i64 %i.ev, 12                ; 2 uses
  br i1 %i.do, label %._crit_edge518, label %.lr.ph517

.lr.ph517:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ey = trunc i64 %i.aq to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph517, %_ZNSt6vectorIiSaIiEED2Ev.exit209
  %.0108516 = phi i64 [ 0, %.lr.ph517 ], [ %.0107.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit209 ] ; 17 uses
  %.0109515 = phi i64 [ 0, %.lr.ph517 ], [ %.1110, %_ZNSt6vectorIiSaIiEED2Ev.exit209 ] ; 2 uses
  %.0111514 = phi i64 [ 0, %.lr.ph517 ], [ %.1112, %_ZNSt6vectorIiSaIiEED2Ev.exit209 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0291.0.lcssa652, i64 %.0108516
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !158 ; 2 uses
  %i.fg = add i64 %.0108516, %i.dt
  %.fr = freeze i64 %i.fg
  %invariant.umin = call i64 @llvm.umin.i64(i64 %i.ew, i64 %.fr)
  %i.fh = add nuw i64 %.0108516, 1                ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %invariant.umin, i64 %i.fh) ; 3 uses
  %i.fi = add i64 %umax, -1                       ; 4 uses
  %exitcond611.not794 = icmp eq i64 %.0108516, %i.fi
  br i1 %exitcond611.not794, label %.critedge, label %.lr.ph797

bb.au:                                            ; preds = %.lr.ph797
  %exitcond611.not = icmp eq i64 %.0107, %i.fi
  br i1 %exitcond611.not, label %.critedge, label %.lr.ph797, !llvm.loop !271

.lr.ph797:                                        ; preds = %bb.at, %bb.au
  %.0107.in795 = phi i64 [ %.0107, %bb.au ], [ %.0108516, %bb.at ] ; 2 uses
  %.0107 = add nuw i64 %.0107.in795, 1            ; 4 uses
  %i.fj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0291.0.lcssa652, i64 %.0107
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !158
  %.not146 = icmp eq i32 %i.fl, %i.ff
  br i1 %.not146, label %bb.au, label %..critedge_crit_edge799, !llvm.loop !271

..critedge_crit_edge799:                          ; preds = %.lr.ph797
  br label %.critedge, !llvm.loop !271
end_hunk_1
