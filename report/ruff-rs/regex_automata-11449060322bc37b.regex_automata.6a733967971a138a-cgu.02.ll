Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.02?download=true
inline.NumInlined: 419
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs9_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE17match_pattern_lenB9_:bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = sub nuw i32 %1, %i.c
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = and i64 %i.i, 63
  %i.k = lshr i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val5 = load i64, ptr %i.l, align 16, !noundef !4 ; 2 uses
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1                  ; 3 uses
  %i.o = icmp ult i64 %i.n, %.val5
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.n
  %i.r = load i32, ptr %i.q, align 4, !noundef !4
  %i.s = zext i32 %i.r to i64
  ret i64 %i.s

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %.val5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB4_7Builder14build_from_nfa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([800 x i8]) align 16 captures(none) dereferenceable(800) %0, ptr nofree noundef nonnull readonly align 16 captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 10 uses
  %i.h = alloca [72 x i8], align 8                ; 15 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [128 x i8], align 8               ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [9 x i8], align 1                 ; 3 uses
  %i.n = alloca [9 x i8], align 1                 ; 5 uses
  %i.o = alloca [4 x i8], align 4                 ; 5 uses
  %i.p = alloca [9 x i8], align 1                 ; 3 uses
  %i.q = alloca [9 x i8], align 1                 ; 3 uses
  %i.r = alloca [9 x i8], align 1                 ; 5 uses
  %i.s = alloca [9 x i8], align 1                 ; 3 uses
  %i.t = alloca [9 x i8], align 1                 ; 5 uses
  %i.u = alloca [9 x i8], align 1                 ; 5 uses
  %i.v = alloca [4 x i8], align 4                 ; 5 uses
  %i.w = alloca [4 x i8], align 4                 ; 6 uses
  %i.x = alloca [4 x i8], align 4                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [9 x i8], align 1                ; 3 uses
  %i.ag = alloca [9 x i8], align 1                ; 5 uses
  %i.ah = alloca [4 x i8], align 4                ; 6 uses
  %i.ai = alloca [4 x i8], align 4                ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [9 x i8], align 1                ; 3 uses
  %i.an = alloca [24 x i8], align 8               ; 20 uses
  %i.ao = alloca [80 x i8], align 8               ; 4 uses
  %i.ap = alloca [256 x i8], align 8              ; 11 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [128 x i8], align 8              ; 4 uses
  %i.as = alloca [288 x i8], align 8              ; 11 uses
  %.sroa.14.i = alloca [260 x i8], align 4        ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [56 x i8], align 8               ; 10 uses
  %i.av = alloca [328 x i8], align 8              ; 14 uses
  %i.aw = alloca [288 x i8], align 8              ; 6 uses
  %i.ax = alloca [80 x i8], align 16              ; 10 uses
  %i.ay = alloca [128 x i8], align 8              ; 6 uses
  %i.az = alloca [32 x i8], align 16              ; 7 uses
  %.sroa.0123 = alloca [464 x i8], align 16       ; 9 uses
  %i.ba = alloca [800 x i8], align 16             ; 54 uses
  %i.bb = alloca [32 x i8], align 16              ; 5 uses
  %i.bc = alloca [256 x i8], align 16             ; 20 uses
  %i.bd = alloca [32 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %.sroa.0.0.copyload = load i128, ptr %1, align 16
  %i.be = trunc i128 %.sroa.0.0.copyload to i1
  br i1 %i.be, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bd, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bf = getelementptr i8, ptr %1, i64 117
  %.val = load i8, ptr %i.bf, align 1, !range !3, !noundef !4
  %.sroa.0.0.i = trunc i8 %.val to i1
  br i1 %.sroa.0.0.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.val48 = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.val48, i64 376
  %i.bh = load i32, ptr %i.bg, align 8, !noundef !4
  %i.bi = and i32 %i.bh, 209664
  %.sroa.0.0.i65.not = icmp eq i32 %i.bi, 0
  br i1 %.sroa.0.0.i65.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.e, %bb.d
  %i.bj = getelementptr i8, ptr %1, i64 116
  %.val49 = load i8, ptr %i.bj, align 4, !range !3, !noundef !4
  %.sroa.0.0.i66.not = icmp eq i8 %.val49, 0
  br i1 %.sroa.0.0.i66.not, label %vector.ph, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %.sroa.5.0173 = phi i8 [ %i.bs, %.preheader ], [ -128, %bb.e ] ; 6 uses
  %.lobit.i = lshr i8 %.sroa.5.0173, 7
  %i.bk = zext nneg i8 %.lobit.i to i64
  %i.bl = and i8 %.sroa.5.0173, 126
  %i.bm = zext nneg i8 %i.bl to i128
  %i.bn = shl nuw nsw i128 1, %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bk ; 2 uses
  %i.bp = load i128, ptr %i.bo, align 16, !alias.scope !605, !noundef !4
  %i.bq = or i128 %i.bp, %i.bn
  store i128 %i.bq, ptr %i.bo, align 16, !alias.scope !605
  %i.br = icmp eq i8 %.sroa.5.0173, -2
  %i.bs = add nuw nsw i8 %.sroa.5.0173, 2
  %.lobit.i.1 = lshr i8 %.sroa.5.0173, 7
  %i.bt = zext nneg i8 %.lobit.i.1 to i64
  %i.bu = and i8 %.sroa.5.0173, 126
  %i.bv = or disjoint i8 %i.bu, 1
  %i.bw = zext nneg i8 %i.bv to i128
  %i.bx = shl nuw i128 1, %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bt ; 2 uses
  %i.bz = load i128, ptr %i.by, align 16, !alias.scope !605, !noundef !4
  %i.ca = or i128 %i.bz, %i.bx
  store i128 %i.ca, ptr %i.by, align 16, !alias.scope !605
  br i1 %i.br, label %.loopexit, label %.preheader

vector.ph:                                        ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.bc, i8 0, i64 256, i1 false), !alias.scope !606
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.bc, align 16, !alias.scope !606
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.cb, align 16, !alias.scope !606
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.cc, align 16, !alias.scope !606
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.cd, align 16, !alias.scope !606
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.ce, align 16, !alias.scope !606
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.cf, align 16, !alias.scope !606
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.cg, align 16, !alias.scope !606
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.ch, align 16, !alias.scope !606
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.ci, align 16, !alias.scope !606
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.cj, align 16, !alias.scope !606
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.ck, align 16, !alias.scope !606
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.cl, align 16, !alias.scope !606
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.cm, align 16, !alias.scope !606
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.cn, align 16, !alias.scope !606
  %i.co = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.co, align 16, !alias.scope !606
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.cp, align 16, !alias.scope !606
  %.val51.pre = load ptr, ptr %2, align 8
  br label %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses10singletons.exit

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %.val50 = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val50, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bb, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.cq, i64 32, i1 false), !alias.scope !607
  %i.cr = load i128, ptr %i.bd, align 16
  %i.cs = getelementptr i8, ptr %i.bd, i64 16
  %i.ct = load i128, ptr %i.cs, align 16
  %i.cu = or i128 %i.cr, %i.ct
  %i.cv = icmp ne i128 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.h, label %bb.g

_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses10singletons.exit: ; preds = %vector.ph, %bb.h
  %.val51 = phi ptr [ %.val51.pre, %vector.ph ], [ %.val50, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0123)
  %i.cy = getelementptr inbounds nuw i8, ptr %.val51, i64 360
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !4 ; 6 uses
  %i.da = icmp ult i64 %i.cz, 2305843009213693952
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr i8, ptr %1, i64 119
  %.val52 = load i8, ptr %i.db, align 1, !range !6, !noundef !4 ; 2 uses
  %.not.i68 = icmp eq i8 %.val52, -1
  %..i = select i1 %.not.i68, i8 0, i8 %.val52
  %i.dc = getelementptr inbounds nuw i8, ptr %.val51, i64 384
  %i.dd = getelementptr i8, ptr %1, i64 115
  %.val54 = load i8, ptr %i.dd, align 1, !range !3, !noundef !4 ; 2 uses
  %.sroa.0.0.i69 = trunc i8 %.val54 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.df = load i8, ptr %i.de, align 8, !range !6, !alias.scope !608, !noundef !4
  %.not.i70 = icmp eq i8 %i.df, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.01.0.i = select i1 %.not.i70, ptr @18, ptr %i.dg ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 24
  %i.di = load i8, ptr %i.dh, align 8, !range !3, !noundef !4 ; 2 uses
  %.not4.i = icmp eq i8 %i.di, 2                  ; 2 uses
  br i1 %.not4.i, label %bb.k, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet7add_set(ptr noalias noundef nonnull align 16 dereferenceable(32) %i.bb, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.bd)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @_RNvMs8_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_12ByteClassSet12byte_classes(ptr noalias noundef nonnull sret([256 x i8]) align 1 captures(none) dereferenceable(256) %i.bc, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses10singletons.exit

bb.i:                                             ; preds = %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses10singletons.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.dj = load <2 x ptr>, ptr %.sroa.01.0.i, align 8, !alias.scope !609
  %i.dk = load ptr, ptr %.sroa.01.0.i, align 8, !alias.scope !609, !nonnull !4, !noundef !4 ; 2 uses
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !610
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %bb.j, label %_RNCNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB6_7Builder14build_from_nfa0Ba_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

_RNCNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB6_7Builder14build_from_nfa0Ba_.exit: ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !609, !noundef !4
  store <2 x ptr> %i.dj, ptr %i.az, align 16
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.do, ptr %.sroa.5126.0..sroa_idx, align 16
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses10singletons.exit, %_RNCNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB6_7Builder14build_from_nfa0Ba_.exit
  %.sink = phi i8 [ %i.di, %_RNCNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB6_7Builder14build_from_nfa0Ba_.exit ], [ 2, %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses10singletons.exit ]
  %i.dp = phi ptr [ %i.dk, %_RNCNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB6_7Builder14build_from_nfa0Ba_.exit ], [ undef, %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClasses10singletons.exit ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i8 %.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.val51, i64 386
  %3 = load i16, ptr %i.dq, align 2
  %4 = zext i16 %3 to i24
  %i.dr = getelementptr inbounds nuw i8, ptr %.val51, i64 368
  %i.ds = load i32, ptr %i.dr, align 16, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %.val51, i64 372
  %i.du = load i32, ptr %i.dt, align 4, !noundef !4
  %i.dv = icmp eq i32 %i.ds, %i.du
  %.sroa.3.0.insert.shift.i = select i1 %i.dv, i24 65536, i24 0
  %.sroa.0.0.insert.insert.i = or disjoint i24 %.sroa.3.0.insert.shift.i, %4
  %.val56 = load i8, ptr %i.dc, align 16          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  %.sroa.0.0.i69.mask = and i8 %.val54, 1
  %..i72 = zext nneg i8 %.sroa.0.0.i69.mask to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !614
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !616
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bc, i64 255
  %.val.i.i = load i8, ptr %i.dw, align 1, !alias.scope !617, !noundef !4
  %i.dx = zext i8 %.val.i.i to i64
  %i.dy = add nuw nsw i64 %i.dx, 1
  %i.dz = call range(i64 55, 65) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = sub nuw nsw i64 64, %i.dz               ; 2 uses
  store i64 0, ptr %i.as, align 8, !noalias !616
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !616
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !616
  %i.eb = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.eb, ptr noundef nonnull readonly align 16 dereferenceable(256) %i.bc, i64 256, i1 false), !noalias !618
  %i.ec = getelementptr inbounds nuw i8, ptr %i.as, i64 280 ; 2 uses
  store i64 %i.ea, ptr %i.ec, align 8, !noalias !616
  %i.ed = shl nuw nsw i64 1, %i.ea
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB14_7sources6repeat6RepeatmEEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.as, i64 noundef %i.ed, i32 noundef 0)
          to label %bb.m unwind label %bb.l, !noalias !616

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.p, %bb.l
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.el, %bb.p ], [ %i.ee, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEEEBI_(ptr noalias noundef align 8 dereferenceable(288) %i.as) #19
          to label %.body.i unwind label %bb.s, !noalias !616

bb.m:                                             ; preds = %bb.k
  %i.ef = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !619, !noalias !616, !noundef !4 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 2305843009213693952
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp samesign ugt i64 %i.ef, 2147483646
  br i1 %i.eh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ei = load i64, ptr %i.ec, align 8, !alias.scope !619, !noalias !616, !noundef !4
  %i.ej = and i64 %i.ei, 63
  %i.ek = shl nuw i64 1, %i.ej
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB14_7sources6repeat6RepeatmEEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.as, i64 noundef %i.ek, i32 noundef 0)
          to label %bb.v unwind label %bb.l, !noalias !616

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !620
  store i64 -9223372036854775800, ptr %i.ar, align 8, !noalias !621
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #18
          to label %bb.q unwind label %bb.p, !noalias !622

bb.p:                                             ; preds = %bb.o
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense10BuildErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ar) #19
          to label %.body.i.i unwind label %bb.r, !noalias !622

bb.q:                                             ; preds = %bb.o
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !622
  unreachable

bb.s:                                             ; preds = %.body.i.i
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !616
  unreachable

.body.i:                                          ; preds = %bb.ak, %bb.ac, %.body.i.i
  %.pn21.i = phi { ptr, i32 } [ %i.ff, %bb.ac ], [ %.pn.i, %bb.ak ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 3 uses
  br i1 %.not4.i, label %.body, label %bb.t

bb.t:                                             ; preds = %.body.i
  %i.eo = atomicrmw add ptr %i.dp, i64 -1 release, align 8, !noalias !623
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.u, label %.body

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %.body unwind label %bb.aj, !noalias !624

bb.v:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.aw, ptr noundef nonnull align 8 dereferenceable(288) %i.as, i64 288, i1 false), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !614
  br i1 %.sroa.0.0.i69, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.eq = icmp samesign ult i64 %i.cz, 2147483648
  br i1 %i.eq, label %bb.y, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #18
          to label %.noexc23.i unwind label %bb.ac, !noalias !614

.noexc23.i:                                       ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.er = mul nuw nsw i64 %i.cz, 6
  %i.es = add nuw nsw i64 %i.er, 12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.sroa.010.0.i.i = phi i64 [ %i.es, %bb.y ], [ 12, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !626
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef range(i64 12, 12884901895) %.sroa.010.0.i.i, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc24.i unwind label %bb.ac, !noalias !614

.noexc24.i:                                       ; preds = %bb.z
  %i.et = load i64, ptr %i.aq, align 8, !range !20, !noalias !626, !noundef !4
  %i.eu = trunc nuw i64 %i.et to i1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !range !627, !noalias !626, !noundef !4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  br i1 %i.eu, label %bb.aa, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs98D8VPWzHuM_14regex_automata.exit.i.i, !prof !15

bb.aa:                                            ; preds = %.noexc24.i
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !626
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ew, i64 %i.ey) #18
          to label %.noexc25.i unwind label %bb.ac, !noalias !614

.noexc25.i:                                       ; preds = %bb.aa
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs98D8VPWzHuM_14regex_automata.exit.i.i: ; preds = %.noexc24.i
  %i.ez = load ptr, ptr %i.ex, align 8, !noalias !626, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !626
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ap, i8 0, i64 256, i1 false), !noalias !628
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  store i8 3, ptr %i.fa, align 2, !noalias !628
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ap, i64 13
  store i8 4, ptr %i.fb, align 1, !noalias !628
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ap, i64 95
  store i8 1, ptr %i.fc, align 1, !noalias !628
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %scevgep.i.i.i, i8 1, i64 10, i1 false), !noalias !628
  %scevgep6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %scevgep6.i.i.i, i8 1, i64 26, i1 false), !noalias !628
  %scevgep8.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %scevgep8.i.i.i, i8 1, i64 26, i1 false), !noalias !628
  switch i8 %.val56, label %bb.ab [
    i8 13, label %bb.ad
    i8 10, label %bb.ad
  ]

bb.ab:                                            ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs98D8VPWzHuM_14regex_automata.exit.i.i
  %i.fd = zext i8 %.val56 to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fd
  store i8 5, ptr %i.fe, align 1, !noalias !628
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata3dfa5dense15TransitionTableINtNtCscdodAO9FK5_5alloc3vec3VecmEEEBI_(ptr noalias noundef align 8 dereferenceable(288) %i.aw) #19
          to label %.body.i unwind label %bb.aj, !noalias !614

bb.ad:                                            ; preds = %bb.ab, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs98D8VPWzHuM_14regex_automata.exit.i.i, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs98D8VPWzHuM_14regex_automata.exit.i.i
  %.sroa.14.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.14.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %.sroa.14.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(256) %i.ap, i64 256, i1 false), !noalias !614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !614
  %.sroa.14.136..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.14.i, i64 84
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(176) %.sroa.14.136..sroa_idx.i, i64 176, i1 false), !noalias !614
  store i64 %..i72, ptr %i.av, align 8, !noalias !614
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store i64 %i.cz, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !614
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.ew, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i, align 8, !noalias !614
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.ez, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i, align 8, !noalias !614
  %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %.sroa.010.0.i.i, ptr %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx.i, align 8, !noalias !614
  %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 0, ptr %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i, align 8, !noalias !614
  %.sroa.49.sroa.9.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i32 0, ptr %.sroa.49.sroa.9.0..sroa.49.0..sroa_idx.sroa_idx.i, align 8, !noalias !614
  %.sroa.49.sroa.10.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.49.sroa.10.0..sroa.49.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.14.i, i64 84, i1 false), !noalias !614
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  store i64 6, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !614
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  store i8 %..i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !614
  %i.fg = icmp samesign ult i64 %i.cz, 2147483648
end_hunk_0
