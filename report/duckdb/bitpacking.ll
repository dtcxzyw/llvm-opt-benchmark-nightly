inline.NumInlined: 12110
inline.NumDeleted: 10363
begin_hunk_0_@_ZN18duckdb_fastpforlib8internal14__fastunpack61EPKjPm:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack62EPKjPm(ptr noalias noundef %0, ptr noalias noundef initializes((0, 40)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8107)
  %i.b = load i32, ptr %0, align 4, !tbaa !3, !noalias !8110
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !8110 ; 2 uses
  %i.f = and i32 %i.e, 1073741823
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.c
  store i64 %i.i, ptr %1, align 8, !tbaa !9, !alias.scope !8110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8111)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8114)
  %i.k = lshr i32 %i.e, 30
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !8117
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !8117 ; 2 uses
  %i.t = and i32 %i.s, 268435455
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 34
  %i.w = or disjoint i64 %i.v, %i.q
  store i64 %i.w, ptr %i.j, align 8, !tbaa !9, !alias.scope !8117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8118)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8121)
  %i.y = lshr i32 %i.s, 28
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8124
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = or disjoint i64 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8124 ; 2 uses
  %i.ah = and i32 %i.ag, 67108863
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 36
  %i.ak = or disjoint i64 %i.aj, %i.ae
  store i64 %i.ak, ptr %i.x, align 8, !tbaa !9, !alias.scope !8124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8125)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8128)
  %i.am = lshr i32 %i.ag, 26
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !8131
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 6
  %i.as = or disjoint i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3, !noalias !8131 ; 2 uses
  %i.av = and i32 %i.au, 16777215
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 38
  %i.ay = or disjoint i64 %i.ax, %i.as
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !9, !alias.scope !8131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8132)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8135)
  %i.ba = lshr i32 %i.au, 24
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3, !noalias !8138
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 8
  %i.bg = or disjoint i64 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !1214, !noalias !8138
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !8138
  %i.bj = and i32 %i.bi, 4194303
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 40
  %i.bm = or disjoint i64 %i.bl, %i.bg
  store i64 %i.bm, ptr %i.az, align 8, !tbaa !9, !alias.scope !8138
  call void @_ZN18duckdb_fastpforlib8internal8UnrollerILt62ELt5EE6UnpackERrPKjPm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack63EPKjPm(ptr noalias noundef %0, ptr noalias noundef initializes((0, 48)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8142)
  %i.b = load i32, ptr %0, align 4, !tbaa !3, !noalias !8145
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !8145 ; 2 uses
  %i.f = and i32 %i.e, 2147483647
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.c
  store i64 %i.i, ptr %1, align 8, !tbaa !9, !alias.scope !8145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8146)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8149)
  %i.k = lshr i32 %i.e, 31
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !8152
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !8152 ; 2 uses
  %i.t = and i32 %i.s, 1073741823
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 33
  %i.w = or disjoint i64 %i.v, %i.q
  store i64 %i.w, ptr %i.j, align 8, !tbaa !9, !alias.scope !8152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8153)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8156)
  %i.y = lshr i32 %i.s, 30
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !8159
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = or disjoint i64 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !8159 ; 2 uses
  %i.ah = and i32 %i.ag, 536870911
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 34
  %i.ak = or disjoint i64 %i.aj, %i.ae
  store i64 %i.ak, ptr %i.x, align 8, !tbaa !9, !alias.scope !8159
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8160)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8163)
  %i.am = lshr i32 %i.ag, 29
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !8166
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = or disjoint i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3, !noalias !8166 ; 2 uses
  %i.av = and i32 %i.au, 268435455
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 35
  %i.ay = or disjoint i64 %i.ax, %i.as
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !9, !alias.scope !8166
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8167)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8170)
  %i.ba = lshr i32 %i.au, 28
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3, !noalias !8173
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 4
  %i.bg = or disjoint i64 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !8173 ; 2 uses
  %i.bj = and i32 %i.bi, 134217727
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 36
  %i.bm = or disjoint i64 %i.bl, %i.bg
  store i64 %i.bm, ptr %i.az, align 8, !tbaa !9, !alias.scope !8173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8174)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8177)
  %i.bo = lshr i32 %i.bi, 27
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !8180
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 5
  %i.bu = or disjoint i64 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !1214, !noalias !8180
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !8180
  %i.bx = and i32 %i.bw, 67108863
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 37
  %i.ca = or disjoint i64 %i.bz, %i.bu
  store i64 %i.ca, ptr %i.bn, align 8, !tbaa !9, !alias.scope !8180
  call void @_ZN18duckdb_fastpforlib8internal8UnrollerILt63ELt6EE6UnpackERrPKjPm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack64EPKjPm(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) %1) local_unnamed_addr #5 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.vec = load <4 x i32>, ptr %0, align 4, !tbaa !3 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12 = load <4 x i32>, ptr %i.a, align 4, !tbaa !3 ; 2 uses
  %strided.vec13 = shufflevector <4 x i32> %wide.vec12, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14 = shufflevector <4 x i32> %wide.vec12, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %2 = zext <2 x i32> %strided.vec to <2 x i64>
  %3 = zext <2 x i32> %strided.vec13 to <2 x i64>
  %4 = zext <2 x i32> %strided.vec11 to <2 x i64>
  %5 = zext <2 x i32> %strided.vec14 to <2 x i64>
  %6 = shl nuw <2 x i64> %4, splat (i64 32)
  %7 = shl nuw <2 x i64> %5, splat (i64 32)
  %8 = or disjoint <2 x i64> %6, %2
  %9 = or disjoint <2 x i64> %7, %3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x i64> %8, ptr %1, align 8, !tbaa !9
  store <2 x i64> %9, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.vec.1 = load <4 x i32>, ptr %i.c, align 4, !tbaa !3 ; 2 uses
  %strided.vec.1 = shufflevector <4 x i32> %wide.vec.1, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11.1 = shufflevector <4 x i32> %wide.vec.1, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12.1 = load <4 x i32>, ptr %i.d, align 4, !tbaa !3 ; 2 uses
  %strided.vec13.1 = shufflevector <4 x i32> %wide.vec12.1, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14.1 = shufflevector <4 x i32> %wide.vec12.1, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %10 = zext <2 x i32> %strided.vec.1 to <2 x i64>
  %11 = zext <2 x i32> %strided.vec13.1 to <2 x i64>
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %12 = zext <2 x i32> %strided.vec11.1 to <2 x i64>
  %13 = zext <2 x i32> %strided.vec14.1 to <2 x i64>
  %14 = shl nuw <2 x i64> %12, splat (i64 32)
  %15 = shl nuw <2 x i64> %13, splat (i64 32)
  %16 = or disjoint <2 x i64> %14, %10
  %17 = or disjoint <2 x i64> %15, %11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x i64> %16, ptr %i.e, align 8, !tbaa !9
  store <2 x i64> %17, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.vec.2 = load <4 x i32>, ptr %i.g, align 4, !tbaa !3 ; 2 uses
  %strided.vec.2 = shufflevector <4 x i32> %wide.vec.2, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11.2 = shufflevector <4 x i32> %wide.vec.2, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12.2 = load <4 x i32>, ptr %i.h, align 4, !tbaa !3 ; 2 uses
  %strided.vec13.2 = shufflevector <4 x i32> %wide.vec12.2, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14.2 = shufflevector <4 x i32> %wide.vec12.2, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %18 = zext <2 x i32> %strided.vec.2 to <2 x i64>
  %19 = zext <2 x i32> %strided.vec13.2 to <2 x i64>
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %20 = zext <2 x i32> %strided.vec11.2 to <2 x i64>
  %21 = zext <2 x i32> %strided.vec14.2 to <2 x i64>
  %22 = shl nuw <2 x i64> %20, splat (i64 32)
  %23 = shl nuw <2 x i64> %21, splat (i64 32)
  %24 = or disjoint <2 x i64> %22, %18
  %25 = or disjoint <2 x i64> %23, %19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x i64> %24, ptr %i.i, align 8, !tbaa !9
  store <2 x i64> %25, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.vec.3 = load <4 x i32>, ptr %i.k, align 4, !tbaa !3 ; 2 uses
  %strided.vec.3 = shufflevector <4 x i32> %wide.vec.3, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11.3 = shufflevector <4 x i32> %wide.vec.3, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12.3 = load <4 x i32>, ptr %i.l, align 4, !tbaa !3 ; 2 uses
  %strided.vec13.3 = shufflevector <4 x i32> %wide.vec12.3, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14.3 = shufflevector <4 x i32> %wide.vec12.3, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %26 = zext <2 x i32> %strided.vec.3 to <2 x i64>
  %27 = zext <2 x i32> %strided.vec13.3 to <2 x i64>
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %28 = zext <2 x i32> %strided.vec11.3 to <2 x i64>
  %29 = zext <2 x i32> %strided.vec14.3 to <2 x i64>
  %30 = shl nuw <2 x i64> %28, splat (i64 32)
  %31 = shl nuw <2 x i64> %29, splat (i64 32)
  %32 = or disjoint <2 x i64> %30, %26
  %33 = or disjoint <2 x i64> %31, %27
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <2 x i64> %32, ptr %i.m, align 8, !tbaa !9
  store <2 x i64> %33, ptr %i.n, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.vec.4 = load <4 x i32>, ptr %i.o, align 4, !tbaa !3 ; 2 uses
  %strided.vec.4 = shufflevector <4 x i32> %wide.vec.4, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11.4 = shufflevector <4 x i32> %wide.vec.4, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12.4 = load <4 x i32>, ptr %i.p, align 4, !tbaa !3 ; 2 uses
  %strided.vec13.4 = shufflevector <4 x i32> %wide.vec12.4, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14.4 = shufflevector <4 x i32> %wide.vec12.4, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %34 = zext <2 x i32> %strided.vec.4 to <2 x i64>
  %35 = zext <2 x i32> %strided.vec13.4 to <2 x i64>
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %36 = zext <2 x i32> %strided.vec11.4 to <2 x i64>
  %37 = zext <2 x i32> %strided.vec14.4 to <2 x i64>
  %38 = shl nuw <2 x i64> %36, splat (i64 32)
  %39 = shl nuw <2 x i64> %37, splat (i64 32)
  %40 = or disjoint <2 x i64> %38, %34
  %41 = or disjoint <2 x i64> %39, %35
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <2 x i64> %40, ptr %i.q, align 8, !tbaa !9
  store <2 x i64> %41, ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.vec.5 = load <4 x i32>, ptr %i.s, align 4, !tbaa !3 ; 2 uses
  %strided.vec.5 = shufflevector <4 x i32> %wide.vec.5, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11.5 = shufflevector <4 x i32> %wide.vec.5, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12.5 = load <4 x i32>, ptr %i.t, align 4, !tbaa !3 ; 2 uses
  %strided.vec13.5 = shufflevector <4 x i32> %wide.vec12.5, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14.5 = shufflevector <4 x i32> %wide.vec12.5, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %42 = zext <2 x i32> %strided.vec.5 to <2 x i64>
  %43 = zext <2 x i32> %strided.vec13.5 to <2 x i64>
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  %44 = zext <2 x i32> %strided.vec11.5 to <2 x i64>
  %45 = zext <2 x i32> %strided.vec14.5 to <2 x i64>
  %46 = shl nuw <2 x i64> %44, splat (i64 32)
  %47 = shl nuw <2 x i64> %45, splat (i64 32)
  %48 = or disjoint <2 x i64> %46, %42
  %49 = or disjoint <2 x i64> %47, %43
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <2 x i64> %48, ptr %i.u, align 8, !tbaa !9
  store <2 x i64> %49, ptr %i.v, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %wide.vec.6 = load <4 x i32>, ptr %i.w, align 4, !tbaa !3 ; 2 uses
  %strided.vec.6 = shufflevector <4 x i32> %wide.vec.6, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11.6 = shufflevector <4 x i32> %wide.vec.6, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12.6 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3 ; 2 uses
  %strided.vec13.6 = shufflevector <4 x i32> %wide.vec12.6, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14.6 = shufflevector <4 x i32> %wide.vec12.6, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %50 = zext <2 x i32> %strided.vec.6 to <2 x i64>
  %51 = zext <2 x i32> %strided.vec13.6 to <2 x i64>
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  %52 = zext <2 x i32> %strided.vec11.6 to <2 x i64>
  %53 = zext <2 x i32> %strided.vec14.6 to <2 x i64>
  %54 = shl nuw <2 x i64> %52, splat (i64 32)
  %55 = shl nuw <2 x i64> %53, splat (i64 32)
  %56 = or disjoint <2 x i64> %54, %50
  %57 = or disjoint <2 x i64> %55, %51
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <2 x i64> %56, ptr %i.y, align 8, !tbaa !9
  store <2 x i64> %57, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  %wide.vec.7 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !3 ; 2 uses
  %strided.vec.7 = shufflevector <4 x i32> %wide.vec.7, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11.7 = shufflevector <4 x i32> %wide.vec.7, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12.7 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !3 ; 2 uses
  %strided.vec13.7 = shufflevector <4 x i32> %wide.vec12.7, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14.7 = shufflevector <4 x i32> %wide.vec12.7, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %58 = zext <2 x i32> %strided.vec.7 to <2 x i64>
  %59 = zext <2 x i32> %strided.vec13.7 to <2 x i64>
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 224
  %60 = zext <2 x i32> %strided.vec11.7 to <2 x i64>
  %61 = zext <2 x i32> %strided.vec14.7 to <2 x i64>
  %62 = shl nuw <2 x i64> %60, splat (i64 32)
  %63 = shl nuw <2 x i64> %61, splat (i64 32)
  %64 = or disjoint <2 x i64> %62, %58
  %65 = or disjoint <2 x i64> %63, %59
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <2 x i64> %64, ptr %i.ac, align 8, !tbaa !9
  store <2 x i64> %65, ptr %i.ad, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack1EPKhPh(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8184)
  %i.a = load i8, ptr %0, align 1, !tbaa !14, !alias.scope !8181, !noalias !8184
  %i.b = and i8 %i.a, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8189)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14, !alias.scope !8191, !noalias !8192
  %i.e = shl i8 %i.d, 1
  %i.f = and i8 %i.e, 2
  %i.g = or disjoint i8 %i.b, %i.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8196)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14, !alias.scope !8198, !noalias !8199
  %i.j = shl i8 %i.i, 2
  %i.k = and i8 %i.j, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8203)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14, !alias.scope !8205, !noalias !8206
  %i.n = shl i8 %i.m, 3
  %i.o = and i8 %i.n, 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8210)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14, !alias.scope !8212, !noalias !8213
  %i.r = shl i8 %i.q, 4
  %i.s = and i8 %i.r, 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8217)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14, !alias.scope !8219, !noalias !8220
  %i.v = shl i8 %i.u, 5
  %i.w = and i8 %i.v, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8224)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14, !alias.scope !8226, !noalias !8227
  %i.z = shl i8 %i.y, 6
  %i.aa = and i8 %i.z, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8231)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14, !alias.scope !8233, !noalias !8234
  %i.ad = shl i8 %i.ac, 7
  %i.ae = or disjoint i8 %i.ad, %i.aa
  %i.af = or disjoint i8 %i.ae, %i.w
  %i.ag = or disjoint i8 %i.af, %i.s
  %i.ah = or disjoint i8 %i.ag, %i.o
  %i.ai = or disjoint i8 %i.ah, %i.k
  %i.aj = or disjoint i8 %i.ai, %i.g
  store i8 %i.aj, ptr %1, align 1, !tbaa !14, !alias.scope !8234, !noalias !8233
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack2EPKhPh(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 2)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8238)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load <8 x i8>, ptr %0, align 1, !tbaa !14, !alias.scope !8235, !noalias !8238 ; 4 uses
  %i.c = shufflevector <8 x i8> %i.b, <8 x i8> poison, <2 x i32> <i32 0, i32 4>
  %i.d = and <2 x i8> %i.c, splat (i8 3)
  %i.e = shufflevector <8 x i8> %i.b, <8 x i8> poison, <2 x i32> <i32 1, i32 5>
  %i.f = shl <2 x i8> %i.e, splat (i8 2)
  %i.g = and <2 x i8> %i.f, splat (i8 12)
  %i.h = or disjoint <2 x i8> %i.d, %i.g
  %i.i = shufflevector <8 x i8> %i.b, <8 x i8> poison, <2 x i32> <i32 2, i32 6>
  %i.j = shl <2 x i8> %i.i, splat (i8 4)
  %i.k = and <2 x i8> %i.j, splat (i8 48)
  %i.l = shufflevector <8 x i8> %i.b, <8 x i8> poison, <2 x i32> <i32 3, i32 7>
  %i.m = shl <2 x i8> %i.l, splat (i8 6)
  %i.n = or disjoint <2 x i8> %i.m, %i.k
  %i.o = or disjoint <2 x i8> %i.n, %i.h          ; 2 uses
  %i.p = extractelement <2 x i8> %i.o, i64 0
  store i8 %i.p, ptr %1, align 1, !tbaa !14, !alias.scope !8240, !noalias !8247
  %i.q = extractelement <2 x i8> %i.o, i64 1
  store i8 %i.q, ptr %i.a, align 1, !tbaa !14, !alias.scope !8251, !noalias !8260
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack3EPKhPh(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 3)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8268)
  %i.a = load i8, ptr %0, align 1, !tbaa !14, !alias.scope !8265, !noalias !8268
  %i.b = and i8 %i.a, 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8273)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14, !alias.scope !8275, !noalias !8276
  %i.e = shl i8 %i.d, 3
  %i.f = and i8 %i.e, 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8280)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14, !alias.scope !8282, !noalias !8283 ; 2 uses
  %i.i = shl i8 %i.h, 6
  %i.j = or disjoint i8 %i.i, %i.f
  %i.k = or disjoint i8 %i.j, %i.b
  store i8 %i.k, ptr %1, align 1, !tbaa !14, !alias.scope !8283, !noalias !8282
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = lshr i8 %i.h, 2
  %i.n = and i8 %i.m, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8287)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14, !alias.scope !8289, !noalias !8290
  %i.q = shl i8 %i.p, 1
  %i.r = and i8 %i.q, 14
  %i.s = or disjoint i8 %i.n, %i.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8294)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14, !alias.scope !8296, !noalias !8297
  %i.v = shl i8 %i.u, 4
  %i.w = and i8 %i.v, 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8301)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14, !alias.scope !8303, !noalias !8304 ; 2 uses
  %i.z = shl i8 %i.y, 7
  %i.aa = or disjoint i8 %i.z, %i.w
  %i.ab = or disjoint i8 %i.aa, %i.s
  store i8 %i.ab, ptr %i.l, align 1, !tbaa !14, !alias.scope !8304, !noalias !8303
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = lshr i8 %i.y, 1
  %i.ae = and i8 %i.ad, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8308)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14, !alias.scope !8310, !noalias !8311
  %i.ah = shl i8 %i.ag, 2
  %i.ai = and i8 %i.ah, 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8315)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14, !alias.scope !8317, !noalias !8318
  %i.al = shl i8 %i.ak, 5
  %i.am = or disjoint i8 %i.al, %i.ai
  %i.an = or disjoint i8 %i.am, %i.ae
  store i8 %i.an, ptr %i.ac, align 1, !tbaa !14, !alias.scope !8318, !noalias !8317
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack4EPKhPh(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8322)
  %i.a = load <8 x i8>, ptr %0, align 1, !tbaa !14, !alias.scope !8319, !noalias !8322 ; 2 uses
  %i.b = shufflevector <8 x i8> %i.a, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.c = and <4 x i8> %i.b, splat (i8 15)
  %i.d = shufflevector <8 x i8> %i.a, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.e = shl <4 x i8> %i.d, splat (i8 4)
  %i.f = or disjoint <4 x i8> %i.e, %i.c
  store <4 x i8> %i.f, ptr %1, align 1, !tbaa !14, !alias.scope !8324, !noalias !8327
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack5EPKhPh(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) initializes((0, 5)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8332)
  %i.a = load i8, ptr %0, align 1, !tbaa !14, !alias.scope !8329, !noalias !8332
  %i.b = and i8 %i.a, 31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8337)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14, !alias.scope !8339, !noalias !8340 ; 2 uses
  %i.e = shl i8 %i.d, 5
  %i.f = or disjoint i8 %i.e, %i.b
  store i8 %i.f, ptr %1, align 1, !tbaa !14, !alias.scope !8340, !noalias !8339
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = lshr i8 %i.d, 3
  %i.i = and i8 %i.h, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8344)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14, !alias.scope !8346, !noalias !8347
  %i.l = shl i8 %i.k, 2
  %i.m = and i8 %i.l, 124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8351)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14, !alias.scope !8353, !noalias !8354 ; 2 uses
  %i.p = shl i8 %i.o, 7
  %i.q = or disjoint i8 %i.p, %i.m
  %i.r = or disjoint i8 %i.q, %i.i
  store i8 %i.r, ptr %i.g, align 1, !tbaa !14, !alias.scope !8354, !noalias !8353
end_hunk_0
