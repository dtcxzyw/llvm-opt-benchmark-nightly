inline.NumInlined: 3036
inline.NumDeleted: 446
begin_hunk_0_@_ZN16OpenColorIO_v2_56Config27addVirtualDisplaySharedViewEPKc
; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517DisplayViewMerger15processDisplaysERKSt10shared_ptrIKNS_6ConfigEES6_b(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 35 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_517DisplayViewMerger15processDisplaysERKSt10shared_ptrIKNS_6ConfigEES6_b:bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.k = getelementptr i8, ptr %i.i, i64 -24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_517DisplayViewMerger15processDisplaysERKSt10shared_ptrIKNS_6ConfigEES6_b:bb.a
bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 16, !tbaa !38
  store ptr null, ptr %i.e, align 8, !tbaa !123
  store i8 0, ptr %i.f, align 16, !tbaa !131
  store i8 0, ptr %i.g, align 1, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store ptr %i.i, ptr %4, align 16, !tbaa !38
  %i.ba = load i64, ptr %i.k, align 8
  %i.bb = getelementptr inbounds i8, ptr %4, i64 %i.ba
  store ptr %i.j, ptr %i.bb, align 8, !tbaa !38
  %i.bc = load ptr, ptr %4, align 16, !tbaa !38
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %4, i64 %i.be
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_517DisplayViewMerger15processDisplaysERKSt10shared_ptrIKNS_6ConfigEES6_b:bb.a
          to label %_ZNSoC2Ev.exit.i unwind label %bb.h

_ZNSoC2Ev.exit.i:                                 ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.d, align 16, !tbaa !38
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %4, align 16, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !38
  store i32 16, ptr %i.o, align 8, !tbaa !133
  store ptr %i.q, ptr %i.p, align 16, !tbaa !55
  store i64 0, ptr %i.r, align 8, !tbaa !57
  store i8 0, ptr %i.q, align 16, !tbaa !29
  %i.bg = load ptr, ptr %4, align 16, !tbaa !38
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_517DisplayViewMerger15processDisplaysERKSt10shared_ptrIKNS_6ConfigEES6_b:bb.a
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.bo = load ptr, ptr %4, align 16, !tbaa !38
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %4, i64 %i.bq ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_517DisplayViewMerger15processDisplaysERKSt10shared_ptrIKNS_6ConfigEES6_b:bb.a
  store ptr %i.s, ptr %5, align 8, !tbaa !55, !alias.scope !142
  store i64 0, ptr %i.t, align 8, !tbaa !57, !alias.scope !142
  store i8 0, ptr %i.s, align 8, !tbaa !29, !alias.scope !142
  %i.ca = load ptr, ptr %i.u, align 16, !tbaa !58, !noalias !142 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.v, align 16, !noalias !142 ; 2 uses
  %i.cc = icmp ugt ptr %i.ca, %i.cb
  %.08.i.i.i = select i1 %i.cc, ptr %i.ca, ptr %i.cb ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_517DisplayViewMerger15processDisplaysERKSt10shared_ptrIKNS_6ConfigEES6_b:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_513SectionMerger6notifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.y, ptr %4, align 16, !tbaa !38
  %i.cx = load i64, ptr %i.aa, align 8
  %i.cy = getelementptr inbounds i8, ptr %4, i64 %i.cx
  store ptr %i.z, ptr %i.cy, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !38
  %i.cz = load ptr, ptr %i.p, align 16, !tbaa !7  ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.q
  br i1 %i.da, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.q, align 16, !tbaa !29
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
end_hunk_6
