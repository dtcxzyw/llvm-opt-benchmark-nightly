Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ASELoader?download=true
inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN15DeadlyErrorBaseC2IJRjRA2_KcERA35_S2_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA2_KcERjEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %1, i64 noundef %i.b) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %4, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %4, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #22
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  resume { ptr, i32 } %i.r
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3ASE8MaterialESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.016 = phi ptr [ %i.ac, %bb.e ], [ %2, %bb.a ] ; 10 uses
  %.sroa.08.015 = phi ptr [ %i.ab, %bb.e ], [ %0, %bb.a ] ; 5 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(736) %.016, ptr noundef nonnull align 8 dereferenceable(736) %.sroa.08.015)
          to label %.noexc unwind label %bb.f, !inline_history !181

.noexc:                                           ; preds = %.lr.ph
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3ASE8MaterialE, i64 16), ptr %.016, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 696 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 696 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 704 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = sdiv exact i64 %i.h, 736
  %i.j = icmp ugt i64 %i.i, 12531755484857032
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE8allocateEmPKv.exit.i.i.i.i, !prof !12

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc25 unwind label %.loopexit.split-lp, !inline_history !182

.noexc25:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
          to label %.noexc26 unwind label %.loopexit, !inline_history !182

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE8allocateEmPKv.exit.i.i.i.i, %.noexc
  %i.l = phi ptr [ null, %.noexc ], [ %i.k, %_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 704 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %.016, i64 712
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3ASE8MaterialESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c, !inline_history !183

bb.c:                                             ; preds = %.noexc26
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %.body27, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.016, i64 712
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #23, !inline_history !182
  br label %.body27

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN6Assimp3ASE8MaterialEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body27

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body27

.body27:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(736) %.016) #22, !inline_history !181
  br label %.body

bb.e:                                             ; preds = %.noexc26
  store ptr %i.r, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.016, i64 720
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 720
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, ptr noundef nonnull align 8 dereferenceable(9) %i.aa, i64 9, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 736 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.016, i64 736 ; 2 uses
  %.not = icmp eq ptr %i.ab, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !184

bb.f:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.body27, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %eh.lpad-body28, %.body27 ]
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6Assimp3ASE8MaterialEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ac, %bb.e ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.body
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ag

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

declare void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(12), i32 noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9 = alloca [15 x i8], align 1            ; 14 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.4.8.copyload = load i8, ptr %3, align 4  ; 11 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..sroa_idx, i64 11, i1 false)
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 3 uses
  %i.k = sdiv exact i64 %i.j, 12                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -12                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !185

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, %bb.d
  %i.p = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %2
  store ptr %i.q, ptr %i.c, align 8
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.r, %i.i                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 12
  br i1 %i.t, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.neg132 = udiv exact i64 %i.s, 12
  %.neg132.neg = sub nsw i64 0, %.neg132
  %i.u = getelementptr inbounds [12 x i8], ptr %i.d, i64 %.neg132.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %1, i64 %i.s, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.v = icmp eq i64 %i.s, 12
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx115 = mul nuw nsw i64 %2, 12               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx115
  %4 = add nsw i64 %.idx115, -12                  ; 2 uses
  %5 = udiv i64 %4, 12
  %6 = add nuw nsw i64 %5, 1
  %xtraiter142 = and i64 %6, 3                    ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.h, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %7, %.lr.ph.i.i.i.prol ], [ %1, %bb.h ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.h ]
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i.prol, align 4
  %.sroa.9.8..06.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 12 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !186

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.h
  %.06.i.i.i.unr = phi ptr [ %1, %bb.h ], [ %7, %.lr.ph.i.i.i.prol ]
  %8 = icmp ult i64 %4, 36
  br i1 %8, label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i, align 4
  %.sroa.9.8..06.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 12
  store i8 %.sroa.4.8.copyload, ptr %9, align 4
  %.sroa.9.8..06.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  store i8 %.sroa.4.8.copyload, ptr %10, align 4
  %.sroa.9.8..06.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %11 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 36
  store i8 %.sroa.4.8.copyload, ptr %11, align 4
  %.sroa.9.8..06.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i.3, label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !187

bb.i:                                             ; preds = %bb.c
  %i.z = sub nuw i64 %2, %i.k                     ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.prol ], [ %i.z, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i.prol, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.aa = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !188

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa141.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.prol ]
  %i.ac = sub i64 %i.k, %2
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 12
  store i8 %.sroa.4.8.copyload, ptr %i.ae, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i8 %.sroa.4.8.copyload, ptr %i.af, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 36
  store i8 %.sroa.4.8.copyload, ptr %i.ag, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ah = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !189

_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i
  %i.aj = phi ptr [ %i.d, %bb.i ], [ %.lcssa141.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.aj, ptr %i.c, align 8
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.j
  store ptr %i.ak, ptr %i.c, align 8
  br label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i70 ], [ %i.aj, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i71, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i72, i64 12, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 12
  %.not.i.i.i.i.i73 = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !185

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.j
  store ptr %i.ao, ptr %i.c, align 8
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ap, %.lr.ph.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i78, align 4
  %.sroa.9.8..06.i.i.i78.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 12 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !187

_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit:   ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %0, align 8               ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.as = sub i64 %i.f, %i.ar
  %i.at = sdiv exact i64 %i.as, 12                ; 4 uses
  %i.au = sub nsw i64 768614336404564650, %i.at
  %i.av = icmp ult i64 %i.au, %2
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #24
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %2)
  %i.aw = add nsw i64 %.sroa.speculated.i, %i.at  ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 768614336404564650)
  %i.az = select i1 %i.ax, i64 768614336404564650, i64 %i.ay ; 3 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.ba, %i.ar
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bc = mul nuw nsw i64 %i.az, 12
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #25
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.be = phi ptr [ %i.bd, %bb.l ], [ null, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb ; 2 uses
  %xtraiter145 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.i82.prol ], [ %i.bf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i82.prol ], [ %2, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ]
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83.prol, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bg = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 12 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !190

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit
  %.09.i.i.i.i83.unr = phi ptr [ %i.bf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ], [ %i.bh, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %2, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ], [ %i.bg, %.lr.ph.i.i.i.i82.prol ]
  %i.bi = icmp ult i64 %2, 4
  br i1 %i.bi, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i84 = phi i64 [ %i.bm, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bm = add i64 %.068.i.i.i.i84, -4             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 48
  %.not.i.i.i.i85.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i85.3, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !189

_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %.lr.ph.i.i.i.i82.prol.loopexit
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.aq, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i89 ], [ %i.be, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i89 ], [ %i.aq, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i91, i64 12, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 12 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bo, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !185

_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.be, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ], [ %i.bp, %.lr.ph.i.i.i.i.i89 ]
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i95 ], [ %i.bq, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i95 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i96, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i97, i64 12, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 12 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.br, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !185

_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.bq, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.bs, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.aq, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100
  %i.bt = load ptr, ptr %i.a, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bv) #23
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, %bb.m
  store ptr %i.be, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.az
  store ptr %i.bw, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{!3, !11}
!4 = distinct !{null}
!5 = distinct !{!5, !11}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{ptr @_ZN6Assimp3ASE8MaterialD2Ev}
!18 = distinct !{null}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{null, null}
!22 = distinct !{!22, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !22, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!27 = distinct !{!27, !26, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!28 = distinct !{!28, !26, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !11, !13, !14}
!34 = distinct !{!34, !11, !13}
!35 = distinct !{!35, !"LVerDomain"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !11, !13, !14}
!39 = distinct !{!39, !11, !13}
!40 = distinct !{!40, !11, !13, !14}
!41 = distinct !{!41, !11, !13}
!42 = distinct !{!42, !11}
!43 = !{!24, !23}
!44 = !{!28, !27}
!45 = !{!31}
!46 = !{!32}
!47 = !{!36}
!48 = !{!37}
!49 = distinct !{null}
!50 = distinct !{null, null, null}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !54, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!57 = distinct !{!57, !11, !13, !14}
!58 = distinct !{!58, !11, !13}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!73 = distinct !{!73, !72, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!74 = distinct !{!74, !72, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!75 = distinct !{!75, !11, !13, !14}
!76 = distinct !{!76, !11, !13}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = !{!55}
!81 = !{!56}
!82 = !{!73}
!83 = !{!74}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = !{!"branch_weights", i32 1, i32 1048575}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!99 = distinct !{!99, !98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!100 = distinct !{!100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!101 = distinct !{!101, !100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !11, !107}
!104 = distinct !{!104, !11}
!105 = !{!99}
!106 = !{!101, !99}
!107 = !{!"llvm.loop.peeled.count", i32 1}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !"_ZNK9aiColor3DmlEf"}
!110 = distinct !{!110, !109, !"_ZNK9aiColor3DmlEf: argument 0"}
!111 = distinct !{!111, !11}
!112 = !{!110}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11}
!117 = distinct !{!117, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!118 = distinct !{!118, !117, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!119 = distinct !{!119, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!120 = distinct !{!120, !119, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = !{!118}
!125 = !{!120, !118}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}
!138 = distinct !{!138, !11}
!139 = distinct !{!139, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!140 = distinct !{!140, !139, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!141 = distinct !{!141, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!142 = distinct !{!142, !141, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!143 = distinct !{!143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!144 = distinct !{!144, !143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!145 = !{!140}
!146 = !{!142}
!147 = !{!144}
!148 = !{!144, !142, !140}
!149 = distinct !{null, null, ptr @_ZN6Assimp3ASE8MaterialD2Ev, null}
!150 = distinct !{null, null, ptr @_ZN6Assimp3ASE8MaterialD2Ev}
!151 = distinct !{!151, !11}
!152 = distinct !{!152, !"_ZSt19__relocate_object_aIN6Assimp3ASE8MaterialES2_SaIS2_EEvPT_PT0_RT1_"}
!153 = distinct !{!153, !152, !"_ZSt19__relocate_object_aIN6Assimp3ASE8MaterialES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!154 = distinct !{!154, !152, !"_ZSt19__relocate_object_aIN6Assimp3ASE8MaterialES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !"_ZSt19__relocate_object_aIN6Assimp3ASE8MaterialES2_SaIS2_EEvPT_PT0_RT1_"}
!157 = distinct !{!157, !156, !"_ZSt19__relocate_object_aIN6Assimp3ASE8MaterialES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !156, !"_ZSt19__relocate_object_aIN6Assimp3ASE8MaterialES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!159 = !{!153}
!160 = !{!154}
!161 = !{!157}
!162 = !{!158}
!163 = distinct !{ptr @_ZN6Assimp3ASE8MaterialD2Ev, null}
!164 = distinct !{!164, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!165 = distinct !{!165, !164, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!166 = distinct !{!166, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!167 = distinct !{!167, !166, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!168 = distinct !{!168, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!169 = distinct !{!169, !168, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!170 = distinct !{!170, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!171 = distinct !{!171, !170, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!172 = !{!165}
!173 = !{!167}
!174 = !{!169}
!175 = !{!171}
!176 = !{!171, !169, !167, !165}
!177 = distinct !{!177, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!178 = distinct !{!178, !177, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!179 = distinct !{!179, !177, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!180 = !{!179, !178}
!181 = distinct !{null, null}
!182 = distinct !{null, null, null}
!183 = distinct !{null, null, null, null, null}
!184 = distinct !{!184, !11}
!185 = distinct !{!185, !11}
!186 = distinct !{!186, !15}
!187 = distinct !{!187, !11}
!188 = distinct !{!188, !15}
!189 = distinct !{!189, !11}
!190 = distinct !{!190, !15}
end_hunk_0
