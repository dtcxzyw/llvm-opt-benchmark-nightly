inline.NumInlined: 8840
inline.NumDeleted: 3439
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6google8protobuf8compiler20CommandLineInterface24GenerateCodeFromResponseERKNS1_21CodeGeneratorResponseEPNS1_16GeneratorContextEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSD_:bb.a

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cn, ptr %8, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.dm = phi ptr [ %i.cv, %bb.s ], [ %i.cn, %bb.t ], [ %i.cy, %bb.o ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.co, align 8, !tbaa !101
  store i8 0, ptr %i.dm, align 1, !tbaa !34
  %i.dn = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cn
  br i1 %i.do, label %.critedge38.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dp = load i64, ptr %i.cn, align 8, !tbaa !34
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #42
  br label %.critedge38.thread

.critedge38.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit63

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EE5resetEPS3_.exit51: ; preds = %bb.k, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.065.2 = phi ptr [ %.sroa.065.0109, %bb.l ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cj, %bb.k ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.dr = load atomic i8, ptr @_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E monotonic, align 1, !range !75, !noundef !76
  store ptr %i.j, ptr %9, align 8, !tbaa !663
  store ptr %i.j, ptr %i.k, align 8, !tbaa !666
  store ptr %.sroa.065.2, ptr %i.l, align 8, !tbaa !667
  store i8 0, ptr %i.m, align 8, !tbaa !668
  store i8 0, ptr %i.n, align 1, !tbaa !669
  store i8 %i.dr, ptr %i.o, align 2, !tbaa !670
  store i8 0, ptr %i.p, align 1, !tbaa !671
  store ptr %i.j, ptr %i.i, align 8, !tbaa !192
  %i.ds = load ptr, ptr %.sroa.065.2, align 8, !tbaa !82
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = invoke noundef i64 %i.du(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.065.2)
          to label %.noexc56 unwind label %bb.z, !inline_history !920

.noexc56:                                         ; preds = %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EE5resetEPS3_.exit51
  store i64 %i.dv, ptr %i.q, align 8, !tbaa !672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.dw = load ptr, ptr %.sroa.065.2, align 8, !tbaa !82
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef zeroext i1 %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.065.2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %.noexc57 unwind label %bb.z, !inline_history !920

.noexc57:                                         ; preds = %.noexc56
  %i.ea = load i32, ptr %i.b, align 4             ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  %i.ec = select i1 %i.dz, i1 %i.eb, i1 false, !prof !41
  br i1 %i.ec, label %bb.u, label %.noexc57._crit_edge, !prof !41

.noexc57._crit_edge:                              ; preds = %.noexc57
  %.pre122 = load ptr, ptr %i.i, align 8, !tbaa !674
  %.pre123 = load ptr, ptr %9, align 8, !tbaa !663
  br label %bb.v

bb.u:                                             ; preds = %.noexc57
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !179 ; 3 uses
  %i.ee = icmp samesign ugt i32 %i.ea, 16         ; 3 uses
  %i.ef = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ef
  %.sink9.i.i.i = select i1 %i.ee, ptr %i.eh, ptr %i.ei ; 2 uses
  %.sink.i.i.i = select i1 %i.ee, ptr null, ptr %i.ed
  %.0.i.i.i = select i1 %i.ee, ptr %i.ed, ptr %i.j ; 2 uses
  store ptr %.sink9.i.i.i, ptr %9, align 8, !tbaa !663
  store ptr %.sink.i.i.i, ptr %i.k, align 8, !tbaa !666
  store ptr %.0.i.i.i, ptr %i.i, align 8, !tbaa !674
  br label %bb.v

bb.v:                                             ; preds = %.noexc57._crit_edge, %bb.u
  %i.ej = phi ptr [ %.pre123, %.noexc57._crit_edge ], [ %.sink9.i.i.i, %bb.u ]
  %i.ek = phi ptr [ %.pre122, %.noexc57._crit_edge ], [ %.0.i.i.i, %bb.u ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.el = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !313
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = and i64 %i.en, -4
  %i.ep = inttoptr i64 %i.eo to ptr               ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !105 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !101 ; 3 uses
  %i.et = ptrtoint ptr %i.ej to i64
  %i.eu = ptrtoint ptr %i.ek to i64
  %i.ev = sub i64 %i.et, %i.eu
  %sext.i = shl i64 %i.es, 32
  %i.ew = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ex = icmp slt i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.w, label %bb.x, !prof !42

bb.w:                                             ; preds = %bb.v
  %i.ey = trunc i64 %i.es to i32
  %i.ez = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef %i.eq, i32 noundef %i.ey, ptr noundef %i.ek)
          to label %bb.y unwind label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.fa = and i64 %i.es, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr align 1 %i.eq, i64 %i.fa, i1 false)
  %i.fb = getelementptr inbounds i8, ptr %i.ek, i64 %i.ew
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i.i.i58 = phi ptr [ %i.fb, %bb.x ], [ %i.ez, %bb.w ]
  store ptr %.0.i.i.i58, ptr %i.i, align 8, !tbaa !674
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fc = load i32, ptr %i.d, align 8, !tbaa !178
  %i.fd = sext i32 %i.fc to i64
  %.not.not = icmp slt i64 %indvars.iv.next, %i.fd
  br i1 %.not.not, label %bb.b, label %_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i62, !llvm.loop !921

bb.z:                                             ; preds = %.noexc56, %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EE5resetEPS3_.exit51
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.thread77

bb.aa:                                            ; preds = %bb.w
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #37
  br label %.thread77

.thread77:                                        ; preds = %bb.z, %bb.aa
  %.pn32 = phi { ptr, i32 } [ %i.ff, %bb.aa ], [ %i.fe, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i

.thread88:                                        ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit

bb.ab:                                            ; preds = %.noexc.i
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %.not.i60 = icmp eq ptr %.sroa.065.0109, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i

_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i: ; preds = %.thread77, %bb.ab
  %.pn34.pn82 = phi { ptr, i32 } [ %.pn32, %.thread77 ], [ %i.fg, %bb.ab ]
  %.sroa.065.381 = phi ptr [ %.sroa.065.2, %.thread77 ], [ %.sroa.065.0109, %bb.ab ] ; 2 uses
  %i.fh = load ptr, ptr %.sroa.065.381, align 8, !tbaa !82
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.065.381) #37, !inline_history !922
  br label %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit: ; preds = %.body, %.thread88, %bb.ab, %_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i
  %.pn34.pn76 = phi { ptr, i32 } [ %i.bq, %.thread88 ], [ %i.fg, %bb.ab ], [ %.pn34.pn82, %_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i ], [ %i.cq, %.body ]
  resume { ptr, i32 } %.pn34.pn76

_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i62: ; preds = %bb.y
  %i.fk = load ptr, ptr %.sroa.065.2, align 8, !tbaa !82
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.065.2) #37, !inline_history !922
  br label %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit63

_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit63: ; preds = %bb.a, %.critedge38.thread, %_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i62
  %.not100 = phi i1 [ false, %.critedge38.thread ], [ true, %_ZNKSt14default_deleteIN6google8protobuf2io20ZeroCopyOutputStreamEEclEPS3_.exit.i62 ], [ true, %bb.a ]
  ret i1 %.not100
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #24

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051213flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18container_internal10StringHashENS8_8StringEqESaIS7_EECI2NS8_12raw_hash_setINS8_17FlatHashSetPolicyIS7_EES9_SA_SB_EEIPKcTnNSt9enable_ifIXntsr3std7is_sameIT_S7_EE5valueEiE4typeELi0ETnNSI_IXsr10InsertableISJ_EE5valueEiE4typeELi0EEESt16initializer_listISJ_EmRKS9_RKSA_RKSB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.idx.i = shl nuw nsw i64 %2, 3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.d = lshr i64 -2305843009213693952, %i.c
  %i.e = icmp ugt i64 %2, %i.d
  %.neg.i.i.i.i = sext i1 %i.e to i64
  %i.f = add nsw i64 %i.c, %.neg.i.i.i.i
  %i.g = lshr i64 -1, %i.f
  br label %bb.d

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.i.i: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0.i.ph.i.i = phi i64 [ %i.g, %bb.c ], [ %3, %bb.a ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i12.i.i, align 8
  tail call void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %.0.i.ph.i.i)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i: ; preds = %bb.d, %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.i.i
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIPKPKcEEvT_SK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2IPKcTnNSt9enable_ifIXntsr3std7is_sameIT_S9_EE5valueEiE4typeELi0ETnNSI_IXsr10InsertableISJ_EE5valueEiE4typeELi0EEESt16initializer_listISJ_EmRKSB_RKSC_RKSD_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #37
  resume { ptr, i32 } %i.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2IPKcTnNSt9enable_ifIXntsr3std7is_sameIT_S9_EE5valueEiE4typeELi0ETnNSI_IXsr10InsertableISJ_EE5valueEiE4typeELi0EEESt16initializer_listISJ_EmRKSB_RKSC_RKSD_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #24

declare void @_ZN6google8protobuf8compiler10SubprocessC1Ev(ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #2

declare void @_ZN6google8protobuf8compiler10Subprocess5StartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10SearchModeE(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8compiler10Subprocess11CommunicateERKNS0_7MessageEPS3_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8compiler10SubprocessD1Ev(ptr noundef nonnull align 4 dead_on_return(12) dereferenceable(12)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8compiler21CodeGeneratorResponseD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

declare noundef zeroext i1 @_ZN6google8protobuf8compiler12GenerateCodeERKNS1_20CodeGeneratorRequestERKNS1_13CodeGeneratorEPNS1_21CodeGeneratorResponseEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindMessageTypeByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120), i64, ptr) local_unnamed_addr #2

declare void @_ZN6google8protobuf21DynamicMessageFactoryC1EPKNS0_14DescriptorPoolE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf21DynamicMessageFactory12GetPrototypeEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #2

declare void @_ZN6google8protobuf2io15FileInputStreamC1Eii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN6google8protobuf10TextFormat6ParserC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf10TextFormat6Parser5ParseEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler20CommandLineInterface12ErrorPrinterD2Ev(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6google8protobuf14DescriptorPool14ErrorCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6google8protobuf2io14ErrorCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #37
  tail call void @_ZN6google8protobuf8compiler23MultiFileErrorCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #37
  ret void
}

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite30ParsePartialFromZeroCopyStreamEPNS0_2io19ZeroCopyInputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6google8protobuf11MessageLite13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK6google8protobuf7Message25InitializationErrorStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6google8protobuf11MessageLite29SerializePartialToCodedStreamEPNS0_2io17CodedOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf10TextFormat5PrintERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf21DynamicMessageFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS8_St6vectorIS8_SE_EEEEEvT_SO_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not9 = icmp eq ptr %1, %2
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE7emplaceIJRKS8_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSF_8iteratorEbEDpOSK_.exit
  %.sroa.02.010 = phi ptr [ %1, %.lr.ph ], [ %i.bs, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE7emplaceIJRKS8_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSF_8iteratorEbEDpOSK_.exit ] ; 4 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !7, !noalias !923 ; 5 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ult i64 %i.d, 2
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !26, !noalias !936
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 131072, ptr %i.b, align 8, !tbaa !30, !noalias !936
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !31, !noalias !936 ; 2 uses
  %i.i = load ptr, ptr %.sroa.02.010, align 8, !tbaa !31, !noalias !936 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE7emplaceIJRKS8_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSF_8iteratorEbEDpOSK_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = xor i64 %i.k, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.m = mul i64 %i.l, -2543921745674291987
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, 6679450291180483821
  %i.q = lshr i64 %i.p, 56
  %i.r = trunc nuw i64 %i.q to i8
  %i.s = and i8 %i.r, 127
  %i.t = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.u = xor i64 %i.t, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.v = mul i64 %i.u, -2543921745674291987
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = xor i64 %i.w, %i.t
  %i.y = mul i64 %i.x, -2543921745674291987
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i8 noundef signext %i.s), !noalias !936
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !34, !noalias !936
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aa
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !34, !noalias !939 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !939
  %i.ad = load ptr, ptr %.sroa.02.010, align 8, !tbaa !31, !noalias !939 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = xor i64 %i.ae, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ag = mul i64 %i.af, -2543921745674291987
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = xor i64 %i.ah, %i.ae
  %i.aj = mul i64 %i.ai, -2543921745674291987
  %i.ak = tail call noundef i64 @llvm.bswap.i64(i64 %i.aj) ; 3 uses
  %i.al = load i64, ptr %i.b, align 8, !tbaa !26, !noalias !942
  %i.am = and i64 %i.al, 65535
  %i.an = lshr i64 %i.ak, 7
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = trunc i64 %i.ak to i8
  %i.aq = and i8 %i.ap, 127
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !34, !noalias !939 ; 2 uses
  %i.ar = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi i64 [ %i.ao, %bb.g ], [ %i.bq, %bb.i ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.g ], [ %i.bp, %bb.i ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.d             ; 5 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1), !noalias !939
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !34, !noalias !939 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.as, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.ax, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.bg, %.critedge.i ], [ %i.ax, %bb.h ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.7.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.d
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31, !noalias !939
  %i.be = icmp eq ptr %i.bd, %i.ad
  br i1 %i.be, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE7emplaceIJRKS8_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSF_8iteratorEbEDpOSK_.exit, label %.critedge.i, !prof !41

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bf = add i16 %.sroa.033.060.i, -1
  %i.bg = and i16 %i.bf, %.sroa.033.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.h
  %i.bh = icmp eq <16 x i8> %i.av, splat (i8 -128)
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRA1_KcS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !105, !alias.scope !1069, !noalias !1072
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !34, !alias.scope !1072, !noalias !1069
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !34, !alias.scope !1069, !noalias !1072
  %.phi.trans.insert5.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %.pre6.i.i.i.i37 = load i64, ptr %.phi.trans.insert5.i.i.i.i36, align 8, !tbaa !101, !alias.scope !1072, !noalias !1069
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35, %bb.k
  %i.cq = phi i64 [ %i.cm, %bb.k ], [ %.pre6.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !101, !alias.scope !1069, !noalias !1072
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !105, !alias.scope !1072, !noalias !1069
  store i64 0, ptr %i.cr, align 8, !tbaa !101, !alias.scope !1072, !noalias !1069
  store i8 0, ptr %i.cj, align 8, !tbaa !34, !alias.scope !1072, !noalias !1069
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 64 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.ct, %i.c
  br i1 %.not.i.i.i39, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, label %.lr.ph.i.i.i28, !llvm.loop !1056

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.bs, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.cu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.d, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !260
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.cy) #42
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, %bb.l
  store ptr %i.q, ptr %0, align 8, !tbaa !257
  store ptr %.0.lcssa.i.i.i40, ptr %i.b, align 8, !tbaa !258
  %i.cz = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.m
  store ptr %i.cz, ptr %i.cv, align 8, !tbaa !260
  ret void

bb.m:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %.noexc.i.i
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #37 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #42
  invoke void @__cxa_rethrow() #41
          to label %bb.q unwind label %bb.m

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.da

bb.p:                                             ; preds = %bb.m
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #39
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable
}

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite23ParseFromFileDescriptorEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf24SimpleDescriptorDatabase3AddERKNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #2

declare void @_ZN6google8protobuf24SimpleDescriptorDatabaseC1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

declare { ptr, ptr } @_ZNK6google8protobuf10FeatureSet11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN6google8protobuf18FeatureSetDefaultsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN6google8protobuf18FeatureSetDefaults12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf18FeatureSetDefaults8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf18Edition_descriptorEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8internal14ParseNamedEnumEPKNS0_14EnumDescriptorESt17basic_string_viewIcSt11char_traitsIcEEPi(ptr noundef, i64, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf8compiler12_GLOBAL__N_122ContainsProto3OptionalEPKNS0_10DescriptorE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !694  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !703
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

.preheader:                                       ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !714  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph27, label %.thread

.lr.ph27:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !717
  %wide.trip.count35 = zext nneg i32 %i.g to i64
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 8
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.c, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 16
  %.not.i18 = icmp eq i8 %i.q, 0
  br i1 %.not.i18, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit, label %.thread

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit: ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !1075

bb.d:                                             ; preds = %bb.d, %.lr.ph27
  %indvars.iv32 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next33, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.j, i64 %indvars.iv32
  %i.s = tail call fastcc noundef zeroext i1 @_ZN6google8protobuf8compiler12_GLOBAL__N_122ContainsProto3OptionalEPKNS0_10DescriptorE(ptr noundef %i.r) ; 2 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  %or.cond = select i1 %i.s, i1 true, i1 %exitcond36.not
  br i1 %or.cond, label %.thread, label %bb.d, !llvm.loop !1076

.thread:                                          ; preds = %bb.c, %bb.d, %.preheader
  %.2 = phi i1 [ false, %.preheader ], [ %i.s, %bb.d ], [ true, %bb.c ]
  ret i1 %.2
}

declare noundef i32 @_ZNK6google8protobuf14FileDescriptor7editionEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZN6google8protobuf17FileDescriptorSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS3_10StringHashENS3_8StringEqESaISC_IKSB_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSN_SO_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS2_10StringHashENS2_8StringEqESaISB_IKSA_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSM_SN_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !34
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #42
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS2_10StringHashENS2_8StringEqESaISB_IKSA_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSM_SN_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS2_10StringHashENS2_8StringEqESaISB_IKSA_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSM_SN_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare void @_ZN6google8protobuf8compiler20CodeGeneratorRequestC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2IN9__gnu_cxx17__normal_iteratorIPKS9_St6vectorIS9_SD_EEEEET_SN_mRKSB_RKSC_RKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.std::pair.517", align 8    ; 5 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEEEmT_SH_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = ashr exact i64 %i.e, 5                   ; 2 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true) ; 2 uses
  %i.h = lshr i64 -2305843009213693952, %i.g
  %i.i = icmp ugt i64 %i.f, %i.h
  %.neg.i.i = sext i1 %i.i to i64
  %i.j = add nsw i64 %i.g, %.neg.i.i
  %i.k = lshr i64 -1, %i.j
  br label %bb.d

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEEEmT_SH_m.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0.i.ph = phi i64 [ %i.k, %bb.c ], [ %3, %bb.a ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i15, align 8
  tail call void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %.0.i.ph)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEEEmT_SH_m.exit, %bb.d
  %.not4.i = icmp eq ptr %1, %2
  br i1 %.not4.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS9_St6vectorIS9_SD_EEEEEvT_SN_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRKS9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSJ_.exit.i, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ab, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRKS9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSJ_.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.517") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.05.i)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  %i.m = load i8, ptr %i.l, align 8, !tbaa !773, !range !75, !alias.scope !1092, !noundef !76
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRKS9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSJ_.exit.i

bb.f:                                             ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1092 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.o, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !132
  %i.p = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !105, !noalias !1092 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !101, !noalias !1092 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !1092
  store i64 %i.r, ptr %i.a, align 8, !tbaa !30, !noalias !1092
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.t, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !105
  %i.u = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !1092
  store i64 %i.u, ptr %i.o, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc13, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc13 ], [ %i.o, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !34
  store i8 %i.w, ptr %i.v, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !1092 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !101
  %i.z = load ptr, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !1092
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRKS9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSJ_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRKS9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSJ_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10emplace_atIJRKS9_EEEvNSE_8iteratorEDpOT_.exit.i.i.i.i.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 32 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ab, %2
  br i1 %.not.i12, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS9_St6vectorIS9_SD_EEEEEvT_SN_.exit, label %bb.e, !llvm.loop !1093

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS9_St6vectorIS9_SD_EEEEEvT_SN_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRKS9_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSJ_.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #37
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #30

declare void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv(ptr noundef %0, ptr noundef %1) #7 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.a, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19transfer_n_slots_fnEPvSF_SF_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit
  %.014 = phi i64 [ %i.m, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.o, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit ], [ %1, %bb.a ] ; 5 uses
  %.01012 = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit ], [ %2, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 3 uses
  store ptr %i.a, ptr %.0913, align 8, !tbaa !132
  %i.b = load ptr, ptr %.01012, align 8, !tbaa !105 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.0913, align 8, !tbaa !105
  %i.i = load i64, ptr %i.c, align 8, !tbaa !34
  store i64 %i.i, ptr %i.a, align 8, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !101
  store ptr %i.c, ptr %.01012, align 8, !tbaa !105
  store i64 0, ptr %i.j, align 8, !tbaa !101
  store i8 0, ptr %i.c, align 8, !tbaa !34
  %i.m = add i64 %.014, -1                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1094

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSK_PFvSK_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.063 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.063
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.063 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
end_hunk_1
