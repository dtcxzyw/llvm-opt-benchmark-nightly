Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/flow?download=true
inline.NumInlined: 4084
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_:bb.a
.loopexit12:                                      ; preds = %_ZNSt15__new_allocatorISt4pairImbEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit12
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit12 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ac = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvT_SA_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ae

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = load ptr, ptr %1, align 8, !tbaa !59     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = load ptr, ptr %0, align 8, !tbaa !59     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !prof !143

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !203

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !102
  store i64 %i.r, ptr %i.o, align 8, !tbaa !102
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !60
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !203

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !102
  store i64 %i.z, ptr %i.i, align 8, !tbaa !102
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !203

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !59
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !106 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !59
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !106
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !102
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !102
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !203

bb.r:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !102
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !102
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairImjESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !63     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = load ptr, ptr %0, align 8, !tbaa !63     ; 11 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !143

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 4 uses
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairImjESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #28
  br label %_ZNSt12_Vector_baseISt4pairImjESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairImjESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.t, ptr %i.h, align 8, !tbaa !64
  br label %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.g, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.z = load i64, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !213
  store i64 %i.z, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !213
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !214
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !214
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !344

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.g, 4
  br i1 %i.ag, label %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !213
  store i64 %i.ah, ptr %.0811.i.i.i.i.i, align 8, !tbaa !213
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !214
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !214
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.an = load i64, ptr %i.al, align 8, !tbaa !213
  store i64 %i.an, ptr %i.am, align 8, !tbaa !213
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !214
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !214
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !213
  store i64 %i.at, ptr %i.as, align 8, !tbaa !213
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.av = load i32, ptr %i.au, align 8, !tbaa !214
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !214
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !213
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !213
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !214
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !214
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.bf = add nsw i64 %.012.i.i.i.i.i, -4
  %i.bg = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !345

bb.h:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.bi = ashr exact i64 %i.x, 4                  ; 5 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter45 = and i64 %i.bi, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i26.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ], [ %i.bi, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i26.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %i.bk = load i64, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !213
  store i64 %i.bk, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !213
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !214
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 8
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !214
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 16 ; 2 uses
  %i.bq = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !346

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ]
  %i.br = icmp ult i64 %i.bi, 4
  br i1 %i.br, label %_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %i.bs = load i64, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !213
  store i64 %i.bs, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !213
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !214
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !214
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !213
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !213
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !214
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 24
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !214
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !213
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !213
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 40
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !214
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 40
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !214
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 48
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !213
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !213
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 56
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !214
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 56
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !214
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 64
  %i.cq = add nsw i64 %.012.i.i.i.i.i27, -4
  %i.cr = icmp sgt i64 %.012.i.i.i.i.i27, 4
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit, !llvm.loop !347

_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bh, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.v, %_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.bh, %_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cs, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !348

_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairImjESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cu = phi ptr [ %2, %_ZNSt12_Vector_baseISt4pairImjESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairImjES2_ET0_T_S4_S3_.exit ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.f
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !101
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairImjES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjS_ISt4pairImbESaIS4_EEEESaIS7_EEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4entt8internal14dense_map_nodeIjS_ISt4pairImbESaIS4_EEEESaIS7_EEaSERKS9_:bb.a
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.al = udiv exact i64 %i.f, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.am = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !209
  store i64 %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !209
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !210
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !210
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.as = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairImbESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 3 uses
  %i.av = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aw = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit.loopexit, !llvm.loop !349

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !83
  %.pre43 = ptrtoint ptr %i.au to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit.loopexit, %bb.g
  %.pre-phi44 = phi i64 [ %.pre43, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit.loopexit ], [ %i.k, %bb.g ]
  %i.ax = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit.loopexit ], [ %i.ah, %bb.g ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.au, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit.loopexit ], [ %i.i, %bb.g ]
  %i.ay = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.ax
  br i1 %i.ay, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEEvT_SF_.exit, label %.lr.ph.i.i25.preheader

.lr.ph.i.i25.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit
  %i.az = sub i64 %.pre-phi44, %i.k
  %i.ba = getelementptr inbounds i8, ptr %i.i, i64 %i.az
  br label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.lr.ph.i.i25.preheader, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i27
  %.sroa.01.04.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i27 ], [ %i.ba, %.lr.ph.i.i25.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26, label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i25
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !87
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #28
  br label %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i27

_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i27: ; preds = %bb.h, %.lr.ph.i.i25
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 40 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ax
  br i1 %i.bj, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEEvT_SF_.exit, label %.lr.ph.i.i25, !llvm.loop !350

bb.i:                                             ; preds = %bb.f
  %i.bk = icmp sgt i64 %i.aj, 0
  br i1 %i.bk, label %.lr.ph.preheader.i.i.i.i.i29, label %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i29:                     ; preds = %bb.i
  %i.bl = udiv exact i64 %i.aj, 40
  br label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %.lr.ph.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i29
  %.012.i.i.i.i.i31 = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i30 ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i29 ] ; 2 uses
  %.0811.i.i.i.i.i32 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i30 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i29 ] ; 4 uses
  %.0910.i.i.i.i.i33 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i30 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i29 ] ; 4 uses
  %i.bm = load i64, ptr %.0910.i.i.i.i.i33, align 8, !tbaa !209
  store i64 %i.bm, ptr %.0811.i.i.i.i.i32, align 8, !tbaa !209
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !210
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !210
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 16
  %i.bs = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairImbESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bq) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 40
  %i.bv = add nsw i64 %.012.i.i.i.i.i31, -1
  %i.bw = icmp samesign ugt i64 %.012.i.i.i.i.i31, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i30, label %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit.loopexit, !llvm.loop !351

_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i30
  %.pre34 = load ptr, ptr %1, align 8, !tbaa !80
  %.pre35 = load ptr, ptr %i.ag, align 8, !tbaa !81 ; 2 uses
  %.pre36 = load ptr, ptr %0, align 8, !tbaa !80
  %.pre37 = load ptr, ptr %i.a, align 8, !tbaa !81
  %.pre38 = ptrtoint ptr %.pre35 to i64
  %.pre39 = ptrtoint ptr %.pre36 to i64
  %.pre41 = sub i64 %.pre38, %.pre39
  br label %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit.loopexit, %bb.i
  %.pre-phi42 = phi i64 [ %.pre41, %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.aj, %bb.i ]
  %i.bx = phi ptr [ %.pre37, %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.b, %bb.i ]
  %i.by = phi ptr [ %.pre35, %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.ah, %bb.i ]
  %i.bz = phi ptr [ %.pre34, %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.c, %bb.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.pre-phi42
  %i.cb = tail call noundef ptr @_ZSt16__do_uninit_copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_(ptr noundef %i.ca, ptr noundef %i.bx, ptr noundef %i.by) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEEvT_SF_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEEvT_SF_.exit: ; preds = %_ZSt8_DestroyIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEEvPT_.exit.i.i27, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEENS1_IPSA_SE_EEET0_T_SJ_SI_.exit, %_ZSt4copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_.exit, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE13_M_deallocateEPS8_m.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.f
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEEvT_SF_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjS_ISt4pairImbESaIS4_EEEESaIS7_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEPS7_mT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEE8allocateEmPKv.exit.i, !prof !143

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 461168601842738790
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 40
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #31
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEPSA_SA_ET0_T_SI_SH_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS7_EEEES5_ISA_SaISA_EEEEPSA_SA_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #27 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = mul nuw nsw i64 %1, 40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #28
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #30
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE13_M_deallocateEPS8_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEESaIS8_EE13_M_deallocateEPS8_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairImbESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !86     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.j = load ptr, ptr %0, align 8, !tbaa !86     ; 11 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !143

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 4 uses
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairImbESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #28
  br label %_ZNSt12_Vector_baseISt4pairImbESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairImbESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.t, ptr %i.h, align 8, !tbaa !87
  br label %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.g, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.z = load i64, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !118
  store i64 %i.z, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !119, !range !56, !noundef !103
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !119
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !352

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.g, 4
  br i1 %i.ag, label %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !118
  store i64 %i.ah, ptr %.0811.i.i.i.i.i, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !119, !range !56, !noundef !103
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !119
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.an = load i64, ptr %i.al, align 8, !tbaa !118
  store i64 %i.an, ptr %i.am, align 8, !tbaa !118
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !119, !range !56, !noundef !103
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store i8 %i.ap, ptr %i.aq, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !118
  store i64 %i.at, ptr %i.as, align 8, !tbaa !118
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.av = load i8, ptr %i.au, align 8, !tbaa !119, !range !56, !noundef !103
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i8 %i.av, ptr %i.aw, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !118
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !118
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !119, !range !56, !noundef !103
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store i8 %i.bb, ptr %i.bc, align 8, !tbaa !119
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.bf = add nsw i64 %.012.i.i.i.i.i, -4
  %i.bg = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !353

bb.h:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.bi = ashr exact i64 %i.x, 4                  ; 5 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter45 = and i64 %i.bi, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i26.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ], [ %i.bi, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i26.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %i.bk = load i64, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !118
  store i64 %i.bk, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !118
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !119, !range !56, !noundef !103
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 8
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !119
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 16 ; 2 uses
  %i.bq = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !354

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ]
  %i.br = icmp ult i64 %i.bi, 4
  br i1 %i.br, label %_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %i.bs = load i64, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !118
  store i64 %i.bs, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !118
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !119, !range !56, !noundef !103
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  store i8 %i.bu, ptr %i.bv, align 8, !tbaa !119
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !118
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !118
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 24
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !119, !range !56, !noundef !103
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 24
  store i8 %i.ca, ptr %i.cb, align 8, !tbaa !119
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !118
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 40
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !119, !range !56, !noundef !103
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 40
  store i8 %i.cg, ptr %i.ch, align 8, !tbaa !119
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 48
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !118
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !118
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 56
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !119, !range !56, !noundef !103
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 56
  store i8 %i.cm, ptr %i.cn, align 8, !tbaa !119
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 64
  %i.cq = add nsw i64 %.012.i.i.i.i.i27, -4
  %i.cr = icmp sgt i64 %.012.i.i.i.i.i27, 4
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit, !llvm.loop !355

_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bh, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.v, %_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.bh, %_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cs, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !356

_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !86
  br label %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseISt4pairImbESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cu = phi ptr [ %2, %_ZNSt12_Vector_baseISt4pairImbESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairImbES2_ET0_T_S4_S3_.exit ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.f
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairImbES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPN4entt8internal14dense_map_nodeIjSt6vectorISt4pairImbESaIS5_EEEES9_ET0_T_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.020 = phi ptr [ %i.z, %.loopexit ], [ %2, %bb.a ] ; 7 uses
  %.01219 = phi ptr [ %i.y, %.loopexit ], [ %0, %bb.a ] ; 5 uses
end_hunk_1
