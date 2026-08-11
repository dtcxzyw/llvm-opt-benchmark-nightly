inline.NumInlined: 1001
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a
  %.not10.i.i.i37 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i37, label %bb.r, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.n, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.ai, %.preheader.i.i.i38 ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !229 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i40, label %bb.o, label %.preheader.i.i.i38, !llvm.loop !276

bb.o:                                             ; preds = %.preheader.i.i.i38
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !263 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.ak
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !263
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8, !tbaa !266
  br label %bb.r

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.am = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #25
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink12.i.i36 = phi ptr [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.z, %bb.p ], [ %i.am, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ao, ptr noundef nonnull align 8 dereferenceable(312) %i.an, i64 312, i1 false)
  %i.ap = load i32, ptr %.050, align 8, !tbaa !277
  store i32 %i.ap, ptr %.sink12.i.i36, align 8, !tbaa !277
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.03149, i64 16
  store ptr %.sink12.i.i36, ptr %i.ar, align 8, !tbaa !263
  %i.as = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 8
  store ptr %.03149, ptr %i.as, align 8, !tbaa !271
  %i.at = getelementptr inbounds nuw i8, ptr %.050, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !229 ; 2 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.au, ptr noundef nonnull %.sink12.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 24
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !229
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.s
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.y, %bb.j ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %.030) #24 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink12.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #29
          to label %bb.ab unwind label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r
  %.0.in = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !263 ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !278

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %bb.x, %bb.k
  ret ptr %.sink12.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #27
  unreachable

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

declare void @_ZN13IlmThread_3_44TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7Imf_3_412_GLOBAL__N_114TileBufferTaskD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7Imf_3_412_GLOBAL__N_114TileBufferTaskE, i64 16), ptr %0, align 8, !tbaa !109
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  invoke void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN7Imf_3_412_GLOBAL__N_110TileBuffer4postEv.exit unwind label %bb.b

_ZN7Imf_3_412_GLOBAL__N_110TileBuffer4postEv.exit: ; preds = %bb.a
  tail call void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7Imf_3_412_GLOBAL__N_114TileBufferTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7Imf_3_412_GLOBAL__N_114TileBufferTaskE, i64 16), ptr %0, align 8, !tbaa !109
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  invoke void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN7Imf_3_412_GLOBAL__N_114TileBufferTaskD2Ev.exit unwind label %bb.b, !inline_history !279

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27, !inline_history !279
  unreachable

_ZN7Imf_3_412_GLOBAL__N_114TileBufferTaskD2Ev.exit: ; preds = %bb.a
  tail call void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %0) #24, !inline_history !279
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7Imf_3_412_GLOBAL__N_114TileBufferTask7executeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.Imath_3_2::Box", align 16   ; 13 uses
  %2 = alloca %"class.std::vector.58", align 8    ; 15 uses
  %3 = alloca %"class.std::vector.40", align 8    ; 12 uses
  %4 = alloca %"class.std::vector.40", align 8    ; 12 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.Imath_3_2::Box", align 16   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !205  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.k = load i32, ptr %i.j, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  %i.m = load i32, ptr %i.l, align 4, !tbaa !148
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !150
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !209  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load i32, ptr %i.r, align 8, !tbaa !280
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.u = load i32, ptr %i.t, align 4, !tbaa !281
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !282
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !283
  invoke void @_ZN7Imf_3_417dataWindowForTileERKNS_15TileDescriptionEiiiiiiii(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %1, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %i.y)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !149 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !147 ; 5 uses
  %i.ae = sub nsw i32 %i.ab, %i.ad                ; 2 uses
  %i.af = add nuw nsw i32 %i.ae, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !205 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !151 ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %bb.c

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #25
          to label %.noexc unwind label %bb.l     ; 4 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.al, ptr %2, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !85
  store i64 0, ptr %i.al, align 8, !tbaa !181
  %i.ao = getelementptr i8, ptr %i.al, i64 8      ; 3 uses
  %i.ap = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ap, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !181
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.ao, %.noexc ], [ %i.ar, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i, ptr %i.as, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 288 ; 3 uses
  %.val109 = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ag, i64 296    ; 3 uses
  %.val110 = load ptr, ptr %i.au, align 8, !tbaa !101 ; 2 uses
  %i.av = ptrtoint ptr %.val110 to i64
  %i.aw = ptrtoint ptr %.val109 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = ashr exact i64 %i.ax, 3                 ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 2305843009213693951
  br i1 %i.az, label %bb.e, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
          to label %.noexc117 unwind label %bb.m

.noexc117:                                        ; preds = %bb.e
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i114 = icmp eq ptr %.val110, %.val109
  br i1 %.not.i.i.i.i114, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.f

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ba = ashr exact i64 %i.ax, 1
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #25
          to label %.noexc118 unwind label %bb.m  ; 6 uses

.noexc118:                                        ; preds = %bb.f
  store ptr %i.bb, ptr %3, align 8, !tbaa !285
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !287
  store i32 0, ptr %i.bb, align 4, !tbaa !138
  %i.be = getelementptr i8, ptr %i.bb, i64 4      ; 3 uses
  %i.bf = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc118
  %.idx.i.i.i.i.i.i.i115 = shl nuw nsw i64 %i.bf, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 0, i64 %.idx.i.i.i.i.i.i.i115, i1 false), !tbaa !138
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i115
  br label %bb.g

bb.g:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc118, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.bi = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.bb, %.noexc118 ], [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i116 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.be, %.noexc118 ], [ %i.bh, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i116, ptr %i.bj, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %.val107 = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %.val108 = load ptr, ptr %i.au, align 8, !tbaa !101 ; 2 uses
  %i.bk = ptrtoint ptr %.val108 to i64
  %i.bl = ptrtoint ptr %.val107 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = ashr exact i64 %i.bm, 3                 ; 3 uses
  %i.bo = icmp ugt i64 %i.bn, 2305843009213693951
  br i1 %i.bo, label %bb.h, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i119

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
          to label %.noexc125 unwind label %bb.n

.noexc125:                                        ; preds = %bb.h
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i119: ; preds = %bb.g
  %.not.i.i.i.i120 = icmp eq ptr %.val108, %.val107
  br i1 %.not.i.i.i.i120, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i124, label %bb.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i124: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i119
  %i.bp = ashr exact i64 %i.bm, 1
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #25
          to label %.noexc126 unwind label %bb.n  ; 6 uses

.noexc126:                                        ; preds = %bb.i
  store ptr %i.bq, ptr %4, align 8, !tbaa !285
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !287
  store i32 0, ptr %i.bq, align 4, !tbaa !138
  %i.bt = getelementptr i8, ptr %i.bq, i64 4      ; 3 uses
  %i.bu = add nsw i64 %i.bn, -1                   ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.j, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i121

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i121: ; preds = %.noexc126
  %.idx.i.i.i.i.i.i.i122 = shl nuw nsw i64 %i.bu, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bt, i8 0, i64 %.idx.i.i.i.i.i.i.i122, i1 false), !tbaa !138
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i.i.i.i.i.i122
  br label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i121, %.noexc126, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i124
  %i.bx = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i124 ], [ %i.bq, %.noexc126 ], [ %i.bq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i121 ] ; 3 uses
  %.0.i.i.i.i.i123 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i124 ], [ %i.bt, %.noexc126 ], [ %i.bw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i121 ]
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i123, ptr %i.by, align 8, !tbaa !288
  %.val105 = load ptr, ptr %i.at, align 8, !tbaa !100 ; 5 uses
  %.val106 = load ptr, ptr %i.au, align 8, !tbaa !101 ; 2 uses
  %.not179 = icmp eq ptr %.val106, %.val105
  %.pre191 = load i32, ptr %1, align 16, !tbaa !141 ; 4 uses
  br i1 %.not179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bz = ptrtoint ptr %.val106 to i64
  %i.ca = ptrtoint ptr %.val105 to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = icmp eq i64 %i.cb, 8
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cc, -2
  br label %bb.o

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.o
  %i.ce = and i64 %i.cb, 8
  %lcmp.mod.not = icmp eq i64 %i.ce, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.072145.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ek, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod263 = trunc i64 %i.cc to i1
  call void @llvm.assume(i1 %lcmp.mod263)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.val105, i64 %.072145.epil.init
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !116 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !194
  %i.cj = mul nsw i32 %.pre191, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.072145.epil.init
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !138
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !195
  %i.cn = mul nsw i32 %i.ad, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.072145.epil.init
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !138
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ag, i64 416
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !119
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ag, i64 424
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !120
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 428
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !121
  %i.cv = load i32, ptr %i.z, align 8, !tbaa !145
  invoke void @_ZN7Imf_3_421calculateBytesPerLineERKNS_6HeaderEPciiiiiiRSt6vectorIiSaIiEES7_RS4_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(49) %i.ag, ptr noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.cu, i32 noundef %.pre191, i32 noundef %i.cv, i32 noundef %i.ad, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.preheader144 unwind label %bb.q

.preheader144:                                    ; preds = %._crit_edge
  %i.cw = load ptr, ptr %i.as, align 8, !tbaa !284 ; 2 uses
  %i.cx = load ptr, ptr %2, align 8, !tbaa !82    ; 4 uses
  %.not180 = icmp eq ptr %i.cw, %i.cx
end_hunk_0
