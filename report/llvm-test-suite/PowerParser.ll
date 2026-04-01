begin_hunk_0
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::vector", align 8      ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 37 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::vector.59", align 8   ; 13 uses
end_hunk_0
begin_hunk_1
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.dh = getelementptr i8, ptr %i.df, i64 -24
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.dk = getelementptr i8, ptr %i.di, i64 -24
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 6 uses
end_hunk_1
begin_hunk_2
  br label %.body.i

bb.ak:                                            ; preds = %.noexc.i117
  %i.ii = load i64, ptr %i.dk, align 8
  %i.ij = getelementptr inbounds i8, ptr %14, i64 %i.ii
  store ptr %i.dj, ptr %i.ij, align 8, !tbaa !131
end_hunk_2
