Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebuf?download=true
inline.NumInlined: 16785
inline.NumDeleted: 5500
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 121
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_:bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i, !prof !772

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #44
  unreachable

_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #43
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN11OpenImageIO4v3_18TypeDescEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !776
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !796
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !777
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !797  ; 5 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !797  ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.q = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.r = ptrtoaddr ptr %i.k to i64
  %i.s = ptrtoaddr ptr %i.p to i64
  %i.t = add i64 %i.s, -8
  %i.u = sub i64 %i.t, %i.q                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 72
  %i.x = sub i64 %i.q, %i.r
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ab ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.o, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 4
  %wide.load20 = load <2 x i64>, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load20, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.preheader22:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.af, ptr %.09.i.i.i.i.i, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1447

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !796
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !788 ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !787 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i9, label %.noexc11, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit
  %i.aq = icmp ugt i64 %i.ap, 9223372036854775776
  br i1 %i.aq, label %.noexc.i.i10, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !772

.noexc.i.i10:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #44
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i10
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #43
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit
  %i.as = phi ptr [ null, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEC2ERKS4_.exit ], [ %i.ar, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !787
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !788
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !789
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !801
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !801
  %i.ay = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aw, ptr %i.ax, ptr noundef %i.as)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc11
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !787 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !789
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #42
  br label %.body

bb.g:                                             ; preds = %.noexc11
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !788
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bf, ptr noundef nonnull align 8 dereferenceable(9) %i.bg, i64 9, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_ZN11OpenImageIO4v3_114ParamValueListC2ERKS1_.exit unwind label %bb.i

_ZN11OpenImageIO4v3_114ParamValueListC2ERKS1_.exit: ; preds = %bb.g
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i10
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #41
  br label %.body

.body:                                            ; preds = %bb.h, %bb.f, %bb.e, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.bj, %bb.h ], [ %i.az, %bb.f ], [ %i.az, %bb.e ]
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !777
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #42
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %.body, %bb.j
  resume { ptr, i32 } %.pn
}

declare void @_ZN11OpenImageIO4v3_18DeepDataC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_112ImageBufImpl10new_pixelsENS0_8ImageBuf9IBStorageEmPKv(ptr noundef nonnull align 8 dereferenceable(696) initializes((0, 4)) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !1449 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  store i32 %1, ptr %0, align 8, !tbaa !730
  %i.h = icmp ne i32 %1, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !792
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond24 = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond24, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext false) #41
  %i.n = icmp eq i64 %2, %i.m
  br i1 %i.n, label %.thread.a, label %bb.c, !prof !795

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !803
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 720, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_112ImageBufImpl10new_pixelsENS0_8ImageBuf9IBStorageEmPKv, ptr noundef nonnull @.str.5) #45 ; 0 uses
  br label %.thread.a

.thread.a:                                        ; preds = %bb.b, %bb.c
  %.old = load i8, ptr %i.i, align 8, !tbaa !800, !range !792, !noundef !793
  %.old38 = trunc nuw i8 %.old to i1
  br i1 %.old38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.q, i1 noundef zeroext false) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.thread.a, %bb.d
  %i.s = phi i64 [ %i.r, %bb.d ], [ 0, %.thread.a ], [ 0, %bb.a ] ; 3 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !773
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !794  ; 4 uses
  %.not = icmp eq i64 %i.u, %i.s
  br i1 %.not, label %_ZN11OpenImageIO4v3_110atomic_maxIxEEvRSt6atomicIT_ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not18 = icmp eq i64 %i.u, 0
  br i1 %.not18, label %_ZN11OpenImageIO4v3_112ImageBufImpl11free_pixelsEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr @_ZN11OpenImageIO4v3_13pvt16oiio_print_debugE, align 4, !tbaa !82
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.x = lshr i64 %i.u, 20
  store i64 %i.x, ptr %i.a, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.y = load atomic i64, ptr @_ZN11OpenImageIO4v3_13pvt20IB_local_mem_currentE seq_cst, align 8
  %i.z = ashr i64 %i.y, 20
  store i64 %i.z, ptr %i.b, align 8, !tbaa !805
  call void @_ZN11OpenImageIO4v3_17Strutil5debugIJmxEEEvPKcDpOT_(ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !794
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aa = phi i64 [ %.pre.i, %bb.h ], [ %i.u, %bb.g ]
  %i.ab = atomicrmw sub ptr @_ZN11OpenImageIO4v3_13pvt20IB_local_mem_currentE, i64 %i.aa seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.t, align 8, !tbaa !794
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !779 ; 2 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !779
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #42
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i8 0, i64 56, i1 false)
  store i32 1, ptr %.sroa.51.0..sroa_idx.i, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 520
  call void @_ZN11OpenImageIO4v3_18DeepData4freeEv(ptr noundef nonnull align 8 dereferenceable(20) %i.af)
  store i32 0, ptr %0, align 8, !tbaa !730
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !765 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !764
  %.not.i.i.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufImpl11free_pixelsEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit.i
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !764
  br label %_ZN11OpenImageIO4v3_112ImageBufImpl11free_pixelsEv.exit

_ZN11OpenImageIO4v3_112ImageBufImpl11free_pixelsEv.exit: ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit.i, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.al = load i64, ptr %i.c, align 8, !tbaa !773 ; 3 uses
  %.not19 = icmp eq i64 %i.al, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufImpl11free_pixelsEv.exit
  %i.am = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #43
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZN11OpenImageIO4v3_112ImageBufImpl11free_pixelsEv.exit
  %i.an = phi ptr [ null, %_ZN11OpenImageIO4v3_112ImageBufImpl11free_pixelsEv.exit ], [ %i.am, %bb.j ] ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !779 ; 2 uses
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !779
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #42
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !779
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.ap = phi ptr [ %i.an, %bb.k ], [ %.pre, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !668
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.au = load i8, ptr %i.at, align 1, !tbaa !669
  %i.av = zext i8 %i.au to i64
  %i.aw = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.aq) #41
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, %spec.select.i.i         ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !763 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !790 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.be = trunc i64 %i.ay to i32
  %.not.i.i27 = icmp eq i64 %i.ay, -9223372036854775808
  %i.bf = select i1 %.not.i.i27, i64 0, i64 %i.ay ; 2 uses
  %i.bg = zext i32 %i.ba to i64
  %i.bh = mul nsw i64 %i.bf, %i.bg                ; 2 uses
  %i.bi = zext i32 %i.bc to i64
  %i.bj = mul nsw i64 %i.bh, %i.bi                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.ap, ptr %i.bk, align 8, !tbaa !754
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.bf, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.bh, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %i.bj, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 %i.ba, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 %i.bc, ptr %.sroa.9.0..sroa_idx.i, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bl = load <2 x i32>, ptr %i.bd, align 8, !tbaa !82
  %i.bm = load i32, ptr %i.bd, align 8, !tbaa !791
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bj, %i.bn
  store i64 %i.bo, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !755
  store <2 x i32> %i.bl, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i32 %i.be, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !82
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bq = extractvalue { ptr, i32 } %i.bp, 1
  %i.br = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.bs = icmp eq i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.bt = extractvalue { ptr, i32 } %i.bp, 0
  %i.bu = call ptr @__cxa_begin_catch(ptr %i.bt) #41 ; 4 uses
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !779 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !779
  %.not.i.i.i28 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i28, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #42
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !771
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #41
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !779
  invoke void @_ZN11OpenImageIO4v3_17Strutil5debugIJRmPKcEEEvS5_DpOT_(ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN11OpenImageIO4v3_18debugfmtIJRmPKcEEEvS4_DpOT_.exit unwind label %bb.q

_ZN11OpenImageIO4v3_18debugfmtIJRmPKcEEEvS4_DpOT_.exit: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetEDn.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !771
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #41
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !779
  invoke void @_ZNK11OpenImageIO4v3_112ImageBufImpl5errorIJmPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_18debugfmtIJRmPKcEEEvS4_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  store i64 0, ptr %i.c, align 8, !tbaa !773
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i8 0, i64 56, i1 false)
  store i32 1, ptr %.sroa.530.0..sroa_idx, align 8, !tbaa !82
  call void @__cxa_end_catch()
  %.pre40 = load i64, ptr %i.c, align 8, !tbaa !773
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %bb.n
  %i.cf = phi i64 [ %i.al, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit ], [ %.pre40, %bb.n ] ; 2 uses
  store i64 %i.cf, ptr %i.t, align 8, !tbaa !794
  %i.cg = atomicrmw add ptr @_ZN11OpenImageIO4v3_13pvt20IB_local_mem_currentE, i64 %i.cf seq_cst, align 8 ; 0 uses
  %i.ch = load atomic i64, ptr @_ZN11OpenImageIO4v3_13pvt20IB_local_mem_currentE seq_cst, align 8 ; 2 uses
  br label %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit: ; preds = %bb.p, %bb.o
  %i.ci = load atomic i64, ptr @_ZN11OpenImageIO4v3_13pvt17IB_local_mem_peakE seq_cst, align 8 ; 2 uses
  %.not.i = icmp slt i64 %i.ci, %i.ch
  br i1 %.not.i, label %bb.p, label %_ZN11OpenImageIO4v3_110atomic_maxIxEEvRSt6atomicIT_ERKS3_.exit.loopexit

bb.p:                                             ; preds = %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit
  %i.cj = cmpxchg weak ptr @_ZN11OpenImageIO4v3_13pvt17IB_local_mem_peakE, i64 %i.ci, i64 %i.ch seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
end_hunk_0
