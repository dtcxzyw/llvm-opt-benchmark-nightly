inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !alias.scope !163, !noalias !166
  %i.t = load ptr, ptr %i.r, align 8, !alias.scope !166, !noalias !163 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !166, !noalias !163 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false), !alias.scope !168
  br label %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.t, ptr %i.q, align 8, !alias.scope !163, !noalias !166
  %i.aa = load i64, ptr %i.u, align 8, !alias.scope !166, !noalias !163
  store i64 %i.aa, ptr %i.s, align 8, !alias.scope !163, !noalias !166
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !166, !noalias !163
  br label %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.ab = phi i64 [ %i.x, %bb.b ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  store i64 %i.ab, ptr %i.ad, align 8, !alias.scope !163, !noalias !166
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !166, !noalias !163
  store i64 0, ptr %i.ac, align 8, !alias.scope !166, !noalias !163
  store i8 0, ptr %i.u, align 8, !alias.scope !166, !noalias !163
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !166, !noalias !163
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !alias.scope !163, !noalias !166
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !166, !noalias !163
  store ptr %i.aj, ptr %i.ah, align 8, !alias.scope !163, !noalias !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !166, !noalias !163
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !alias.scope !166, !noalias !163
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !alias.scope !163, !noalias !166
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !166, !noalias !163
  store ptr %i.ap, ptr %i.an, align 8, !alias.scope !163, !noalias !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !166, !noalias !163
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 152
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false), !alias.scope !168
  tail call void @_ZN6Assimp4D3DS4MeshD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %.0911.i.i) #28
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 216 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 216 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN6Assimp4D3DS4MeshES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !169

_ZSt12__relocate_aIPN6Assimp4D3DS4MeshES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.at, %_ZSt19__relocate_object_aIN6Assimp4D3DS4MeshES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 24            ; 3 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit, label %.lr.ph.i.i, !llvm.loop !170

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = add nsw i64 %i.i, -48                    ; 2 uses
  %i.p = udiv i64 %i.o, 24
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01320.i.i.i.prol = phi ptr [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01320.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.019.i.i.i.prol, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i.i.prol, i64 24 ; 3 uses
  %.013.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !171

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01320.i.i.i.unr = phi ptr [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.019.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.o, 72
  br i1 %i.s, label %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i.3, %.lr.ph.i.i.i ], [ %.01320.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.019.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.019.i.i.i, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 48
  %.013.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 72
  %.013.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 96 ; 2 uses
  %.013.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %.013.i.i.i.3, %i.n
  br i1 %.not.i.i.i.3, label %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !172

_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.w, %.lr.ph.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa.i.i.i, i64 24, i1 false)
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEEvT_S8_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.x = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.x, label %bb.d, label %bb.f, !prof !137

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit
  %i.y = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %i.y, ptr %1, ptr noundef %.sroa.12.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.aa) #28
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES2_EC2ES7_l.exit
  %i.ab = icmp eq ptr %.sroa.12.0, null
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.ac = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.ac) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %4 = sdiv exact i64 %i.c, 24                    ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.e = icmp sgt i64 %i.c, 168
  br i1 %i.e, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.016.i = phi i64 [ %i.g, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.016.i)
  %i.f = shl nuw nsw i64 %.016.i, 1
  tail call void @_ZSt17__merge_sort_loopIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.d, ptr %0, i64 noundef %i.f)
  %i.g = shl nsw i64 %.016.i, 2                   ; 2 uses
  %i.h = icmp slt i64 %i.g, %4
  br i1 %i.h, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit, !llvm.loop !173

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %5 = sdiv exact i64 %i.j, 24                    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.l = icmp sgt i64 %i.j, 168
  br i1 %i.l, label %.lr.ph.i9, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11

.lr.ph.i9:                                        ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit, %.lr.ph.i9
  %.016.i10 = phi i64 [ %i.n, %.lr.ph.i9 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.016.i10)
  %i.m = shl nuw nsw i64 %.016.i10, 1
  tail call void @_ZSt17__merge_sort_loopIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.k, ptr %1, i64 noundef %i.m)
  %i.n = shl nsw i64 %.016.i10, 2                 ; 2 uses
  %i.o = icmp slt i64 %i.n, %5
  br i1 %i.o, label %.lr.ph.i9, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11, !llvm.loop !173

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit11: ; preds = %.lr.ph.i9, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.exit
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %4, i64 noundef %5, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.5.i.i = alloca { %class.aiVector3t, i32 }, align 8 ; 4 uses
  %2 = alloca %struct.aiVectorKey, align 8        ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 360
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not16.i = icmp eq ptr %.sroa.0.015.i, %1
  %or.cond = select i1 %i.e, i1 true, i1 %.not16.i
  br i1 %or.cond, label %common.ret21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.h
  %.sroa.0.018.i = phi ptr [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.015.i, %bb.b ] ; 7 uses
  %.pn17.i = phi ptr [ %.sroa.0.018.i, %bb.h ], [ %0, %bb.b ] ; 5 uses
  %i.f = load double, ptr %.sroa.0.018.i, align 8 ; 4 uses
  %i.g = load double, ptr %0, align 8
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i, i64 24, i1 false)
  %i.i = ptrtoint ptr %.sroa.0.018.i to i64
  %i.j = sub i64 %i.i, %i.b                       ; 4 uses
  %i.k = icmp sgt i64 %i.j, 24
  br i1 %i.k, label %bb.d, label %bb.e, !prof !137

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 48
  %.neg23.i = udiv exact i64 %i.j, 24
  %.neg23.neg.i = sub nsw i64 0, %.neg23.i
  %i.m = getelementptr inbounds [24 x i8], ptr %i.l, i64 %.neg23.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.j, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.j, 24
  br i1 %i.n, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false)
  %i.p = load double, ptr %.pn17.i, align 8
  %i.q = fcmp olt double %i.f, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.g ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i, i64 24, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -24 ; 2 uses
  %i.r = load double, ptr %.sroa.0.0.i.i, align 8
  %i.s = fcmp olt double %i.f, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !174

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i, %bb.g ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store double %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %common.ret21, label %.lr.ph.i, !llvm.loop !175

common.ret21:                                     ; preds = %bb.b, %bb.h, %bb.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.t = udiv exact i64 %i.c, 24
  %i.u = lshr i64 %i.t, 1                         ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.u ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %i.v)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %i.v, ptr %1)
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.a, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_(ptr %0, ptr %i.v, ptr %1, i64 noundef %i.u, i64 noundef %i.y)
  br label %common.ret21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret25:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_SB_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret25

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2)
  br label %common.ret25
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_SB_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %bb.c, label %bb.d, !prof !137

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 24
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %.not22.i = icmp eq ptr %1, %0
  br i1 %.not22.i, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %bb.i
  %.025.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 7 uses
  %.sroa.0.024.i = phi ptr [ %i.l, %bb.i ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 5 uses
  %.sroa.016.023.i = phi ptr [ %.sroa.016.1.i, %bb.i ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.023.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.g = load double, ptr %.sroa.016.023.i, align 8
  %i.h = load double, ptr %.025.i, align 8
  %i.i = fcmp olt double %i.g, %i.h
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.023.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.016.023.i, i64 24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.025.i, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.025.i, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.016.1.i = phi ptr [ %i.j, %bb.g ], [ %.sroa.016.023.i, %bb.h ]
  %.1.i = phi ptr [ %.025.i, %bb.g ], [ %i.k, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 24
  %.not.i = icmp eq ptr %.1.i, %i.f
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIP11aiVectorKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEES7_NS2_5__ops15_Iter_less_iterEEvT_SA_T0_SB_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !176

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.m = ptrtoint ptr %i.f to i64
end_hunk_0
