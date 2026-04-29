inline.NumInlined: 30
inline.NumDeleted: 5
begin_hunk_0_@Fgetlag:bb.a
.lr.ph434:                                        ; preds = %.preheader378
  %i.md = load ptr, ptr @Fgetlag.naisekiNoWa, align 8, !tbaa !26 ; 9 uses
  %i.me = add nsw i32 %i.k, %.0307                ; 7 uses
  %narrow = add nsw i32 %i.k, 1
  %i.mf = sext i32 %narrow to i64                 ; 5 uses
  %wide.trip.count553 = sext i32 %.0307 to i64    ; 7 uses
  %i.mg = xor i32 %i.k, -1
end_hunk_0
begin_hunk_1_@Fgetlag:bb.a
vector.ph707:                                     ; preds = %vector.memcheck695
  %n.vec709 = and i64 %i.mi, -4                   ; 3 uses
  %i.nb = add nsw i64 %n.vec709, %i.mf
  br label %vector.body710

vector.body710:                                   ; preds = %vector.body710, %vector.ph707
  %index711 = phi i64 [ 0, %vector.ph707 ], [ %index.next713, %vector.body710 ] ; 2 uses
  %7 = add i64 %index711, %i.mf                   ; 2 uses
  %8 = trunc i64 %7 to i32                        ; 4 uses
  %.neg731 = xor i32 %8, -1
  %i.nc = add i32 %8, 2
  %i.nd = add i32 %8, 3
end_hunk_1
begin_hunk_2_@Fgetlag:bb.a
  %i.nv = load double, ptr %i.np, align 8, !tbaa !40, !alias.scope !64
  %i.nw = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %i.nv, i64 1
  %gep800 = getelementptr inbounds [8 x i8], ptr %.pre630.pre, i64 %7 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %gep800, i64 16
  store <2 x double> %i.nt, ptr %gep800, align 8, !tbaa !34, !alias.scope !67, !noalias !64
  store <2 x double> %i.nx, ptr %i.ny, align 8, !tbaa !34, !alias.scope !67, !noalias !64
end_hunk_2
begin_hunk_3_@Falign:bb.a
.lr.ph506:                                        ; preds = %.preheader448
  %i.lp = load ptr, ptr @Falign.naisekiNoWa, align 8, !tbaa !26 ; 9 uses
  %i.lq = add nsw i32 %i.k, %.0371                ; 7 uses
  %narrow = add nsw i32 %i.k, 1
  %i.lr = sext i32 %narrow to i64                 ; 5 uses
  %wide.trip.count642 = sext i32 %.0371 to i64    ; 7 uses
  %i.ls = xor i32 %i.k, -1
end_hunk_3
begin_hunk_4_@Falign:bb.a
vector.ph820:                                     ; preds = %vector.memcheck808
  %n.vec822 = and i64 %i.lu, -4                   ; 3 uses
  %i.mn = add nsw i64 %n.vec822, %i.lr
  br label %vector.body823

vector.body823:                                   ; preds = %vector.body823, %vector.ph820
  %index824 = phi i64 [ 0, %vector.ph820 ], [ %index.next826, %vector.body823 ] ; 2 uses
  %8 = add i64 %index824, %i.lr                   ; 2 uses
  %9 = trunc i64 %8 to i32                        ; 4 uses
  %.neg844 = xor i32 %9, -1
  %i.mo = add i32 %9, 2
  %i.mp = add i32 %9, 3
end_hunk_4
begin_hunk_5_@Falign:bb.a
  %i.nh = load double, ptr %i.nb, align 8, !tbaa !40, !alias.scope !135
  %i.ni = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.nj = insertelement <2 x double> %i.ni, double %i.nh, i64 1
  %gep912 = getelementptr inbounds [8 x i8], ptr %.pre735.pre, i64 %8 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %gep912, i64 16
  store <2 x double> %i.nf, ptr %gep912, align 8, !tbaa !34, !alias.scope !138, !noalias !135
  store <2 x double> %i.nj, ptr %i.nk, align 8, !tbaa !34, !alias.scope !138, !noalias !135
end_hunk_5
begin_hunk_6_@Falign_noudp:bb.a
.lr.ph559:                                        ; preds = %.preheader495
  %i.na = load ptr, ptr @Falign_noudp.naisekiNoWa, align 8, !tbaa !26 ; 9 uses
  %i.nb = add nsw i32 %i.i, %.0412                ; 7 uses
  %narrow = add nsw i32 %i.i, 1
  %i.nc = sext i32 %narrow to i64                 ; 5 uses
  %wide.trip.count717 = sext i32 %.0412 to i64    ; 7 uses
  %i.nd = xor i32 %i.i, -1
end_hunk_6
begin_hunk_7_@Falign_noudp:bb.a
vector.ph930:                                     ; preds = %vector.memcheck918
  %n.vec932 = and i64 %i.nf, -4                   ; 3 uses
  %i.ny = add nsw i64 %n.vec932, %i.nc
  br label %vector.body933

vector.body933:                                   ; preds = %vector.body933, %vector.ph930
  %index934 = phi i64 [ 0, %vector.ph930 ], [ %index.next936, %vector.body933 ] ; 2 uses
  %8 = add i64 %index934, %i.nc                   ; 2 uses
  %9 = trunc i64 %8 to i32                        ; 4 uses
  %.neg954 = xor i32 %9, -1
  %i.nz = add i32 %9, 2
  %i.oa = add i32 %9, 3
end_hunk_7
begin_hunk_8_@Falign_noudp:bb.a
  %i.os = load double, ptr %i.om, align 8, !tbaa !40, !alias.scope !192
  %i.ot = insertelement <2 x double> poison, double %i.or, i64 0
  %i.ou = insertelement <2 x double> %i.ot, double %i.os, i64 1
  %gep1024 = getelementptr inbounds [8 x i8], ptr %.pre814.pre, i64 %8 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %gep1024, i64 16
  store <2 x double> %i.oq, ptr %gep1024, align 8, !tbaa !34, !alias.scope !195, !noalias !192
  store <2 x double> %i.ou, ptr %i.ov, align 8, !tbaa !34, !alias.scope !195, !noalias !192
end_hunk_8
begin_hunk_9_@Falign_udpari_long:bb.a
.lr.ph502:                                        ; preds = %.preheader436
  %i.nb = load ptr, ptr @Falign_udpari_long.naisekiNoWa, align 8, !tbaa !26 ; 9 uses
  %i.nc = add nsw i32 %i.j, %.0346                ; 7 uses
  %narrow = add nsw i32 %i.j, 1
  %i.nd = sext i32 %narrow to i64                 ; 5 uses
  %wide.trip.count654 = sext i32 %.0346 to i64    ; 7 uses
  %i.ne = xor i32 %i.j, -1
end_hunk_9
begin_hunk_10_@Falign_udpari_long:bb.a
vector.ph849:                                     ; preds = %vector.memcheck837
  %n.vec851 = and i64 %i.ng, -4                   ; 3 uses
  %i.nz = add nsw i64 %n.vec851, %i.nd
  br label %vector.body852

vector.body852:                                   ; preds = %vector.body852, %vector.ph849
  %index853 = phi i64 [ 0, %vector.ph849 ], [ %index.next855, %vector.body852 ] ; 2 uses
  %8 = add i64 %index853, %i.nd                   ; 2 uses
  %9 = trunc i64 %8 to i32                        ; 4 uses
  %.neg873 = xor i32 %9, -1
  %i.oa = add i32 %9, 2
  %i.ob = add i32 %9, 3
end_hunk_10
begin_hunk_11_@Falign_udpari_long:bb.a
  %i.ot = load double, ptr %i.on, align 8, !tbaa !40, !alias.scope !247
  %i.ou = insertelement <2 x double> poison, double %i.os, i64 0
  %i.ov = insertelement <2 x double> %i.ou, double %i.ot, i64 1
  %gep941 = getelementptr inbounds [8 x i8], ptr %.pre747.pre, i64 %8 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %gep941, i64 16
  store <2 x double> %i.or, ptr %gep941, align 8, !tbaa !34, !alias.scope !250, !noalias !247
  store <2 x double> %i.ov, ptr %i.ow, align 8, !tbaa !34, !alias.scope !250, !noalias !247
end_hunk_11
