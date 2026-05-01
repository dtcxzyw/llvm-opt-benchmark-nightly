inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 29 uses
  %2 = alloca %"class.glTFCommon::Ref", align 8   ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.u = getelementptr i8, ptr %i.s, i64 -24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
end_hunk_1
begin_hunk_2_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !72
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.n, align 16
  store ptr null, ptr %i.o, align 8
  store i8 0, ptr %i.p, align 16
  store i8 0, ptr %i.q, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  store ptr %i.s, ptr %1, align 16
  %i.dd = load i64, ptr %i.u, align 8
  %i.de = getelementptr inbounds i8, ptr %1, i64 %i.dd
  store ptr %i.t, ptr %i.de, align 8
  %i.df = load ptr, ptr %1, align 16
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %1, i64 %i.dh
end_hunk_2
begin_hunk_3_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.n, align 16
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %1, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #31
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8
  store i32 16, ptr %i.y, align 8
  store ptr %i.aa, ptr %i.z, align 16
  store i64 0, ptr %i.ab, align 8
  store i8 0, ptr %i.aa, align 16
  %i.dj = load ptr, ptr %1, align 16
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %1, i64 %i.dl
end_hunk_3
begin_hunk_4_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
  store ptr %i.ac, ptr %6, align 8, !alias.scope !81
  store i64 0, ptr %i.ad, align 8, !alias.scope !81
  store i8 0, ptr %i.ac, align 8, !alias.scope !81
  %i.dq = load ptr, ptr %i.ae, align 16, !noalias !81 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.dq, null
  %i.dr = load ptr, ptr %i.af, align 16, !noalias !81 ; 2 uses
  %i.ds = icmp ugt ptr %i.dq, %i.dr
  %.08.i.i.i.i = select i1 %i.ds, ptr %i.dq, ptr %i.dr ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_4
begin_hunk_5_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.l

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.m, %bb.k
  store ptr %i.ah, ptr %1, align 16, !noalias !72
  %i.ed = load i64, ptr %i.aj, align 8
  %i.ee = getelementptr inbounds i8, ptr %1, i64 %i.ed
  store ptr %i.ai, ptr %i.ee, align 8, !noalias !72
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !noalias !72
  %i.ef = load ptr, ptr %i.z, align 16, !noalias !72 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.aa
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.eh = load i64, ptr %i.aa, align 16, !noalias !72
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
end_hunk_5
