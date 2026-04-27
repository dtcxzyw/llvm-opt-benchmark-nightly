inline.NumInlined: 2154
inline.NumDeleted: 448
begin_hunk_0_@_ZN4MeshC2Eiiiiddiii:.preheader217
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1096
end_hunk_0
begin_hunk_1_@_ZN4MeshC2Eiiiiddiii:.preheader217
  %i.dj = add nsw i32 %3, 1                       ; 2 uses
  %i.dk = sext i32 %i.dj to i64                   ; 29 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !62 ; 2 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ashr exact i64 %i.dn, 2                 ; 3 uses
  %i.dp = icmp ult i64 %i.do, %i.dk
  br i1 %i.dp, label %bb.c, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN4MeshC2Eiiiiddiii:.preheader217
  br i1 %i.dr, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr null, i64 %i.dk ; 2 uses
  %.not.i.i = icmp eq ptr %i.dm, %i.ds
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
end_hunk_2
