Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/registry?download=true
inline.NumInlined: 24885
inline.NumDeleted: 7508
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN19Registry_Erase_Test8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %96, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1369, ptr noundef %i.bai)
          to label %bb.oy unwind label %bb.pc

bb.oy:                                            ; preds = %bb.ox
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull align 8 dereferenceable(8) %95)
          to label %bb.oz unwind label %bb.pd

bb.oz:                                            ; preds = %bb.oy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %96) #27
  %i.baj = load ptr, ptr %97, align 8, !tbaa !216 ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 2 uses
  %i.bal = icmp eq ptr %i.baj, %i.bak
  br i1 %i.bal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i919

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i919: ; preds = %bb.oz
  %i.bam = load i64, ptr %i.bak, align 8, !tbaa !217
  %i.ban = add i64 %i.bam, 1
  call void @_ZdlPvm(ptr noundef %i.baj, i64 noundef %i.ban) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921: ; preds = %bb.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i919
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #27
  %i.bao = load ptr, ptr %95, align 8, !tbaa !219 ; 3 uses
  %.not.i.i922 = icmp eq ptr %i.bao, null
  br i1 %.not.i.i922, label %_ZN7testing7MessageD2Ev.exit924, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i923

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i923: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921
  %i.bap = load ptr, ptr %i.bao, align 8, !tbaa !199
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 8
  %i.bar = load ptr, ptr %i.baq, align 8
  call void %i.bar(ptr noundef nonnull align 8 dereferenceable(128) %i.bao) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit924

_ZN7testing7MessageD2Ev.exit924:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i923
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #27
  br label %bb.pf

bb.pa:                                            ; preds = %bb.ov
  %i.bas = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit930

bb.pb:                                            ; preds = %bb.ow
  %i.bat = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

bb.pc:                                            ; preds = %bb.ox
  %i.bau = landingpad { ptr, i32 }
          cleanup
  br label %bb.pe

bb.pd:                                            ; preds = %bb.oy
  %i.bav = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %96) #27
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc
  %.pn337 = phi { ptr, i32 } [ %i.bav, %bb.pd ], [ %i.bau, %bb.pc ] ; 2 uses
  %i.baw = load ptr, ptr %97, align 8, !tbaa !216 ; 2 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 2 uses
  %i.bay = icmp eq ptr %i.baw, %i.bax
  br i1 %i.bay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925: ; preds = %bb.pe
  %i.baz = load i64, ptr %i.bax, align 8, !tbaa !217
  %i.bba = add i64 %i.baz, 1
  call void @_ZdlPvm(ptr noundef %i.baw, i64 noundef %i.bba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927: ; preds = %bb.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925, %bb.pb
  %.pn337.pn = phi { ptr, i32 } [ %i.bat, %bb.pb ], [ %.pn337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925 ], [ %.pn337, %bb.pe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #27
  %i.bbb = load ptr, ptr %95, align 8, !tbaa !219 ; 3 uses
  %.not.i.i928 = icmp eq ptr %i.bbb, null
  br i1 %.not.i.i928, label %_ZN7testing7MessageD2Ev.exit930, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i929

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i929: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !199
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8
  %i.bbe = load ptr, ptr %i.bbd, align 8
  call void %i.bbe(ptr noundef nonnull align 8 dereferenceable(128) %i.bbb) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit930

_ZN7testing7MessageD2Ev.exit930:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i929, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927, %bb.pa
  %.pn337.pn.pn = phi { ptr, i32 } [ %i.bas, %bb.pa ], [ %.pn337.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927 ], [ %.pn337.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i929 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %94) #27
  br label %bb.ph

bb.pf:                                            ; preds = %bb.os, %_ZN7testing7MessageD2Ev.exit924
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %94) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #27
  br label %bb.pg

bb.pg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit912, %_ZN7testing7MessageD2Ev.exit900, %_ZN7testing7MessageD2Ev.exit891, %_ZN7testing7MessageD2Ev.exit881, %_ZN7testing7MessageD2Ev.exit871, %_ZN7testing7MessageD2Ev.exit861, %_ZN7testing7MessageD2Ev.exit851, %_ZN7testing7MessageD2Ev.exit841, %_ZN7testing7MessageD2Ev.exit821, %_ZN7testing7MessageD2Ev.exit811, %_ZN7testing7MessageD2Ev.exit801, %_ZN7testing7MessageD2Ev.exit791, %_ZN7testing7MessageD2Ev.exit778, %_ZN7testing15AssertionResultD2Ev.exit729, %_ZN7testing15AssertionResultD2Ev.exit691, %_ZN7testing15AssertionResultD2Ev.exit669, %_ZN7testing15AssertionResultD2Ev.exit647, %_ZN7testing15AssertionResultD2Ev.exit624, %_ZN7testing15AssertionResultD2Ev.exit589, %_ZN7testing15AssertionResultD2Ev.exit554, %_ZN7testing15AssertionResultD2Ev.exit504, %_ZN7testing15AssertionResultD2Ev.exit469, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing8internal14TrueWithStringD2Ev.exit, %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.ph:                                            ; preds = %_ZN7testing7MessageD2Ev.exit930, %bb.ou
  %.pn337.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn, %_ZN7testing7MessageD2Ev.exit930 ], [ %i.bah, %bb.ou ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #27
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ph, %bb.ot, %bb.of, %bb.nr, %bb.nc, %bb.mn, %bb.lx, %bb.li, %bb.lh, %bb.lg, %bb.kp, %bb.ka, %bb.jl, %bb.iw, %bb.iv, %bb.iu, %bb.id, %bb.ho, %_ZN7testing8internal14TrueWithStringD2Ev.exit773, %_ZN7testing7MessageD2Ev.exit735, %bb.fl, %bb.er, %bb.dz, %_ZN7testing7MessageD2Ev.exit630, %_ZN7testing7MessageD2Ev.exit595, %_ZN7testing7MessageD2Ev.exit560, %_ZN7testing7MessageD2Ev.exit510, %_ZN7testing7MessageD2Ev.exit475, %_ZN7testing7MessageD2Ev.exit451
  %.pn337.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn, %bb.ph ], [ %.pn332.pn.pn.pn, %bb.ot ], [ %.pn327.pn.pn.pn, %bb.of ], [ %.pn323.pn.pn, %bb.nr ], [ %.pn317.pn.pn, %bb.nc ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit451 ], [ %.pn311.pn.pn, %bb.mn ], [ %.pn305.pn.pn, %bb.lx ], [ %i.aua, %bb.li ], [ %i.atz, %bb.lh ], [ %.pn299.pn.pn, %bb.lg ], [ %.pn293.pn.pn, %bb.kp ], [ %.pn287.pn.pn, %bb.ka ], [ %.pn281.pn.pn, %bb.jl ], [ %i.apk, %bb.iw ], [ %i.apj, %bb.iv ], [ %.pn275.pn.pn, %bb.iu ], [ %.pn269.pn.pn, %bb.id ], [ %.pn263.pn.pn, %bb.ho ], [ %.pn256.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit773 ], [ %.pn245.pn.pn, %_ZN7testing7MessageD2Ev.exit735 ], [ %.pn241.pn.pn, %bb.fl ], [ %.pn235.pn.pn, %bb.er ], [ %.pn229.pn.pn, %bb.dz ], [ %.pn222.pn.pn, %_ZN7testing7MessageD2Ev.exit630 ], [ %.pn217.pn.pn, %_ZN7testing7MessageD2Ev.exit595 ], [ %.pn212.pn.pn, %_ZN7testing7MessageD2Ev.exit560 ], [ %.pn207.pn.pn, %_ZN7testing7MessageD2Ev.exit510 ], [ %.pn202.pn.pn, %_ZN7testing7MessageD2Ev.exit475 ], [ %lpad.loopexit.split-lp1286, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.pi

bb.pi:                                            ; preds = %.loopexit.split-lp, %bb.i
  %.pn337.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn.pn, %.loopexit.split-lp ], [ %i.ii, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.h
  %.pn337.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn.pn.pn, %bb.pi ], [ %i.ih, %bb.h ]
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn337.pn.pn.pn.pn.pn.pn

bb.pk:                                            ; preds = %bb.gl, %bb.gg
  %i.bbf = landingpad { ptr, i32 }
          catch ptr null
  %i.bbg = extractvalue { ptr, i32 } %i.bbf, 0
  call void @__clang_call_terminate(ptr %i.bbg) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE5eraseIiJETkSt14input_iteratorSt16reverse_iteratorINS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEEEEEvT1_SC_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(16) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1779859874) ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i2 = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !223 ; 2 uses
  %.sroa.2.0.copyload.i4.i3 = load i64, ptr %.sroa.2.0..sroa_idx.i3.i, align 8, !tbaa !223
  %i.b = icmp eq i64 %.sroa.2.0.copyload.i.i2, %.sroa.2.0.copyload.i4.i3
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.2.0.copyload.i.i4 = phi i64 [ %.sroa.2.0.copyload.i.i2, %.lr.ph ], [ %i.x, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !501
  %i.e = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !222
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %.sroa.2.0.copyload.i.i4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254
  %i.h = and i32 %i.g, 1048575
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = lshr i64 %i.i, 12
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !301
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251
  %i.n = and i64 %i.i, 4095
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  %i.q = and i32 %i.p, 1048575                    ; 2 uses
  %narrow.i.i.i.i.i.i.i = add nuw nsw i32 %i.q, 1
  %i.r = zext nneg i32 %narrow.i.i.i.i.i.i.i to i64
  %i.s = zext nneg i32 %i.q to i64
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr nonnull %i.c, i64 %i.r, ptr nonnull %i.c, i64 %i.s), !inline_history !1367
  %i.w = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !560
  %i.x = add nsw i64 %i.w, 1                      ; 3 uses
  store i64 %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !560
  %.sroa.2.0.copyload.i4.i = load i64, ptr %.sroa.2.0..sroa_idx.i3.i, align 8, !tbaa !223
  %i.y = icmp eq i64 %i.x, %.sroa.2.0.copyload.i4.i
  br i1 %i.y, label %._crit_edge, label %bb.b, !llvm.loop !1368
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE5eraseIiJcETkSt14input_iteratorNS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEEEEvT1_SA_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1779859874) ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1471413475) ; 2 uses
  %.not.i = icmp eq ptr %1, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222
  br i1 %.not.i, label %.split14.us, label %_ZNK4entt8internal19sparse_set_iteratorISt6vectorINS_6entityESaIS3_EEE4dataEv.exit.preheader

_ZNK4entt8internal19sparse_set_iteratorISt6vectorINS_6entityESaIS3_EEE4dataEv.exit.preheader: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !222
  br label %.split14.us

.split14.us:                                      ; preds = %bb.a, %_ZNK4entt8internal19sparse_set_iteratorISt6vectorINS_6entityESaIS3_EEE4dataEv.exit.preheader
  %.sink40 = phi ptr [ %i.e, %_ZNK4entt8internal19sparse_set_iteratorISt6vectorINS_6entityESaIS3_EEE4dataEv.exit.preheader ], [ null, %bb.a ]
  %i.f = icmp eq ptr %i.d, %.sink40               ; 2 uses
  %spec.select = select i1 %i.f, ptr %i.a, ptr %i.b ; 2 uses
  %spec.select26 = select i1 %i.f, ptr %i.b, ptr %i.a ; 2 uses
  %i.g = load ptr, ptr %spec.select26, align 8, !tbaa !199
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(80) %spec.select26, ptr %1, i64 %2, ptr %3, i64 %4)
  %i.j = load ptr, ptr %spec.select, align 8, !tbaa !199
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(80) %spec.select, ptr %1, i64 %2, ptr %3, i64 %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE5eraseIiJcETkSt14input_iteratorPS1_EEvT1_S6_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1779859874) ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEcEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1471413475) ; 4 uses
  %.not7 = icmp eq ptr %1, %2
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.08 = phi ptr [ %1, %.lr.ph ], [ %i.ah, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %.08, align 4, !tbaa !254
  %i.h = and i32 %i.g, 1048575
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = lshr i64 %i.i, 12                        ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !301
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251
  %i.n = and i64 %i.i, 4095                       ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  %i.q = and i32 %i.p, 1048575                    ; 2 uses
  %narrow.i.i.i.i.i.i.i = add nuw nsw i32 %i.q, 1
  %i.r = zext nneg i32 %narrow.i.i.i.i.i.i.i to i64
  %i.s = zext nneg i32 %i.q to i64
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr nonnull %i.c, i64 %i.r, ptr nonnull %i.c, i64 %i.s), !inline_history !1369
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !301
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.j
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !251
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.n
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !254
  %i.ab = and i32 %i.aa, 1048575                  ; 2 uses
  %narrow.i.i3.i.i.i.i.i = add nuw nsw i32 %i.ab, 1
  %i.ac = zext nneg i32 %narrow.i.i3.i.i.i.i.i to i64
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr nonnull %i.e, i64 %i.ac, ptr nonnull %i.e, i64 %i.ad), !inline_history !1369
  %i.ah = getelementptr inbounds nuw i8, ptr %.08, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ah, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1370
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN37RegistryDeathTest_DISABLED_Erase_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %2 = alloca %"class.entt::basic_registry", align 8 ; 14 uses
  %3 = alloca %"struct.std::array.218", align 4   ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %8 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %12 = alloca %"class.testing::Matcher", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(336) %2, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.d = invoke noundef i32 @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE8generateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.c)
          to label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit unwind label %bb.g ; 3 uses

_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit: ; preds = %bb.a
  store i32 %i.d, ptr %3, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !308
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !309  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 2515107422
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit
  %.07.in.i.i.i.i.i = phi ptr [ %i.o, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit ], [ %i.r, %bb.c ]
  %.07.i.i.i.i.i = load i64, ptr %.07.in.i.i.i.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.07.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.07.i.i.i.i.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !224
  %i.u = icmp eq i32 %i.t, -1779859874
  br i1 %i.u, label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i.i, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !312  ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.q to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z
  br label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i.i

_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !312
  br label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i.i

_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i.i: ; preds = %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i.i, %bb.d
  %i.ab = phi ptr [ %i.w, %bb.d ], [ %.pre.i.i.i, %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.aa, %bb.d ], [ %i.r, %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i.i ] ; 2 uses
  %i.ac = icmp eq ptr %.sroa.0.1.i.i.i.i.i, %i.ab
  br i1 %i.ac, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit.thread, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEEPKDaj.exit.i.i

_ZNK4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEEPKDaj.exit.i.i: ; preds = %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !317 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEEPKDaj.exit.i.i
  %i.af = and i32 %i.d, 1048575
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = lshr i64 %i.ag, 12                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !300
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !301 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ult i64 %i.ah, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ah
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !251 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit.thread, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit

_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit: ; preds = %bb.f
  %i.at = and i64 %i.ag, 4095
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = and i32 %i.d, -1048576
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !254
  %i.ax = xor i32 %i.aw, %i.av
  %i.ay = icmp ugt i32 %i.ax, 1048574             ; 2 uses
  %i.az = zext i1 %i.ay to i8
  store i8 %i.az, ptr %4, align 8, !tbaa !234
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !252
  br i1 %i.ay, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.a, %bb.bl, %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.h:                                             ; preds = %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6any_ofIJiEEEbS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %7, align 8, !tbaa !216
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1376, ptr noundef %i.bc)
          to label %bb.k unwind label %bb.p

end_hunk_0
begin_hunk_1_@_ZN21Registry_Compact_Test8TestBodyEv:bb.a
_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef 32) #28
  br label %bb.dy

bb.dy:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300, %.critedge116
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27
  %i.pb = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEN4test8internal20pointer_stable_mixinINS6_10value_typeIiEEEEEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %2, i32 noundef 1868416311)
          to label %_ZN4entt14basic_registryINS_6entityESaIS1_EE7storageIN4test8internal20pointer_stable_mixinINS6_10value_typeIiEEEEEERNS_11storage_forIT_S1_SaINSt12remove_constISC_E4typeEEE4typeEj.exit304 unwind label %bb.ec ; 2 uses

_ZN4entt14basic_registryINS_6entityESaIS1_EE7storageIN4test8internal20pointer_stable_mixinINS6_10value_typeIiEEEEEERNS_11storage_forIT_S1_SaINSt12remove_constISC_E4typeEEE4typeEj.exit304: ; preds = %bb.dy
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !221 ; 2 uses
  %i.pf = load ptr, ptr %i.pc, align 8, !tbaa !222 ; 2 uses
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph
  %i.pj = ashr exact i64 %i.pi, 2
  store i64 %i.pj, ptr %i.o, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  store i32 0, ptr %i.p, align 4, !tbaa !224
  %i.pk = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pk, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE7storageIN4test8internal20pointer_stable_mixinINS6_10value_typeIiEEEEEERNS_11storage_forIT_S1_SaINSt12remove_constISC_E4typeEEE4typeEj.exit304
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit307 unwind label %bb.ed

bb.ea:                                            ; preds = %_ZN4entt14basic_registryINS_6entityESaIS1_EE7storageIN4test8internal20pointer_stable_mixinINS6_10value_typeIiEEEEEERNS_11storage_forIT_S1_SaINSt12remove_constISC_E4typeEEE4typeEj.exit304
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit307 unwind label %bb.ed

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit307: ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  %i.pl = load i8, ptr %25, align 8, !tbaa !234, !range !235, !noundef !236
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %bb.eo, label %bb.ef

bb.eb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit297, %bb.dm
  %.pn94.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %_ZN7testing7MessageD2Ev.exit297 ], [ %.pn92, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %.loopexit.split-lp

bb.ec:                                            ; preds = %bb.dy
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea, %bb.dz
  %i.po = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn98 = phi { ptr, i32 } [ %i.po, %bb.ed ], [ %i.pn, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  br label %bb.er

bb.ef:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit307
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.pp = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.i308 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i308, label %_ZNK7testing15AssertionResult15failure_messageEv.exit309, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !216
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit309

_ZNK7testing15AssertionResult15failure_messageEv.exit309: ; preds = %bb.eh, %bb.eg
  %i.ps = phi ptr [ %i.pr, %bb.eh ], [ @.str.176, %bb.eg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1484, ptr noundef %i.ps)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit309
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.pt = load ptr, ptr %26, align 8, !tbaa !219  ; 3 uses
  %.not.i.i310 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i310, label %_ZN7testing7MessageD2Ev.exit312, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311: ; preds = %bb.ej
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !199
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(128) %i.pt) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit312

_ZN7testing7MessageD2Ev.exit312:                  ; preds = %bb.ej, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit315

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit309
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.ei
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #27
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn100 = phi { ptr, i32 } [ %i.pz, %bb.em ], [ %i.py, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.qa = load ptr, ptr %26, align 8, !tbaa !219  ; 3 uses
  %.not.i.i313 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i313, label %_ZN7testing7MessageD2Ev.exit315, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i314

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i314: ; preds = %bb.en
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !199
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8
  call void %i.qd(ptr noundef nonnull align 8 dereferenceable(128) %i.qa) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit315

_ZN7testing7MessageD2Ev.exit315:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i314, %bb.en, %bb.ek
  %.pn100.pn = phi { ptr, i32 } [ %i.px, %bb.ek ], [ %.pn100, %bb.en ], [ %.pn100, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #27
  br label %bb.er

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit307, %_ZN7testing7MessageD2Ev.exit312
  %i.qe = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !237 ; 4 uses
  %.not.i.i316 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i316, label %_ZN7testing15AssertionResultD2Ev.exit320, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !216 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i317: ; preds = %bb.ep
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !217
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i318

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i318: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i317
  call void @_ZdlPvm(ptr noundef nonnull %i.qf, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit320

_ZN7testing15AssertionResultD2Ev.exit320:         ; preds = %bb.eo, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit294, %_ZN7testing15AssertionResultD2Ev.exit271, %_ZN7testing15AssertionResultD2Ev.exit248, %_ZN7testing15AssertionResultD2Ev.exit225, %_ZN7testing15AssertionResultD2Ev.exit202, %_ZN7testing15AssertionResultD2Ev.exit179, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit320
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.er:                                            ; preds = %_ZN7testing7MessageD2Ev.exit315, %bb.ee
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %_ZN7testing7MessageD2Ev.exit315 ], [ %.pn98, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.er, %bb.eb, %bb.dj, %bb.cq, %bb.by, %bb.bf, %bb.an, %bb.u
  %.pn100.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn, %bb.er ], [ %.pn94.pn.pn, %bb.eb ], [ %.pn58.pn.pn, %bb.u ], [ %.pn88.pn.pn, %bb.dj ], [ %.pn82.pn.pn, %bb.cq ], [ %.pn76.pn.pn, %bb.by ], [ %.pn70.pn.pn, %bb.bf ], [ %.pn64.pn.pn, %bb.an ], [ %lpad.loopexit.split-lp461, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn100.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE7compactIJiEEEvv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEERDaj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef -1779859874) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !325
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !221  ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !222  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !223  ; 2 uses
  store i64 1048575, ptr %i.i, align 8, !tbaa !223
  %.not.i2 = icmp eq ptr %i.g, %i.h
  br i1 %.not.i2, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %1 = ptrtoint ptr %i.g to i64
  %2 = ptrtoint ptr %i.h to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 2
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !55

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0.i3 = phi i64 [ %i.k, %bb.c ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %i.k = add i64 %.0.i3, -1                       ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !254
  %i.n = icmp ugt i32 %i.m, -1048577
  br i1 %i.n, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !55

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !55

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.0.i.lcssa = phi i64 [ %.0.i3, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %.not2131.i = icmp eq i64 %i.j, 1048575
  br i1 %.not2131.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.critedge2.i, %.lr.ph.i
  %i.p = phi ptr [ %i.h, %.lr.ph.i ], [ %i.at, %.critedge2.i ] ; 2 uses
  %.133.i = phi i64 [ %.0.i.lcssa, %.lr.ph.i ], [ %.3.i, %.critedge2.i ] ; 3 uses
  %.03032.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.t, %.critedge2.i ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.03032.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254
  %i.s = and i32 %i.r, 1048575                    ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = icmp ult i64 %.03032.i, %.133.i
  br i1 %i.u, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %bb.d
  %i.v = add i64 %.133.i, -1                      ; 4 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %i.v, i64 noundef %.03032.i), !inline_history !56
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !222  ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.v
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !254 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.03032.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !254
  %i.ad = trunc i64 %.03032.i to i32
  %i.ae = and i32 %i.ad, 1048575
  %i.af = and i32 %i.ab, -1048576
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = and i32 %i.ab, 1048575
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = lshr i64 %i.ai, 12
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !301
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !251
  %i.an = and i64 %i.ai, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  store i32 %i.ag, ptr %i.ao, align 4, !tbaa !254
  %.not22.i6 = icmp eq i64 %i.v, 0
  br i1 %.not22.i6, label %.critedge2.i, label %.lr.ph8

bb.f:                                             ; preds = %.lr.ph8
  %.not22.i = icmp eq i64 %i.ap, 0
  br i1 %.not22.i, label %.critedge2.i, label %.lr.ph8, !llvm.loop !57

.lr.ph8:                                          ; preds = %bb.e, %bb.f
  %.2.i7 = phi i64 [ %i.ap, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %i.ap = add i64 %.2.i7, -1                      ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !254
  %i.as = icmp ugt i32 %i.ar, -1048577
  br i1 %i.as, label %bb.f, label %..critedge2.i.loopexit_crit_edge10, !llvm.loop !57

..critedge2.i.loopexit_crit_edge10:               ; preds = %.lr.ph8
  br label %.critedge2.i, !llvm.loop !57

.critedge2.i:                                     ; preds = %bb.f, %bb.e, %..critedge2.i.loopexit_crit_edge10, %bb.d
  %i.at = phi ptr [ %i.p, %bb.d ], [ %i.z, %bb.e ], [ %i.z, %..critedge2.i.loopexit_crit_edge10 ], [ %i.z, %bb.f ]
  %.3.i = phi i64 [ %.133.i, %bb.d ], [ 0, %bb.e ], [ %.2.i7, %..critedge2.i.loopexit_crit_edge10 ], [ 0, %bb.f ] ; 2 uses
  %.not21.i = icmp eq i32 %i.s, 1048575
  br i1 %.not21.i, label %._crit_edge.loopexit.i, label %bb.d, !llvm.loop !58

._crit_edge.loopexit.i:                           ; preds = %.critedge2.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !251
  %.pre34.i = load ptr, ptr %i.f, align 8, !tbaa !251
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge.i
  %i.au = phi ptr [ %i.g, %.critedge.i ], [ %.pre34.i, %._crit_edge.loopexit.i ]
  %i.av = phi ptr [ %i.h, %.critedge.i ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i64 [ %.0.i.lcssa, %.critedge.i ], [ %.3.i, %._crit_edge.loopexit.i ]
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %.1.lcssa.i ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.au
  br i1 %i.ax, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit, label %_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %._crit_edge.i
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !221
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit: ; preds = %bb.a, %._crit_edge.i, %_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt14basic_registryINS_6entityESaIS1_EE7compactIJEEEvv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !324  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit
  %.sroa.04.07 = phi ptr [ %i.be, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !317  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i8, ptr %i.h, align 8, !tbaa !325
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.b, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !221  ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !222  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !223  ; 2 uses
  store i64 1048575, ptr %i.o, align 8, !tbaa !223
  %.not.i12 = icmp eq ptr %i.m, %i.n
  br i1 %.not.i12, label %.critedge.i, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %bb.b
  %1 = ptrtoint ptr %i.m to i64
  %2 = ptrtoint ptr %i.n to i64
  %3 = sub i64 %1, %2
  %4 = ashr exact i64 %3, 2
  br label %.lr.ph15

bb.c:                                             ; preds = %.lr.ph15
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph15, !llvm.loop !55

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %bb.c
  %.0.i13 = phi i64 [ %i.q, %bb.c ], [ %4, %.lr.ph15.preheader ] ; 2 uses
  %i.q = add i64 %.0.i13, -1                      ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254
  %i.t = icmp ugt i32 %i.s, -1048577
  br i1 %i.t, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !55

..critedge.i_crit_edge:                           ; preds = %.lr.ph15
  br label %.critedge.i, !llvm.loop !55

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.0.i.lcssa = phi i64 [ %.0.i13, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %.not2131.i = icmp eq i64 %i.p, 1048575
  br i1 %.not2131.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.critedge2.i, %.lr.ph.i
  %i.v = phi ptr [ %i.n, %.lr.ph.i ], [ %i.az, %.critedge2.i ] ; 2 uses
  %.133.i = phi i64 [ %.0.i.lcssa, %.lr.ph.i ], [ %.3.i, %.critedge2.i ] ; 3 uses
  %.03032.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.z, %.critedge2.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.03032.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !254
  %i.y = and i32 %i.x, 1048575                    ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = icmp ult i64 %.03032.i, %.133.i
  br i1 %i.aa, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %bb.d
  %i.ab = add i64 %.133.i, -1                     ; 4 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !199
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef %i.ab, i64 noundef %.03032.i), !inline_history !56
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !222 ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ab
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !254 ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.03032.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !254
  %i.aj = trunc i64 %.03032.i to i32
  %i.ak = and i32 %i.aj, 1048575
  %i.al = and i32 %i.ah, -1048576
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = and i32 %i.ah, 1048575
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = lshr i64 %i.ao, 12
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !301
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !251
  %i.at = and i64 %i.ao, 4095
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  store i32 %i.am, ptr %i.au, align 4, !tbaa !254
  %.not22.i18 = icmp eq i64 %i.ab, 0
  br i1 %.not22.i18, label %.critedge2.i, label %.lr.ph21

bb.f:                                             ; preds = %.lr.ph21
  %.not22.i = icmp eq i64 %i.av, 0
  br i1 %.not22.i, label %.critedge2.i, label %.lr.ph21, !llvm.loop !57

.lr.ph21:                                         ; preds = %bb.e, %bb.f
  %.2.i19 = phi i64 [ %i.av, %bb.f ], [ %i.ab, %bb.e ] ; 2 uses
  %i.av = add i64 %.2.i19, -1                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !254
  %i.ay = icmp ugt i32 %i.ax, -1048577
  br i1 %i.ay, label %bb.f, label %..critedge2.i.loopexit_crit_edge23, !llvm.loop !57

..critedge2.i.loopexit_crit_edge23:               ; preds = %.lr.ph21
  br label %.critedge2.i, !llvm.loop !57

.critedge2.i:                                     ; preds = %bb.f, %bb.e, %..critedge2.i.loopexit_crit_edge23, %bb.d
  %i.az = phi ptr [ %i.v, %bb.d ], [ %i.af, %bb.e ], [ %i.af, %..critedge2.i.loopexit_crit_edge23 ], [ %i.af, %bb.f ]
  %.3.i = phi i64 [ %.133.i, %bb.d ], [ 0, %bb.e ], [ %.2.i19, %..critedge2.i.loopexit_crit_edge23 ], [ 0, %bb.f ] ; 2 uses
  %.not21.i = icmp eq i32 %i.y, 1048575
  br i1 %.not21.i, label %._crit_edge.loopexit.i, label %bb.d, !llvm.loop !58

._crit_edge.loopexit.i:                           ; preds = %.critedge2.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !251
  %.pre34.i = load ptr, ptr %i.l, align 8, !tbaa !251
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge.i
  %i.ba = phi ptr [ %i.m, %.critedge.i ], [ %.pre34.i, %._crit_edge.loopexit.i ]
  %i.bb = phi ptr [ %i.n, %.critedge.i ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i64 [ %.0.i.lcssa, %.critedge.i ], [ %.3.i, %._crit_edge.loopexit.i ]
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.1.lcssa.i ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bd, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit, label %_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %._crit_edge.i
  store ptr %i.bc, ptr %i.l, align 8, !tbaa !221
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7compactEv.exit: ; preds = %.lr.ph, %._crit_edge.i, %_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 32 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.d
  br i1 %i.bf, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN22Registry_AllAnyOf_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %2 = alloca %"class.entt::basic_registry", align 8 ; 24 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN4entt14basic_registryINS_6entityESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(336) %2, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.b = invoke noundef i32 @_ZN4entt16basic_sigh_mixinINS_13basic_storageINS_6entityES2_SaIS2_EEENS_14basic_registryIS2_S3_EEE8generateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.a)
          to label %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 14 uses

_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !308
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !309  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 4294967295
  %i.l = and i64 %i.k, 2515107422
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit
  %.07.in.i.i.i.i = phi ptr [ %i.m, %_ZN4entt14basic_registryINS_6entityESaIS1_EE6createEv.exit ], [ %i.p, %bb.c ]
  %.07.i.i.i.i = load i64, ptr %.07.in.i.i.i.i, align 8, !tbaa !223 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.07.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.07.i.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !224
  %i.s = icmp eq i32 %i.r, -1779859874
  br i1 %i.s, label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !312  ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  br label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i

_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i: ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !312
  br label %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i

_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i: ; preds = %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i, %bb.d
  %i.z = phi ptr [ %i.u, %bb.d ], [ %.pre.i.i, %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i ]
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.p, %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i ] ; 2 uses
  %i.aa = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.z
  br i1 %i.aa, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6all_ofIJiEEEbS1_.exit.thread, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEEPKDaj.exit.i

_ZNK4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEEPKDaj.exit.i: ; preds = %_ZNK4entt9dense_mapIjSt10shared_ptrINS_16basic_sparse_setINS_6entityESaIS3_EEEESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !317 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6all_ofIJiEEEbS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4entt14basic_registryINS_6entityESaIS1_EE6assureITkNS_17cvref_unqualifiedEiEEPKDaj.exit.i
  %i.ad = and i32 %i.b, 1048575
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = lshr i64 %i.ae, 12                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
end_hunk_1
begin_hunk_2_@_ZN7testing8internal18CmpHelperOpFailureIPKiDnEENS_15AssertionResultEPKcS6_RKT_RKT0_S6_:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #27, !inline_history !136
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i91, %.noexc94
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %6, align 8, !tbaa !219   ; 3 uses
  %.not.i.i3.i88 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i3.i88, label %_ZN7testing7MessageD2Ev.exit5.i90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i89: ; preds = %bb.ad
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !199
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(128) %i.ee) #27, !inline_history !136
  br label %_ZN7testing7MessageD2Ev.exit5.i90

_ZN7testing7MessageD2Ev.exit5.i90:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i89, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body95

bb.ae:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.af unwind label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ei = load ptr, ptr %18, align 8, !tbaa !216  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !217
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.en = load ptr, ptr %17, align 8, !tbaa !216  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !217
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !237 ; 4 uses
  %.not.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !216 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !217
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  ret void

bb.ah:                                            ; preds = %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.v
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.aj:                                            ; preds = %bb.y, %_ZN7testing8internal33FormatForComparisonFailureMessageIPKiDnEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.ak:                                            ; preds = %bb.ab
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.al:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIDnPKiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit, %bb.ae
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body95

.body95:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i90, %bb.al
  %eh.lpad-body96 = phi { ptr, i32 } [ %i.fd, %bb.al ], [ %i.ed, %_ZN7testing7MessageD2Ev.exit5.i90 ] ; 2 uses
  %i.fe = load ptr, ptr %18, align 8, !tbaa !216  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %.body95
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !217
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %.body95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ak ], [ %eh.lpad-body96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %eh.lpad-body96, %.body95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %.body77

.body77:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i73, %_ZN7testing7MessageD2Ev.exit5.i81, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.dc, %_ZN7testing7MessageD2Ev.exit5.i73 ], [ %i.fb, %bb.aj ], [ %i.do, %_ZN7testing7MessageD2Ev.exit5.i81 ] ; 2 uses
  %i.fj = load ptr, ptr %17, align 8, !tbaa !216  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.body77
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !217
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %.body77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %.body

.body:                                            ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %_ZN7testing7MessageD2Ev.exit5.i20, %_ZN7testing7MessageD2Ev.exit5.i40, %bb.ah, %_ZN7testing7MessageD2Ev.exit5.i62, %_ZN7testing7MessageD2Ev.exit6.i52, %_ZN7testing7MessageD2Ev.exit6.i30, %_ZN7testing7MessageD2Ev.exit6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.h, %_ZN7testing7MessageD2Ev.exit5.i ], [ %i.x, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.aj, %_ZN7testing7MessageD2Ev.exit5.i20 ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30 ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40 ], [ %i.cb, %_ZN7testing7MessageD2Ev.exit6.i52 ], [ %i.ez, %bb.ah ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i62 ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE12move_and_popEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !329  ; 9 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !328  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = add nsw i64 %i.h, -1                     ; 3 uses
  %.not = icmp eq i64 %1, %i.i
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -48 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -40
  %i.l = load i32, ptr %i.k, align 4, !tbaa !224  ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !308
  %i.p = load ptr, ptr %0, align 8, !tbaa !309    ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 4294967295
  %i.v = and i64 %i.u, %i.m
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %1 ; 8 uses
  %i.y = load i64, ptr %i.j, align 8, !tbaa !631
  store i64 %i.y, ptr %i.x, align 8, !tbaa !631
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.l, ptr %i.z, align 8, !tbaa !813
  %i.aa = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.j
  br i1 %.not.i.i.i, label %_ZN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEaSEOS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !333 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN4entt9basic_anyILm0ELm8EE24invoke_deleter_if_existsEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(29) %i.ab)
          to label %_ZN4entt9basic_anyILm0ELm8EE24invoke_deleter_if_existsEv.exit.i.i.i unwind label %bb.h, !inline_history !13

_ZN4entt9basic_anyILm0ELm8EE24invoke_deleter_if_existsEv.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !627 ; 2 uses
  switch i8 %i.af, label %bb.f [
    i8 2, label %bb.e
    i8 0, label %bb.g
  ]

bb.e:                                             ; preds = %_ZN4entt9basic_anyILm0ELm8EE24invoke_deleter_if_existsEv.exit.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !626
  %i.ai = invoke noundef ptr %i.ah(i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(29) %i.aa, ptr noundef nonnull align 8 dereferenceable(29) %i.ab)
          to label %._crit_edge.i.i.i unwind label %bb.h ; 0 uses

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = load i8, ptr %i.ae, align 4, !tbaa !627
  br label %bb.g

bb.f:                                             ; preds = %_ZN4entt9basic_anyILm0ELm8EE24invoke_deleter_if_existsEv.exit.i.i.i
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !251
  store ptr null, ptr %i.aa, align 8, !tbaa !251
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !814
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i, %_ZN4entt9basic_anyILm0ELm8EE24invoke_deleter_if_existsEv.exit.i.i.i
  %i.ak = phi i8 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ 0, %_ZN4entt9basic_anyILm0ELm8EE24invoke_deleter_if_existsEv.exit.i.i.i ], [ %i.af, %bb.f ]
  %i.al = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.an = load <2 x ptr>, ptr %i.al, align 8, !tbaa !251
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !251
  %i.ao = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !628
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !628
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i8 %i.ak, ptr %i.ar, align 4, !tbaa !627
  br label %_ZN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEaSEOS4_.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #30
  unreachable

_ZN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEaSEOS4_.exit: ; preds = %bb.b, %bb.g
  %i.au = load i64, ptr %i.w, align 8, !tbaa !223 ; 2 uses
  %.not1011 = icmp eq i64 %i.au, %i.i
  br i1 %.not1011, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEaSEOS4_.exit
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !328
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.aw = phi i64 [ %i.au, %.lr.ph ], [ %i.ay, %bb.i ]
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !223 ; 2 uses
  %.not10 = icmp eq i64 %i.ay, %i.i
  br i1 %.not10, label %._crit_edge, label %bb.i, !llvm.loop !3252

._crit_edge:                                      ; preds = %bb.i, %_ZN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEaSEOS4_.exit
  %.0.lcssa = phi ptr [ %i.w, %_ZN4entt8internal14dense_map_nodeIjNS_9basic_anyILm0ELm8EEEEaSEOS4_.exit ], [ %i.ax, %bb.i ]
  store i64 %1, ptr %.0.lcssa, align 8, !tbaa !223
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !329
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a
  %i.az = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -48
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !329
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !333 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE8pop_backEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -32
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(29) %i.bd)
          to label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE8pop_backEv.exit unwind label %bb.l, !inline_history !13

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #30
  unreachable

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE20insert_or_do_nothingIRS7_JRKSt15in_place_type_tIcEcEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.433", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.1409", align 8   ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !224    ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.e = load ptr, ptr %0, align 8, !tbaa !309    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, %i.b                       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i = phi ptr [ %i.l, %bb.a ], [ %i.o, %bb.c ]
  %.07.i = load i64, ptr %.07.in.i, align 8, !tbaa !223 ; 2 uses
  %.not.i = icmp eq i64 %.07.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.07.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !224
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit, label %bb.b, !llvm.loop !82

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !329  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  br label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !329
  br label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit

_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit: ; preds = %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit, %bb.d
  %i.y = phi ptr [ %i.t, %bb.d ], [ %.pre, %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit ] ; 10 uses
  %.sroa.0.1.i = phi ptr [ %i.x, %bb.d ], [ %i.o, %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = icmp eq ptr %.sroa.0.1.i, %i.y
  br i1 %i.aa, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE16constrained_findIjEEDaRKT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %1, ptr %4, align 8, !tbaa !287, !alias.scope !3257
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %3, ptr %5, align 8, !tbaa !290, !alias.scope !3258
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.ab, align 8, !tbaa !812, !alias.scope !3258
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !334
  %.not.i14 = icmp eq ptr %i.y, %i.ad
  br i1 %.not.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !223
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !631
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.a, ptr %i.af, align 8, !tbaa !813
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  store i64 0, ptr %i.ag, align 8
  store ptr @_ZN4entt9basic_anyILm0ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEcEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.ah, align 8, !tbaa !626
  store i32 -1471413475, ptr %i.aj, align 8, !tbaa !628
  store ptr @_ZN4entt9basic_anyILm0ELm8EE13basic_deleterITkNS_17cvref_unqualifiedEcEEvRKS1_, ptr %i.ai, align 8, !tbaa !333
  store i8 1, ptr %i.ak, align 4, !tbaa !627
  %i.al = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #29 ; 2 uses
  %i.am = load i8, ptr %3, align 1, !tbaa !217
  store i8 %i.am, ptr %i.al, align 1, !tbaa !217
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !814
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !329
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  store ptr %i.ao, ptr %i.z, align 8, !tbaa !329
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tIcEOcEEEEERS5_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tIcEOcEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.pre22 = load ptr, ptr %i.z, align 8, !tbaa !329
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tIcEOcEEEEERS5_DpOT_.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tIcEOcEEEEERS5_DpOT_.exit: ; preds = %bb.f, %bb.g
  %i.ap = phi ptr [ %i.ao, %bb.f ], [ %.pre22, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !328 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = sdiv exact i64 %i.at, 48                ; 2 uses
  %i.av = add nsw i64 %i.au, -1
  %i.aw = load ptr, ptr %0, align 8, !tbaa !309   ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.k
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !223
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = uitofp i64 %i.bc to float
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load float, ptr %i.be, align 8, !tbaa !348
  %i.bg = fmul float %i.bf, %i.bd
  %i.bh = fptoui float %i.bg to i64
  %i.bi = icmp ugt i64 %i.au, %i.bh
  br i1 %i.bi, label %bb.h, label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE18rehash_if_requiredEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tIcEOcEEEEERS5_DpOT_.exit
  %i.bj = ashr exact i64 %i.bb, 2
  call void @_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %i.bj)
  %.pre23 = load ptr, ptr %i.m, align 8, !tbaa !328 ; 2 uses
  %.pre24 = load ptr, ptr %i.z, align 8, !tbaa !329
  %.pre25 = ptrtoint ptr %.pre24 to i64
  %.pre26 = ptrtoint ptr %.pre23 to i64
  %.pre28 = sub i64 %.pre25, %.pre26
  br label %_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE18rehash_if_requiredEv.exit

_ZN4entt9dense_mapIjNS_9basic_anyILm0ELm8EEESt8identitySt8equal_toIvESaISt4pairIKjS2_EEE18rehash_if_requiredEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tIcEOcEEEEERS5_DpOT_.exit, %bb.h
  %.pre-phi29 = phi i64 [ %i.at, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEESaIS5_EE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJRKjEESD_IJRKSt15in_place_type_tIcEOcEEEEERS5_DpOT_.exit ], [ %.pre28, %bb.h ]
end_hunk_2
