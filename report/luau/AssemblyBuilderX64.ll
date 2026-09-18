Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/AssemblyBuilderX64?download=true
inline.NumInlined: 717
inline.NumDeleted: 189
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi:bb.a
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !58
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !17
  br i1 %.not32, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i32 %.sroa.10.0.extract.trunc, 128
  %i.ai = icmp ult i32 %i.ah, 256
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = trunc i64 %.sroa.10.0.extract.shift to i8
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.s, align 8, !tbaa !58
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.k:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  store i32 %.sroa.10.0.extract.trunc, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.s, align 8, !tbaa !58
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.l:                                             ; preds = %bb.g
  %i.ao = and i64 %1, 4026531840
  %.not31 = icmp eq i64 %i.ao, 268435456
  br i1 %.not31, label %.thread52, label %bb.m

bb.m:                                             ; preds = %bb.l
  %sum.shift = lshr i64 %1, 28
  %i.ap = shl i8 %2, 3
  %i.aq = and i8 %i.ap, 56
  %i.ar = or disjoint i8 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.as, align 8, !tbaa !58
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !17
  %i.av = and i64 %sum.shift, 15
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN4Luau7CodeGen3X64L16getScaleEncodingEhE6scales, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %i.ay = shl i8 %i.ax, 6
  %i.az = and i8 %.sroa.3.0.extract.trunc, 56
  %i.ba = or disjoint i8 %i.ay, %i.az
  %i.bb = or disjoint i8 %i.ba, 5
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !58
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !17
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.10.0.extract.trunc, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bf, ptr %i.as, align 8, !tbaa !58
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.n:                                             ; preds = %bb.f
  %i.bg = and i8 %.sroa.4.0.extract.trunc, 56
  %i.bh = icmp eq i8 %i.bg, 32
  br i1 %i.bh, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bi = shl i8 %2, 3
  %i.bj = and i8 %i.bi, 56
  %.0.tr34 = trunc nuw nsw i32 %.0 to i8
  %i.bk = shl nuw i8 %.0.tr34, 6
  %i.bl = or disjoint i8 %i.bk, %i.bj
  %i.bm = or disjoint i8 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !58
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !17
  %i.bq = lshr i64 %1, 28
  %i.br = and i64 %i.bq, 15
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZN4Luau7CodeGen3X64L16getScaleEncodingEhE6scales, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = shl i8 %i.bt, 6
  %i.bv = or disjoint i8 %i.bu, 36
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bx, ptr %i.bn, align 8, !tbaa !58
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !17
  br i1 %.not, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = add i32 %.sroa.10.0.extract.trunc, 128
  %i.bz = icmp ult i32 %i.by, 256
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = trunc i64 %.sroa.10.0.extract.shift to i8
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %i.bn, align 8, !tbaa !58
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.r:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.10.0.extract.trunc, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !58
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.s:                                             ; preds = %bb.n
  switch i8 %.sroa.4.0.extract.trunc, label %bb.u [
    i8 0, label %bb.t
    i8 -128, label %.thread52
  ]

bb.t:                                             ; preds = %bb.s
  %i.cf = shl i8 %2, 3
  %i.cg = and i8 %i.cf, 56
  %i.ch = or disjoint i8 %i.cg, 5
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !58 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !58
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !17
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !58 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !56
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %.neg57 = sub i64 %i.cp, %i.co
  %.neg58 = trunc i64 %.neg57 to i32
  %reass.sub59 = sub i32 %.sroa.10.0.extract.trunc, %3
  %reass.sub = add i32 %reass.sub59, -4
  %i.cq = add i32 %reass.sub, %.neg58
  store i32 %i.cq, ptr %i.cl, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !58
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.u:                                             ; preds = %bb.s
  %i.cs = shl i8 %2, 3
  %i.ct = and i8 %i.cs, 56
  %i.cu = lshr i8 %.sroa.4.0.extract.trunc, 3
  %i.cv = and i8 %i.cu, 7
  %.0.tr = trunc nuw nsw i32 %.0 to i8
  %i.cw = shl nuw i8 %.0.tr, 6
  %i.cx = or disjoint i8 %i.cw, %i.ct
  %i.cy = or disjoint i8 %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !58
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !17
  br i1 %.not32, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = add i32 %.sroa.10.0.extract.trunc, 128
  %i.dd = icmp ult i32 %i.dc, 256
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.de = trunc i64 %.sroa.10.0.extract.shift to i8
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !58
  store i8 %i.de, ptr %i.df, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.x:                                             ; preds = %bb.v
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.10.0.extract.trunc, ptr %i.dh, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !58
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

.thread52:                                        ; preds = %bb.s, %bb.l
  %i.dj = shl i8 %2, 3
  %i.dk = and i8 %i.dj, 56
  %i.dl = or disjoint i8 %i.dk, 4
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !58 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !58
  store i8 %i.dl, ptr %i.dn, align 1, !tbaa !17
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !58 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.dq, ptr %i.dm, align 8, !tbaa !58
  store i8 37, ptr %i.dp, align 1, !tbaa !17
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.10.0.extract.trunc, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !58
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit: ; preds = %bb.h, %bb.o, %.thread52, %bb.u, %bb.t, %bb.m, %bb.j, %bb.k, %bb.q, %bb.r, %bb.w, %bb.x, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 16
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 4 uses
  %i.a = and i8 %.sroa.2.0.extract.trunc, 7       ; 3 uses
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !58
  store i8 102, ptr %i.d, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp eq i8 %i.a, 4
  %5 = icmp eq i8 %i.a, 1                         ; 2 uses
  %6 = icmp ugt i8 %.sroa.2.0.extract.trunc, 31
  %7 = and i1 %6, %5
  %8 = select i1 %7, i32 64, i32 0                ; 2 uses
  %9 = trunc nuw nsw i32 %8 to i8
  %10 = select i1 %i.f, i8 8, i8 %9               ; 2 uses
  %i.g = and i64 %2, 255
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %11 = lshr i8 %.sroa.2.0.extract.trunc, 6
  %12 = and i8 %11, 1
  %13 = or disjoint i8 %10, %12
  %14 = zext nneg i8 %13 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %15 = lshr i8 %.sroa.2.0.extract.trunc, 4
  %16 = and i8 %15, 4
  %17 = zext nneg i8 %16 to i32
  %i.i = trunc i64 %2 to i32
  %i.j = lshr i32 %i.i, 13
  %i.k = and i32 %i.j, 2
  %18 = or disjoint i32 %i.k, %17
  %i.l = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.m = and i8 %i.l, 1
  %i.n = zext nneg i8 %i.m to i32
  %i.o = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.p = icmp eq i8 %i.o, 1
  %i.q = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.r = and i1 %i.q, %i.p
  %i.s = select i1 %i.r, i32 64, i32 0
  %19 = zext nneg i8 %10 to i32
  %20 = or disjoint i32 %18, %i.n
  %i.t = or disjoint i32 %20, %i.s
  %i.u = or i32 %i.t, %19
  %i.v = or i32 %i.u, %8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn14.i = phi i32 [ %14, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.w = icmp eq i32 %.pn14.i, 0
  br i1 %i.w, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = trunc nuw nsw i32 %.pn14.i to i8
  %i.y = or i8 %i.x, 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !58
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ac = select i1 %5, i8 %3, i8 %4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !58
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !17
  %sum.shift.i = lshr i64 %1, 19
  %i.ag = trunc i64 %sum.shift.i to i8
  %i.ah = and i8 %i.ag, 31
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.ah, i32 noundef 0)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !68
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = and i64 %i.aq, 4294967280
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegMemAndRegENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i64 %1, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv(ptr noundef nonnull align 8 dereferenceable(268) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967280
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645mov64ENS1_11RegisterX64El(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.j = add i64 %i.i, -4611686018427387891
  %i.k = icmp ult i64 %i.j, 13
  br i1 %i.k, label %bb.d, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = add i64 %i.n, -4611686018427387891
  %i.p = icmp ult i64 %i.o, 13
  br i1 %i.p, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.l, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.14, i64 noundef 13) ; 0 uses
  %.sroa.3.0.insert.ext = zext i8 %1 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %.sroa.2.0.insert.insert)
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.15, i64 noundef %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.s = and i8 %1, 7                             ; 2 uses
  %i.t = icmp eq i8 %i.s, 4
  %i.u = select i1 %i.t, i8 8, i8 0
  %i.v = lshr i8 %1, 6
  %i.w = and i8 %i.v, 1
  %i.x = or disjoint i8 %i.u, %i.w                ; 2 uses
  %i.y = icmp ne i8 %i.s, 1
  %i.z = icmp ult i8 %1, 32
  %.not7.i = or i1 %i.z, %i.y
  %i.aa = icmp eq i8 %i.x, 0
  %.not.i = and i1 %.not7.i, %i.aa
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = or disjoint i8 %i.x, 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !58
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit: ; preds = %bb.h, %bb.i
  %i.af = lshr i8 %1, 3
  %i.ag = or i8 %i.af, -72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !58
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !17
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  store i64 %2, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !68
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !59
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 4294967280
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.j, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.j:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i8
  %.sroa.2.0.extract.shift = lshr i64 %1, 8
  %.sroa.4.0.extract.shift = lshr i64 %1, 16      ; 3 uses
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i64 %1, 24      ; 3 uses
  %.sroa.9.0.extract.trunc = trunc i64 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i64 %1, 32     ; 2 uses
  %.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.12.0.extract.shift to i32 ; 7 uses
  switch i8 %.sroa.0.0.extract.trunc, label %bb.ac [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %.sroa.4.0.extract.shift, 7
  %i.b = getelementptr inbounds nuw [128 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6415getRegisterNameENS1_11RegisterX64EE5names, i64 %i.a
  %i.c = lshr i64 %1, 19
  %i.d = and i64 %i.c, 31
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.114, ptr noundef %i.f)
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E:bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6411getSizeNameENS1_7SizeX64EE9sizeNames, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.115, ptr noundef %i.n)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.117)
  %.not25 = icmp eq i8 %.sroa.4.0.extract.trunc, -128 ; 2 uses
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = and i64 %.sroa.4.0.extract.shift, 7
  %i.p = getelementptr inbounds nuw [128 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6415getRegisterNameENS1_11RegisterX64EE5names, i64 %i.o
  %i.q = lshr i64 %1, 19
  %i.r = and i64 %i.q, 31
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.114, ptr noundef %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = and i64 %1, 65280
  %.not26 = icmp eq i64 %i.u, 32768
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = select i1 %.not25, ptr @.str.120, ptr @.str.119
  %i.w = and i64 %.sroa.2.0.extract.shift, 7
  %i.x = getelementptr inbounds nuw [128 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6415getRegisterNameENS1_11RegisterX64EE5names, i64 %i.w
  %i.y = lshr i64 %1, 11
  %i.z = and i64 %i.y, 31
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.v, ptr noundef %i.ab)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = lshr i8 %.sroa.9.0.extract.trunc, 4     ; 2 uses
  %.not16 = icmp eq i8 %i.ac, 1
  br i1 %.not16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = zext nneg i8 %i.ac to i32
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.121, i32 noundef %i.ad)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not17 = icmp eq i64 %.sroa.12.0.extract.shift, 0
  br i1 %.not17, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %or.cond = icmp ult i64 %1, 42949672960
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.122, i32 noundef %.sroa.12.0.extract.trunc)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ae = icmp sgt i32 %.sroa.12.0.extract.trunc, 0
  br i1 %i.ae, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.123, i32 noundef %.sroa.12.0.extract.trunc)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.af = sub nsw i32 0, %.sroa.12.0.extract.trunc
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.124, i32 noundef %i.af)
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s, %bb.o
  %i.ag = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.am = icmp eq i64 %i.al, 4611686018427387903
  br i1 %i.am, label %bb.w, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull @.str.125, i64 noundef 1) ; 0 uses
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = icmp eq i64 %i.aq, 4611686018427387903
  br i1 %i.ar, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull @.str.125, i64 noundef 1) ; 0 uses
  br label %bb.ac

bb.z:                                             ; preds = %bb.a
  %or.cond5 = icmp ult i64 %1, 42949672960
  br i1 %or.cond5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.126, i32 noundef %.sroa.12.0.extract.trunc)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.127, i32 noundef %.sroa.12.0.extract.trunc)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.aa, %bb.ab, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, ...) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_ZN4Luau13vformatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.g = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %3) #19 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull %i.a, i64 noundef %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645movsxENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.351.0.insert.ext = zext i8 %1 to i64
  %.sroa.351.0.insert.shift = shl nuw nsw i64 %.sroa.351.0.insert.ext, 16
  %.sroa.250.0.insert.insert = or disjoint i64 %.sroa.351.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.16, i64 %.sroa.250.0.insert.insert, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.521.0.extract.shift = lshr i64 %2, 16
  %.sroa.521.0.extract.trunc = trunc i64 %.sroa.521.0.extract.shift to i8 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %2, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i8 %.sroa.521.0.extract.trunc, 7     ; 2 uses
  %i.g = and i8 %.sroa.6.0.extract.trunc, 15
  %i.h = select i1 %i.e, i8 %i.f, i8 %i.g
  %i.i = and i8 %1, 7                             ; 2 uses
  %i.j = icmp eq i8 %i.i, 4
  %3 = icmp eq i8 %i.i, 1
  %4 = icmp ugt i8 %1, 31
  %5 = and i1 %4, %3
  %6 = select i1 %5, i32 64, i32 0                ; 2 uses
  %7 = trunc nuw nsw i32 %6 to i8
  %8 = select i1 %i.j, i8 8, i8 %7                ; 2 uses
  %i.k = icmp eq i64 %i.d, 2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %9 = lshr i8 %1, 6
  %10 = and i8 %9, 1
  %11 = or disjoint i8 %8, %10
  %12 = zext nneg i8 %11 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %13 = lshr i8 %1, 4
  %14 = and i8 %13, 4
  %15 = zext nneg i8 %14 to i32
  %i.l = trunc i64 %2 to i32
  %i.m = lshr i32 %i.l, 13
  %i.n = and i32 %i.m, 2
  %16 = or disjoint i32 %i.n, %15
  %i.o = lshr i8 %.sroa.521.0.extract.trunc, 6
  %i.p = and i8 %i.o, 1
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp eq i8 %i.f, 1
  %i.s = icmp ugt i8 %.sroa.521.0.extract.trunc, 31
  %i.t = and i1 %i.s, %i.r
  %i.u = select i1 %i.t, i32 64, i32 0
  %17 = zext nneg i8 %8 to i32
  %18 = or disjoint i32 %16, %i.q
  %i.v = or disjoint i32 %18, %i.u
  %i.w = or i32 %i.v, %17
  %i.x = or i32 %i.w, %6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn14.i = phi i32 [ %12, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = icmp eq i32 %.pn14.i, 0
  br i1 %i.y, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = trunc nuw nsw i32 %.pn14.i to i8
  %i.aa = or i8 %i.z, 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !58
  store i8 15, ptr %i.af, align 1, !tbaa !17
  %i.ah = icmp eq i8 %i.h, 1
  %i.ai = select i1 %i.ah, i8 -66, i8 -65
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !58
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !17
  %19 = lshr i8 %1, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %19, i32 noundef 0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !68
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 4294967280
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i8 %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i8 %1, 7                             ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  %3 = icmp eq i8 %i.a, 1
  %4 = icmp ugt i8 %1, 31
  %5 = and i1 %4, %3
  %6 = select i1 %5, i32 64, i32 0                ; 2 uses
  %7 = trunc nuw nsw i32 %6 to i8
  %8 = select i1 %i.b, i8 8, i8 %7                ; 2 uses
  %i.c = and i64 %2, 255
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %9 = lshr i8 %1, 6
  %10 = and i8 %9, 1
  %11 = or disjoint i8 %8, %10
  %12 = zext nneg i8 %11 to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8 ; 3 uses
  %13 = lshr i8 %1, 4
  %14 = and i8 %13, 4
  %15 = zext nneg i8 %14 to i32
  %i.e = trunc i64 %2 to i32
  %i.f = lshr i32 %i.e, 13
  %i.g = and i32 %i.f, 2
  %16 = or disjoint i32 %i.g, %15
  %i.h = lshr i8 %.sroa.3.0.extract.trunc, 6
  %i.i = and i8 %i.h, 1
  %i.j = zext nneg i8 %i.i to i32
  %i.k = and i8 %.sroa.3.0.extract.trunc, 7
  %i.l = icmp eq i8 %i.k, 1
  %i.m = icmp ugt i8 %.sroa.3.0.extract.trunc, 31
  %i.n = and i1 %i.m, %i.l
  %i.o = select i1 %i.n, i32 64, i32 0
  %17 = zext nneg i8 %8 to i32
  %18 = or disjoint i32 %16, %i.j
  %i.p = or disjoint i32 %18, %i.o
  %i.q = or i32 %i.p, %17
  %i.r = or i32 %i.q, %6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn14 = phi i32 [ %12, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = icmp eq i32 %.pn14, 0
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = trunc nuw nsw i32 %.pn14 to i8
  %i.u = or i8 %i.t, 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.v, align 8, !tbaa !58
  store i8 %i.u, ptr %i.w, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6420placeRegAndModRegMemENS1_10OperandX64ES3_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %sum.shift = lshr i64 %1, 19
  %i.a = trunc i64 %sum.shift to i8
  %i.b = and i8 %i.a, 31
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.b, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645movzxENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.351.0.insert.ext = zext i8 %1 to i64
  %.sroa.351.0.insert.shift = shl nuw nsw i64 %.sroa.351.0.insert.ext, 16
  %.sroa.250.0.insert.insert = or disjoint i64 %.sroa.351.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.17, i64 %.sroa.250.0.insert.insert, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.521.0.extract.shift = lshr i64 %2, 16
  %.sroa.521.0.extract.trunc = trunc i64 %.sroa.521.0.extract.shift to i8 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %2, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i8 %.sroa.521.0.extract.trunc, 7     ; 2 uses
  %i.g = and i8 %.sroa.6.0.extract.trunc, 15
  %i.h = select i1 %i.e, i8 %i.f, i8 %i.g
  %i.i = and i8 %1, 7                             ; 2 uses
  %i.j = icmp eq i8 %i.i, 4
  %3 = icmp eq i8 %i.i, 1
  %4 = icmp ugt i8 %1, 31
  %5 = and i1 %4, %3
  %6 = select i1 %5, i32 64, i32 0                ; 2 uses
  %7 = trunc nuw nsw i32 %6 to i8
  %8 = select i1 %i.j, i8 8, i8 %7                ; 2 uses
  %i.k = icmp eq i64 %i.d, 2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %9 = lshr i8 %1, 6
  %10 = and i8 %9, 1
  %11 = or disjoint i8 %8, %10
  %12 = zext nneg i8 %11 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %13 = lshr i8 %1, 4
  %14 = and i8 %13, 4
  %15 = zext nneg i8 %14 to i32
  %i.l = trunc i64 %2 to i32
  %i.m = lshr i32 %i.l, 13
  %i.n = and i32 %i.m, 2
  %16 = or disjoint i32 %i.n, %15
  %i.o = lshr i8 %.sroa.521.0.extract.trunc, 6
  %i.p = and i8 %i.o, 1
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp eq i8 %i.f, 1
  %i.s = icmp ugt i8 %.sroa.521.0.extract.trunc, 31
  %i.t = and i1 %i.s, %i.r
  %i.u = select i1 %i.t, i32 64, i32 0
  %17 = zext nneg i8 %8 to i32
  %18 = or disjoint i32 %16, %i.q
  %i.v = or disjoint i32 %18, %i.u
  %i.w = or i32 %i.v, %17
  %i.x = or i32 %i.w, %6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn14.i = phi i32 [ %12, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = icmp eq i32 %.pn14.i, 0
  br i1 %i.y, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = trunc nuw nsw i32 %.pn14.i to i8
  %i.aa = or i8 %i.z, 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !58
  store i8 15, ptr %i.af, align 1, !tbaa !17
  %i.ah = icmp eq i8 %i.h, 1
  %i.ai = select i1 %i.ah, i8 -74, i8 -73
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !58
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !17
  %19 = lshr i8 %1, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %19, i32 noundef 0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !68
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 4294967280
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643divENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.18, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 6)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.522.0.extract.shift = lshr i64 %2, 16
  %.sroa.522.0.extract.trunc = trunc i64 %.sroa.522.0.extract.shift to i8 ; 4 uses
  %.sroa.6.0.extract.shift = lshr i64 %2, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %i.d = and i64 %2, 255
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i8 %.sroa.522.0.extract.trunc, 7     ; 3 uses
  %i.g = and i8 %.sroa.6.0.extract.trunc, 15
  %i.h = select i1 %i.e, i8 %i.f, i8 %i.g
  %.sroa.0.0.extract.trunc.i = trunc i64 %2 to i8
  switch i8 %.sroa.0.0.extract.trunc.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.f, 4
  %i.j = select i1 %i.i, i8 8, i8 0
  %i.k = lshr i8 %.sroa.522.0.extract.trunc, 6
  %i.l = and i8 %i.k, 1
  %i.m = or disjoint i8 %i.j, %i.l
  %i.n = icmp eq i8 %i.f, 1
  %i.o = icmp ugt i8 %.sroa.522.0.extract.trunc, 31
  %i.p = and i1 %i.o, %i.n
  %i.q = select i1 %i.p, i8 64, i8 0
  %i.r = or disjoint i8 %i.m, %i.q
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = and i64 %2, 251658240
  %i.t = icmp eq i64 %i.s, 67108864
  %i.u = select i1 %i.t, i32 8, i32 0
  %i.v = trunc i64 %2 to i32
  %i.w = lshr i32 %i.v, 13
  %i.x = and i32 %i.w, 2
  %i.y = or disjoint i32 %i.u, %i.x
  %i.z = lshr i8 %.sroa.522.0.extract.trunc, 6
  %i.aa = and i8 %i.z, 1
  %i.ab = trunc nuw nsw i32 %i.y to i8
  %i.ac = or disjoint i8 %i.aa, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i8 [ %i.r, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %.not.i = icmp eq i8 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = or i8 %.0.i, 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !58
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit: ; preds = %bb.c, %bb.f, %bb.g
  %i.ah = icmp eq i8 %i.h, 1
  %i.ai = select i1 %i.ah, i8 %3, i8 %4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !58
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %5, i32 noundef 0)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !68
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !59
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = and i64 %i.au, 4294967280
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644idivENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.19, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 7)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643mulENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.20, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644imulENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.21, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 5)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643negENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.22, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644not_ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.23, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643decENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.24, i64 %1, i8 noundef zeroext -2, i8 noundef zeroext -1, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643incENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.25, i64 %1, i8 noundef zeroext -2, i8 noundef zeroext -1, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644imulENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.21, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0.extract.shift = lshr i64 %1, 16
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8 ; 4 uses
  %i.d = and i8 %.sroa.3.0.extract.trunc, 7       ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %3 = icmp eq i8 %i.d, 1
  %4 = icmp ugt i8 %.sroa.3.0.extract.trunc, 31
  %5 = and i1 %4, %3
  %6 = select i1 %5, i32 64, i32 0                ; 2 uses
  %7 = trunc nuw nsw i32 %6 to i8
  %8 = select i1 %i.e, i8 8, i8 %7                ; 2 uses
  %i.f = and i64 %2, 255
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %9 = lshr i8 %.sroa.3.0.extract.trunc, 6
  %10 = and i8 %9, 1
  %11 = or disjoint i8 %8, %10
  %12 = zext nneg i8 %11 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %13 = lshr i8 %.sroa.3.0.extract.trunc, 4
  %14 = and i8 %13, 4
  %15 = zext nneg i8 %14 to i32
  %i.h = trunc i64 %2 to i32
  %i.i = lshr i32 %i.h, 13
  %i.j = and i32 %i.i, 2
  %16 = or disjoint i32 %i.j, %15
  %i.k = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i32
  %i.n = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.o = icmp eq i8 %i.n, 1
  %i.p = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.q = and i1 %i.p, %i.o
  %i.r = select i1 %i.q, i32 64, i32 0
  %17 = zext nneg i8 %8 to i32
  %18 = or disjoint i32 %16, %i.m
  %i.s = or disjoint i32 %18, %i.r
  %i.t = or i32 %i.s, %17
  %i.u = or i32 %i.t, %6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn14.i = phi i32 [ %12, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = icmp eq i32 %.pn14.i, 0
  br i1 %i.v, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = trunc nuw nsw i32 %.pn14.i to i8
  %i.x = or i8 %i.w, 64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !58
  store i8 %i.x, ptr %i.z, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58
  store i8 15, ptr %i.ac, align 1, !tbaa !17
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !58
  store i8 -81, ptr %i.ae, align 1, !tbaa !17
  %sum.shift.i = lshr i64 %1, 19
  %i.ag = trunc i64 %sum.shift.i to i8
  %i.ah = and i8 %i.ag, 31
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.ah, i32 noundef 0)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !68
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = and i64 %i.aq, 4294967280
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644imulENS1_10OperandX64ES3_i(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.0.extract.shift = lshr i64 %1, 16
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %3 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, 276856834
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_S5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.21, i64 %1, i64 %2, i64 %.sroa.0.0.insert.insert)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %.sroa.4.0.extract.trunc, 7       ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %4 = icmp eq i8 %i.d, 1
  %5 = icmp ugt i8 %.sroa.4.0.extract.trunc, 31
  %6 = and i1 %5, %4
  %7 = select i1 %6, i32 64, i32 0                ; 2 uses
  %8 = trunc nuw nsw i32 %7 to i8
  %9 = select i1 %i.e, i8 8, i8 %8                ; 2 uses
  %i.f = and i64 %2, 255
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %10 = lshr i8 %.sroa.4.0.extract.trunc, 6
  %11 = and i8 %10, 1
  %12 = or disjoint i8 %9, %11
  %13 = zext nneg i8 %12 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %14 = lshr i8 %.sroa.4.0.extract.trunc, 4
  %15 = and i8 %14, 4
  %16 = zext nneg i8 %15 to i32
  %i.h = trunc i64 %2 to i32
  %i.i = lshr i32 %i.h, 13
  %i.j = and i32 %i.i, 2
  %17 = or disjoint i32 %i.j, %16
  %i.k = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i32
  %i.n = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.o = icmp eq i8 %i.n, 1
  %i.p = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.q = and i1 %i.p, %i.o
  %i.r = select i1 %i.q, i32 64, i32 0
  %18 = zext nneg i8 %9 to i32
  %19 = or disjoint i32 %17, %i.m
  %i.s = or disjoint i32 %19, %i.r
  %i.t = or i32 %i.s, %18
  %i.u = or i32 %i.t, %7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn14.i = phi i32 [ %13, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = icmp eq i32 %.pn14.i, 0
  br i1 %i.v, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = trunc nuw nsw i32 %.pn14.i to i8
  %i.x = or i8 %i.w, 64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !58
  store i8 %i.x, ptr %i.z, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ab = add i32 %3, 128
  %i.ac = icmp ult i32 %i.ab, 256
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !58
  %sum.shift.i = lshr i64 %1, 19
  %i.ag = trunc i64 %sum.shift.i to i8
  %i.ah = and i8 %i.ag, 31                        ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  store i8 107, ptr %i.ae, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.ah, i32 noundef 1)
  %i.ai = trunc nsw i32 %3 to i8
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !58
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !17
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !58
  br label %bb.j

bb.i:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  store i8 105, ptr %i.ae, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.ah, i32 noundef 4)
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  store i32 %3, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  store ptr %i.am, ptr %i.ad, align 8, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = phi ptr [ %i.am, %bb.i ], [ %.pre, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !68
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !59
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = and i64 %i.av, 4294967280
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_S5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.108, ptr noundef %1)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2)
  %i.a = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp eq i64 %i.j, 4611686018427387903
  br i1 %i.k, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.h, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.110, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %3)
  %i.n = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = icmp eq i64 %i.s, 4611686018427387903
  br i1 %i.t, label %bb.h, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit7

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit7:    ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = icmp eq i64 %i.w, 4611686018427387903
  br i1 %i.x, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit8

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit8: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit8, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit7
  %.sink11 = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit8 ], [ %i.u, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit7 ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink11, ptr noundef nonnull @.str.110, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %4)
  %i.aa = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = icmp eq i64 %i.af, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9:    ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = icmp eq i64 %i.aj, 4611686018427387903
  br i1 %i.ak, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10: ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9
  %.sink12 = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10 ], [ %i.ah, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9 ]
  %i.am = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink12, ptr noundef nonnull @.str.109, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644testENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.055.0.extract.trunc.i = trunc i64 %1 to i8 ; 3 uses
  %.sroa.027.0.extract.trunc.i = trunc i64 %2 to i8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.26, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i8 %.sroa.055.0.extract.trunc.i, 1
end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E:bb.a
  %i.q = lshr i8 %.sroa.2.0.extract.trunc, 3
  %i.r = or i8 %i.q, 88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.s, align 8, !tbaa !58
  store i8 %i.r, ptr %i.t, align 1, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !68
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = and i64 %i.ad, 4294967280
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.e:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643retEv(ptr noundef nonnull align 8 dereferenceable(268) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKc(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.30)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !58
  store i8 -61, ptr %i.e, align 1, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = and i64 %i.o, 4294967280
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKc(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.107, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645setccENS0_12ConditionX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Luau7CodeGen3X64L21setccTextForConditionE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %i.f, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i64 %2 to i8
  %.sroa.4.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8 ; 4 uses
  switch i8 %.sroa.0.0.extract.trunc.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = and i8 %.sroa.4.0.extract.trunc.i, 7     ; 2 uses
  %i.h = icmp eq i8 %i.g, 4
  %i.i = select i1 %i.h, i8 8, i8 0
  %i.j = lshr i8 %.sroa.4.0.extract.trunc.i, 6
  %i.k = and i8 %i.j, 1
  %i.l = or disjoint i8 %i.i, %i.k
  %i.m = icmp eq i8 %i.g, 1
  %i.n = icmp ugt i8 %.sroa.4.0.extract.trunc.i, 31
  %i.o = and i1 %i.n, %i.m
  %i.p = select i1 %i.o, i8 64, i8 0
  %i.q = or disjoint i8 %i.l, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = and i64 %2, 251658240
  %i.s = icmp eq i64 %i.r, 67108864
  %i.t = select i1 %i.s, i32 8, i32 0
  %i.u = trunc i64 %2 to i32
  %i.v = lshr i32 %i.u, 13
  %i.w = and i32 %i.v, 2
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = lshr i8 %.sroa.4.0.extract.trunc.i, 6
  %i.z = and i8 %i.y, 1
  %i.aa = trunc nuw nsw i32 %i.x to i8
  %i.ab = or disjoint i8 %i.z, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i8 [ %i.q, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.not.i = icmp eq i8 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = or i8 %.0.i, 64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !58
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit: ; preds = %bb.c, %bb.f, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !58
  store i8 15, ptr %i.ah, align 1, !tbaa !17
  %i.aj = zext i8 %1 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN4Luau7CodeGen3X64L16codeForConditionE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = or i8 %i.al, -112
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !58
  store i8 %i.am, ptr %i.an, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext 0, i32 noundef 0)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !68
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = and i64 %i.ax, 4294967280
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644cmovENS0_12ConditionX64ENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 noundef zeroext %1, i8 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Luau7CodeGen3X64L20cmovTextForConditionE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %.sroa.352.0.insert.ext = zext i8 %2 to i64
  %.sroa.352.0.insert.shift = shl nuw nsw i64 %.sroa.352.0.insert.ext, 16
  %.sroa.251.0.insert.insert = or disjoint i64 %.sroa.352.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %i.f, i64 %.sroa.251.0.insert.insert, i64 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = and i8 %2, 7                             ; 2 uses
  %i.h = icmp eq i8 %i.g, 4
  %4 = icmp eq i8 %i.g, 1
  %5 = icmp ugt i8 %2, 31
  %6 = and i1 %5, %4
  %7 = select i1 %6, i32 64, i32 0                ; 2 uses
  %8 = trunc nuw nsw i32 %7 to i8
  %9 = select i1 %i.h, i8 8, i8 %8                ; 2 uses
  %i.i = and i64 %3, 255
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %10 = lshr i8 %2, 6
  %11 = and i8 %10, 1
  %12 = or disjoint i8 %9, %11
  %13 = zext nneg i8 %12 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %3, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %14 = lshr i8 %2, 4
  %15 = and i8 %14, 4
  %16 = zext nneg i8 %15 to i32
  %i.k = trunc i64 %3 to i32
  %i.l = lshr i32 %i.k, 13
  %i.m = and i32 %i.l, 2
  %17 = or disjoint i32 %i.m, %16
  %i.n = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.o = and i8 %i.n, 1
  %i.p = zext nneg i8 %i.o to i32
  %i.q = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.r = icmp eq i8 %i.q, 1
  %i.s = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.t = and i1 %i.s, %i.r
  %i.u = select i1 %i.t, i32 64, i32 0
  %18 = zext nneg i8 %9 to i32
  %19 = or disjoint i32 %17, %i.p
  %i.v = or disjoint i32 %19, %i.u
  %i.w = or i32 %i.v, %18
  %i.x = or i32 %i.w, %7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn14.i = phi i32 [ %13, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = icmp eq i32 %.pn14.i, 0
  br i1 %i.y, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = trunc nuw nsw i32 %.pn14.i to i8
  %i.aa = or i8 %i.z, 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !58
  store i8 15, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext i8 %1 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN4Luau7CodeGen3X64L16codeForConditionE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = or i8 %i.aj, 64
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !58
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !17
  %20 = lshr i8 %2, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %3, i8 noundef zeroext %20, i32 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !68
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !68
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = and i64 %i.av, 4294967280
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i8 %1 to i64                        ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Luau7CodeGen3X64L19jccTextForConditionE, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN4Luau7CodeGen3X64L16codeForConditionE, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.f, align 8, !tbaa !58
  store i8 15, ptr %i.g, align 1, !tbaa !17
  %i.i = xor i8 %i.e, -128
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.f, align 8, !tbaa !58
  store i8 %i.i, ptr %i.j, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %2)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i8, ptr %i.l, align 8, !tbaa !51, !range !22, !noundef !23
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 4
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %i.c, i64 %.sroa.0.0.copyload.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !68
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = and i64 %i.w, 4294967280
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeJccEPKcRNS0_5LabelEh.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeJccEPKcRNS0_5LabelEh.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeJccEPKcRNS0_5LabelEh.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeJccEPKcRNS0_5LabelEh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !58
  store i8 15, ptr %i.b, align 1, !tbaa !17
  %i.d = xor i8 %3, -128
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !58
  store i8 %i.d, ptr %i.e, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i8, ptr %i.g, align 8, !tbaa !51, !range !22, !noundef !23
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %2, align 4
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %.sroa.0.0.copyload)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !68
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = and i64 %i.r, 4294967280
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !58
  store i8 -23, ptr %i.b, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i8, ptr %i.d, align 8, !tbaa !51, !range !22, !noundef !23
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 4
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.31, i64 %.sroa.0.0.copyload)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = and i64 %i.o, 4294967280
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeLabelERNS0_5LabelE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !72
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !53
  store i32 %i.g, ptr %1, align 4, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.k, align 4, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store ptr %i.n, ptr %i.j, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !62   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_11RegisterX64ENS0_5LabelE:bb.a
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp eq i64 %i.j, 4611686018427387903
  br i1 %i.k, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.h, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.110, i64 noundef 1) ; 0 uses
  %.sroa.02.0.extract.trunc = trunc i64 %3 to i32
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.113, i32 noundef %.sroa.02.0.extract.trunc)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644int3Ev(ptr noundef nonnull align 8 dereferenceable(268) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKc(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.33)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !58
  store i8 -52, ptr %i.e, align 1, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = and i64 %i.o, 4294967280
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643ud2Ev(ptr noundef nonnull align 8 dereferenceable(268) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKc(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.34)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !58
  store i8 15, ptr %i.e, align 1, !tbaa !17
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.d, align 8, !tbaa !58
  store i8 11, ptr %i.g, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cqoEv(ptr noundef nonnull align 8 dereferenceable(268) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKc(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.35)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !58
  store i8 72, ptr %i.e, align 1, !tbaa !17
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.d, align 8, !tbaa !58
  store i8 -103, ptr %i.g, align 1, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !68
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = and i64 %i.q, 4294967280
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cdqEv(ptr noundef nonnull align 8 dereferenceable(268) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKc(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.36)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !58
  store i8 -103, ptr %i.e, align 1, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = and i64 %i.o, 4294967280
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643bsrENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.314.0.insert.ext = zext i8 %1 to i64
  %.sroa.314.0.insert.shift = shl nuw nsw i64 %.sroa.314.0.insert.ext, 16
  %.sroa.213.0.insert.insert = or disjoint i64 %.sroa.314.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.37, i64 %.sroa.213.0.insert.insert, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7                             ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %3 = icmp eq i8 %i.d, 1
  %4 = icmp ugt i8 %1, 31
  %5 = and i1 %4, %3
  %6 = select i1 %5, i32 64, i32 0                ; 2 uses
  %7 = trunc nuw nsw i32 %6 to i8
  %8 = select i1 %i.e, i8 8, i8 %7                ; 2 uses
  %i.f = and i64 %2, 255
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %9 = lshr i8 %1, 6
  %10 = and i8 %9, 1
  %11 = or disjoint i8 %8, %10
  %12 = zext nneg i8 %11 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %13 = lshr i8 %1, 4
  %14 = and i8 %13, 4
  %15 = zext nneg i8 %14 to i32
  %i.h = trunc i64 %2 to i32
  %i.i = lshr i32 %i.h, 13
  %i.j = and i32 %i.i, 2
  %16 = or disjoint i32 %i.j, %15
  %i.k = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i32
  %i.n = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.o = icmp eq i8 %i.n, 1
  %i.p = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.q = and i1 %i.p, %i.o
  %i.r = select i1 %i.q, i32 64, i32 0
  %17 = zext nneg i8 %8 to i32
  %18 = or disjoint i32 %16, %i.m
  %i.s = or disjoint i32 %18, %i.r
  %i.t = or i32 %i.s, %17
  %i.u = or i32 %i.t, %6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn14.i = phi i32 [ %12, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = icmp eq i32 %.pn14.i, 0
  br i1 %i.v, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = trunc nuw nsw i32 %.pn14.i to i8
  %i.x = or i8 %i.w, 64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !58
  store i8 %i.x, ptr %i.z, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58
  store i8 15, ptr %i.ac, align 1, !tbaa !17
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !58
  store i8 -67, ptr %i.ae, align 1, !tbaa !17
  %19 = lshr i8 %1, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %19, i32 noundef 0)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !68
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = and i64 %i.ao, 4294967280
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643bsfENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.314.0.insert.ext = zext i8 %1 to i64
  %.sroa.314.0.insert.shift = shl nuw nsw i64 %.sroa.314.0.insert.ext, 16
  %.sroa.213.0.insert.insert = or disjoint i64 %.sroa.314.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.38, i64 %.sroa.213.0.insert.insert, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7                             ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %3 = icmp eq i8 %i.d, 1
  %4 = icmp ugt i8 %1, 31
  %5 = and i1 %4, %3
  %6 = select i1 %5, i32 64, i32 0                ; 2 uses
  %7 = trunc nuw nsw i32 %6 to i8
  %8 = select i1 %i.e, i8 8, i8 %7                ; 2 uses
  %i.f = and i64 %2, 255
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %9 = lshr i8 %1, 6
  %10 = and i8 %9, 1
  %11 = or disjoint i8 %8, %10
  %12 = zext nneg i8 %11 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %13 = lshr i8 %1, 4
  %14 = and i8 %13, 4
  %15 = zext nneg i8 %14 to i32
  %i.h = trunc i64 %2 to i32
  %i.i = lshr i32 %i.h, 13
  %i.j = and i32 %i.i, 2
  %16 = or disjoint i32 %i.j, %15
  %i.k = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i32
  %i.n = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.o = icmp eq i8 %i.n, 1
  %i.p = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.q = and i1 %i.p, %i.o
  %i.r = select i1 %i.q, i32 64, i32 0
  %17 = zext nneg i8 %8 to i32
  %18 = or disjoint i32 %16, %i.m
  %i.s = or disjoint i32 %18, %i.r
  %i.t = or i32 %i.s, %17
  %i.u = or i32 %i.t, %6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn14.i = phi i32 [ %12, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = icmp eq i32 %.pn14.i, 0
  br i1 %i.v, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = trunc nuw nsw i32 %.pn14.i to i8
  %i.x = or i8 %i.w, 64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !58
  store i8 %i.x, ptr %i.z, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58
  store i8 15, ptr %i.ac, align 1, !tbaa !17
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !58
  store i8 -68, ptr %i.ae, align 1, !tbaa !17
  %19 = lshr i8 %1, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %19, i32 noundef 0)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !68
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = and i64 %i.ao, 4294967280
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645bswapENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.insert.ext = zext i8 %1 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.39, i64 %.sroa.2.0.insert.insert)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7                             ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %i.f = select i1 %i.e, i8 8, i8 0
  %i.g = lshr i8 %1, 6
  %i.h = and i8 %i.g, 1
  %i.i = or disjoint i8 %i.f, %i.h                ; 2 uses
  %i.j = icmp ne i8 %i.d, 1
  %i.k = icmp ult i8 %1, 32
  %.not7.i = or i1 %i.k, %i.j
  %i.l = icmp eq i8 %i.i, 0
  %.not.i = and i1 %.not7.i, %i.l
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = or disjoint i8 %i.i, 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.n, align 8, !tbaa !58
  store i8 %i.m, ptr %i.o, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit: ; preds = %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.q, align 8, !tbaa !58
  store i8 15, ptr %i.r, align 1, !tbaa !17
  %i.t = lshr i8 %1, 3
  %i.u = and i8 %i.t, 7
  %i.v = or disjoint i8 %i.u, -56
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.q, align 8, !tbaa !58
  store i8 %i.v, ptr %i.w, align 1, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !68
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = and i64 %i.ag, 4294967280
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.e:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643nopEj(ptr noundef nonnull align 8 dereferenceable(268) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 75 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit
  %.016 = phi i32 [ %1, %.lr.ph ], [ %i.e, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit ] ; 3 uses
  %i.e = add i32 %.016, -9
  %i.f = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.g = trunc nuw i8 %i.f to i1                  ; 9 uses
  switch i32 %.016, label %bb.z [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.k
    i32 5, label %bb.n
    i32 6, label %bb.q
    i32 7, label %bb.t
    i32 8, label %bb.w
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.40)
  br label %bb.ac

bb.e:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.41, i32 noundef 2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %i.b, align 8, !tbaa !58
  store i8 102, ptr %i.h, align 1, !tbaa !17
  br label %bb.ac

bb.h:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.42, i32 noundef 3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.b, align 8, !tbaa !58
  store i8 15, ptr %i.j, align 1, !tbaa !17
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.b, align 8, !tbaa !58
  store i8 31, ptr %i.l, align 1, !tbaa !17
  br label %bb.ac

bb.k:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.42, i32 noundef 4)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %i.b, align 8, !tbaa !58
  store i8 15, ptr %i.n, align 1, !tbaa !17
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.b, align 8, !tbaa !58
  store i8 31, ptr %i.p, align 1, !tbaa !17
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.b, align 8, !tbaa !58
  store i8 64, ptr %i.r, align 1, !tbaa !17
  br label %bb.ac

bb.n:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.43, i32 noundef 5)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.b, align 8, !tbaa !58
  store i8 15, ptr %i.t, align 1, !tbaa !17
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.b, align 8, !tbaa !58
end_hunk_3
