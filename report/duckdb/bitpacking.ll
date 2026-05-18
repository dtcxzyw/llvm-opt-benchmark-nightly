inline.NumInlined: 12110
inline.NumDeleted: 10363
begin_hunk_0_@_ZN18duckdb_fastpforlib8internal8UnrollerILt7ELt13EE4PackEPKmPj:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9, !alias.scope !32607, !noalias !32608
  %.tr.i.i.i.i.i.i = trunc i64 %i.aa to i32       ; 2 uses
  %i.ab = shl i32 %.tr.i.i.i.i.i.i, 30
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = or disjoint i32 %i.ac, %i.u
  %i.ae = or disjoint i32 %i.ad, %i.q
  %i.af = or disjoint i32 %i.ae, %i.m
  store i32 %i.af, ptr %i.f, align 4, !tbaa !3, !alias.scope !32608, !noalias !32607
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = lshr i32 %.tr.i.i.i.i.i.i, 2
  %i.ai = and i32 %i.ah, 31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32612)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9, !alias.scope !32614, !noalias !32615
  %.tr.i.i.i.i.i.i.i = trunc i64 %i.ak to i32
  %i.al = shl i32 %.tr.i.i.i.i.i.i.i, 5
  %i.am = and i32 %i.al, 4064
  %i.an = or disjoint i32 %i.ai, %i.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32619)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !9, !alias.scope !32621, !noalias !32622
  %.tr.i.i.i.i.i.i.i.i = trunc i64 %i.ap to i32
  %i.aq = shl i32 %.tr.i.i.i.i.i.i.i.i, 12
  %i.ar = and i32 %i.aq, 520192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32626)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.at = load i64, ptr %i.as, align 8, !tbaa !9, !alias.scope !32628, !noalias !32629
  %.tr.i.i.i.i.i.i.i.i.i = trunc i64 %i.at to i32
  %i.au = shl i32 %.tr.i.i.i.i.i.i.i.i.i, 19
  %i.av = and i32 %i.au, 66584576
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32633)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !9, !alias.scope !32635, !noalias !32636
  %.tr.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.ax to i32 ; 2 uses
  %i.ay = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i, 26
  %i.az = or disjoint i32 %i.ay, %i.av
  %i.ba = or disjoint i32 %i.az, %i.ar
  %i.bb = or disjoint i32 %i.ba, %i.an
  store i32 %i.bb, ptr %i.ag, align 4, !tbaa !3, !alias.scope !32636, !noalias !32635
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = lshr i32 %.tr.i.i.i.i.i.i.i.i.i.i, 6
  %i.be = and i32 %i.bd, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32640)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !9, !alias.scope !32642, !noalias !32643
  %.tr.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bg to i32
  %i.bh = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.bi = and i32 %i.bh, 254
  %i.bj = or disjoint i32 %i.be, %i.bi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32647)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !9, !alias.scope !32649, !noalias !32650
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bl to i32
  %i.bm = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.bn = and i32 %i.bm, 32512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32654)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !9, !alias.scope !32656, !noalias !32657
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bp to i32
  %i.bq = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i, 15
  %i.br = and i32 %i.bq, 4161536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32661)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !9, !alias.scope !32663, !noalias !32664
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bt to i32
  %i.bu = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 22
  %i.bv = and i32 %i.bu, 532676608
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32668)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !9, !alias.scope !32670, !noalias !32671
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bx to i32 ; 2 uses
  %i.by = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 29
  %i.bz = or disjoint i32 %i.by, %i.bv
  %i.ca = or disjoint i32 %i.bz, %i.br
  %i.cb = or disjoint i32 %i.ca, %i.bn
  %i.cc = or disjoint i32 %i.cb, %i.bj
  store i32 %i.cc, ptr %i.bc, align 4, !tbaa !3, !alias.scope !32671, !noalias !32670
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = lshr i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cf = and i32 %i.ce, 15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32675)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !9, !alias.scope !32677, !noalias !32678
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.ch to i32
  %i.ci = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.cj = and i32 %i.ci, 2032
  %i.ck = or disjoint i32 %i.cf, %i.cj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32682)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !9, !alias.scope !32684, !noalias !32685
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.cm to i32
  %i.cn = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  %i.co = and i32 %i.cn, 260096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32689)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !9, !alias.scope !32691, !noalias !32692
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.cq to i32
  %i.cr = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 18
  %i.cs = and i32 %i.cr, 33292288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32696)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !9, !alias.scope !32698, !noalias !32699
  %.tr.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.cu to i32
  %i.cv = shl i32 %.tr.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 25
  %i.cw = or disjoint i32 %i.cv, %i.cs
  %i.cx = or disjoint i32 %i.cw, %i.co
  %i.cy = or disjoint i32 %i.cx, %i.ck
  store i32 %i.cy, ptr %i.cd, align 4, !tbaa !3, !alias.scope !32699, !noalias !32698
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN18duckdb_fastpforlib8internal8UnrollerILt8ELt9EE4PackEPKmPj(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32708)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9, !alias.scope !32710, !noalias !32711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32715)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9, !alias.scope !32717, !noalias !32718
  %i.f = trunc i64 %i.e to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32722)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32732)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9, !alias.scope !32734, !noalias !32735
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32739)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9, !alias.scope !32741, !noalias !32742
  %i.l = trunc i64 %i.k to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32746)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32756)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9, !alias.scope !32758, !noalias !32759
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32763)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9, !alias.scope !32765, !noalias !32766
  %i.r = trunc i64 %i.q to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32770)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32780)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = load i64, ptr %i.t, align 8, !tbaa !9, !alias.scope !32782, !noalias !32783
  %i.v = load i32, ptr %1, align 4, !tbaa !3, !alias.scope !32784
  %i.w = load <2 x i64>, ptr %i.a, align 8, !tbaa !9 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.g, align 8, !tbaa !9, !alias.scope !32787, !noalias !32788 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.m, align 8, !tbaa !9, !alias.scope !32789, !noalias !32790 ; 2 uses
  %i.z = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.f, i64 1
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.l, i64 2
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.r, i64 3
  %i.ad = and <4 x i32> %i.ac, <i32 -1, i32 255, i32 255, i32 255>
  %i.ae = load <2 x i64>, ptr %i.s, align 8, !tbaa !9, !alias.scope !32791, !noalias !32792 ; 2 uses
  %i.af = shufflevector <2 x i64> %i.w, <2 x i64> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ag = shufflevector <2 x i64> %i.y, <2 x i64> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x i64> %i.af, <2 x i64> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = trunc <4 x i64> %i.ah to <4 x i32>
  %i.aj = shl <4 x i32> %i.ai, splat (i32 8)
  %i.ak = and <4 x i32> %i.aj, splat (i32 65280)
  %i.al = or <4 x i32> %i.ak, %i.ad
  %i.am = shufflevector <2 x i64> %i.w, <2 x i64> %i.x, <2 x i32> <i32 1, i32 3>
  %i.an = shufflevector <2 x i64> %i.y, <2 x i64> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ao = shufflevector <2 x i64> %i.am, <2 x i64> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ap = trunc <4 x i64> %i.ao to <4 x i32>
  %i.aq = shl <4 x i32> %i.ap, splat (i32 16)
  %i.ar = and <4 x i32> %i.aq, splat (i32 16711680)
  %2 = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %3 = insertelement <2 x i64> %2, i64 %i.i, i64 1
  %4 = trunc <2 x i64> %3 to <2 x i32>
  %5 = shufflevector <2 x i32> %4, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.as = trunc i64 %i.o to i32
  %i.at = insertelement <4 x i32> %5, i32 %i.as, i64 2
  %i.au = trunc i64 %i.u to i32
  %i.av = insertelement <4 x i32> %i.at, i32 %i.au, i64 3
  %i.aw = shl <4 x i32> %i.av, splat (i32 24)
  %i.ax = or disjoint <4 x i32> %i.aw, %i.ar
  %i.ay = or <4 x i32> %i.ax, %i.al
  store <4 x i32> %i.ay, ptr %1, align 4, !tbaa !3, !alias.scope !32711, !noalias !32710
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32796)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9, !alias.scope !32798, !noalias !32799
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32803)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9, !alias.scope !32805, !noalias !32806
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bf to i32
  %i.bg = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.bh = and i32 %i.bg, 65280
  %i.bi = or disjoint i32 %i.bd, %i.bh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32810)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9, !alias.scope !32812, !noalias !32813
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bk to i32
  %i.bl = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16
  %i.bm = and i32 %i.bl, 16711680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32817)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9, !alias.scope !32819, !noalias !32820
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bo to i32
  %i.bp = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.bq = or disjoint i32 %i.bp, %i.bm
  %i.br = or disjoint i32 %i.bq, %i.bi
  store i32 %i.br, ptr %i.az, align 4, !tbaa !3, !alias.scope !32820, !noalias !32819
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32824)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !9, !alias.scope !32826, !noalias !32827
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = and i32 %i.bv, 255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32831)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !9, !alias.scope !32833, !noalias !32834
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.by to i32
  %i.bz = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.ca = and i32 %i.bz, 65280
  %i.cb = or disjoint i32 %i.bw, %i.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32838)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !9, !alias.scope !32840, !noalias !32841
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.cd to i32
  %i.ce = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16
  %i.cf = and i32 %i.ce, 16711680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32845)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !9, !alias.scope !32847, !noalias !32848
  %.tr.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.ch to i32
  %i.ci = shl i32 %.tr.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.cj = or disjoint i32 %i.ci, %i.cf
  %i.ck = or disjoint i32 %i.cj, %i.cb
  store i32 %i.ck, ptr %i.bs, align 4, !tbaa !3, !alias.scope !32848, !noalias !32847
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN18duckdb_fastpforlib8internal8UnrollerILt9ELt14EE4PackEPKmPj(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %.tr.i = trunc i64 %i.b to i32                  ; 2 uses
  %i.d = shl i32 %.tr.i, 30
  %i.e = or i32 %i.d, %i.c
  store i32 %i.e, ptr %1, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = lshr i32 %.tr.i, 2
  %i.h = and i32 %i.g, 127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32852)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9, !alias.scope !32849, !noalias !32852
  %.tr.i.i = trunc i64 %i.j to i32
  %i.k = shl i32 %.tr.i.i, 7
  %i.l = and i32 %i.k, 65408
  %i.m = or disjoint i32 %i.h, %i.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32857)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9, !alias.scope !32859, !noalias !32860
  %.tr.i.i.i = trunc i64 %i.o to i32
  %i.p = shl i32 %.tr.i.i.i, 16
  %i.q = and i32 %i.p, 33488896
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32864)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9, !alias.scope !32866, !noalias !32867
  %.tr.i.i.i.i = trunc i64 %i.s to i32            ; 2 uses
  %i.t = shl i32 %.tr.i.i.i.i, 25
  %i.u = or disjoint i32 %i.t, %i.q
  %i.v = or disjoint i32 %i.u, %i.m
  store i32 %i.v, ptr %i.f, align 4, !tbaa !3, !alias.scope !32867, !noalias !32866
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = lshr i32 %.tr.i.i.i.i, 7
  %i.y = and i32 %i.x, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32871)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9, !alias.scope !32873, !noalias !32874
  %.tr.i.i.i.i.i = trunc i64 %i.aa to i32
  %i.ab = shl i32 %.tr.i.i.i.i.i, 2
  %i.ac = and i32 %i.ab, 2044
  %i.ad = or disjoint i32 %i.y, %i.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32878)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9, !alias.scope !32880, !noalias !32881
  %.tr.i.i.i.i.i.i = trunc i64 %i.af to i32
  %i.ag = shl i32 %.tr.i.i.i.i.i.i, 11
  %i.ah = and i32 %i.ag, 1046528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32885)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !9, !alias.scope !32887, !noalias !32888
  %.tr.i.i.i.i.i.i.i = trunc i64 %i.aj to i32
  %i.ak = shl i32 %.tr.i.i.i.i.i.i.i, 20
  %i.al = and i32 %i.ak, 535822336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32892)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load i64, ptr %i.am, align 8, !tbaa !9, !alias.scope !32894, !noalias !32895
  %.tr.i.i.i.i.i.i.i.i = trunc i64 %i.an to i32   ; 2 uses
  %i.ao = shl i32 %.tr.i.i.i.i.i.i.i.i, 29
  %i.ap = or disjoint i32 %i.ao, %i.al
  %i.aq = or disjoint i32 %i.ap, %i.ah
  %i.ar = or disjoint i32 %i.aq, %i.ad
  store i32 %i.ar, ptr %i.w, align 4, !tbaa !3, !alias.scope !32895, !noalias !32894
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.at = lshr i32 %.tr.i.i.i.i.i.i.i.i, 3
  %i.au = and i32 %i.at, 63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32899)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9, !alias.scope !32901, !noalias !32902
  %.tr.i.i.i.i.i.i.i.i.i = trunc i64 %i.aw to i32
  %i.ax = shl i32 %.tr.i.i.i.i.i.i.i.i.i, 6
  %i.ay = and i32 %i.ax, 32704
  %i.az = or disjoint i32 %i.au, %i.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32906)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9, !alias.scope !32908, !noalias !32909
  %.tr.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bb to i32
  %i.bc = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i, 15
  %i.bd = and i32 %i.bc, 16744448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32913)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9, !alias.scope !32915, !noalias !32916
  %.tr.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bf to i32 ; 2 uses
  %i.bg = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.bh = or disjoint i32 %i.bg, %i.bd
  %i.bi = or disjoint i32 %i.bh, %i.az
  store i32 %i.bi, ptr %i.as, align 4, !tbaa !3, !alias.scope !32916, !noalias !32915
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = lshr i32 %.tr.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.bl = and i32 %i.bk, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32920)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !9, !alias.scope !32922, !noalias !32923
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bn to i32
  %i.bo = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.bp = and i32 %i.bo, 1022
  %i.bq = or disjoint i32 %i.bl, %i.bp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32927)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !9, !alias.scope !32929, !noalias !32930
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bs to i32
  %i.bt = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  %i.bu = and i32 %i.bt, 523264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32934)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !9, !alias.scope !32936, !noalias !32937
  %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.bw to i32
  %i.bx = shl i32 %.tr.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 19
  %i.by = and i32 %i.bx, 267911168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32941)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 224
end_hunk_0
