Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/multipartExamples?download=true
inline.NumInlined: 740
inline.NumDeleted: 417
begin_hunk_0_@_Z10copyPixelsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN7Imf_3_418MultiPartInputFileERNS7_19MultiPartOutputFileEii:bb.a
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24: ; preds = %bb.e
  %i.x = load ptr, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, align 8, !tbaa !24
  %i.y = load ptr, ptr %0, align 8, !tbaa !24
  %bcmp.i23 = tail call i32 @bcmp(ptr %i.y, ptr %i.x, i64 %i.b)
  %i.z = icmp eq i32 %bcmp.i23, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24.thread: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN7Imf_3_418DeepTiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN7Imf_3_419DeepTiledOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %4)
  call void @_ZN7Imf_3_419DeepTiledOutputPart10copyPixelsERNS_18DeepTiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24.thread28: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit22.thread27, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit20.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit24.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit22.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12combineFilesv() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::vector.6", align 8     ; 12 uses
  %1 = alloca %"class.Imf_3_4::Header", align 8   ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.Imf_3_4::MultiPartOutputFile", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.h = invoke noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
          to label %bb.ad unwind label %bb.ag

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit
  %.02081 = phi i64 [ 0, %bb.a ], [ %i.bb, %_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.045.080 = phi ptr [ null, %bb.a ], [ %.sroa.045.6, %_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit ] ; 12 uses
  %.sroa.13.079 = phi ptr [ null, %bb.a ], [ %.sroa.13.6, %_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit ] ; 10 uses
  %.sroa.10.078 = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %bb.d unwind label %bb.o       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @__const._Z12combineFilesv.filenames, i64 %.02081
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 4 uses
  %i.l = invoke noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7Imf_3_418MultiPartInputFileC1EPKcib(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef %i.k, i32 noundef %i.l, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.m = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 0)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7Imf_3_46HeaderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(49) %i.m)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef zeroext i1 @_ZNK7Imf_3_46Header7hasNameEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  br i1 %i.n, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.b, ptr %2, align 8, !tbaa !29
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.o, ptr %i.a, align 8, !tbaa !30
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc30 unwind label %bb.r   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.q, ptr %2, align 8, !tbaa !24
  %i.r = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.r, ptr %i.b, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %bb.j
  %i.s = phi ptr [ %i.q, %.noexc30 ], [ %i.b, %bb.j ] ; 2 uses
  switch i64 %i.o, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.k, align 1, !tbaa !31
  store i8 %i.t, ptr %i.s, align 1, !tbaa !31
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.k, i64 %i.o, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !23
  %i.v = load ptr, ptr %2, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN7Imf_3_46Header7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.b
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.z = load i64, ptr %i.b, align 8, !tbaa !31
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.t

bb.o:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.p:                                             ; preds = %bb.e, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #23
  br label %bb.az

bb.q:                                             ; preds = %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit:                                        ; preds = %bb.h, %_ZNKSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.z, %bb.aa
  %.sroa.13.1.ph = phi ptr [ %.sroa.13.079, %bb.h ], [ %.sroa.13.079, %_ZNKSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.13.6, %bb.z ], [ %.sroa.13.6, %bb.aa ]
  %.sroa.045.1.ph = phi ptr [ %.sroa.045.080, %bb.h ], [ %.sroa.045.080, %_ZNKSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.045.6, %bb.z ], [ %.sroa.045.6, %bb.aa ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.r:                                             ; preds = %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.s:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.b
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.s
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !31
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.r
  %.pn23 = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.af, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ab

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.not.i = icmp eq ptr %.sroa.10.078, %.sroa.13.079
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.i, ptr %.sroa.10.078, align 8, !tbaa !103
  br label %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE9push_backERKS2_.exit

bb.v:                                             ; preds = %bb.t
  %i.ak = ptrtoint ptr %.sroa.13.079 to i64
  %i.al = ptrtoint ptr %.sroa.045.080 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.w, label %_ZNKSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.ap = icmp ult i64 %4, %i.ao
  %i.aq = call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %i.ar = select i1 %i.ap, i64 1152921504606846975, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #22
          to label %.noexc35 unwind label %.loopexit ; 4 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.am ; 2 uses
  store ptr %i.i, ptr %i.au, align 8, !tbaa !103
  %i.av = icmp sgt i64 %i.am, 0
  br i1 %i.av, label %bb.x, label %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.x:                                             ; preds = %.noexc35
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %.sroa.045.080, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.x, %.noexc35
  %.not.i17.i.i = icmp eq ptr %.sroa.045.080, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.080, i64 noundef %i.am) #23
  br label %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  br label %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.u
  %.pn53 = phi ptr [ %i.au, %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.10.078, %bb.u ]
  %.sroa.13.6 = phi ptr [ %i.aw, %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.13.079, %bb.u ] ; 5 uses
  %.sroa.045.6 = phi ptr [ %i.at, %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.045.080, %bb.u ] ; 7 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn53, i64 8
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !28  ; 3 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !32
  %.not.i36 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i36, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZN7Imf_3_46HeaderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.ax, ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %.noexc37 unwind label %.loopexit

.noexc37:                                         ; preds = %bb.z
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !28
  br label %_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ax, ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit

_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc37, %bb.aa
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.bb = add nuw nsw i64 %.02081, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !99

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.sroa.13.2 = phi ptr [ %.sroa.13.079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.sroa.13.1.ph, %.loopexit ], [ %.sroa.13.079, %.loopexit.split-lp ]
  %.sroa.045.2 = phi ptr [ %.sroa.045.080, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.sroa.045.1.ph, %.loopexit ], [ %.sroa.045.080, %.loopexit.split-lp ]
  %.pn25 = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %1) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.q
  %.sroa.13.3 = phi ptr [ %.sroa.13.2, %bb.ab ], [ %.sroa.13.079, %bb.q ]
  %.sroa.045.3 = phi ptr [ %.sroa.045.2, %bb.ab ], [ %.sroa.045.080, %bb.q ]
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.ab ], [ %i.ad, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.az

bb.ad:                                            ; preds = %bb.b
  %i.bc = ptrtoint ptr %i.g to i64
  %i.bd = ptrtoint ptr %i.f to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 56
  %i.bg = trunc i64 %i.bf to i32
  invoke void @_ZN7Imf_3_419MultiPartOutputFileC1EPKcPKNS_6HeaderEibi(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.11, ptr noundef %i.f, i32 noundef %i.bg, i1 noundef zeroext false, i32 noundef %i.h)
          to label %.preheader unwind label %bb.ag

bb.ae:                                            ; preds = %bb.aw
  call void @_ZN7Imf_3_419MultiPartOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bh = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !28  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %i.bh, %bb.ae ] ; 2 uses
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i.i) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i.i.i39, label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ae
  %i.bk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bh, %bb.ae ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit.i
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #23
  br label %_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7Imf_3_418MultiPartInputFileESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  %i.bp = ptrtoint ptr %.sroa.13.6 to i64
  %i.bq = ptrtoint ptr %.sroa.045.6 to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.6, i64 noundef %i.br) #23
  ret void

bb.ag:                                            ; preds = %bb.ad, %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.preheader:                                       ; preds = %bb.ad, %bb.aw
  %.082 = phi i64 [ %i.dj, %bb.aw ], [ 0, %bb.ad ] ; 4 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %.082
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.bu)
          to label %bb.ah unwind label %bb.ax

bb.ah:                                            ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.045.6, i64 %.082 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !103
  %i.by = trunc nuw nsw i64 %.082 to i32
  invoke void @_Z10copyPixelsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN7Imf_3_418MultiPartInputFileERNS7_19MultiPartOutputFileEii(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef %i.by)
          to label %bb.ai unwind label %bb.ax

bb.ai:                                            ; preds = %bb.ah
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !103 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.aw, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i41.a = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i41.a, label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.cd, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !39
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #21, !inline_history !1
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #21, !inline_history !1
  br label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i = phi i32 [ %i.cg, %bb.an ], [ %i.cq, %bb.ao ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.ap, label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !43

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #21
  br label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.al, %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i1.i, label %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit, label %bb.aq

end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EED2Ev:bb.a
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !7

_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EE8_M_clearEv.exit: ; preds = %_ZN7Imf_3_47Array2DIPN9Imath_3_24halfEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !87 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #23
  br label %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i

_ZN7Imf_3_47Array2DIPjED2Ev.exit.i:               ; preds = %bb.b, %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 40) #23
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !8

_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EE8_M_clearEv.exit: ; preds = %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17multipartExamplesv() local_unnamed_addr #3 {
bb.a:
  tail call void @_Z12combineFilesv()
  tail call void @_Z15modifyMultipartv()
  tail call void @_Z10splitFilesv()
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !199
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !199
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare void @_ZN7Imf_3_410OutputPart10copyPixelsERNS_9InputPartE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN7Imf_3_415TiledOutputPart10copyPixelsERNS_14TiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN7Imf_3_422DeepScanLineOutputPart10copyPixelsERNS_21DeepScanLineInputPartE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN7Imf_3_419DeepTiledOutputPart10copyPixelsERNS_18DeepTiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7Imf_3_46HeaderESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

_ZNKSt6vectorIN7Imf_3_46HeaderESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 164703072086692425)
  %i.k = select i1 %i.i, i64 164703072086692425, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 56                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  invoke void @_ZN7Imf_3_46HeaderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %_ZNSt16allocator_traitsISaIN7Imf_3_46HeaderEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN7Imf_3_46HeaderEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7Imf_3_46HeaderESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN7Imf_3_46HeaderEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN7Imf_3_46HeaderEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7Imf_3_46HeaderEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN7Imf_3_46HeaderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(49) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !202

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #21 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.o, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  tail call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i.i.i.i.i.i) #21
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #24
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN7Imf_3_46HeaderEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN7Imf_3_46HeaderEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.r, %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 56 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 56, %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.z, %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN7Imf_3_46HeaderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(49) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.z = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 56 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 56 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !202

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #21 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 56
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i.i.i.i.i.i34) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ad, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !0

_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i36
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #25
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN7Imf_3_46HeaderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit:     ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7Imf_3_46HeaderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7Imf_3_46HeaderESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #23
  br label %_ZNSt12_Vector_baseIN7Imf_3_46HeaderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7Imf_3_46HeaderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderEEvT_S3_.exit, %bb.k
  store ptr %i.o, ptr %0, align 8, !tbaa !27
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.k
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !32
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN7Imf_3_46HeaderESaIS1_EE12_M_check_lenEmPKc.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %i.ao) #21 ; 0 uses
  br label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.aq = extractvalue { ptr, i32 } %i.w, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.aq) #21 ; 0 uses
  tail call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.p) #21
  br label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.as = extractvalue { ptr, i32 } %i.ae, 0
  %i.at = tail call ptr @__cxa_begin_catch(ptr %i.as) #21 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.o, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.au, %.lr.ph.i.i46 ], [ %i.o, %bb.l ] ; 3 uses
  tail call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i47) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 56
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !0

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.av

bb.o:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #25
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr
end_hunk_1
