begin_hunk_0
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !111
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 8, !tbaa !112
  %1 = sext i16 %i.dg to i64                      ; 2 uses
  %2 = add nsw i64 %1, 1
  %3 = icmp ult i64 %2, 1152921504606846976
  br i1 %3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !71
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !113
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 4
  %i.dn = shl nsw i64 %1, 4
  %i.do = tail call ptr @luaM_realloc_(ptr noundef %i.b, ptr noundef %i.di, i64 noundef %i.dm, i64 noundef %i.dn) #6
  br label %bb.p

end_hunk_0
