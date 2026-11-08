Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model_trainer?download=true
inline.NumInlined: 5768
inline.NumDeleted: 2088
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlPS4_ISA_lEE_clESF_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr align 1 %i.hk, i64 %i.ho, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.hr = load i64, ptr %i.hn, align 8, !tbaa !91 ; 2 uses
  store i64 %i.hr, ptr %i.cf, align 8, !tbaa !91
  %i.hs = load ptr, ptr %2, align 8, !tbaa !85
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  store i8 0, ptr %i.ht, align 1, !tbaa !86
  %.pre.i124 = load ptr, ptr %10, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.hk, ptr %2, align 8, !tbaa !85
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hv = load <2 x i64>, ptr %i.hu, align 8, !tbaa !86
  store <2 x i64> %i.hv, ptr %i.cf, align 8, !tbaa !86
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hw = load i64, ptr %i.hi, align 8, !tbaa !86
  store ptr %i.hk, ptr %2, align 8, !tbaa !85
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hy = load <2 x i64>, ptr %i.hx, align 8, !tbaa !86
  store <2 x i64> %i.hy, ptr %i.cf, align 8, !tbaa !86
  %.not.i123 = icmp eq ptr %i.hh, null
  br i1 %.not.i123, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hh, ptr %10, align 8, !tbaa !85
  store i64 %i.hw, ptr %i.hl, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hl, ptr %10, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aw, %bb.ax
  %i.hz = phi ptr [ %.pre.i124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.hh, %bb.aw ], [ %i.hl, %bb.ax ], [ %i.hk, %bb.as ]
  %i.ia = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ia, align 8, !tbaa !91
  store i8 0, ptr %i.hz, align 1, !tbaa !86
  %i.ib = load ptr, ptr %10, align 8, !tbaa !85   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !86
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #28
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit126

_ZNSt6vectorIDiSaIDiEED2Ev.exit126:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  store ptr %.sroa.0136.0.lcssa, ptr %0, align 8, !tbaa !160
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.lcssa, ptr %i.ig, align 8, !tbaa !171
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0.lcssa, ptr %i.ih, align 8, !tbaa !161
  br label %bb.bb

bb.ay:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal8SplitterINS0_8ByStringENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.az

bb.az:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal8SplitterINS0_8ByStringENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit122, %bb.ay
  %.sroa.0136.6 = phi ptr [ %.sroa.0136.5, %_ZN4absl12lts_2026052616strings_internal8SplitterINS0_8ByStringENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit122 ], [ %.sroa.0136.0.lcssa, %bb.ay ] ; 2 uses
  %.sroa.19.6 = phi ptr [ %.sroa.19.5, %_ZN4absl12lts_2026052616strings_internal8SplitterINS0_8ByStringENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit122 ], [ %.sroa.19.0.lcssa, %bb.ay ]
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZN4absl12lts_2026052616strings_internal8SplitterINS0_8ByStringENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit122 ], [ %i.ii, %bb.ay ] ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %.sroa.0136.6, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit74, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit74.sink.split

bb.ba:                                            ; preds = %bb.s
  %i.ij = load ptr, ptr %2, align 8, !tbaa !85
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !91
  tail call void @_ZN13sentencepiece11string_util17UTF8ToUnicodeTextESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector.240") align 8 %0, i64 %i.il, ptr %i.ij)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNSt6vectorIDiSaIDiEED2Ev.exit126, %_ZNSt6vectorIDiSaIDiEED2Ev.exit
  ret void

_ZNSt6vectorIDiSaIDiEED2Ev.exit74.sink.split:     ; preds = %bb.az, %bb.r
  %.sroa.19.6.sink = phi ptr [ %.sroa.19163.3, %bb.r ], [ %.sroa.19.6, %bb.az ]
  %.sroa.0136.6.sink397 = phi ptr [ %.sroa.0155.3, %bb.r ], [ %.sroa.0136.6, %bb.az ] ; 2 uses
  %.pn49.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn49.pn, %bb.r ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.az ]
  %i.im = ptrtoint ptr %.sroa.19.6.sink to i64
  %i.in = ptrtoint ptr %.sroa.0136.6.sink397 to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.6.sink397, i64 noundef %i.io) #28
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit74

_ZNSt6vectorIDiSaIDiEED2Ev.exit74:                ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit74.sink.split, %bb.az, %bb.r
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.r ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.az ], [ %.pn49.pn.pn.pn.ph, %_ZNSt6vectorIDiSaIDiEED2Ev.exit74.sink.split ]
  resume { ptr, i32 } %.pn49.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #30
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread, label %bb.c

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit
  %i.b = shl nuw nsw i64 %1, 2
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #31 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !199
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !200
  store i32 0, ptr %i.c, align 4, !tbaa !94
  %i.f = getelementptr i8, ptr %i.c, i64 4        ; 3 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.c, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread
  %.0.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread ], [ %i.f, %bb.c ], [ %i.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i, ptr %i.j, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_Z5esaxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_SC_SC_SC_T1_SD_RSD_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %5, 0
  %i.b = icmp slt i32 %6, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %5, 2
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %5, 1
  br i1 %i.d, label %bb.d, label %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %1, align 4, !tbaa !94
  br label %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.e = invoke noundef i32 @_ZN14saisxx_private10suffixsortIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEEiT_T0_T1_SE_SE_b(ptr %0, ptr %1, i32 noundef 0, i32 noundef %5, i32 noundef %6, i1 noundef zeroext false)
          to label %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit unwind label %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread25 ; 2 uses

_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread25: ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #27 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.f

_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit: ; preds = %bb.e
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread, label %bb.f

_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread: ; preds = %bb.d, %bb.c, %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit
  %i.i = tail call noundef i32 @_ZN13esaxx_private10suffixtreeIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEET1_T_T0_SE_SE_SE_SC_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, i32 noundef %5)
  store i32 %i.i, ptr %7, align 4, !tbaa !94
  br label %bb.f

bb.f:                                             ; preds = %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread25, %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread, %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ 0, %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread ], [ %i.e, %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit ], [ -2, %_Z6saisxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_T1_SD_.exit.thread25 ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN13esaxx_private10suffixtreeIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS2_IPiS4_IiSaIiEEEEiEET1_T_T0_SE_SE_SE_SC_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, i32 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  br i1 %i.a, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %5 to i64                       ; 4 uses
  %i.c = getelementptr [4 x i8], ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !94
  %i.f = load i32, ptr %1, align 4, !tbaa !94
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g
  store i32 %i.e, ptr %i.h, align 4, !tbaa !94
  %i.i = icmp sgt i32 %5, 1
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader164

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %5 to i64
  %i.j = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = add nsw i32 %5, -2
  %i.l = icmp ult i32 %i.k, 3
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph

.preheader164:                                    ; preds = %bb.b
  %i.m = icmp eq i32 %5, 1
  br i1 %i.m, label %.lr.ph195.preheader, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

.lr.ph195.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph195.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph195.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph195.preheader.loopexit.unr-lcssa ]
  %lcmp.mod361 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod361)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.n = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.epil ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !94
  %i.q = load i32, ptr %i.n, align 4, !tbaa !94
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r
  store i32 %i.p, ptr %i.s, align 4, !tbaa !94
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph195.preheader, label %.lr.ph.epil, !llvm.loop !839

.lr.ph195.preheader:                              ; preds = %.lr.ph195.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader164
  %wide.trip.count239 = zext i32 %5 to i64        ; 3 uses
  br label %.lr.ph195

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.t = getelementptr [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !94
  %i.w = load i32, ptr %i.t, align 4, !tbaa !94
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %2, i64 %i.x
  store i32 %i.v, ptr %i.y, align 4, !tbaa !94
  %i.z = getelementptr [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !94
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !94
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad
  store i32 %i.ab, ptr %i.ae, align 4, !tbaa !94
  %i.af = getelementptr [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !94
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !94
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !94
  %i.am = getelementptr [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 12
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !94
  %i.aq = load i32, ptr %i.an, align 4, !tbaa !94
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ar
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !94
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph195.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !840

.lr.ph197.preheader:                              ; preds = %.critedge
  %xtraiter362 = and i64 %wide.trip.count239, 3   ; 3 uses
  %i.at = icmp ult i32 %5, 4
  br i1 %i.at, label %.lr.ph197.epil.preheader, label %.lr.ph197.preheader.new

.lr.ph197.preheader.new:                          ; preds = %.lr.ph197.preheader
  %unroll_iter366 = and i64 %wide.trip.count239, 4294967292
  br label %.lr.ph197

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %.critedge
  %indvars.iv236 = phi i64 [ 0, %.lr.ph195.preheader ], [ %indvars.iv.next228, %.critedge ] ; 5 uses
  %indvars.iv231 = phi i32 [ %5, %.lr.ph195.preheader ], [ %indvars.iv.next234, %.critedge ] ; 2 uses
  %.049193 = phi i32 [ 0, %.lr.ph195.preheader ], [ %spec.select, %.critedge ] ; 2 uses
  %6 = sext i32 %.049193 to i64                   ; 2 uses
  %7 = add nsw i64 %indvars.iv236, %6             ; 2 uses
  %i.au = icmp slt i64 %7, %i.b
  br i1 %i.au, label %.lr.ph188.preheader, label %.critedge

.lr.ph188.preheader:                              ; preds = %.lr.ph195
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv236
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !94
  %i.ax = sext i32 %i.aw to i64
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %bb.d
  %indvars.iv231.a = phi i64 [ %6, %.lr.ph188.preheader ], [ %indvars.iv.next232.a, %bb.d ] ; 4 uses
  %indvars.iv229 = phi i64 [ %7, %.lr.ph188.preheader ], [ %indvars.iv.next230, %bb.d ] ; 2 uses
  %i.ay = add nsw i64 %indvars.iv231.a, %i.ax     ; 2 uses
  %i.az = icmp slt i64 %i.ay, %i.b
  br i1 %i.az, label %bb.c, label %.critedge.loopexit.split.loop.exit

bb.c:                                             ; preds = %.lr.ph188
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv229
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !149
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ay
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !149
  %i.be = icmp eq i32 %i.bb, %i.bd
  br i1 %i.be, label %bb.d, label %.critedge.loopexit.split.loop.exit280

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next232.a = add nsw i64 %indvars.iv231.a, 1 ; 2 uses
  %i.bf = add nsw i64 %indvars.iv.next232.a, %indvars.iv236
  %i.bg = icmp slt i64 %i.bf, %i.b
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, 1
  br i1 %i.bg, label %.lr.ph188, label %.critedge, !llvm.loop !841

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph188
  %i.bh = trunc nsw i64 %indvars.iv231.a to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit280:            ; preds = %bb.c
  %i.bi = trunc nsw i64 %indvars.iv231.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit280, %.lr.ph195
  %.150.lcssa = phi i32 [ %.049193, %.lr.ph195 ], [ %i.bi, %.critedge.loopexit.split.loop.exit280 ], [ %i.bh, %.critedge.loopexit.split.loop.exit ], [ %indvars.iv231, %bb.d ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv236
  store i32 %.150.lcssa, ptr %i.bj, align 4, !tbaa !94
  %i.bk = icmp sgt i32 %.150.lcssa, 0
  %i.bl = sext i1 %i.bk to i32
  %spec.select = add nsw i32 %.150.lcssa, %i.bl
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %indvars.iv.next234 = add i32 %indvars.iv231, -1
  %exitcond240.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count239
  br i1 %exitcond240.not, label %.lr.ph197.preheader, label %.lr.ph195, !llvm.loop !842

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %indvars.iv241 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %indvars.iv.next242.3, %.lr.ph197 ] ; 6 uses
  %niter367 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %niter367.next.3, %.lr.ph197 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv241
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !94
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !94
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv241
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !94
  %indvars.iv.next242 = or disjoint i64 %indvars.iv241, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next242
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !94
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !94
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next242
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !94
  %indvars.iv.next242.1 = or disjoint i64 %indvars.iv241, 2 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next242.1
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !94
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !94
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next242.1
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !94
  %indvars.iv.next242.2 = or disjoint i64 %indvars.iv241, 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next242.2
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !94
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !94
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next242.2
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !94
  %indvars.iv.next242.3 = add nuw nsw i64 %indvars.iv241, 4 ; 2 uses
  %niter367.next.3 = add i64 %niter367, 4         ; 2 uses
  %niter367.ncmp.3 = icmp eq i64 %niter367.next.3, %unroll_iter366
  br i1 %niter367.ncmp.3, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph197, !llvm.loop !843

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph197
  %lcmp.mod364.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod364.not, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph197.preheader
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next242.3, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod365 = icmp ne i64 %xtraiter362, 0
  tail call void @llvm.assume(i1 %lcmp.mod365)
  br label %.lr.ph197.epil

.lr.ph197.epil:                                   ; preds = %.lr.ph197.epil, %.lr.ph197.epil.preheader
  %indvars.iv241.epil = phi i64 [ %indvars.iv241.epil.init, %.lr.ph197.epil.preheader ], [ %indvars.iv.next242.epil, %.lr.ph197.epil ] ; 3 uses
  %epil.iter363 = phi i64 [ 0, %.lr.ph197.epil.preheader ], [ %epil.iter363.next, %.lr.ph197.epil ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv241.epil
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !94
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !94
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv241.epil
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !94
  %indvars.iv.next242.epil = add nuw nsw i64 %indvars.iv241.epil, 1
  %epil.iter363.next = add i64 %epil.iter363, 1   ; 2 uses
  %epil.iter363.cmp.not = icmp eq i64 %epil.iter363.next, %xtraiter362
  br i1 %epil.iter363.cmp.not, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %.lr.ph197.epil, !llvm.loop !844

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph197.epil, %.preheader164
  %.pre-phi = zext i32 %5 to i64
  store i32 -1, ptr %2, align 4, !tbaa !94
  %i.cq = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31 ; 4 uses
  store i64 -1, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = add i32 %5, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit86, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit86 ], [ 0, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 8 uses
  %.sroa.0117.0 = phi ptr [ %.sroa.0117.7, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit86 ], [ %i.cq, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 9 uses
  %.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i81.pn, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit86 ], [ %i.cq, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.sroa.28.0 = phi ptr [ %.sroa.28.7, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit86 ], [ %i.cr, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 7 uses
  %.042 = phi i64 [ %.1.lcssa, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit86 ], [ 0, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.sroa.12.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ct = icmp eq i64 %indvars.iv246, %.pre-phi   ; 2 uses
  br i1 %i.ct, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv246
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cw = phi i32 [ %i.cv, %bb.f ], [ -1, %bb.e ] ; 5 uses
  %i.cx = load i64, ptr %.pn, align 4             ; 2 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.cx, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32 ; 3 uses
  %i.cy = add nsw i64 %indvars.iv246, -1
  %i.cz = icmp slt i32 %i.cw, %.sroa.8.0.extract.trunc
  %i.da = trunc nuw nsw i64 %indvars.iv246 to i32
  br i1 %i.cz, label %.lr.ph202.preheader, label %._crit_edge

.lr.ph202.preheader:                              ; preds = %bb.g
  %.sroa.091.0.extract.trunc = trunc i64 %i.cx to i32
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %bb.i
  %.1201 = phi i64 [ %.2, %bb.i ], [ %.042, %.lr.ph202.preheader ] ; 5 uses
  %.sroa.091.0200 = phi i32 [ %i.dj, %bb.i ], [ %.sroa.091.0.extract.trunc, %.lr.ph202.preheader ] ; 3 uses
  %.sroa.8.0199 = phi i32 [ %i.dl, %bb.i ], [ %.sroa.8.0.extract.trunc, %.lr.ph202.preheader ]
  %.sroa.12.1198 = phi ptr [ %i.dh, %bb.i ], [ %.sroa.12.0, %.lr.ph202.preheader ] ; 3 uses
  %i.db = sext i32 %.sroa.091.0200 to i64
  %i.dc = icmp sgt i64 %i.cy, %i.db
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph202
  %i.dd = getelementptr inbounds [4 x i8], ptr %2, i64 %.1201
  store i32 %.sroa.091.0200, ptr %i.dd, align 4, !tbaa !94
  %i.de = getelementptr inbounds [4 x i8], ptr %3, i64 %.1201
  store i32 %i.da, ptr %i.de, align 4, !tbaa !94
  %i.df = getelementptr inbounds [4 x i8], ptr %4, i64 %.1201
  store i32 %.sroa.8.0199, ptr %i.df, align 4, !tbaa !94
  %i.dg = add i64 %.1201, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph202
  %.2 = phi i64 [ %i.dg, %bb.h ], [ %.1201, %.lr.ph202 ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.12.1198, i64 -8 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.12.1198, i64 -16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !858
  %i.dk = getelementptr inbounds i8, ptr %.sroa.12.1198, i64 -12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !859 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, %i.cw
  br i1 %i.dm, label %.lr.ph202, label %._crit_edge.loopexit, !llvm.loop !845

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.m
  %lpad.loopexit.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit89

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.dn = zext i32 %.sroa.091.0200 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.0, %bb.g ], [ %i.dh, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.095.0.lcssa = phi i64 [ %indvars.iv246, %bb.g ], [ %i.dn, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa = phi i32 [ %.sroa.8.0.extract.trunc, %bb.g ], [ %i.dl, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.042, %bb.g ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %i.do = icmp slt i32 %.sroa.8.0.lcssa, %i.cw
  br i1 %i.do, label %bb.j, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %._crit_edge
  %.not.i = icmp eq ptr %.sroa.12.1.lcssa, %.sroa.28.0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.8100.0.insert.ext = zext i32 %i.cw to i64
  %.sroa.8100.0.insert.shift = shl nuw i64 %.sroa.8100.0.insert.ext, 32
  %.sroa.095.0.insert.insert = or disjoint i64 %.sroa.8100.0.insert.shift, %.sroa.095.0.lcssa
  store i64 %.sroa.095.0.insert.insert, ptr %.sroa.12.1.lcssa, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.12.1.lcssa, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.dq = ptrtoint ptr %.sroa.28.0 to i64         ; 2 uses
  %i.dr = ptrtoint ptr %.sroa.0117.0 to i64       ; 3 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775800
  br i1 %i.dt, label %bb.m, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #30
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.du = ashr exact i64 %i.ds, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #31
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ds
  %.sroa.8100.0.insert.ext102 = zext i32 %i.cw to i64
  %.sroa.8100.0.insert.shift103 = shl nuw i64 %.sroa.8100.0.insert.ext102, 32
  %.sroa.095.0.insert.insert99 = or disjoint i64 %.sroa.8100.0.insert.shift103, %.sroa.095.0.lcssa
  store i64 %.sroa.095.0.insert.insert99, ptr %i.eb, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0117.0, %.sroa.28.0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc66
end_hunk_0
