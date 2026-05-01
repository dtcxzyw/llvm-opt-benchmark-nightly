inline.NumInlined: 1437
inline.NumDeleted: 593
begin_hunk_0_@_ZN2v88internal17RegExpDisjunction27RationalizeConsecutiveAtomsEPNS0_14RegExpCompilerE:bb.a
  %i.qz = inttoptr i64 %i.qy to ptr               ; 7 uses
  %i.ra = add i64 %i.qy, 32
  store i64 %i.ra, ptr %i.w, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTVN2v88internal10RegExpTextE, i64 16), ptr %i.qz, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 8 uses
  store ptr null, ptr %i.rb, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 5 uses
  store i32 2, ptr %i.rc, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 20 ; 10 uses
end_hunk_0
