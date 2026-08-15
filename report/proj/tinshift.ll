inline.NumInlined: 3866
inline.NumDeleted: 1338
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN13proj_nlohmann6detail9exception4nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a
  %i.fs = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.d
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.fu = load i64, ptr %i.d, align 8, !tbaa !16
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !14
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !8
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !16
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !15
  store ptr %i.v, ptr %i.s, align 8, !tbaa !8
  store i64 0, ptr %i.ac, align 8, !tbaa !15
  store i8 0, ptr %i.v, align 8, !tbaa !16
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !14
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !8  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !15 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !8
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !16
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !15
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !8
  store i64 0, ptr %i.as, align 8, !tbaa !15
  store i8 0, ptr %i.al, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13proj_nlohmann6detail10type_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #28, !inline_history !343
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #28, !inline_history !343
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZNK13proj_nlohmann6detail9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #28
  ret ptr %i.b
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13proj_nlohmann6detail9exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13proj_nlohmann6detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #28, !inline_history !343
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #28, !inline_history !343
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERNS3_4NodeERKjRKNS1_7RectObjE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.osgeo::proj::QuadTree::QuadTree<unsigned int>::Node", align 16 ; 10 uses
  %5 = alloca %"struct.osgeo::proj::QuadTree::QuadTree<unsigned int>::Node", align 8 ; 11 uses
  %6 = alloca %"struct.osgeo::proj::QuadTree::QuadTree<unsigned int>::Node", align 8 ; 11 uses
  %7 = alloca %"struct.osgeo::proj::QuadTree::QuadTree<unsigned int>::Node", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !344  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %tailrecurse._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = load double, ptr %3, align 8, !tbaa !257
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %.preheader

tailrecurse.loopexit:                             ; preds = %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit58
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.063.0161, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !344  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.063.0161, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !344  ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %tailrecurse._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %tailrecurse.loopexit
  %i.o = phi ptr [ %i.d, %.preheader.lr.ph ], [ %i.m, %tailrecurse.loopexit ]
  %i.p = phi ptr [ %i.b, %.preheader.lr.ph ], [ %i.k, %tailrecurse.loopexit ]
  %.tr153163 = phi ptr [ %1, %.preheader.lr.ph ], [ %.sroa.063.0161, %tailrecurse.loopexit ]
  br label %bb.af

tailrecurse._crit_edge:                           ; preds = %tailrecurse.loopexit, %bb.a
  %.tr153.lcssa162 = phi ptr [ %1, %bb.a ], [ %.sroa.063.0161, %tailrecurse.loopexit ] ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.tr153.lcssa162, i64 56 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.tr153.lcssa162, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr153.lcssa162, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !345
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !234
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !246
  %i.ab = zext i32 %i.aa to i64
  %.not = icmp ult i64 %i.y, %i.ab
  br i1 %.not, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.ac = load <2 x double>, ptr %.tr153.lcssa162, align 8, !tbaa !150 ; 4 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 1 ; 11 uses
  %i.ae = extractelement <2 x double> %i.ac, i64 0 ; 10 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr153.lcssa162, i64 16
  %i.af = load <2 x double>, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !150 ; 4 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1 ; 11 uses
  %i.ah = extractelement <2 x double> %i.af, i64 0 ; 10 uses
  %foldExtExtBinop = fsub <2 x double> %i.af, %i.ac
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 4 uses
  %i.aj = fsub double %i.ag, %i.ad                ; 4 uses
  %i.ak = fcmp ogt double %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load double, ptr %i.al, align 8, !tbaa !256 ; 12 uses
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.am, double %i.ae) ; 2 uses
  %i.ao = fneg double %i.ai
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.am, double %i.ah)
  %.pre = fsub double %i.an, %i.ae
  br label %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.am, double %i.ad) ; 2 uses
  %i.ar = fneg double %i.aj
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.am, double %i.ag)
  %.pre169 = fsub double %i.aq, %i.ad
  br label %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit

_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit: ; preds = %bb.c, %bb.d
  %.pre-phi170 = phi double [ %i.aj, %bb.c ], [ %.pre169, %bb.d ] ; 3 uses
  %.pre-phi = phi double [ %.pre, %bb.c ], [ %i.ai, %bb.d ] ; 3 uses
  %.sroa.9130.0 = phi double [ %i.ad, %bb.c ], [ %i.as, %bb.d ] ; 6 uses
  %.sroa.0129.0 = phi double [ %i.ap, %bb.c ], [ %i.ae, %bb.d ] ; 6 uses
  %.sroa.16.0 = phi double [ %i.ag, %bb.c ], [ %i.aq, %bb.d ] ; 5 uses
  %.sroa.11.0 = phi double [ %i.an, %bb.c ], [ %i.ah, %bb.d ] ; 5 uses
  %i.at = fcmp ogt double %.pre-phi, %.pre-phi170
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit
  %i.au = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.am, double %i.ae)
  %i.av = fneg double %.pre-phi
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.am, double %.sroa.11.0)
  br label %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit48

bb.f:                                             ; preds = %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit
  %i.ax = tail call double @llvm.fmuladd.f64(double %.pre-phi170, double %i.am, double %i.ad)
  %i.ay = fneg double %.pre-phi170
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.am, double %.sroa.16.0)
  br label %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit48

_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit48: ; preds = %bb.e, %bb.f
  %.sroa.10121.0 = phi double [ %i.au, %bb.e ], [ %.sroa.11.0, %bb.f ] ; 3 uses
  %.sroa.13125.0 = phi double [ %.sroa.16.0, %bb.e ], [ %i.ax, %bb.f ] ; 3 uses
  %.sroa.099.0 = phi double [ %i.aw, %bb.e ], [ %i.ae, %bb.f ] ; 3 uses
  %.sroa.9102.0 = phi double [ %i.ad, %bb.e ], [ %i.az, %bb.f ] ; 3 uses
  %i.ba = fsub double %i.ah, %.sroa.0129.0        ; 3 uses
  %i.bb = fsub double %i.ag, %.sroa.9130.0        ; 3 uses
  %i.bc = fcmp ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit48
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.am, double %.sroa.0129.0)
  %i.be = fneg double %i.ba
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %i.am, double %i.ah)
  br label %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit49

bb.h:                                             ; preds = %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit48
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.am, double %.sroa.9130.0)
  %i.bh = fneg double %i.bb
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.am, double %i.ag)
  br label %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit49

_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit49: ; preds = %bb.g, %bb.h
  %.sroa.10.0 = phi double [ %i.bd, %bb.g ], [ %i.ah, %bb.h ] ; 3 uses
  %.sroa.13.0 = phi double [ %i.ag, %bb.g ], [ %i.bg, %bb.h ] ; 3 uses
  %.sroa.074.0 = phi double [ %i.bf, %bb.g ], [ %.sroa.0129.0, %bb.h ] ; 3 uses
  %.sroa.977.0 = phi double [ %.sroa.9130.0, %bb.g ], [ %i.bi, %bb.h ] ; 3 uses
  %or.cond = fcmp uno double %i.ae, %i.ad
  %i.bj = fcmp une double %i.ah, %.sroa.10121.0
  %or.cond140 = select i1 %or.cond, i1 true, i1 %i.bj
  %i.bk = fcmp une double %i.ag, %.sroa.13125.0
  %or.cond141 = select i1 %or.cond140, i1 true, i1 %i.bk
  br i1 %or.cond141, label %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit.thread, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread

_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit.thread: ; preds = %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit49
  %i.bl = fcmp une double %i.ae, %.sroa.099.0
  %i.bm = fcmp une double %i.ad, %.sroa.9102.0
  %or.cond142 = select i1 %i.bl, i1 true, i1 %i.bm
  %i.bn = fcmp une double %i.ah, %.sroa.11.0
  %or.cond143 = or i1 %i.bn, %or.cond142
  %i.bo = fcmp une double %i.ag, %.sroa.16.0
  %or.cond144 = or i1 %i.bo, %or.cond143
  br i1 %or.cond144, label %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit50.thread, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread

_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit50.thread: ; preds = %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit.thread
  %i.bp = fcmp une double %i.ae, %.sroa.0129.0
  %i.bq = fcmp une double %i.ad, %.sroa.9130.0
  %or.cond145 = select i1 %i.bp, i1 true, i1 %i.bq
  %i.br = fcmp une double %i.ah, %.sroa.10.0
  %or.cond146 = select i1 %or.cond145, i1 true, i1 %i.br
  %i.bs = fcmp une double %i.ag, %.sroa.13.0
  %or.cond147 = select i1 %or.cond146, i1 true, i1 %i.bs
  br i1 %or.cond147, label %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit51.thread, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread

_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit51.thread: ; preds = %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit50.thread
  %i.bt = fcmp une double %i.ae, %.sroa.074.0
  %i.bu = fcmp une double %i.ad, %.sroa.977.0
  %or.cond148 = select i1 %i.bt, i1 true, i1 %i.bu
  %i.bv = fcmp uno double %i.ag, %i.ah
  %or.cond150 = or i1 %i.bv, %or.cond148
  br i1 %or.cond150, label %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit52.thread, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread

_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit52.thread: ; preds = %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit51.thread
  %i.bw = load double, ptr %3, align 8, !tbaa !257 ; 4 uses
  %i.bx = fcmp ult double %i.bw, %i.ae
  br i1 %i.bx, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit52.thread
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !259
  %i.ca = fcmp ugt double %i.bz, %.sroa.10121.0
  br i1 %i.ca, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !258
  %i.cd = fcmp ult double %i.cc, %i.ad
  br i1 %i.cd, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit.thread, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit

_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit: ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !260
  %i.cg = fcmp ugt double %i.cf, %.sroa.13125.0
  br i1 %i.cg, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit.thread, label %bb.q

_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit.thread: ; preds = %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit52.thread, %bb.i, %bb.j, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit
  %i.ch = fcmp ult double %i.bw, %.sroa.099.0
  br i1 %i.ch, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit53.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !259
  %i.ck = fcmp ugt double %i.cj, %.sroa.11.0
  br i1 %i.ck, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit53.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !258
  %i.cn = fcmp ult double %i.cm, %.sroa.9102.0
  br i1 %i.cn, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit53.thread, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit53

_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit53: ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERNS3_4NodeERKjRKNS1_7RectObjE:bb.a
  %i.de = fcmp ugt double %i.dd, %i.ah
  br i1 %i.de, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load double, ptr %i.df, align 8, !tbaa !258
  %i.dh = fcmp ult double %i.dg, %.sroa.977.0
  br i1 %i.dh, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit55

_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit55: ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dj = load double, ptr %i.di, align 8, !tbaa !260
  %i.dk = fcmp ugt double %i.dj, %i.ag
  br i1 %i.dk, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit55, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit54, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit53, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit
  tail call void @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x double> %i.ac, ptr %4, align 16, !tbaa !150
  %.sroa.10121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %.sroa.10121.0, ptr %.sroa.10121.0..sroa_idx122, align 16, !tbaa !150
  %.sroa.13125.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %.sroa.13125.0, ptr %.sroa.13125.0..sroa_idx126, align 8, !tbaa !150
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dl, i8 0, i64 48, i1 false)
  %i.dm = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store double %.sroa.099.0, ptr %5, align 8, !tbaa !150
  %.sroa.9102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %.sroa.9102.0, ptr %.sroa.9102.0..sroa_idx103, align 8, !tbaa !150
  %.sroa.12106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %.sroa.11.0, ptr %.sroa.12106.0..sroa_idx107, align 8, !tbaa !150
  %.sroa.14110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %.sroa.16.0, ptr %.sroa.14110.0..sroa_idx111, align 8, !tbaa !150
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dn, i8 0, i64 48, i1 false)
  %i.do = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %bb.s unwind label %bb.v       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store double %.sroa.0129.0, ptr %6, align 8, !tbaa !150
  %.sroa.8.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %.sroa.9130.0, ptr %.sroa.8.0..sroa_idx90, align 8, !tbaa !150
  %.sroa.10.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %.sroa.10.0, ptr %.sroa.10.0..sroa_idx93, align 8, !tbaa !150
  %.sroa.13.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %.sroa.13.0, ptr %.sroa.13.0..sroa_idx96, align 8, !tbaa !150
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, i8 0, i64 48, i1 false)
  %i.dq = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store double %.sroa.074.0, ptr %7, align 8, !tbaa !150
  %.sroa.977.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %.sroa.977.0, ptr %.sroa.977.0..sroa_idx78, align 8, !tbaa !150
  %.sroa.12.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x double> %i.af, ptr %.sroa.12.0..sroa_idx81, align 8, !tbaa !150
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dr, i8 0, i64 48, i1 false)
  %i.ds = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE5clearEv.exit unwind label %bb.x ; 0 uses

_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE5clearEv.exit: ; preds = %bb.t
  call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !234 ; 8 uses
  %i.du = load ptr, ptr %i.s, align 8, !tbaa !345 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr153.lcssa162, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !237 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not152165 = icmp eq ptr %i.dt, %i.du
  br i1 %.not152165, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.y, %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE5clearEv.exit
  invoke void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERNS3_4NodeERKjRKNS1_7RectObjE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(80) %.tr153.lcssa162, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.aa unwind label %bb.ac

bb.u:                                             ; preds = %bb.q
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit57

bb.v:                                             ; preds = %bb.r
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit57

bb.w:                                             ; preds = %bb.s
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit57

bb.x:                                             ; preds = %bb.t
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit57

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE5clearEv.exit, %bb.y
  %.sroa.067.0166 = phi ptr [ %i.ec, %bb.y ], [ %i.dt, %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE5clearEv.exit ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.067.0166, i64 8
  invoke void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERNS3_4NodeERKjRKNS1_7RectObjE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(80) %.tr153.lcssa162, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.067.0166, ptr noundef nonnull align 8 dereferenceable(32) %i.eb)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.067.0166, i64 40 ; 2 uses
  %.not152 = icmp eq ptr %i.ec, %i.du
  br i1 %.not152, label %._crit_edge, label %.lr.ph

bb.z:                                             ; preds = %.lr.ph
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = ptrtoint ptr %i.dw to i64
  %i.ef = ptrtoint ptr %i.dt to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.eg) #31
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit

bb.ac:                                            ; preds = %._crit_edge
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.z ], [ %i.eh, %bb.ac ] ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit57, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = ptrtoint ptr %i.dw to i64
  %i.ej = ptrtoint ptr %i.dt to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.ek) #31
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit57

_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit57: ; preds = %bb.ae, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.u ], [ %i.ea, %bb.x ], [ %i.dz, %bb.w ], [ %i.dy, %bb.v ], [ %.pn, %bb.ad ], [ %.pn, %bb.ae ]
  resume { ptr, i32 } %.pn.pn

bb.af:                                            ; preds = %.preheader, %.critedge
  %.sroa.063.0161 = phi ptr [ %i.p, %.preheader ], [ %i.ez, %.critedge ] ; 9 uses
  %i.el = load double, ptr %.sroa.063.0161, align 8, !tbaa !257
  %i.em = fcmp ult double %i.f, %i.el
  br i1 %i.em, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = load double, ptr %i.g, align 8, !tbaa !259
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.063.0161, i64 16
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !259
  %i.eq = fcmp ugt double %i.en, %i.ep
  br i1 %i.eq, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = load double, ptr %i.h, align 8, !tbaa !258
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.063.0161, i64 8
  %i.et = load double, ptr %i.es, align 8, !tbaa !258
  %i.eu = fcmp ult double %i.er, %i.et
  br i1 %i.eu, label %.critedge, label %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit58

_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit58: ; preds = %bb.ah
  %i.ev = load double, ptr %i.i, align 8, !tbaa !260
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.063.0161, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !260
  %i.ey = fcmp ugt double %i.ev, %i.ex
  br i1 %i.ey, label %.critedge, label %tailrecurse.loopexit

.critedge:                                        ; preds = %bb.af, %bb.ag, %bb.ah, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit58
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.063.0161, i64 80 ; 2 uses
  %.not151 = icmp eq ptr %i.ez, %i.o
  br i1 %.not151, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread, label %bb.af

_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread: ; preds = %.critedge, %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit51.thread, %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit50.thread, %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit.thread, %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit49, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit54.thread, %bb.o, %bb.p, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit55, %tailrecurse._crit_edge
  %.tr153160 = phi ptr [ %.tr153.lcssa162, %tailrecurse._crit_edge ], [ %.tr153.lcssa162, %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit51.thread ], [ %.tr153.lcssa162, %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit50.thread ], [ %.tr153.lcssa162, %_ZNK5osgeo4proj8QuadTree7RectObjneERKS2_.exit.thread ], [ %.tr153.lcssa162, %_ZN5osgeo4proj8QuadTree8QuadTreeIjE11splitBoundsERKNS1_7RectObjERS4_S7_.exit49 ], [ %.tr153.lcssa162, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit54.thread ], [ %.tr153.lcssa162, %bb.o ], [ %.tr153.lcssa162, %bb.p ], [ %.tr153.lcssa162, %_ZNK5osgeo4proj8QuadTree7RectObj13isContainedByERKS2_.exit55 ], [ %.tr153163, %.critedge ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.tr153160, i64 32 ; 2 uses
  %8 = load i32, ptr %2, align 4, !tbaa !181      ; 2 uses
  %.sroa.5.sroa.0.4.copyload = load <32 x i8>, ptr %3, align 8
  %.sroa.5.sroa.0.4.vec.expand = shufflevector <32 x i8> %.sroa.5.sroa.0.4.copyload, <32 x i8> poison, <36 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %.sroa.5.sroa.0.4.vecblend = shufflevector <36 x i8> %.sroa.5.sroa.0.4.vec.expand, <36 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <36 x i32> <i32 36, i32 37, i32 38, i32 39, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35> ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr153160, i64 40 ; 4 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !345 ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr153160, i64 48 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !237
  %.not.i.i59 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not.i.i59, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread
  store i32 %8, ptr %i.fc, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store <36 x i8> %.sroa.5.sroa.0.4.vecblend, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !345
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store ptr %i.fg, ptr %i.fb, align 8, !tbaa !345
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit

bb.aj:                                            ; preds = %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit.thread
  %i.fh = load ptr, ptr %i.fa, align 8, !tbaa !234 ; 5 uses
  %i.fi = ptrtoint ptr %i.fc to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 4 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.fl, label %bb.ak, label %_ZNKSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #30
  unreachable

_ZNKSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.fm = sdiv exact i64 %i.fk, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 230584300921369395)
  %i.fq = select i1 %i.fo, i64 230584300921369395, i64 %i.fp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fr = mul nuw nsw i64 %i.fq, 40
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #27 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store i32 %8, ptr %i.ft, align 8
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store <36 x i8> %.sroa.5.sroa.0.4.vecblend, ptr %.sroa.5.0..sroa_idx61, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fh, %i.fc
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i ], [ %i.fs, %_ZNKSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i ], [ %i.fh, %_ZNKSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !alias.scope !346
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fu, %i.fc
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !350

_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fs, %_ZNKSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.fv, %.lr.ph.i.i.i.i.i.i ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40
  %.not.i23.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fk) #31
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.fs, ptr %i.fa, align 8, !tbaa !234
  store ptr %i.fw, ptr %i.fb, align 8, !tbaa !345
  %i.fx = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fx, ptr %i.fd, align 8, !tbaa !237
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ai, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 115292150460684697
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.d = load ptr, ptr %0, align 8, !tbaa !227    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 80
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !230  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 80
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_M_allocateEm.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_M_allocateEm.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !356, !alias.scope !357
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !358, !alias.scope !354, !noalias !351
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !358, !alias.scope !351, !noalias !354
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !237, !alias.scope !354, !noalias !351
  store ptr %i.u, ptr %i.s, align 8, !tbaa !237, !alias.scope !351, !noalias !354
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !alias.scope !354, !noalias !351
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !344, !alias.scope !354, !noalias !351
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !344, !alias.scope !351, !noalias !354
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !232, !alias.scope !354, !noalias !351
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !232, !alias.scope !351, !noalias !354
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !354, !noalias !351
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %.not.i.i.i = icmp eq ptr %i.ab, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !359

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !227
  br label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit, %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_M_allocateEm.exit
  %i.ad = phi ptr [ %.pre, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #31
  br label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !227
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !230
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %1
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !232
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 32, i1 false), !tbaa.struct !356
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !358
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !358
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !237
  store ptr %i.j, ptr %i.h, align 8, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !344
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !344
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !232
  store ptr %i.p, ptr %i.n, align 8, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !230
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !230
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !344
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %.pre, %bb.c ], [ %i.r, %bb.b ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -80
  ret ptr %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !230
  invoke void @_ZSt8_DestroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvT_S7_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit unwind label %bb.b, !inline_history !360

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29, !inline_history !360
  unreachable

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !227  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #31
  br label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !237
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #31
  br label %_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !227    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #30
  unreachable

_ZNKSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 32, i1 false), !tbaa.struct !356
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !358
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !358
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !237
  store ptr %i.w, ptr %i.u, align 8, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !344
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !344
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !232
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !356, !alias.scope !366
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !358, !alias.scope !364, !noalias !361
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !358, !alias.scope !361, !noalias !364
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !237, !alias.scope !364, !noalias !361
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !237, !alias.scope !361, !noalias !364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false), !alias.scope !364, !noalias !361
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !344, !alias.scope !364, !noalias !361
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !344, !alias.scope !361, !noalias !364
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !232, !alias.scope !364, !noalias !361
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !232, !alias.scope !361, !noalias !364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false), !alias.scope !364, !noalias !361
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !359

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %i.ar, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i19, i64 32, i1 false), !tbaa.struct !356, !alias.scope !372
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !358, !alias.scope !370, !noalias !367
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !358, !alias.scope !367, !noalias !370
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !237, !alias.scope !370, !noalias !367
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !237, !alias.scope !367, !noalias !370
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false), !alias.scope !370, !noalias !367
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !344, !alias.scope !370, !noalias !367
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !344, !alias.scope !367, !noalias !370
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !232, !alias.scope !370, !noalias !367
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !232, !alias.scope !367, !noalias !370
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !370, !noalias !367
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 80 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 80 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !359

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ar, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !232
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #31
  br label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !227
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !230
  %i.bk = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !232
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEEvT_S9_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvPT_.exit
  %.0.i3 = phi ptr [ %i.t, %_ZSt8_DestroyIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvPT_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i3, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !230
  invoke void @_ZSt8_DestroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvT_S7_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i unwind label %bb.b, !inline_history !373

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29, !inline_history !373
  unreachable

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i: ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !227  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i3, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #31
  br label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvPT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !237
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #31, !inline_history !374
  br label %_ZSt8_DestroyIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvPT_.exit

_ZSt8_DestroyIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvPT_.exit: ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i3, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEEvT_S9_.exit, label %.lr.ph, !llvm.loop !375

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE6searchERKNS3_4NodeEddRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(80) %0, double noundef %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load <4 x double>, ptr %0, align 8       ; 2 uses
  %i.b = insertelement <4 x double> poison, double %1, i64 0
  %i.c = insertelement <4 x double> %i.b, double %2, i64 1
  %i.d = shufflevector <4 x double> %i.c, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.e = fcmp oge <4 x double> %i.a, %i.d
  %i.f = fcmp ole <4 x double> %i.a, %i.d
  %i.g = shufflevector <4 x i1> %i.f, <4 x i1> %i.e, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.h = freeze <4 x i1> %i.g
  %i.i = bitcast <4 x i1> %i.h to i4
  %i.j = icmp eq i4 %i.i, -1
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !358  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !358  ; 2 uses
  %.not28 = icmp eq ptr %i.l, %i.n
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !344  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !344  ; 2 uses
  %.not2730 = icmp eq ptr %i.r, %i.t
  br i1 %.not2730, label %.loopexit, label %.lr.ph33

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.sroa.024.029 = phi ptr [ %i.l, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.024.029, i64 8
  %i.v = load <4 x double>, ptr %i.u, align 8     ; 2 uses
  %i.w = fcmp oge <4 x double> %i.v, %i.d
  %i.x = fcmp ole <4 x double> %i.v, %i.d
  %i.y = shufflevector <4 x i1> %i.x, <4 x i1> %i.w, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.z = freeze <4 x i1> %i.y
  %i.aa = bitcast <4 x i1> %i.z to i4
  %i.ab = icmp eq i4 %i.aa, -1
  br i1 %i.ab, label %bb.d, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !265 ; 4 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !376
  %.not.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %.sroa.024.029, align 8, !tbaa !181
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !181
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.af, ptr %i.o, align 8, !tbaa !265
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %3, align 8, !tbaa !262   ; 4 uses
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775804
  br i1 %i.ak, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #30
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.al = ashr exact i64 %i.aj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #27 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  %i.at = load i32, ptr %.sroa.024.029, align 8, !tbaa !181
  store i32 %i.at, ptr %i.as, align 4, !tbaa !181
  %i.au = icmp sgt i64 %i.aj, 0
  br i1 %i.au, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!146 = !{!140}
!147 = !{!140, !141, !148, !149}
!148 = distinct !{!148, !136, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!149 = distinct !{!149, !138, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!150 = !{!151, !151, i64 0}
!151 = !{!"double", !6, i64 0}
!152 = !{!153, !155}
!153 = distinct !{!153, !154, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv: argument 0:thread"}
!154 = distinct !{!154, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv"}
!155 = distinct !{!155, !156, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0:thread"}
!156 = distinct !{!156, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv"}
!157 = !{!35, !36, i64 16}
!158 = !{!35, !36, i64 0}
!159 = !{!35, !36, i64 8}
!160 = !{!161, !162}
!161 = distinct !{!161, !154, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv: argument 0"}
!162 = distinct !{!162, !156, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0"}
!163 = !{!162}
!164 = !{!161}
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!167 = distinct !{!167, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!168 = distinct !{!168, !169, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!169 = distinct !{!169, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!170 = !{!171, !172}
!171 = distinct !{!171, !167, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0"}
!172 = distinct !{!172, !169, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
!173 = !{!174, !175}
!174 = distinct !{!174, !167, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!175 = distinct !{!175, !169, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!176 = !{!172}
!177 = !{!171}
!178 = !{!171, !172, !179, !180}
!179 = distinct !{!179, !167, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!180 = distinct !{!180, !169, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!181 = !{!5, !5, i64 0}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6parserINS_6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS8_EEEEEENSE_6parserISC_T_EESN_St8functionIFbiNSE_13parse_event_tERSC_EEbb: argument 0"}
!184 = distinct !{!184, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6parserINS_6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS8_EEEEEENSE_6parserISC_T_EESN_St8functionIFbiNSE_13parse_event_tERSC_EEbb"}
!185 = !{!186, !12, i64 24}
!186 = !{!"_ZTSSt8functionIFbiN13proj_nlohmann6detail13parse_event_tERNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEEEEE", !45, i64 0, !12, i64 24}
!187 = !{i64 0, i64 16, !16}
!188 = !{!189, !11, i64 0}
!189 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!190 = !{!189, !11, i64 16}
!191 = !{!13, !13, i64 0}
!192 = !{!"branch_weights", i32 1717128, i32 -2147483648, i32 2145766520}
!193 = !{!84, !61, i64 24}
!194 = distinct !{null, null}
!195 = !{!84, !86, i64 0}
!196 = !{!84, !61, i64 8}
!197 = !{!198, !198, i64 0}
!198 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE", !12, i64 0}
!199 = distinct !{null, null, null, null, null, null}
!200 = !{!85, !61, i64 16}
!201 = distinct !{!201, !116}
!202 = !{!85, !61, i64 24}
!203 = distinct !{!203, !116}
!204 = distinct !{null, null}
!205 = !{!109, !58, i64 16}
!206 = distinct !{null, null, null}
!207 = distinct !{null, null, null, null, null, null, null}
!208 = distinct !{!208, !116}
!209 = distinct !{null, null, null, null, null, null}
!210 = distinct !{null, null, null, null, null, null, null, null, null, null}
!211 = distinct !{!211, !116}
!212 = !{!213, !11, i64 8}
!213 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!214 = !{!213, !11, i64 0}
!215 = !{!213, !11, i64 16}
!216 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!217 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!218 = !{!24, !25, i64 8}
!219 = !{!24, !25, i64 16}
!220 = !{!25, !25, i64 0}
!221 = !{!11, !11, i64 0}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!224 = distinct !{!224, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!225 = !{!226, !226, i64 0}
!226 = !{!"p1 _ZTSN5osgeo4proj8QuadTree8QuadTreeIjEE", !12, i64 0}
!227 = !{!228, !229, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!229 = !{!"p1 _ZTSN5osgeo4proj8QuadTree8QuadTreeIjE4NodeE", !12, i64 0}
!230 = !{!228, !229, i64 8}
!231 = distinct !{ptr @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev, null}
!232 = !{!228, !229, i64 16}
!233 = !{ptr @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev}
!234 = !{!235, !236, i64 0}
!235 = !{!"_ZTSNSt12_Vector_baseISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE17_Vector_impl_dataE", !236, i64 0, !236, i64 8, !236, i64 16}
!236 = !{!"p1 _ZTSSt4pairIjN5osgeo4proj8QuadTree7RectObjEE", !12, i64 0}
!237 = !{!235, !236, i64 16}
!238 = !{!239, !5, i64 0}
!239 = !{!"_ZTSN8TINShift12TINShiftFile13VertexIndicesE", !5, i64 0, !5, i64 4, !5, i64 8}
!240 = !{!239, !5, i64 4}
!241 = !{!239, !5, i64 8}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZN8TINShiftL9GetBoundsERKNS_12TINShiftFileEb: argument 0"}
!244 = distinct !{!244, !"_ZN8TINShiftL9GetBoundsERKNS_12TINShiftFileEb"}
!245 = distinct !{!245, !116}
!246 = !{!247, !5, i64 80}
!247 = !{!"_ZTSN5osgeo4proj8QuadTree8QuadTreeIjEE", !248, i64 0, !5, i64 80, !151, i64 88}
!248 = !{!"_ZTSN5osgeo4proj8QuadTree8QuadTreeIjE4NodeE", !249, i64 0, !250, i64 32, !253, i64 56}
!249 = !{!"_ZTSN5osgeo4proj8QuadTree7RectObjE", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24}
!250 = !{!"_ZTSSt6vectorISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE", !251, i64 0}
!251 = !{!"_ZTSSt12_Vector_baseISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE", !252, i64 0}
!252 = !{!"_ZTSNSt12_Vector_baseISt4pairIjN5osgeo4proj8QuadTree7RectObjEESaIS5_EE12_Vector_implE", !235, i64 0}
!253 = !{!"_ZTSSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE", !254, i64 0}
!254 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE", !255, i64 0}
!255 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EE12_Vector_implE", !228, i64 0}
!256 = !{!247, !151, i64 88}
!257 = !{!249, !151, i64 0}
!258 = !{!249, !151, i64 8}
!259 = !{!249, !151, i64 16}
!260 = !{!249, !151, i64 24}
!261 = distinct !{!261, !116}
!262 = !{!263, !264, i64 0}
!263 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !264, i64 0, !264, i64 8, !264, i64 16}
!264 = !{!"p1 int", !12, i64 0}
!265 = !{!263, !264, i64 8}
!266 = !{!264, !264, i64 0}
!267 = !{!19, !19, i64 0}
!268 = distinct !{!268, !116}
!269 = !{!270, !11, i64 8}
!270 = !{!"_ZTS8PJconsts", !271, i64 0, !11, i64 8, !11, i64 16, !272, i64 24, !11, i64 32, !273, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !274, i64 80, !12, i64 88, !5, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !151, i64 168, !151, i64 176, !151, i64 184, !151, i64 192, !151, i64 200, !151, i64 208, !151, i64 216, !151, i64 224, !151, i64 232, !151, i64 240, !151, i64 248, !151, i64 256, !151, i64 264, !151, i64 272, !151, i64 280, !151, i64 288, !151, i64 296, !151, i64 304, !151, i64 312, !151, i64 320, !151, i64 328, !151, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !275, i64 380, !275, i64 384, !273, i64 392, !273, i64 400, !273, i64 408, !273, i64 416, !273, i64 424, !273, i64 432, !151, i64 440, !151, i64 448, !151, i64 456, !151, i64 464, !151, i64 472, !151, i64 480, !151, i64 488, !151, i64 496, !151, i64 504, !151, i64 512, !151, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !12, i64 600, !12, i64 608, !151, i64 616, !151, i64 624, !5, i64 632, !6, i64 636, !276, i64 640, !26, i64 656, !151, i64 664, !26, i64 672, !9, i64 680, !9, i64 712, !9, i64 744, !26, i64 776, !281, i64 784, !286, i64 808, !287, i64 816, !5, i64 840, !26, i64 844, !26, i64 845, !26, i64 846, !273, i64 848}
!271 = !{!"p1 _ZTS6pj_ctx", !12, i64 0}
!272 = !{!"p1 _ZTS8ARG_list", !12, i64 0}
!273 = !{!"p1 _ZTS8PJconsts", !12, i64 0}
!274 = !{!"p1 _ZTS13geod_geodesic", !12, i64 0}
!275 = !{!"_ZTS11pj_io_units", !6, i64 0}
!276 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !277, i64 0}
!277 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !278, i64 0, !279, i64 8}
!278 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !12, i64 0}
!279 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !280, i64 0}
!280 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!281 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !282, i64 0}
!282 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !283, i64 0}
!283 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !284, i64 0}
!284 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !285, i64 0, !285, i64 8, !285, i64 16}
!285 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !12, i64 0}
!286 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!287 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !288, i64 0}
!288 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !289, i64 0}
!289 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !290, i64 0}
!290 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !291, i64 0, !291, i64 8, !291, i64 16}
!291 = !{!"p1 _ZTS16PJCoordOperation", !12, i64 0}
!292 = !{!270, !11, i64 16}
!293 = !{!270, !5, i64 360}
!294 = !{!270, !275, i64 380}
!295 = !{!270, !275, i64 384}
!296 = !{!270, !271, i64 0}
!297 = !{!270, !272, i64 24}
!298 = !{!270, !12, i64 88}
!299 = !{!300, !300, i64 0}
!300 = !{!"p1 _ZTSN8TINShift9EvaluatorE", !12, i64 0}
!301 = !{!302, !302, i64 0}
!302 = !{!"p1 _ZTSN5osgeo4proj4FileE", !12, i64 0}
!303 = !{!304, !300, i64 0}
!304 = !{!"_ZTSSt10_Head_baseILm0EPN8TINShift9EvaluatorELb0EE", !300, i64 0}
!305 = !{!270, !12, i64 152}
!306 = !{!270, !12, i64 136}
!307 = !{!270, !12, i64 144}
!308 = distinct !{null, null}
!309 = !{i64 0, i64 32, !16}
!310 = !{ptr @_ZN8TINShift16ParsingExceptionD2Ev}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v: argument 0"}
!313 = distinct !{!313, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v"}
!314 = distinct !{!314, !116}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!317 = distinct !{!317, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!318 = !{!319, !5, i64 8}
!319 = !{!"_ZTSN13proj_nlohmann6detail9exceptionE", !320, i64 0, !5, i64 8, !321, i64 16}
!320 = !{!"_ZTSSt9exception"}
!321 = !{!"_ZTSSt13runtime_error", !320, i64 0, !322, i64 8}
!322 = !{!"_ZTSSt12__cow_string", !6, i64 0}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!325 = distinct !{!325, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!326 = !{!327, !324}
!327 = distinct !{!327, !328, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!328 = distinct !{!328, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!331 = distinct !{!331, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!334 = distinct !{!334, !"_ZNSt7__cxx119to_stringEi"}
!335 = distinct !{!335, !116}
!336 = distinct !{!336, !116}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!339 = distinct !{!339, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!342 = distinct !{!342, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!343 = !{ptr @_ZN13proj_nlohmann6detail9exceptionD2Ev}
!344 = !{!229, !229, i64 0}
!345 = !{!235, !236, i64 8}
!346 = !{!347, !349}
!347 = distinct !{!347, !348, !"_ZSt19__relocate_object_aISt4pairIjN5osgeo4proj8QuadTree7RectObjEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!348 = distinct !{!348, !"_ZSt19__relocate_object_aISt4pairIjN5osgeo4proj8QuadTree7RectObjEES5_SaIS5_EEvPT_PT0_RT1_"}
!349 = distinct !{!349, !348, !"_ZSt19__relocate_object_aISt4pairIjN5osgeo4proj8QuadTree7RectObjEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!350 = distinct !{!350, !116}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!353 = distinct !{!353, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!356 = !{i64 0, i64 8, !150, i64 8, i64 8, !150, i64 16, i64 8, !150, i64 24, i64 8, !150}
!357 = !{!352, !355}
!358 = !{!236, !236, i64 0}
!359 = distinct !{!359, !116}
!360 = distinct !{null}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!363 = distinct !{!363, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!366 = !{!362, !365}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!369 = distinct !{!369, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_"}
!370 = !{!371}
!371 = distinct !{!371, !369, !"_ZSt19__relocate_object_aIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!372 = !{!368, !371}
!373 = distinct !{null, null, ptr @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev, null}
!374 = distinct !{null, null, ptr @_ZN5osgeo4proj8QuadTree8QuadTreeIjE4NodeD2Ev}
!375 = distinct !{!375, !116}
!376 = !{!263, !264, i64 16}
!377 = distinct !{null}
!378 = distinct !{null, null, null, null}
!379 = distinct !{!379, !116}
!380 = distinct !{null, null}
!381 = distinct !{null, null}
!382 = distinct !{ptr @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_, null, null, null, null}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!385 = distinct !{!385, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_"}
!386 = !{!387}
!387 = distinct !{!387, !385, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!388 = distinct !{ptr @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_, null, null, null, null, null, null, null, null, null}
!389 = distinct !{!389, !116}
!390 = distinct !{null, null, null, null, null, null}
!391 = distinct !{null, null}
!392 = distinct !{ptr @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_, null, null}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!395 = distinct !{!395, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_"}
!396 = !{!397}
!397 = distinct !{!397, !395, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!398 = distinct !{null, ptr @_ZNSt6vectorIN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_, null, null, null, null, null, null}
!399 = distinct !{!399, !116}
!400 = distinct !{null, null}
!401 = distinct !{null, null, null, null, null}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!404 = distinct !{!404, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_"}
!405 = !{!406}
!406 = distinct !{!406, !404, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!407 = distinct !{null, null, null, null, null}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_: argument 0"}
!410 = distinct !{!410, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_"}
!411 = !{!412}
!412 = distinct !{!412, !410, !"_ZSt19__relocate_object_aIN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_: argument 1"}
!413 = distinct !{null, null, null, null}
!414 = distinct !{!414, !116}
!415 = !{!416, !198, i64 0}
!416 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE11_Alloc_nodeE", !198, i64 0}
!417 = !{i64 8}
!418 = distinct !{null, null, null}
!419 = !{!85, !86, i64 0}
!420 = !{!85, !61, i64 8}
!421 = distinct !{null, null}
!422 = distinct !{!422, !116}
!423 = distinct !{null}
!424 = !{!24, !25, i64 0}
!425 = distinct !{!425, !116}
!426 = !{!12, !12, i64 0}
!427 = !{!428, !26, i64 192}
!428 = !{!"_ZTSN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEEE", !186, i64 0, !429, i64 32, !430, i64 40, !26, i64 192}
!429 = !{!"_ZTSN13proj_nlohmann6detail10lexer_baseINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE10token_typeE", !6, i64 0}
!430 = !{!"_ZTSN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEEE", !431, i64 0, !26, i64 16, !5, i64 20, !26, i64 24, !433, i64 32, !434, i64 56, !9, i64 80, !11, i64 112, !13, i64 120, !13, i64 128, !151, i64 136, !5, i64 144}
!431 = !{!"_ZTSN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !432, i64 0, !432, i64 8}
!432 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !11, i64 0}
!433 = !{!"_ZTSN13proj_nlohmann6detail10position_tE", !13, i64 0, !13, i64 8, !13, i64 16}
!434 = !{!"_ZTSSt6vectorIcSaIcEE", !435, i64 0}
!435 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !436, i64 0}
!436 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !189, i64 0}
!437 = !{!428, !429, i64 32}
!438 = !{i64 0, i64 8, !191, i64 8, i64 8, !191, i64 16, i64 8, !191}
!439 = !{!440, !26, i64 120}
!440 = !{!"_ZTSN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !58, i64 0, !441, i64 8, !447, i64 32, !447, i64 72, !58, i64 112, !26, i64 120, !186, i64 128, !26, i64 160, !40, i64 168}
!441 = !{!"_ZTSSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE", !442, i64 0}
!442 = !{!"_ZTSSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE", !443, i64 0}
!443 = !{!"_ZTSNSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE12_Vector_implE", !444, i64 0}
!444 = !{!"_ZTSNSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE17_Vector_impl_dataE", !445, i64 0, !445, i64 8, !445, i64 16}
!445 = !{!"p2 _ZTSN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE", !446, i64 0}
!446 = !{!"any p2 pointer", !12, i64 0}
!447 = !{!"_ZTSSt6vectorIbSaIbEE", !448, i64 0}
!448 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !449, i64 0}
!449 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !450, i64 0}
!450 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !451, i64 0, !451, i64 16, !453, i64 32}
!451 = !{!"_ZTSSt13_Bit_iterator", !452, i64 0}
!452 = !{!"_ZTSSt18_Bit_iterator_base", !453, i64 0, !5, i64 8}
!453 = !{!"p1 long", !12, i64 0}
!454 = !{!440, !26, i64 160}
!455 = !{!456, !13, i64 32}
!456 = !{!"_ZTSN13proj_nlohmann6detail11parse_errorE", !319, i64 0, !13, i64 32}
!457 = !{!458, !26, i64 41}
!458 = !{!"_ZTSN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !58, i64 0, !441, i64 8, !58, i64 32, !26, i64 40, !26, i64 41}
!459 = !{!458, !26, i64 40}
!460 = !{!444, !445, i64 0}
!461 = !{!444, !445, i64 16}
!462 = !{i64 0, i64 8, !221, i64 8, i64 8, !221}
!463 = !{!430, !26, i64 16}
!464 = !{!430, !5, i64 20}
!465 = !{!430, !26, i64 24}
!466 = !{!430, !11, i64 112}
!467 = !{!468, !11, i64 0}
!468 = !{!"_ZTS5lconv", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !6, i64 80, !6, i64 81, !6, i64 82, !6, i64 83, !6, i64 84, !6, i64 85, !6, i64 86, !6, i64 87, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93}
!469 = !{!430, !5, i64 144}
!470 = !{!430, !13, i64 32}
!471 = !{!430, !13, i64 40}
!472 = !{!430, !13, i64 48}
!473 = !{!189, !11, i64 8}
!474 = distinct !{!474, !116}
!475 = !{!432, !11, i64 0}
!476 = distinct !{!476, !116}
!477 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!478 = distinct !{!478, !116}
!479 = !{i64 0, i64 24, !16}
!480 = !{!430, !13, i64 128}
!481 = !{!430, !13, i64 120}
!482 = distinct !{!482, !116}
!483 = !{!452, !453, i64 0}
!484 = !{!450, !453, i64 32}
!485 = !{!452, !5, i64 8}
!486 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!487 = !{!430, !151, i64 136}
!488 = !{!26, !26, i64 0}
!489 = !{!490, !490, i64 0}
!490 = !{!"std::nullptr_t", !6, i64 0}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!493 = distinct !{!493, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!496 = distinct !{!496, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!497 = !{!498}
!498 = distinct !{!498, !499, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!499 = distinct !{!499, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!502 = distinct !{!502, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!503 = !{!433, !13, i64 0}
!504 = !{!505}
!505 = distinct !{!505, !506, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!506 = distinct !{!506, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!507 = !{!508, !505}
!508 = distinct !{!508, !509, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!509 = distinct !{!509, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!512 = distinct !{!512, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!515 = distinct !{!515, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!518 = distinct !{!518, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!519 = !{!520}
!520 = distinct !{!520, !521, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!521 = distinct !{!521, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!522 = !{!523}
!523 = distinct !{!523, !524, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!524 = distinct !{!524, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!527 = distinct !{!527, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!528 = !{!444, !445, i64 8}
!529 = !{!445, !445, i64 0}
!530 = !{!458, !58, i64 32}
!531 = distinct !{!531, !116}
!532 = distinct !{!532, !116}
!533 = distinct !{!533, !116}
!534 = !{!535, !535, i64 0}
!535 = !{!"_ZTSN13proj_nlohmann6detail13parse_event_tE", !6, i64 0}
!536 = distinct !{null}
!537 = !{!538}
!538 = distinct !{!538, !539, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0"}
!539 = distinct !{!539, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv"}
!540 = !{!541, !58, i64 0}
!541 = !{!"_ZTSN13proj_nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !58, i64 0, !59, i64 8}
!542 = !{!543}
!543 = distinct !{!543, !544, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
!544 = distinct !{!544, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!545 = !{i64 0, i64 8, !87, i64 8, i64 8, !66, i64 16, i64 8, !191}
!546 = distinct !{!546, !116}
!547 = !{!440, !58, i64 112}
!548 = distinct !{null, null}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!551 = distinct !{!551, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!552 = !{!440, !58, i64 0}
!553 = distinct !{null}
!554 = distinct !{!554, !116}
!555 = distinct !{!555, !116}
!556 = !{!557}
!557 = distinct !{!557, !558, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
end_hunk_2
