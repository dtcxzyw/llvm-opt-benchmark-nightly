inline.NumInlined: 12110
inline.NumDeleted: 10363
begin_hunk_0_@_ZN18duckdb_fastpforlib8internal14__fastunpack11EPKtPt:bb.a
  %i.ah = insertelement <8 x i16> %i.ag, i16 %i.aa, i64 3
  %i.ai = insertelement <8 x i16> %i.ah, i16 %i.z, i64 4
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.y, i64 5
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.x, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.an = load i16, ptr %i.k, align 2, !tbaa !7, !noalias !924 ; 3 uses
  %i.ao = insertelement <8 x i16> %i.w, i16 %i.an, i64 6
  %i.ap = shl <8 x i16> %i.ao, <i16 10, i16 0, i16 4, i16 9, i16 0, i16 3, i16 8, i16 0>
  %i.aq = and <8 x i16> %i.ap, <i16 1024, i16 2047, i16 2032, i16 1536, i16 2047, i16 2040, i16 1792, i16 2047> ; 2 uses
  %i.ar = lshr i16 %i.an, 3
  %i.as = insertelement <8 x i16> %i.ak, i16 %i.ar, i64 7 ; 2 uses
  %i.at = or disjoint <8 x i16> %i.as, %i.aq
  %i.au = and <8 x i16> %i.as, %i.aq
  %i.av = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <8 x i32> <i32 0, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  store <8 x i16> %i.av, ptr %i.f, align 2, !tbaa !7, !alias.scope !927
  %i.aw = load <2 x i16>, ptr %i.am, align 2, !tbaa !7, !noalias !928 ; 3 uses
  %i.ax = extractelement <2 x i16> %i.aw, i64 0
  %i.ay = lshr i16 %i.ax, 9
  %i.az = lshr i16 %i.an, 14
  %i.ba = shl <2 x i16> %i.aw, <i16 2, i16 7>
  %i.bb = and <2 x i16> %i.ba, <i16 2044, i16 1920>
  %i.bc = insertelement <2 x i16> poison, i16 %i.az, i64 0
  %i.bd = insertelement <2 x i16> %i.bc, i16 %i.ay, i64 1
  %i.be = or disjoint <2 x i16> %i.bb, %i.bd
  store <2 x i16> %i.be, ptr %i.al, align 2, !tbaa !7, !alias.scope !928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = extractelement <2 x i16> %i.aw, i64 1   ; 2 uses
  %i.bh = lshr i16 %i.bg, 4
  %i.bi = and i16 %i.bh, 2047
  store i16 %i.bi, ptr %i.bf, align 2, !tbaa !7, !alias.scope !932, !noalias !935
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bl = load <2 x i16>, ptr %i.bk, align 2, !tbaa !7, !noalias !940 ; 3 uses
  %i.bm = extractelement <2 x i16> %i.bl, i64 0
  %i.bn = lshr i16 %i.bm, 10
  %i.bo = lshr i16 %i.bg, 15
  %i.bp = shl <2 x i16> %i.bl, <i16 1, i16 6>
  %i.bq = and <2 x i16> %i.bp, <i16 2046, i16 1984>
  %i.br = insertelement <2 x i16> poison, i16 %i.bo, i64 0
  %i.bs = insertelement <2 x i16> %i.br, i16 %i.bn, i64 1
  %i.bt = or disjoint <2 x i16> %i.bq, %i.bs
  store <2 x i16> %i.bt, ptr %i.bj, align 2, !tbaa !7, !alias.scope !940
  %i.bu = extractelement <2 x i16> %i.bl, i64 1
  %i.bv = lshr i16 %i.bu, 5
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !7, !alias.scope !941, !noalias !946
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack12EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.c = load i16, ptr %0, align 2, !tbaa !7, !alias.scope !951, !noalias !962 ; 2 uses
  %i.d = and i16 %i.c, 4095
  store i16 %i.d, ptr %1, align 2, !tbaa !7, !alias.scope !962, !noalias !951
  %i.e = load <2 x i16>, ptr %i.b, align 2, !tbaa !7, !noalias !963 ; 3 uses
  %i.f = extractelement <2 x i16> %i.e, i64 0
  %i.g = lshr i16 %i.f, 8
  %i.h = lshr i16 %i.c, 12
  %i.i = shl <2 x i16> %i.e, <i16 4, i16 8>
  %i.j = and <2 x i16> %i.i, <i16 4080, i16 3840>
  %i.k = insertelement <2 x i16> poison, i16 %i.h, i64 0
  %i.l = insertelement <2 x i16> %i.k, i16 %i.g, i64 1
  %i.m = or disjoint <2 x i16> %i.j, %i.l
  store <2 x i16> %i.m, ptr %i.a, align 2, !tbaa !7, !alias.scope !963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.o = extractelement <2 x i16> %i.e, i64 1
  %i.p = lshr i16 %i.o, 4
  store i16 %i.p, ptr %i.n, align 2, !tbaa !7, !alias.scope !967
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.u = load i16, ptr %i.q, align 2, !tbaa !7, !alias.scope !973, !noalias !984 ; 2 uses
  %i.v = and i16 %i.u, 4095
  store i16 %i.v, ptr %i.r, align 2, !tbaa !7, !alias.scope !984, !noalias !973
  %i.w = load <2 x i16>, ptr %i.t, align 2, !tbaa !7, !noalias !985 ; 3 uses
  %i.x = extractelement <2 x i16> %i.w, i64 0
  %i.y = lshr i16 %i.x, 8
  %i.z = lshr i16 %i.u, 12
  %i.aa = shl <2 x i16> %i.w, <i16 4, i16 8>
  %i.ab = and <2 x i16> %i.aa, <i16 4080, i16 3840>
  %i.ac = insertelement <2 x i16> poison, i16 %i.z, i64 0
  %i.ad = insertelement <2 x i16> %i.ac, i16 %i.y, i64 1
  %i.ae = or disjoint <2 x i16> %i.ab, %i.ad
  store <2 x i16> %i.ae, ptr %i.s, align 2, !tbaa !7, !alias.scope !985
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ag = extractelement <2 x i16> %i.w, i64 1
  %i.ah = lshr i16 %i.ag, 4
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !7, !alias.scope !989
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.am = load i16, ptr %i.ai, align 2, !tbaa !7, !alias.scope !995, !noalias !1006 ; 2 uses
  %i.an = and i16 %i.am, 4095
  store i16 %i.an, ptr %i.aj, align 2, !tbaa !7, !alias.scope !1006, !noalias !995
  %i.ao = load <2 x i16>, ptr %i.al, align 2, !tbaa !7, !noalias !1007 ; 3 uses
  %i.ap = extractelement <2 x i16> %i.ao, i64 0
  %i.aq = lshr i16 %i.ap, 8
  %i.ar = lshr i16 %i.am, 12
  %i.as = shl <2 x i16> %i.ao, <i16 4, i16 8>
  %i.at = and <2 x i16> %i.as, <i16 4080, i16 3840>
  %i.au = insertelement <2 x i16> poison, i16 %i.ar, i64 0
  %i.av = insertelement <2 x i16> %i.au, i16 %i.aq, i64 1
  %i.aw = or disjoint <2 x i16> %i.at, %i.av
  store <2 x i16> %i.aw, ptr %i.ak, align 2, !tbaa !7, !alias.scope !1007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.ay = extractelement <2 x i16> %i.ao, i64 1
  %i.az = lshr i16 %i.ay, 4
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !7, !alias.scope !1011
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.be = load i16, ptr %i.ba, align 2, !tbaa !7, !alias.scope !1017, !noalias !1025 ; 2 uses
  %i.bf = and i16 %i.be, 4095
  store i16 %i.bf, ptr %i.bb, align 2, !tbaa !7, !alias.scope !1025, !noalias !1017
  %i.bg = load <2 x i16>, ptr %i.bd, align 2, !tbaa !7, !noalias !1026 ; 3 uses
  %i.bh = extractelement <2 x i16> %i.bg, i64 0
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = lshr i16 %i.be, 12
  %i.bk = shl <2 x i16> %i.bg, <i16 4, i16 8>
  %i.bl = and <2 x i16> %i.bk, <i16 4080, i16 3840>
  %i.bm = insertelement <2 x i16> poison, i16 %i.bj, i64 0
  %i.bn = insertelement <2 x i16> %i.bm, i16 %i.bi, i64 1
  %i.bo = or disjoint <2 x i16> %i.bl, %i.bn
  store <2 x i16> %i.bo, ptr %i.bc, align 2, !tbaa !7, !alias.scope !1026
  %i.bp = extractelement <2 x i16> %i.bg, i64 1
  %i.bq = lshr i16 %i.bp, 4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !7, !alias.scope !1027, !noalias !1032
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack13EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i16, ptr %i.d, align 2, !tbaa !7, !noalias !1067 ; 2 uses
  %i.i = load i16, ptr %i.c, align 2, !tbaa !7, !noalias !1070 ; 2 uses
  %i.j = load i16, ptr %i.b, align 2, !tbaa !7, !noalias !1073 ; 3 uses
  %i.k = load <4 x i16>, ptr %0, align 2, !tbaa !7, !noalias !20 ; 5 uses
  %i.l = extractelement <4 x i16> %i.k, i64 2
  %i.m = lshr i16 %i.l, 7
  %i.n = extractelement <4 x i16> %i.k, i64 1
  %i.o = lshr i16 %i.n, 10
  %i.p = extractelement <4 x i16> %i.k, i64 0
  %i.q = lshr i16 %i.p, 13
  %i.r = shl <4 x i16> %i.k, <i16 0, i16 3, i16 6, i16 9>
  %i.s = and <4 x i16> %i.r, <i16 8191, i16 8184, i16 8128, i16 7680>
  %i.t = insertelement <4 x i16> <i16 0, i16 poison, i16 poison, i16 poison>, i16 %i.q, i64 1
  %i.u = insertelement <4 x i16> %i.t, i16 %i.o, i64 2
  %i.v = insertelement <4 x i16> %i.u, i16 %i.m, i64 3
  %i.w = or <4 x i16> %i.s, %i.v
  store <4 x i16> %i.w, ptr %1, align 2, !tbaa !7
  %i.x = load i16, ptr %i.f, align 2, !tbaa !7, !noalias !1076 ; 3 uses
  %i.y = load i16, ptr %i.e, align 2, !tbaa !7, !noalias !1079 ; 2 uses
  %i.z = insertelement <8 x i16> <i16 poison, i16 -1, i16 poison, i16 poison, i16 poison, i16 poison, i16 -1, i16 -1>, i16 %i.j, i64 0
  %i.aa = insertelement <8 x i16> %i.z, i16 %i.i, i64 2
  %i.ab = insertelement <8 x i16> %i.aa, i16 %i.h, i64 3
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.y, i64 4
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.x, i64 5
  %i.ae = shl <8 x i16> %i.ad, <i16 12, i16 0, i16 2, i16 5, i16 8, i16 11, i16 0, i16 0>
  %i.af = lshr i16 %i.x, 15
  %i.ag = insertelement <8 x i16> <i16 4096, i16 8191, i16 8188, i16 8160, i16 7936, i16 6144, i16 8191, i16 poison>, i16 %i.af, i64 7
  %i.ah = and <8 x i16> %i.ag, %i.ae              ; 2 uses
  %i.ai = lshr i16 %i.x, 2
  %i.aj = lshr i16 %i.y, 5
  %i.ak = lshr i16 %i.h, 8
  %i.al = lshr i16 %i.i, 11
  %i.am = lshr i16 %i.j, 14
  %i.an = lshr i16 %i.j, 1
  %i.ao = extractelement <4 x i16> %i.k, i64 3
  %i.ap = lshr i16 %i.ao, 4
  %i.aq = insertelement <8 x i16> poison, i16 %i.ap, i64 0
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.an, i64 1
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.am, i64 2
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 3
  %i.au = insertelement <8 x i16> %i.at, i16 %i.ak, i64 4
  %i.av = insertelement <8 x i16> %i.au, i16 %i.aj, i64 5
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ai, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !7, !noalias !1085 ; 2 uses
  %i.bc = load i16, ptr %i.az, align 2, !tbaa !7, !noalias !1092 ; 2 uses
  %i.bd = load i16, ptr %i.ay, align 2, !tbaa !7, !noalias !1095 ; 2 uses
  %i.be = load i16, ptr %i.g, align 2, !tbaa !7, !noalias !1098 ; 2 uses
  %i.bf = shl i16 %i.be, 1
  %i.bg = and i16 %i.bf, 8190
  %i.bh = insertelement <8 x i16> %i.aw, i16 %i.bg, i64 7 ; 2 uses
  %i.bi = or disjoint <8 x i16> %i.bh, %i.ah
  %i.bj = and <8 x i16> %i.bh, %i.ah
  %i.bk = shufflevector <8 x i16> %i.bi, <8 x i16> %i.bj, <8 x i32> <i32 0, i32 9, i32 2, i32 3, i32 4, i32 5, i32 14, i32 7>
  store <8 x i16> %i.bk, ptr %i.a, align 2, !tbaa !7, !alias.scope !1101
  %i.bl = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 -1>, i16 %i.bd, i64 0
  %i.bm = insertelement <4 x i16> %i.bl, i16 %i.bc, i64 1
  %i.bn = insertelement <4 x i16> %i.bm, i16 %i.bb, i64 2
  %i.bo = shl <4 x i16> %i.bn, <i16 4, i16 7, i16 10, i16 0>
  %i.bp = and <4 x i16> %i.bo, <i16 8176, i16 8064, i16 7168, i16 0>
  %i.bq = lshr i16 %i.bb, 3
  %i.br = lshr i16 %i.bc, 6
  %i.bs = lshr i16 %i.bd, 9
  %i.bt = lshr i16 %i.be, 12
  %i.bu = insertelement <4 x i16> poison, i16 %i.bt, i64 0
  %i.bv = insertelement <4 x i16> %i.bu, i16 %i.bs, i64 1
  %i.bw = insertelement <4 x i16> %i.bv, i16 %i.br, i64 2
  %i.bx = insertelement <4 x i16> %i.bw, i16 %i.bq, i64 3
  %i.by = or disjoint <4 x i16> %i.bx, %i.bp
  store <4 x i16> %i.by, ptr %i.ax, align 2, !tbaa !7, !alias.scope !1102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack14EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %i.c = load i16, ptr %0, align 2, !tbaa !7, !alias.scope !1106, !noalias !1123 ; 2 uses
  %i.d = and i16 %i.c, 16383
  store i16 %i.d, ptr %1, align 2, !tbaa !7, !alias.scope !1123, !noalias !1106
  %i.e = load <4 x i16>, ptr %i.b, align 2, !tbaa !7, !noalias !1124 ; 5 uses
  %i.f = extractelement <4 x i16> %i.e, i64 2
  %i.g = lshr i16 %i.f, 8
  %i.h = extractelement <4 x i16> %i.e, i64 1
  %i.i = lshr i16 %i.h, 10
  %i.j = extractelement <4 x i16> %i.e, i64 0
  %i.k = lshr i16 %i.j, 12
  %i.l = lshr i16 %i.c, 14
  %i.m = shl <4 x i16> %i.e, <i16 2, i16 4, i16 6, i16 8>
  %i.n = and <4 x i16> %i.m, <i16 16380, i16 16368, i16 16320, i16 16128>
  %i.o = insertelement <4 x i16> poison, i16 %i.l, i64 0
  %i.p = insertelement <4 x i16> %i.o, i16 %i.k, i64 1
  %i.q = insertelement <4 x i16> %i.p, i16 %i.i, i64 2
  %i.r = insertelement <4 x i16> %i.q, i16 %i.g, i64 3
  %i.s = or disjoint <4 x i16> %i.n, %i.r
  store <4 x i16> %i.s, ptr %i.a, align 2, !tbaa !7, !alias.scope !1124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.u = extractelement <4 x i16> %i.e, i64 3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.w = load <2 x i16>, ptr %i.v, align 2, !tbaa !7, !noalias !1131 ; 3 uses
  %i.x = extractelement <2 x i16> %i.w, i64 0
  %i.y = lshr i16 %i.x, 4
  %i.z = lshr i16 %i.u, 6
  %i.aa = shl <2 x i16> %i.w, <i16 10, i16 12>
  %i.ab = and <2 x i16> %i.aa, <i16 15360, i16 12288>
  %i.ac = insertelement <2 x i16> poison, i16 %i.z, i64 0
  %i.ad = insertelement <2 x i16> %i.ac, i16 %i.y, i64 1
  %i.ae = or disjoint <2 x i16> %i.ab, %i.ad
  store <2 x i16> %i.ae, ptr %i.t, align 2, !tbaa !7, !alias.scope !1131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ag = extractelement <2 x i16> %i.w, i64 1
  %i.ah = lshr i16 %i.ag, 2
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !7, !alias.scope !1135
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.am = load i16, ptr %i.ai, align 2, !tbaa !7, !alias.scope !1141, !noalias !1158 ; 2 uses
  %i.an = and i16 %i.am, 16383
  store i16 %i.an, ptr %i.aj, align 2, !tbaa !7, !alias.scope !1158, !noalias !1141
  %i.ao = load <4 x i16>, ptr %i.al, align 2, !tbaa !7, !noalias !1159 ; 5 uses
  %i.ap = extractelement <4 x i16> %i.ao, i64 2
  %i.aq = lshr i16 %i.ap, 8
  %i.ar = extractelement <4 x i16> %i.ao, i64 1
  %i.as = lshr i16 %i.ar, 10
  %i.at = extractelement <4 x i16> %i.ao, i64 0
  %i.au = lshr i16 %i.at, 12
  %i.av = lshr i16 %i.am, 14
  %i.aw = shl <4 x i16> %i.ao, <i16 2, i16 4, i16 6, i16 8>
  %i.ax = and <4 x i16> %i.aw, <i16 16380, i16 16368, i16 16320, i16 16128>
  %i.ay = insertelement <4 x i16> poison, i16 %i.av, i64 0
  %i.az = insertelement <4 x i16> %i.ay, i16 %i.au, i64 1
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.as, i64 2
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.aq, i64 3
  %i.bc = or disjoint <4 x i16> %i.ax, %i.bb
  store <4 x i16> %i.bc, ptr %i.ak, align 2, !tbaa !7, !alias.scope !1159
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.be = extractelement <4 x i16> %i.ao, i64 3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load <2 x i16>, ptr %i.bf, align 2, !tbaa !7, !noalias !1163 ; 3 uses
  %i.bh = extractelement <2 x i16> %i.bg, i64 0
  %i.bi = lshr i16 %i.bh, 4
  %i.bj = lshr i16 %i.be, 6
  %i.bk = shl <2 x i16> %i.bg, <i16 10, i16 12>
  %i.bl = and <2 x i16> %i.bk, <i16 15360, i16 12288>
  %i.bm = insertelement <2 x i16> poison, i16 %i.bj, i64 0
  %i.bn = insertelement <2 x i16> %i.bm, i16 %i.bi, i64 1
  %i.bo = or disjoint <2 x i16> %i.bl, %i.bn
  store <2 x i16> %i.bo, ptr %i.bd, align 2, !tbaa !7, !alias.scope !1163
  %i.bp = extractelement <2 x i16> %i.bg, i64 1
  %i.bq = lshr i16 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !7, !alias.scope !1164, !noalias !1169
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack15EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.a = load <8 x i16>, ptr %0, align 2, !tbaa !7, !noalias !20 ; 9 uses
  %i.b = extractelement <8 x i16> %i.a, i64 6
  %i.c = lshr i16 %i.b, 9
  %i.d = extractelement <8 x i16> %i.a, i64 5
  %i.e = lshr i16 %i.d, 10
  %i.f = extractelement <8 x i16> %i.a, i64 4
  %i.g = lshr i16 %i.f, 11
  %i.h = extractelement <8 x i16> %i.a, i64 3
  %i.i = lshr i16 %i.h, 12
  %i.j = extractelement <8 x i16> %i.a, i64 2
  %i.k = lshr i16 %i.j, 13
  %i.l = extractelement <8 x i16> %i.a, i64 1
  %i.m = lshr i16 %i.l, 14
  %i.n = extractelement <8 x i16> %i.a, i64 0
  %i.o = lshr i16 %i.n, 15
  %i.p = shl <8 x i16> %i.a, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %i.q = and <8 x i16> %i.p, <i16 32767, i16 32766, i16 32764, i16 32760, i16 32752, i16 32736, i16 32704, i16 32640>
  %i.r = insertelement <8 x i16> <i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, i16 %i.o, i64 1
  %i.s = insertelement <8 x i16> %i.r, i16 %i.m, i64 2
  %i.t = insertelement <8 x i16> %i.s, i16 %i.k, i64 3
  %i.u = insertelement <8 x i16> %i.t, i16 %i.i, i64 4
  %i.v = insertelement <8 x i16> %i.u, i16 %i.g, i64 5
  %i.w = insertelement <8 x i16> %i.v, i16 %i.e, i64 6
  %i.x = insertelement <8 x i16> %i.w, i16 %i.c, i64 7
  %i.y = or <8 x i16> %i.q, %i.x
  store <8 x i16> %i.y, ptr %1, align 2, !tbaa !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = extractelement <8 x i16> %i.a, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load <4 x i16>, ptr %i.ab, align 2, !tbaa !7, !noalias !1192 ; 5 uses
  %i.ag = load i16, ptr %i.ae, align 2, !tbaa !7, !noalias !1193 ; 2 uses
  %i.ah = load i16, ptr %i.ad, align 2, !tbaa !7, !noalias !1208 ; 2 uses
  %i.ai = load i16, ptr %i.ac, align 2, !tbaa !7, !noalias !1211 ; 2 uses
  %i.aj = insertelement <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 -1>, i16 %i.ai, i64 4
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ah, i64 5
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ag, i64 6
  %i.am = shufflevector <4 x i16> %i.af, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <8 x i16> %i.am, <8 x i16> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ao = shl <8 x i16> %i.an, <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 0>
  %i.ap = and <8 x i16> %i.ao, <i16 32512, i16 32256, i16 31744, i16 30720, i16 28672, i16 24576, i16 16384, i16 0>
  %i.aq = lshr i16 %i.ag, 1
  %i.ar = lshr i16 %i.ah, 2
  %i.as = lshr i16 %i.ai, 3
  %i.at = extractelement <4 x i16> %i.af, i64 3
  %i.au = lshr i16 %i.at, 4
  %i.av = extractelement <4 x i16> %i.af, i64 2
  %i.aw = lshr i16 %i.av, 5
  %i.ax = extractelement <4 x i16> %i.af, i64 1
  %i.ay = lshr i16 %i.ax, 6
  %i.az = extractelement <4 x i16> %i.af, i64 0
  %i.ba = lshr i16 %i.az, 7
  %i.bb = lshr i16 %i.aa, 8
  %i.bc = insertelement <8 x i16> poison, i16 %i.bb, i64 0
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.ba, i64 1
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.ay, i64 2
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.aw, i64 3
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.au, i64 4
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.as, i64 5
  %i.bi = insertelement <8 x i16> %i.bh, i16 %i.ar, i64 6
  %i.bj = insertelement <8 x i16> %i.bi, i16 %i.aq, i64 7
  %i.bk = or disjoint <8 x i16> %i.bj, %i.ap
  store <8 x i16> %i.bk, ptr %i.z, align 2, !tbaa !7, !alias.scope !1192
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack16EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %1, ptr noundef nonnull align 2 dereferenceable(32) %0, i64 32, i1 false), !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18duckdb_fastpforlib8internal13__fastunpack1EPKjPj(ptr noalias noundef %0, ptr noalias noundef initializes((0, 16)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !1214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.b = load i32, ptr %0, align 4, !tbaa !3, !alias.scope !1220, !noalias !1225 ; 4 uses
  %i.c = and i32 %i.b, 1
  store i32 %i.c, ptr %1, align 4, !tbaa !3, !alias.scope !1225, !noalias !1220
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = lshr i32 %i.b, 1
  %i.f = and i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !3, !alias.scope !1226, !noalias !1231
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = lshr i32 %i.b, 2
  %i.i = and i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !3, !alias.scope !1233, !noalias !1238
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = lshr i32 %i.b, 3
  %i.l = and i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !3, !alias.scope !1240, !noalias !1245
  call void @_ZN18duckdb_fastpforlib8internal8UnrollerILt1ELt4EE6UnpackERrPKjPj(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18duckdb_fastpforlib8internal13__fastunpack2EPKjPj(ptr noalias noundef %0, ptr noalias noundef initializes((0, 16)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !1214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.b = load i32, ptr %0, align 4, !tbaa !3, !alias.scope !1250, !noalias !1255 ; 4 uses
  %i.c = and i32 %i.b, 3
  store i32 %i.c, ptr %1, align 4, !tbaa !3, !alias.scope !1255, !noalias !1250
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = lshr i32 %i.b, 2
  %i.f = and i32 %i.e, 3
  store i32 %i.f, ptr %i.d, align 4, !tbaa !3, !alias.scope !1256, !noalias !1261
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = lshr i32 %i.b, 4
  %i.i = and i32 %i.h, 3
  store i32 %i.i, ptr %i.g, align 4, !tbaa !3, !alias.scope !1263, !noalias !1268
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = lshr i32 %i.b, 6
  %i.l = and i32 %i.k, 3
  store i32 %i.l, ptr %i.j, align 4, !tbaa !3, !alias.scope !1270, !noalias !1275
  call void @_ZN18duckdb_fastpforlib8internal8UnrollerILt2ELt4EE6UnpackERrPKjPj(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal13__fastunpack3EPKjPj(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 128)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.a = load i32, ptr %0, align 4, !tbaa !3, !alias.scope !1280, !noalias !1285 ; 11 uses
  %i.b = and i32 %i.a, 7
  store i32 %i.b, ptr %1, align 4, !tbaa !3, !alias.scope !1285, !noalias !1280
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = lshr i32 %i.a, 3
  %i.e = and i32 %i.d, 7
  store i32 %i.e, ptr %i.c, align 4, !tbaa !3, !alias.scope !1286, !noalias !1291
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = lshr i32 %i.a, 6
  %i.h = and i32 %i.g, 7
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3, !alias.scope !1293, !noalias !1298
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = lshr i32 %i.a, 9
  %i.k = and i32 %i.j, 7
  store i32 %i.k, ptr %i.i, align 4, !tbaa !3, !alias.scope !1300, !noalias !1305
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = lshr i32 %i.a, 12
  %i.n = and i32 %i.m, 7
  store i32 %i.n, ptr %i.l, align 4, !tbaa !3, !alias.scope !1307, !noalias !1312
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = lshr i32 %i.a, 15
  %i.q = and i32 %i.p, 7
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3, !alias.scope !1314, !noalias !1319
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = lshr i32 %i.a, 18
  %i.t = and i32 %i.s, 7
  store i32 %i.t, ptr %i.r, align 4, !tbaa !3, !alias.scope !1321, !noalias !1326
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = lshr i32 %i.a, 21
  %i.w = and i32 %i.v, 7
  store i32 %i.w, ptr %i.u, align 4, !tbaa !3, !alias.scope !1331, !noalias !1334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = lshr i32 %i.a, 24
  %i.z = and i32 %i.y, 7
  store i32 %i.z, ptr %i.x, align 4, !tbaa !3, !alias.scope !1339, !noalias !1342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ab = lshr i32 %i.a, 27
  %i.ac = and i32 %i.ab, 7
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !3, !alias.scope !1347, !noalias !1350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.ae = lshr i32 %i.a, 30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !1358 ; 12 uses
  %i.ah = shl i32 %i.ag, 2
  %i.ai = and i32 %i.ah, 4
  %i.aj = or disjoint i32 %i.ai, %i.ae
  store i32 %i.aj, ptr %i.ad, align 4, !tbaa !3, !alias.scope !1358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.al = lshr i32 %i.ag, 1
  %i.am = and i32 %i.al, 7
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !3, !alias.scope !1362, !noalias !1365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = lshr i32 %i.ag, 4
  %i.ap = and i32 %i.ao, 7
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !3, !alias.scope !1370, !noalias !1373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ar = lshr i32 %i.ag, 7
  %i.as = and i32 %i.ar, 7
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !3, !alias.scope !1378, !noalias !1381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = lshr i32 %i.ag, 10
  %i.av = and i32 %i.au, 7
  store i32 %i.av, ptr %i.at, align 4, !tbaa !3, !alias.scope !1386, !noalias !1389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ax = lshr i32 %i.ag, 13
  %i.ay = and i32 %i.ax, 7
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !3, !alias.scope !1394, !noalias !1397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ba = lshr i32 %i.ag, 16
  %i.bb = and i32 %i.ba, 7
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !3, !alias.scope !1402, !noalias !1405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bd = lshr i32 %i.ag, 19
  %i.be = and i32 %i.bd, 7
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !3, !alias.scope !1410, !noalias !1413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
end_hunk_0
begin_hunk_1_@_ZN18duckdb_fastpforlib8internal11__fastpack7EPKtPt:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8956)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8961)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.f = load <8 x i16>, ptr %0, align 2, !tbaa !7, !alias.scope !8913, !noalias !8916 ; 3 uses
  %i.g = load i16, ptr %i.c, align 2, !tbaa !7, !alias.scope !8963, !noalias !8964
  %i.h = load i16, ptr %i.b, align 2, !tbaa !7, !alias.scope !8965, !noalias !8966
  %i.i = load i16, ptr %i.a, align 2, !tbaa !7, !alias.scope !8967, !noalias !8968
  %i.j = lshr i16 %i.i, 2
  %i.k = lshr i16 %i.h, 4
  %i.l = lshr i16 %i.g, 6
  %i.m = and i16 %i.l, 1
  %i.n = shufflevector <8 x i16> %i.f, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 7> ; 2 uses
  %i.o = shufflevector <4 x i16> <i16 -1, i16 -1, i16 -1, i16 poison>, <4 x i16> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.p = shl <4 x i16> %i.o, <i16 0, i16 0, i16 0, i16 1>
  %i.q = and <4 x i16> %i.p, <i16 127, i16 31, i16 7, i16 254> ; 2 uses
  %i.r = insertelement <4 x i16> %i.n, i16 %i.j, i64 1
  %i.s = insertelement <4 x i16> %i.r, i16 %i.k, i64 2
  %i.t = insertelement <4 x i16> %i.s, i16 %i.m, i64 3 ; 2 uses
  %i.u = and <4 x i16> %i.t, %i.q
  %i.v = or disjoint <4 x i16> %i.t, %i.q
  %i.w = shufflevector <4 x i16> %i.u, <4 x i16> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.x = load <2 x i16>, ptr %i.d, align 2, !tbaa !7, !alias.scope !8969, !noalias !8970
  %i.y = shufflevector <8 x i16> %i.f, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 poison>
  %i.z = shufflevector <2 x i16> %i.x, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aa = shufflevector <4 x i16> %i.y, <4 x i16> %i.z, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ab = shl <4 x i16> %i.aa, <i16 7, i16 5, i16 3, i16 8>
  %i.ac = and <4 x i16> %i.ab, <i16 16256, i16 4064, i16 1016, i16 32512>
  %i.ad = shufflevector <8 x i16> %i.f, <8 x i16> poison, <4 x i32> <i32 2, i32 4, i32 6, i32 poison>
  %i.ae = shufflevector <4 x i16> %i.ad, <4 x i16> %i.z, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.af = shl <4 x i16> %i.ae, <i16 14, i16 12, i16 10, i16 15>
  %i.ag = or disjoint <4 x i16> %i.af, %i.ac
  %i.ah = or disjoint <4 x i16> %i.ag, %i.w
  store <4 x i16> %i.ah, ptr %1, align 2, !tbaa !7, !alias.scope !8968, !noalias !8967
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8974)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8979)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8984)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8989)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.an = load i16, ptr %i.am, align 2, !tbaa !7, !alias.scope !8991, !noalias !8992 ; 2 uses
  %i.ao = load i16, ptr %i.al, align 2, !tbaa !7, !alias.scope !8993, !noalias !8994
  %i.ap = load i16, ptr %i.ak, align 2, !tbaa !7, !alias.scope !8995, !noalias !8996 ; 2 uses
  %i.aq = load i16, ptr %i.aj, align 2, !tbaa !7, !alias.scope !8997, !noalias !8998
  %i.ar = load i16, ptr %i.e, align 2, !tbaa !7, !alias.scope !8999, !noalias !9000
  %i.as = lshr i16 %i.ap, 3
  %i.at = lshr i16 %i.ar, 1
  %i.au = insertelement <2 x i16> poison, i16 %i.at, i64 0
  %i.av = insertelement <2 x i16> %i.au, i16 %i.as, i64 1
  %i.aw = and <2 x i16> %i.av, <i16 63, i16 15>
  %i.ax = insertelement <2 x i16> poison, i16 %i.aq, i64 0
  %i.ay = insertelement <2 x i16> %i.ax, i16 %i.ao, i64 1
  %i.az = shl <2 x i16> %i.ay, <i16 6, i16 4>
  %i.ba = and <2 x i16> %i.az, <i16 8128, i16 2032>
  %i.bb = insertelement <2 x i16> poison, i16 %i.ap, i64 0
  %i.bc = insertelement <2 x i16> %i.bb, i16 %i.an, i64 1
  %i.bd = shl <2 x i16> %i.bc, <i16 13, i16 11>
  %i.be = or disjoint <2 x i16> %i.bd, %i.ba
  %i.bf = or disjoint <2 x i16> %i.be, %i.aw
  store <2 x i16> %i.bf, ptr %i.ai, align 2, !tbaa !7, !alias.scope !8996, !noalias !8995
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bh = lshr i16 %i.an, 5
  %i.bi = and i16 %i.bh, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9004)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !7, !alias.scope !9006, !noalias !9007
  %i.bl = shl i16 %i.bk, 2
  %i.bm = and i16 %i.bl, 508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9011)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !7, !alias.scope !9013, !noalias !9014
  %i.bp = shl i16 %i.bo, 9
  %i.bq = or disjoint i16 %i.bp, %i.bm
  %i.br = or disjoint i16 %i.bq, %i.bi
  store i16 %i.br, ptr %i.bg, align 2, !tbaa !7, !alias.scope !9014, !noalias !9013
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack8EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9018)
  %i.a = load <16 x i16>, ptr %0, align 2, !tbaa !7, !alias.scope !9015, !noalias !9018 ; 2 uses
  %i.b = shufflevector <16 x i16> %i.a, <16 x i16> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.c = and <8 x i16> %i.b, splat (i16 255)
  %i.d = shufflevector <16 x i16> %i.a, <16 x i16> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.e = shl <8 x i16> %i.d, splat (i16 8)
  %i.f = or disjoint <8 x i16> %i.e, %i.c
  store <8 x i16> %i.f, ptr %1, align 2, !tbaa !7, !alias.scope !9020, !noalias !9023
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack9EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 18)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9033)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9038)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9043)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9048)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9053)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9058)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9063)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9068)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9073)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9078)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9083)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9088)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9093)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9098)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i16, ptr %i.g, align 2, !tbaa !7, !alias.scope !9100, !noalias !9101 ; 2 uses
  %i.p = load i16, ptr %i.f, align 2, !tbaa !7, !alias.scope !9102, !noalias !9103
  %i.q = load i16, ptr %i.e, align 2, !tbaa !7, !alias.scope !9104, !noalias !9105 ; 2 uses
  %i.r = load i16, ptr %i.d, align 2, !tbaa !7, !alias.scope !9106, !noalias !9107
  %i.s = load i16, ptr %i.c, align 2, !tbaa !7, !alias.scope !9108, !noalias !9109 ; 2 uses
  %i.t = load i16, ptr %i.b, align 2, !tbaa !7, !alias.scope !9110, !noalias !9111
  %i.u = load i16, ptr %i.a, align 2, !tbaa !7, !alias.scope !9112, !noalias !9113 ; 2 uses
  %i.v = load i16, ptr %0, align 2, !tbaa !7, !alias.scope !9025, !noalias !9028
  %i.w = load i16, ptr %i.n, align 2, !tbaa !7, !alias.scope !9114, !noalias !9115 ; 2 uses
  %i.x = load i16, ptr %i.m, align 2, !tbaa !7, !alias.scope !9116, !noalias !9117
  %i.y = load i16, ptr %i.l, align 2, !tbaa !7, !alias.scope !9118, !noalias !9119 ; 2 uses
  %i.z = load i16, ptr %i.k, align 2, !tbaa !7, !alias.scope !9120, !noalias !9121
  %i.aa = load i16, ptr %i.j, align 2, !tbaa !7, !alias.scope !9122, !noalias !9123 ; 2 uses
  %i.ab = load i16, ptr %i.i, align 2, !tbaa !7, !alias.scope !9124, !noalias !9125
  %i.ac = load i16, ptr %i.h, align 2, !tbaa !7, !alias.scope !9126, !noalias !9127 ; 2 uses
  %i.ad = lshr i16 %i.y, 4
  %i.ae = lshr i16 %i.aa, 6
  %i.af = lshr i16 %i.ac, 8
  %i.ag = shl i16 %i.ac, 8
  %i.ah = lshr i16 %i.q, 3
  %i.ai = lshr i16 %i.s, 5
  %i.aj = lshr i16 %i.u, 7
  %i.ak = shl i16 %i.u, 9
  %i.al = insertelement <8 x i16> poison, i16 %i.ak, i64 0
  %i.am = insertelement <8 x i16> %i.al, i16 %i.aj, i64 1
  %i.an = insertelement <8 x i16> %i.am, i16 %i.ai, i64 2
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ah, i64 3
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ag, i64 4
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.af, i64 5
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.ae, i64 6
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ad, i64 7
  %i.at = and <8 x i16> %i.as, <i16 -1, i16 3, i16 15, i16 63, i16 -1, i16 1, i16 7, i16 31>
  %i.au = lshr i16 %i.o, 1
  %i.av = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.t, i64 1
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.r, i64 2
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.p, i64 3
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.au, i64 4
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.ab, i64 5
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.z, i64 6
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.x, i64 7
  %i.bd = shl <8 x i16> %i.bc, <i16 0, i16 2, i16 4, i16 6, i16 0, i16 1, i16 3, i16 5>
  %i.be = and <8 x i16> %i.bd, <i16 511, i16 2044, i16 8176, i16 32704, i16 255, i16 1022, i16 4088, i16 16352>
  %i.bf = insertelement <8 x i16> <i16 0, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison>, i16 %i.s, i64 1
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.q, i64 2
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.o, i64 3
  %i.bi = insertelement <8 x i16> %i.bh, i16 %i.aa, i64 5
  %i.bj = insertelement <8 x i16> %i.bi, i16 %i.y, i64 6
  %i.bk = insertelement <8 x i16> %i.bj, i16 %i.w, i64 7
  %i.bl = shl <8 x i16> %i.bk, <i16 0, i16 11, i16 13, i16 15, i16 0, i16 10, i16 12, i16 14>
  %i.bm = or <8 x i16> %i.be, %i.bl
  %i.bn = or disjoint <8 x i16> %i.at, %i.bm
  store <8 x i16> %i.bn, ptr %1, align 2, !tbaa !7, !alias.scope !9113, !noalias !9112
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = lshr i16 %i.w, 2
  %i.bq = and i16 %i.bp, 127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9131)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !7, !alias.scope !9133, !noalias !9134
  %i.bt = shl i16 %i.bs, 7
  %i.bu = or disjoint i16 %i.bt, %i.bq
  store i16 %i.bu, ptr %i.bo, align 2, !tbaa !7, !alias.scope !9134, !noalias !9133
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal12__fastpack10EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 20)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9143)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9148)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 2, !tbaa !7, !alias.scope !9150, !noalias !9151
  %i.d = shl i16 %i.c, 4
  %i.e = and i16 %i.d, 16368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9155)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9160)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9165)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !7, !alias.scope !9167, !noalias !9168
  %i.j = shl i16 %i.i, 2
  %i.k = and i16 %i.j, 4092
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9172)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9177)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9182)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9187)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9192)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9197)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9202)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i16, ptr %i.a, align 2, !tbaa !7, !alias.scope !9204, !noalias !9205 ; 2 uses
  %i.t = load i16, ptr %0, align 2, !tbaa !7, !alias.scope !9135, !noalias !9138
  %i.u = load i16, ptr %i.g, align 2, !tbaa !7, !alias.scope !9206, !noalias !9207 ; 2 uses
  %i.v = load i16, ptr %i.f, align 2, !tbaa !7, !alias.scope !9208, !noalias !9209 ; 2 uses
  %i.w = shl i16 %i.v, 14
  %i.x = or disjoint i16 %i.w, %i.e
  %i.y = load i16, ptr %i.o, align 2, !tbaa !7, !alias.scope !9210, !noalias !9211 ; 2 uses
  %i.z = load i16, ptr %i.n, align 2, !tbaa !7, !alias.scope !9212, !noalias !9213
  %i.aa = load i16, ptr %i.m, align 2, !tbaa !7, !alias.scope !9214, !noalias !9215
  %i.ab = load i16, ptr %i.l, align 2, !tbaa !7, !alias.scope !9216, !noalias !9217 ; 2 uses
  %i.ac = shl i16 %i.ab, 12
  %i.ad = or disjoint i16 %i.ac, %i.k
  %i.ae = lshr i16 %i.y, 6
  %i.af = and i16 %i.ae, 15
  %i.ag = load i16, ptr %i.r, align 2, !tbaa !7, !alias.scope !9218, !noalias !9219 ; 2 uses
  %i.ah = load i16, ptr %i.q, align 2, !tbaa !7, !alias.scope !9220, !noalias !9221 ; 2 uses
  %i.ai = load i16, ptr %i.p, align 2, !tbaa !7, !alias.scope !9222, !noalias !9223
  %.scalar = shl i16 %i.ai, 4
  %.scalar2 = and i16 %.scalar, 16368
  %i.aj = insertelement <8 x i16> <i16 1023, i16 15, i16 255, i16 3, i16 63, i16 1023, i16 poison, i16 255>, i16 %.scalar2, i64 6 ; 2 uses
  %i.ak = shl i16 %i.ah, 14
  %i.al = lshr i16 %i.ah, 2
  %i.am = lshr i16 %i.ab, 4
  %i.an = lshr i16 %i.u, 8
  %i.ao = lshr i16 %i.v, 2
  %i.ap = lshr i16 %i.s, 6
  %i.aq = insertelement <8 x i16> poison, i16 %i.t, i64 0
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.ap, i64 1
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ao, i64 2
  %i.at = insertelement <8 x i16> %i.as, i16 %i.an, i64 3
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 4
  %i.av = insertelement <8 x i16> %i.au, i16 %i.z, i64 5
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ak, i64 6
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.al, i64 7 ; 2 uses
  %i.ay = and <8 x i16> %i.ax, %i.aj
  %i.az = or disjoint <8 x i16> %i.ax, %i.aj
  %i.ba = shufflevector <8 x i16> %i.ay, <8 x i16> %i.az, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 7>
  %i.bb = insertelement <8 x i16> poison, i16 %i.s, i64 0
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.x, i64 1
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.u, i64 2
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.ad, i64 3
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.aa, i64 4
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.y, i64 5
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.af, i64 6
  %i.bi = insertelement <8 x i16> %i.bh, i16 %i.ag, i64 7
  %i.bj = shl <8 x i16> %i.bi, <i16 10, i16 0, i16 8, i16 0, i16 6, i16 10, i16 0, i16 8>
  %i.bk = or disjoint <8 x i16> %i.ba, %i.bj
  store <8 x i16> %i.bk, ptr %1, align 2, !tbaa !7, !alias.scope !9205, !noalias !9204
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = lshr i16 %i.ag, 8
  %i.bn = and i16 %i.bm, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9227)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !7, !alias.scope !9229, !noalias !9230
  %i.bq = shl i16 %i.bp, 2
  %i.br = and i16 %i.bq, 4092
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9234)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !7, !alias.scope !9236, !noalias !9237 ; 2 uses
  %i.bu = shl i16 %i.bt, 12
  %i.bv = or disjoint i16 %i.bu, %i.br
  %i.bw = or disjoint i16 %i.bv, %i.bn
  store i16 %i.bw, ptr %i.bl, align 2, !tbaa !7, !alias.scope !9237, !noalias !9236
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.by = lshr i16 %i.bt, 4
  %i.bz = and i16 %i.by, 63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9241)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !7, !alias.scope !9243, !noalias !9244
  %i.cc = shl i16 %i.cb, 6
  %i.cd = or disjoint i16 %i.cc, %i.bz
  store i16 %i.cd, ptr %i.bx, align 2, !tbaa !7, !alias.scope !9244, !noalias !9243
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal12__fastpack11EPKtPt(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 22)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9253)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9263)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.c = load i16, ptr %i.b, align 2, !tbaa !7, !alias.scope !9265, !noalias !9266
  %i.d = shl i16 %i.c, 1
  %i.e = and i16 %i.d, 4094
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9270)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9275)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9280)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i16, ptr %i.h, align 2, !tbaa !7, !alias.scope !9282, !noalias !9283
  %i.j = shl i16 %i.i, 2
  %i.k = and i16 %i.j, 8188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9287)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9292)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9297)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9302)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9307)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.q = load i16, ptr %i.p, align 2, !tbaa !7, !alias.scope !9309, !noalias !9310 ; 2 uses
  %i.r = load i16, ptr %0, align 2, !tbaa !7, !alias.scope !9245, !noalias !9248
  %i.s = load <2 x i16>, ptr %i.a, align 2, !tbaa !7, !alias.scope !9311, !noalias !9312 ; 3 uses
  %i.t = load i16, ptr %i.g, align 2, !tbaa !7, !alias.scope !9313, !noalias !9314 ; 2 uses
  %i.u = load i16, ptr %i.f, align 2, !tbaa !7, !alias.scope !9315, !noalias !9316 ; 2 uses
  %i.v = shl i16 %i.u, 12
  %i.w = or disjoint i16 %i.v, %i.e
  %i.x = load i16, ptr %i.o, align 2, !tbaa !7, !alias.scope !9317, !noalias !9318 ; 2 uses
  %i.y = load i16, ptr %i.n, align 2, !tbaa !7, !alias.scope !9319, !noalias !9320
  %i.z = load i16, ptr %i.m, align 2, !tbaa !7, !alias.scope !9321, !noalias !9322 ; 2 uses
  %i.aa = load i16, ptr %i.l, align 2, !tbaa !7, !alias.scope !9323, !noalias !9324 ; 2 uses
  %i.ab = shl i16 %i.aa, 13
  %i.ac = or disjoint i16 %i.ab, %i.k
  %i.ad = lshr i16 %i.z, 8
  %i.ae = and i16 %i.ad, 7
  %.scalar = shl i16 %i.y, 3
  %.scalar2 = and i16 %.scalar, 16376
end_hunk_1
