Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/bitpacking?download=true
inline.NumInlined: 12110
inline.NumDeleted: 10363
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN18duckdb_fastpforlib8internal14__fastunpack61EPKjPm:bb.a
  %i.ay = or disjoint i64 %i.ax, %i.as
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !10, !alias.scope !7370
  call void @_ZN18duckdb_fastpforlib8internal8UnrollerILt61ELt4EE6UnpackERrPKjPm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack62EPKjPm(ptr noalias noundef %0, ptr noalias noundef initializes((0, 40)) %1) local_unnamed_addr #4 !guid !7391 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7393)
  %i.b = load i32, ptr %0, align 4, !tbaa !6, !noalias !7394
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6, !noalias !7394 ; 2 uses
  %i.f = and i32 %i.e, 1073741823
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.c
  store i64 %i.i, ptr %1, align 8, !tbaa !10, !alias.scope !7394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7395)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7396)
  %i.k = lshr i32 %i.e, 30
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6, !noalias !7397
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6, !noalias !7397 ; 2 uses
  %i.t = and i32 %i.s, 268435455
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 34
  %i.w = or disjoint i64 %i.v, %i.q
  store i64 %i.w, ptr %i.j, align 8, !tbaa !10, !alias.scope !7397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7398)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7399)
  %i.y = lshr i32 %i.s, 28
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6, !noalias !7400
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = or disjoint i64 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !6, !noalias !7400 ; 2 uses
  %i.ah = and i32 %i.ag, 67108863
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 36
  %i.ak = or disjoint i64 %i.aj, %i.ae
  store i64 %i.ak, ptr %i.x, align 8, !tbaa !10, !alias.scope !7400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7401)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7402)
  %i.am = lshr i32 %i.ag, 26
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !6, !noalias !7403
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 6
  %i.as = or disjoint i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !6, !noalias !7403 ; 2 uses
  %i.av = and i32 %i.au, 16777215
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 38
  %i.ay = or disjoint i64 %i.ax, %i.as
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !10, !alias.scope !7403
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7404)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7405)
  %i.ba = lshr i32 %i.au, 24
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !6, !noalias !7406
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 8
  %i.bg = or disjoint i64 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !15, !noalias !7406
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !6, !noalias !7406
  %i.bj = and i32 %i.bi, 4194303
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 40
  %i.bm = or disjoint i64 %i.bl, %i.bg
  store i64 %i.bm, ptr %i.az, align 8, !tbaa !10, !alias.scope !7406
  call void @_ZN18duckdb_fastpforlib8internal8UnrollerILt62ELt5EE6UnpackERrPKjPm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack63EPKjPm(ptr noalias noundef %0, ptr noalias noundef initializes((0, 48)) %1) local_unnamed_addr #4 !guid !7431 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7433)
  %i.b = load i32, ptr %0, align 4, !tbaa !6, !noalias !7434
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6, !noalias !7434 ; 2 uses
  %i.f = and i32 %i.e, 2147483647
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.c
  store i64 %i.i, ptr %1, align 8, !tbaa !10, !alias.scope !7434
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7435)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7436)
  %i.k = lshr i32 %i.e, 31
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6, !noalias !7437
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6, !noalias !7437 ; 2 uses
  %i.t = and i32 %i.s, 1073741823
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 33
  %i.w = or disjoint i64 %i.v, %i.q
  store i64 %i.w, ptr %i.j, align 8, !tbaa !10, !alias.scope !7437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7438)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7439)
  %i.y = lshr i32 %i.s, 30
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6, !noalias !7440
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = or disjoint i64 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !6, !noalias !7440 ; 2 uses
  %i.ah = and i32 %i.ag, 536870911
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 34
  %i.ak = or disjoint i64 %i.aj, %i.ae
  store i64 %i.ak, ptr %i.x, align 8, !tbaa !10, !alias.scope !7440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7441)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7442)
  %i.am = lshr i32 %i.ag, 29
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !6, !noalias !7443
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = or disjoint i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !6, !noalias !7443 ; 2 uses
  %i.av = and i32 %i.au, 268435455
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 35
  %i.ay = or disjoint i64 %i.ax, %i.as
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !10, !alias.scope !7443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7444)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7445)
  %i.ba = lshr i32 %i.au, 28
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !6, !noalias !7446
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 4
  %i.bg = or disjoint i64 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !6, !noalias !7446 ; 2 uses
  %i.bj = and i32 %i.bi, 134217727
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 36
  %i.bm = or disjoint i64 %i.bl, %i.bg
  store i64 %i.bm, ptr %i.az, align 8, !tbaa !10, !alias.scope !7446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7447)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7448)
  %i.bo = lshr i32 %i.bi, 27
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !6, !noalias !7449
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 5
  %i.bu = or disjoint i64 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !15, !noalias !7449
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !6, !noalias !7449
  %i.bx = and i32 %i.bw, 67108863
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 37
  %i.ca = or disjoint i64 %i.bz, %i.bu
  store i64 %i.ca, ptr %i.bn, align 8, !tbaa !10, !alias.scope !7449
  call void @_ZN18duckdb_fastpforlib8internal8UnrollerILt63ELt6EE6UnpackERrPKjPm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal14__fastunpack64EPKjPm(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 256)) %1) local_unnamed_addr #5 !guid !7450 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.vec = load <4 x i32>, ptr %0, align 4, !tbaa !6
  %i.b = freeze <4 x i32> %wide.vec
  %wide.vec12 = load <4 x i32>, ptr %i.a, align 4, !tbaa !6
  %i.c = freeze <4 x i32> %wide.vec12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.b, ptr %1, align 8, !tbaa !10
  store <4 x i32> %i.c, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.vec.1 = load <4 x i32>, ptr %i.e, align 4, !tbaa !6
  %i.g = freeze <4 x i32> %wide.vec.1
  %wide.vec12.1 = load <4 x i32>, ptr %i.f, align 4, !tbaa !6
  %i.h = freeze <4 x i32> %wide.vec12.1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.g, ptr %i.i, align 8, !tbaa !10
  store <4 x i32> %i.h, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.vec.2 = load <4 x i32>, ptr %i.k, align 4, !tbaa !6
  %i.m = freeze <4 x i32> %wide.vec.2
  %wide.vec12.2 = load <4 x i32>, ptr %i.l, align 4, !tbaa !6
  %i.n = freeze <4 x i32> %wide.vec12.2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.m, ptr %i.o, align 8, !tbaa !10
  store <4 x i32> %i.n, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.vec.3 = load <4 x i32>, ptr %i.q, align 4, !tbaa !6
  %i.s = freeze <4 x i32> %wide.vec.3
  %wide.vec12.3 = load <4 x i32>, ptr %i.r, align 4, !tbaa !6
  %i.t = freeze <4 x i32> %wide.vec12.3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.s, ptr %i.u, align 8, !tbaa !10
  store <4 x i32> %i.t, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.vec.4 = load <4 x i32>, ptr %i.w, align 4, !tbaa !6
  %i.y = freeze <4 x i32> %wide.vec.4
  %wide.vec12.4 = load <4 x i32>, ptr %i.x, align 4, !tbaa !6
  %i.z = freeze <4 x i32> %wide.vec12.4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.y, ptr %i.aa, align 8, !tbaa !10
  store <4 x i32> %i.z, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.vec.5 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !6
  %i.ae = freeze <4 x i32> %wide.vec.5
  %wide.vec12.5 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !6
  %i.af = freeze <4 x i32> %wide.vec12.5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.ae, ptr %i.ag, align 8, !tbaa !10
  store <4 x i32> %i.af, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %wide.vec.6 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !6
  %i.ak = freeze <4 x i32> %wide.vec.6
  %wide.vec12.6 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !6
  %i.al = freeze <4 x i32> %wide.vec12.6
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.ak, ptr %i.am, align 8, !tbaa !10
  store <4 x i32> %i.al, ptr %i.an, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 240
  %wide.vec.7 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !6
  %i.aq = freeze <4 x i32> %wide.vec.7
  %wide.vec12.7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !6
  %i.ar = freeze <4 x i32> %wide.vec12.7
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.aq, ptr %i.as, align 8, !tbaa !10
  store <4 x i32> %i.ar, ptr %i.at, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack1EPKhPh(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #2 !guid !7475 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7477)
  %i.a = load i8, ptr %0, align 1, !tbaa !11, !alias.scope !7476
  %i.b = and i8 %i.a, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7479)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11, !alias.scope !7480
  %i.e = shl i8 %i.d, 1
  %i.f = and i8 %i.e, 2
  %i.g = or disjoint i8 %i.b, %i.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7482)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11, !alias.scope !7483
  %i.j = shl i8 %i.i, 2
  %i.k = and i8 %i.j, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7485)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11, !alias.scope !7486
  %i.n = shl i8 %i.m, 3
  %i.o = and i8 %i.n, 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7488)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11, !alias.scope !7489
  %i.r = shl i8 %i.q, 4
  %i.s = and i8 %i.r, 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7491)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11, !alias.scope !7492
  %i.v = shl i8 %i.u, 5
  %i.w = and i8 %i.v, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7494)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11, !alias.scope !7495
  %i.z = shl i8 %i.y, 6
  %i.aa = and i8 %i.z, 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7497)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11, !alias.scope !7498
  %i.ad = shl i8 %i.ac, 7
  %i.ae = or disjoint i8 %i.ad, %i.aa
  %i.af = or disjoint i8 %i.ae, %i.w
  %i.ag = or disjoint i8 %i.af, %i.s
  %i.ah = or disjoint i8 %i.ag, %i.o
  %i.ai = or disjoint i8 %i.ah, %i.k
  %i.aj = or disjoint i8 %i.ai, %i.g
  store i8 %i.aj, ptr %1, align 1, !tbaa !11, !alias.scope !7499
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack2EPKhPh(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 2)) %1) local_unnamed_addr #2 !guid !7517 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7519)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load <8 x i8>, ptr %0, align 1, !tbaa !11, !alias.scope !7518 ; 4 uses
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
  store i8 %i.p, ptr %1, align 1, !tbaa !11, !alias.scope !7520
  %i.q = extractelement <2 x i8> %i.o, i64 1
  store i8 %i.q, ptr %i.a, align 1, !tbaa !11, !alias.scope !7521
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN18duckdb_fastpforlib8internal11__fastpack3EPKhPh(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 3)) %1) local_unnamed_addr #2 !guid !7546 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7548)
  %i.a = load i8, ptr %0, align 1, !tbaa !11, !alias.scope !7547
  %i.b = and i8 %i.a, 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7550)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11, !alias.scope !7551
  %i.e = shl i8 %i.d, 3
  %i.f = and i8 %i.e, 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7553)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11, !alias.scope !7554 ; 2 uses
  %i.i = shl i8 %i.h, 6
  %i.j = or disjoint i8 %i.i, %i.f
  %i.k = or disjoint i8 %i.j, %i.b
  store i8 %i.k, ptr %1, align 1, !tbaa !11, !alias.scope !7555
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = lshr i8 %i.h, 2
  %i.n = and i8 %i.m, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7557)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11, !alias.scope !7558
  %i.q = shl i8 %i.p, 1
  %i.r = and i8 %i.q, 14
  %i.s = or disjoint i8 %i.n, %i.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7559)
end_hunk_0
