begin_hunk_0_@AttachGalley:bb.a
  %i.at = and i16 %i.af, 2
  %.not937 = icmp eq i16 %i.at, 0                 ; 2 uses
  %i.au = zext nneg i16 %i.ah to i64              ; 13 uses
  %4 = xor i32 %i.ai, 1                           ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.aw = zext nneg i32 %4 to i64                 ; 7 uses
  br label %bb.e
end_hunk_0
begin_hunk_1_@InterposeScale:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.af
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !8
  %3 = xor i32 %2, 1
  %i.at = zext nneg i32 %3 to i64                 ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
end_hunk_1
begin_hunk_2_@InterposeWideOrHigh:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = zext nneg i32 %1 to i64                 ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ah
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ah
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ah
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !8
  %2 = xor i32 %1, 1
  %i.ar = zext nneg i32 %2 to i64                 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
end_hunk_2
begin_hunk_3_@InterposeWideOrHigh:bb.a
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i32 8388607, ptr %i.ay, align 8, !tbaa !8
  %i.az = add nsw i32 %i.ao, %i.aj
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 72
end_hunk_3
