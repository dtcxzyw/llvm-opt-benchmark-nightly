inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.bdu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 4 uses
  %i.bdv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8 ; 3 uses
  %i.bdw = getelementptr i8, ptr %i.bdu, i64 -24  ; 3 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %108, i64 24 ; 5 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %108, i64 32
  %i.bdz = getelementptr inbounds nuw i8, ptr %108, i64 80 ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %108, i64 88
end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.bfk = getelementptr inbounds nuw i8, ptr %120, i64 360
  %i.bfl = getelementptr inbounds nuw i8, ptr %120, i64 8 ; 4 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %120, i64 16 ; 10 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %120, i64 24 ; 5 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %120, i64 32
  %i.bfp = getelementptr inbounds nuw i8, ptr %120, i64 80 ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %120, i64 88
end_hunk_1
begin_hunk_2_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.bkf = getelementptr inbounds nuw i8, ptr %116, i64 360
  %i.bkg = getelementptr inbounds nuw i8, ptr %116, i64 8 ; 4 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %116, i64 16 ; 11 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %116, i64 24 ; 5 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %116, i64 32
  %i.bkk = getelementptr inbounds nuw i8, ptr %116, i64 80 ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %116, i64 88
end_hunk_2
begin_hunk_3_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  store ptr %i.bdv, ptr %i.buk, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %108, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.bdh, align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.bdq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bdy, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bdz) #32
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bdx, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  store ptr %i.bdv, ptr %i.bzp, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %116, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.bkb, align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.bkh, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bkj, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bkk) #32
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bki, align 8
end_hunk_4
begin_hunk_5_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  store ptr %i.bdv, ptr %i.cgq, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %120, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.bfg, align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.bfm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bfo, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bfp) #32
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bfn, align 8
end_hunk_5
