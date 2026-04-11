inline.NumInlined: 161
inline.NumDeleted: 111
begin_hunk_0_@_ZN12v8_inspector11UTF8ToUTF16B5cxx11EPKcm:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.ab, %_ZNSt6vectorIDsSaIDsEEC2EmRKS0_.exit
  %.04138.i = phi ptr [ %i.g, %_ZNSt6vectorIDsSaIDsEEC2EmRKS0_.exit ], [ %.344.i, %bb.ab ] ; 6 uses
  %.0836.i = phi ptr [ %1, %_ZNSt6vectorIDsSaIDsEEC2EmRKS0_.exit ], [ %i.bi, %bb.ab ] ; 7 uses
  %i.o = load i8, ptr %.0836.i, align 1           ; 9 uses
  %i.p = icmp sgt i8 %i.o, -1
end_hunk_0
begin_hunk_1_@_ZN12v8_inspector11UTF8ToUTF16B5cxx11EPKcm:bb.a

bb.x:                                             ; preds = %bb.w
  %i.bs = trunc nuw i32 %i.bo to i16
  %3 = getelementptr inbounds nuw i8, ptr %.04138.i, i64 2
  store i16 %i.bs, ptr %.04138.i, align 2
  br label %bb.ab

end_hunk_1
begin_hunk_2_@_ZN12v8_inspector11UTF8ToUTF16B5cxx11EPKcm:bb.a
  %i.by = trunc i32 %i.bo to i16
  %i.bz = and i16 %i.by, 1023
  %i.ca = or disjoint i16 %i.bz, -9216
  %4 = getelementptr inbounds nuw i8, ptr %.04138.i, i64 4
  store i16 %i.ca, ptr %i.bu, align 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.344.i = phi ptr [ %4, %bb.aa ], [ %3, %bb.x ] ; 2 uses
  %i.cb = icmp ult ptr %i.bi, %i.l
  br i1 %i.cb, label %bb.e, label %_ZN12v8_inspector12_GLOBAL__N_118convertUTF8ToUTF16EPPKcS2_PPDsS4_Pbb.exit

end_hunk_2
begin_hunk_3_@_ZN12v8_inspector11UTF8ToUTF16B5cxx11EPKcm:bb.a
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit

_ZN12v8_inspector12_GLOBAL__N_118convertUTF8ToUTF16EPPKcS2_PPDsS4_Pbb.exit: ; preds = %bb.ab
  %i.ce = ptrtoint ptr %.344.i to i64
  %i.cf = sub i64 %i.ce, %i.m                     ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8
end_hunk_3
