Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_utils-9d32ebcaa21d2f38.test_utils.8b5a28f38d52371b-cgu.0?download=true
inline.NumInlined: 281
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn.i36, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ae, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 6) %1), !alias.scope !620, !noalias !621
  %i.af = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.af, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbXLDOPgjE5X_10test_utils.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ag = add nsw i64 %i.ad, -1                   ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.ag
  br i1 %.not27.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.aj = insertelement <16 x i8> poison, i8 %.lcssa42, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !620
  store ptr %2, ptr %i.a, align 8, !noalias !620
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.am, align 8, !noalias !620
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.an, align 8, !noalias !620
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ao, align 8, !noalias !620
  %i.ap = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ap, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.i
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.i ], [ %.sroa.014.2.3.i, %bb.m ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.ck, %bb.m ] ; 2 uses
  %i.aq = add i64 %.sroa.06.0.lcssa.i, %i.z
  %i.ar = icmp uge i64 %i.aq, %3
  %i.as = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond399.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond399.i, label %._crit_edge.i, label %.lr.ph101.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.sroa.06.097.i = phi i64 [ %i.ck, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.097.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !617, !noalias !622
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa40
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !617, !noalias !622
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ai
  %i.aw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.ak
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !617, !noalias !622
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.lcssa40
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !617, !noalias !622
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ai
  %i.bc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.ak
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !617, !noalias !622
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.lcssa40
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !617, !noalias !622
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ai
  %i.bi = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.ak
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !617, !noalias !622
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.lcssa40
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !617, !noalias !622
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ai
  %i.bo = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.ak
  %i.bp = and <16 x i1> %i.bn, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = icmp eq i16 %i.ay, 0
  br i1 %i.br, label %.preheader90.1.i, label %bb.n

.preheader90.1.i:                                 ; preds = %bb.n, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cp, %bb.n ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %.preheader90.2.i, label %bb.j

bb.j:                                             ; preds = %.preheader90.1.i
  %i.bt = or disjoint i64 %.sroa.06.097.i, 16
  %i.bu = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bv = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu) #21
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.014.2.i, %i.bw
  br label %.preheader90.2.i

.preheader90.2.i:                                 ; preds = %bb.j, %.preheader90.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader90.1.i ], [ %i.bx, %bb.j ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %.preheader90.3.i, label %bb.k

bb.k:                                             ; preds = %.preheader90.2.i
  %i.bz = or disjoint i64 %.sroa.06.097.i, 32
  %i.ca = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca) #21
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.1.i, %i.cc
  br label %.preheader90.3.i

.preheader90.3.i:                                 ; preds = %bb.k, %.preheader90.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader90.2.i ], [ %i.cd, %bb.k ] ; 3 uses
  %i.ce = icmp eq i16 %i.bq, 0
  br i1 %i.ce, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader90.3.i
  %i.cf = or disjoint i64 %.sroa.06.097.i, 48
  %i.cg = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.ch = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cf, i16 noundef %i.bq, i1 noundef zeroext %i.cg) #21
  %i.ci = zext i1 %i.ch to i8
  %i.cj = or i8 %.sroa.014.2.2.i, %i.ci
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader90.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader90.3.i ], [ %i.cj, %bb.l ] ; 2 uses
  %i.ck = add i64 %.sroa.06.097.i, 64             ; 3 uses
  %i.cl = add i64 %i.ck, %i.ap
  %i.cm = icmp uge i64 %i.cl, %3
  %i.cn = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.co = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.097.i, i16 noundef %i.ay, i1 noundef zeroext false) #21
  %i.cp = zext i1 %i.co to i8
  br label %.preheader90.1.i

._crit_edge.i:                                    ; preds = %bb.o, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.o ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.as, %.preheader.i ], [ %i.dj, %bb.o ]
  %i.cq = sub nuw i64 %3, %i.h
  %i.cr = add i64 %i.cq, -16                      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.cs, align 1, !alias.scope !617, !noalias !623
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.lcssa40
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !617, !noalias !623
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.ai
  %i.cv = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.ak
  %i.cw = and <16 x i1> %i.cu, %i.cv
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.q, label %bb.r

.lr.ph101.i:                                      ; preds = %.preheader.i, %bb.o
  %.sroa.06.1100.i = phi i64 [ %i.dg, %bb.o ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1100.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.cz, align 1, !alias.scope !617, !noalias !624
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.lcssa40
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.da, align 1, !alias.scope !617, !noalias !624
  %i.db = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.ai
  %i.dc = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.ak
  %i.dd = and <16 x i1> %i.db, %i.dc
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %i.df = icmp eq i16 %i.de, 0
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.lr.ph101.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph101.i ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dg = add i64 %.sroa.06.1100.i, 16            ; 2 uses
  %i.dh = add i64 %i.dg, %i.z
  %i.di = icmp uge i64 %i.dh, %3
  %i.dj = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.di, %i.dj
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph101.i

bb.p:                                             ; preds = %.lr.ph101.i
  %i.dk = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1100.i, i16 noundef %i.de, i1 noundef zeroext false) #21
  %i.dl = zext i1 %i.dk to i8
  br label %bb.o

bb.q:                                             ; preds = %bb.r, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.do, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !620
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.r:                                             ; preds = %._crit_edge.i
  %i.dm = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cr, i16 noundef %i.cx, i1 noundef zeroext %.lcssa.i) #21
  %i.dn = zext i1 %i.dm to i8
  %i.do = or i8 %.sroa.014.3.lcssa.i, %i.dn
  br label %bb.q

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils.exit.i.i.3, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #21
  %i.dp = load i64, ptr %i.c, align 8, !range !8, !noundef !6
  %i.dq = trunc nuw nsw i64 %i.dp to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.s:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dr = icmp eq i32 %bcmp, 0
  %i.ds = zext i1 %i.dr to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !648 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !8, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !7, !alias.scope !649, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !649, !nonnull !6, !noundef !6 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !649, !noundef !6 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !649 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.l = trunc nuw i8 %.promoted52 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit199

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !651, !noalias !652, !noundef !6
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !653, !noundef !6 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !653, !noundef !6
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !653, !noundef !6
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !653, !noundef !6
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !650
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !6 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !6 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !651, !noalias !654, !noundef !6
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !655, !noundef !6 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !655, !noundef !6
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
  %i.cs = zext nneg i8 %i.cr to i32               ; 2 uses
  %i.ct = or disjoint i32 %i.cq, %i.cs
  %i.cu = icmp samesign ugt i8 %i.cl, -33
  br i1 %i.cu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cv = zext nneg i8 %i.cl to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cw = load i8, ptr %i.bq, align 1, !noalias !655, !noundef !6
  %i.cx = shl nuw nsw i32 %i.cs, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz            ; 2 uses
  %i.db = shl nuw nsw i32 %i.co, 12
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = icmp samesign ugt i8 %i.cl, -17
  br i1 %i.dd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.de = load i8, ptr %i.bt, align 1, !noalias !655, !noundef !6
  %i.df = shl nuw nsw i32 %i.co, 18
  %i.dg = and i32 %i.df, 1835008
  %i.dh = shl nuw nsw i32 %i.da, 6
  %i.di = and i8 %i.de, 63
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.dg
  br label %.loopexit.loopexit

.loopexit199:                                     ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa195 = phi i8 [ %.promoted52, %.split.i.i.peel ], [ %.promoted52, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa192 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dm = xor i8 %.lcssa195, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !649
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa192, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #22, !noalias !654
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.dc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i ], [ %i.dl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i ], [ %i.ct, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i ], [ %i.cv, %bb.p ]
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dn)
  br label %.loopexit

.loopexit200:                                     ; preds = %bb.d
  %i.do = xor i8 %.promoted52, 1
  store i8 %i.do, ptr %i.g, align 8, !alias.scope !649
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit200
  store i8 1, ptr %i.d, align 2, !alias.scope !649
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa194 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !649
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !649
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit200
  %i.dp = phi i64 [ %.lcssa194, %.loopexit ], [ %i.k, %.loopexit200 ], [ %i.k, %.critedge ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dp, ptr %i.dr, align 8
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit: ; preds = %bb.r, %bb.q, %.preheader, %.split.us.i12, %._crit_edge.i5, %.split.us.i, %._crit_edge.i
  %storemerge.i.sink = phi i64 [ 1, %.split.us.i12 ], [ 1, %.split.us.i ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i5 ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %.promoted.i = load i64, ptr %i.ch, align 8, !alias.scope !657 ; 2 uses
  %i.ds = add i64 %.promoted.i, %i.ci             ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cc
  br i1 %i.dt, label %.lr.ph.i1, label %._crit_edge.i

.lr.ph.i1:                                        ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !657, !noundef !6
  %i.dw = load i64, ptr %i.c, align 8, !alias.scope !657 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !657 ; 2 uses
  %i.dz = sub i64 %i.cg, %i.dy
  %invariant.op = sub i64 1, %i.dw
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.s
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !657
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

.lr.ph.split.i:                                   ; preds = %bb.v, %.lr.ph.i1
  %i.ea = phi i64 [ %.sink70.i, %bb.v ], [ %i.bx, %.lr.ph.i1 ] ; 3 uses
  %i.eb = phi i64 [ %i.el, %bb.v ], [ %i.ds, %.lr.ph.i1 ]
  %i.ec = phi i64 [ %.sink71.i, %bb.v ], [ %.promoted.i, %.lr.ph.i1 ] ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !658, !noundef !6
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.dv
  %.not.i2 = icmp eq i64 %i.ei, 0
  br i1 %.not.i2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  %i.ej = add i64 %i.ec, %i.cg
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i
  %..i.i3 = tail call noundef i64 @llvm.umax.i64(i64 %i.ea, i64 %i.dw) ; 2 uses
  %i.ek = icmp ult i64 %..i.i3, %i.cg
  br i1 %i.ek, label %.lr.ph153, label %.preheader36.i.preheader

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.sink71.i = phi i64 [ %i.fj, %bb.z ], [ %i.fi, %bb.y ], [ %i.ej, %bb.t ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.z ], [ %i.dz, %bb.y ], [ 0, %bb.t ] ; 2 uses
  store i64 %.sink71.i, ptr %i.ch, align 8, !alias.scope !657
  store i64 %.sink70.i, ptr %i.bw, align 8, !alias.scope !657
  %i.el = add i64 %.sink71.i, %i.ci               ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cc
  br i1 %i.em, label %.lr.ph.split.i, label %._crit_edge.i

bb.w:                                             ; preds = %.lr.ph153
  %i.en = add nuw nsw i64 %.sroa.04.0.i152, 1     ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.cg
  br i1 %i.eo, label %.lr.ph153, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.w, %bb.u
  %i.ep = icmp ult i64 %i.ea, %i.dw
  br i1 %i.ep, label %.lr.ph155, label %.split.us.i

.lr.ph153:                                        ; preds = %bb.u, %bb.w
  %.sroa.04.0.i152 = phi i64 [ %i.en, %bb.w ], [ %..i.i3, %bb.u ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.i152
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !659, !noundef !6
  %i.es = add i64 %.sroa.04.0.i152, %i.ec         ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.cc
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !658, !noundef !6
  %.not21.i = icmp eq i8 %i.er, %i.ev
  br i1 %.not21.i, label %bb.w, label %bb.z

.preheader36.i:                                   ; preds = %bb.x
  %i.ew = icmp ult i64 %i.ea, %i.fa
  br i1 %i.ew, label %.lr.ph155, label %.split.us.i

.split.us.i:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.ex = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ex, ptr %i.ch, align 8, !alias.scope !657
  store i64 0, ptr %i.bw, align 8, !alias.scope !657
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ey, align 8, !alias.scope !660
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ez, align 8, !alias.scope !660
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

.lr.ph155:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i154 = phi i64 [ %i.fa, %.preheader36.i ], [ %i.dw, %.preheader36.i.preheader ]
  %i.fa = add i64 %.sroa.2.0.i154, -1             ; 6 uses
  %i.fb = icmp ult i64 %i.fa, %i.cg
  br i1 %i.fb, label %bb.x, label %.split32.us.i

bb.x:                                             ; preds = %.lr.ph155
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !659, !noundef !6
  %i.fe = add i64 %i.fa, %i.ec                    ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.cc
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !658, !noundef !6
  %.not20.i = icmp eq i8 %i.fd, %i.fh
  br i1 %.not20.i, label %.preheader36.i, label %bb.y

.split32.us.i:                                    ; preds = %.lr.ph155
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fa, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !661
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.fi = add i64 %i.ec, %i.dy
  br label %bb.v

bb.z:                                             ; preds = %.lr.ph153
  %.reass.reass = add i64 %i.ec, %invariant.op
  %i.fj = add i64 %.reass.reass, %.sroa.04.0.i152
  br label %bb.v

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %.promoted.i4 = load i64, ptr %i.ch, align 8, !alias.scope !663 ; 3 uses
  %i.fk = add i64 %.promoted.i4, %i.ci            ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.cc
  br i1 %i.fl, label %.lr.ph.i7, label %._crit_edge.i5

.lr.ph.i7:                                        ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !663, !noundef !6 ; 2 uses
  %i.fo = load i64, ptr %i.c, align 8, !alias.scope !663
  %.fr63 = freeze i64 %i.fo                       ; 10 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !663
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr63, i64 range(i64 0, -9223372036854775808) %i.cg) ; 2 uses
  %i.fr = add i64 %.fr63, -1                      ; 2 uses
  %.first_iter.i8 = icmp ult i64 %i.fr, %i.cg
  %i.fs = sub i64 1, %.fr63                       ; 2 uses
  br i1 %.first_iter.i8, label %.lr.ph.split.us.i.us.preheader, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i7
  %exitcond.not.i157.not = icmp ult i64 %.fr63, %i.cg
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i.us.preheader:                   ; preds = %.lr.ph.i7
  %exitcond.not.i.us162.not = icmp ult i64 %.fr63, %i.cg
  %.not34.i.us.us165 = icmp eq i64 %.fr63, 0
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.preheader, %bb.ad
  %i.ft = phi i64 [ %i.gt, %bb.ad ], [ %i.fk, %.lr.ph.split.us.i.us.preheader ]
  %i.fu = phi i64 [ %.sink.i9.us, %bb.ad ], [ %.promoted.i4, %.lr.ph.split.us.i.us.preheader ] ; 7 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !664, !noundef !6
  %i.fx = and i8 %i.fw, 63
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fz, %i.fn
  %.not.us.i.us = icmp eq i64 %i.ga, 0
  br i1 %.not.us.i.us, label %bb.ac, label %.preheader35.i.us.preheader

.preheader35.i.us.preheader:                      ; preds = %.lr.ph.split.us.i.us
  br i1 %exitcond.not.i.us162.not, label %.lr.ph164, label %.preheader.i10.us.us.preheader

.preheader35.i.us:                                ; preds = %.lr.ph164
  %i.gb = add i64 %.sroa.04.0.us.i.us163, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.gb, %umax.i
  br i1 %exitcond.not.i.us, label %.preheader.i10.us.us.preheader, label %.lr.ph164

.preheader.i10.us.us.preheader:                   ; preds = %.preheader35.i.us, %.preheader35.i.us.preheader
  br i1 %.not34.i.us.us165, label %.split.us.i12, label %.lr.ph167

.lr.ph164:                                        ; preds = %.preheader35.i.us.preheader, %.preheader35.i.us
  %.sroa.04.0.us.i.us163 = phi i64 [ %i.gb, %.preheader35.i.us ], [ %.fr63, %.preheader35.i.us.preheader ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i.us163
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !665, !noundef !6
  %i.ge = add i64 %.sroa.04.0.us.i.us163, %i.fu   ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.cc
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !664, !noundef !6
  %.not21.us.i.us = icmp eq i8 %i.gd, %i.gh
  br i1 %.not21.us.i.us, label %.preheader35.i.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph164
  %i.gi = add i64 %i.fs, %i.fu
  %i.gj = add i64 %i.gi, %.sroa.04.0.us.i.us163
  br label %bb.ad

.preheader.i10.us.us:                             ; preds = %.lr.ph167
  %.not34.i.us.us = icmp eq i64 %i.gk, 0
  br i1 %.not34.i.us.us, label %.split.us.i12, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us
  %.sroa.2.0.us.i.us.us166 = phi i64 [ %i.gk, %.preheader.i10.us.us ], [ %.fr63, %.preheader.i10.us.us.preheader ]
  %i.gk = add i64 %.sroa.2.0.us.i.us.us166, -1    ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !665, !noundef !6
  %i.gn = add i64 %i.gk, %i.fu                    ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.cc
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gn
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !664, !noundef !6
  %.not20.us.i.us.us = icmp eq i8 %i.gm, %i.gq
  br i1 %.not20.us.i.us.us, label %.preheader.i10.us.us, label %.split.us.us

.split.us.us:                                     ; preds = %.lr.ph167
  %i.gr = add i64 %i.fu, %i.fq
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i.us
  %i.gs = add i64 %i.fu, %i.cg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.us, %bb.ab
  %.sink.i9.us = phi i64 [ %i.gs, %bb.ac ], [ %i.gj, %bb.ab ], [ %i.gr, %.split.us.us ] ; 3 uses
  store i64 %.sink.i9.us, ptr %i.ch, align 8, !alias.scope !663
  %i.gt = add i64 %.sink.i9.us, %i.ci             ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.cc
  br i1 %i.gu, label %.lr.ph.split.us.i.us, label %._crit_edge.i5

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.ag
  %i.gv = phi i64 [ %i.hn, %bb.ag ], [ %i.fk, %.lr.ph.split.us.i.preheader ]
  %i.gw = phi i64 [ %.sink.i9, %bb.ag ], [ %.promoted.i4, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !664, !noundef !6
  %i.gz = and i8 %i.gy, 63
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = and i64 %i.hb, %i.fn
  %.not.us.i = icmp eq i64 %i.hc, 0
  br i1 %.not.us.i, label %bb.af, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i157.not, label %.lr.ph159, label %.preheader.i10

.preheader35.i:                                   ; preds = %.lr.ph159
  %i.hd = add i64 %.sroa.04.0.us.i158, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hd, %umax.i
  br i1 %exitcond.not.i, label %.preheader.i10, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i158 = phi i64 [ %i.hd, %.preheader35.i ], [ %.fr63, %.preheader35.i.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i158
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !665, !noundef !6
  %i.hg = add i64 %.sroa.04.0.us.i158, %i.gw      ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.cc
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.hg
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !664, !noundef !6
  %.not21.us.i = icmp eq i8 %i.hf, %i.hj
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.ae

.preheader.i10:                                   ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.not34.i = icmp eq i64 %.fr63, 0
  br i1 %.not34.i, label %.split.us.i12, label %.split32.us.i11

.split32.us.i11:                                  ; preds = %.preheader.i10
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !666
  unreachable

bb.ae:                                            ; preds = %.lr.ph159
  %i.hk = add i64 %i.fs, %i.gw
  %i.hl = add i64 %i.hk, %.sroa.04.0.us.i158
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.hm = add i64 %i.gw, %i.cg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.i9 = phi i64 [ %i.hm, %bb.af ], [ %i.hl, %bb.ae ] ; 3 uses
  store i64 %.sink.i9, ptr %i.ch, align 8, !alias.scope !663
  %i.hn = add i64 %.sink.i9, %i.ci                ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.cc
  br i1 %i.ho, label %.lr.ph.split.us.i, label %._crit_edge.i5

._crit_edge.i5:                                   ; preds = %bb.ag, %bb.ad, %bb.aa
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !663
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

.split.us.i12:                                    ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us, %.preheader.i10
  %.us-phi = phi i64 [ %i.gw, %.preheader.i10 ], [ %i.fu, %.preheader.i10.us.us ], [ %i.fu, %.preheader.i10.us.us.preheader ] ; 2 uses
  %i.hp = add i64 %.us-phi, %i.cg                 ; 2 uses
  store i64 %i.hp, ptr %i.ch, align 8, !alias.scope !663
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi, ptr %i.hq, align 8, !alias.scope !667
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hp, ptr %i.hr, align 8, !alias.scope !667
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_RNvYNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB9_8MiniCore11source_code0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTReEE9call_onceBb_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !668 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 3)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore11source_code0B8_.exit, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %1, -3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore11source_code0B8_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
  unreachable

_RNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB6_8MiniCore11source_code0B8_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.e, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBG_EEENtNtNtB16_3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTReBG_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_EEENtNtNtB1d_3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTReBN_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringBP_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB2u_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEEB1s_8try_foldB1P_NCNvXs_NvB1s_10advance_byINtNtB2w_10skip_while9SkipWhileB2U_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB5b_8MiniCore11source_codes_0ENtB4d_13SpecAdvanceBy15spec_advance_by0IB3n_B1P_EE0INtNtNtBc_3ops12control_flow11ControlFlowB6U_B1P_EEB5d_(ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef range(i64 1, 0), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBc_3str4iter14SplitInclusivecENtB6_8Iterator8try_folduNCINvXs0_NtNtBa_8adapters9map_whileINtB1Z_8MapWhileBQ_FG_RL0_eEINtNtBc_6option6OptionRL0_eEEB1s_8try_folduNCINvNvB1s_4find5checkReNCINvNvXs0_NtB21_10skip_whileINtB47_9SkipWhileppEB1s_4next5checkB3U_NCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB59_8MiniCore11source_codes_0E0E0INtNtNtBc_3ops12control_flow11ControlFlowB3U_EE0IB6j_B6i_EEB5b_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNtNtBb_3str15BytesIsNotEmptyINtB7_5FnMutTRRShEE8call_mutCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB5_13SliceContains14slice_containsCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtReNtB6_5Debug3fmtCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBN_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB20_3str4iter5SplitcENCNvMNtCsbXLDOPgjE5X_10test_utils7fixtureNtB3c_22FixtureWithProjectMeta15parse_meta_lines0_0EE9from_iterB3e_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB20_3str4iter5SplitcENCNvMNtCsbXLDOPgjE5X_10test_utils7fixtureNtB3c_22FixtureWithProjectMeta15parse_meta_lines_0EE9from_iterB3e_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs89JjGp7luZU_4stdx11trim_indent(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB20_3str4iter5SplitcENCNvMNtCsbXLDOPgjE5X_10test_utils7fixtureNtB3c_22FixtureWithProjectMeta5parse0EE9from_iterB3e_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCshzWfHUSfYae_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbXLDOPgjE5X_10test_utils7fixture7FixtureE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_EEE8grow_oneCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_5Debug3fmtCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCshzWfHUSfYae_4core3str4iter5SplitBG_EECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE5drainINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFromjEECsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedReBM_ECsbXLDOPgjE5X_10test_utils(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecTReBH_EE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3ZipINtNtNtB1d_7sources6repeat6RepeatBH_EINtNtB1b_6filter6FilterINtNtB1b_3map3MapINtNtNtB1f_3str4iter5SplitBH_ENvMB3e_e4trimENCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB3Y_8MiniCore11source_codes0_0EEEB40_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160)) unnamed_addr #0
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!431 = distinct !{!431, !429, !"_RINvMNtCshzWfHUSfYae_4core3stre4findReECsbXLDOPgjE5X_10test_utils: argument 0"}
!432 = distinct !{!432, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BL_5count0ECsbXLDOPgjE5X_10test_utils"}
!433 = distinct !{!433, !432, !"_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BL_5count0ECsbXLDOPgjE5X_10test_utils: argument 0"}
!434 = distinct !{!434, i1 true, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils"}
!435 = distinct !{!435, !434, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils: argument 0:pre.rot"}
!436 = distinct !{!436, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils"}
!437 = distinct !{!437, !436, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils: argument 0:pre.rot"}
!438 = distinct !{!438, i1 true, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils"}
!439 = distinct !{!439, !438, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils: argument 0"}
!440 = distinct !{!440, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils"}
!441 = distinct !{!441, !440, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils: argument 0"}
!442 = distinct !{!442, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCsbXLDOPgjE5X_10test_utils"}
!443 = distinct !{!443, !442, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCsbXLDOPgjE5X_10test_utils: argument 0"}
!444 = distinct !{!444, i1 true, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils"}
!445 = distinct !{!445, !444, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils: argument 0:h.rot"}
!446 = distinct !{!446, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils"}
!447 = distinct !{!447, !446, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils: argument 0:h.rot"}
!448 = distinct !{!448, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!449 = distinct !{!449, !448, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!450 = distinct !{!450, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BL_5count0ECsbXLDOPgjE5X_10test_utils"}
!451 = distinct !{!451, !450, !"_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BL_5count0ECsbXLDOPgjE5X_10test_utils: argument 0"}
!452 = distinct !{!452, i1 true, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils"}
!453 = distinct !{!453, !452, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils: argument 0:pre.rot"}
!454 = distinct !{!454, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils"}
!455 = distinct !{!455, !454, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils: argument 0:pre.rot"}
!456 = distinct !{!456, i1 true, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils"}
!457 = distinct !{!457, !456, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils: argument 0"}
!458 = distinct !{!458, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils"}
!459 = distinct !{!459, !458, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils: argument 0"}
!460 = distinct !{!460, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCsbXLDOPgjE5X_10test_utils"}
!461 = distinct !{!461, !460, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCsbXLDOPgjE5X_10test_utils: argument 0"}
!462 = distinct !{!462, i1 true, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils"}
!463 = distinct !{!463, !462, !"_RNvXsX_NtNtCshzWfHUSfYae_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils: argument 0:h.rot"}
!464 = distinct !{!464, i1 true, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils"}
!465 = distinct !{!465, !464, !"_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCsbXLDOPgjE5X_10test_utils: argument 0:h.rot"}
!466 = distinct !{!466, i1 true, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore17assert_valid_flag"}
!467 = distinct !{!467, !466, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore17assert_valid_flag: argument 0"}
!468 = distinct !{!468, !466, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore17assert_valid_flag: argument 2"}
!469 = distinct !{!469, !466, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore17assert_valid_flag: argument 1"}
!470 = distinct !{!470, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore17assert_valid_flag0EB2l_"}
!471 = distinct !{!471, !470, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore17assert_valid_flag0EB2l_: argument 1"}
!472 = distinct !{!472, !470, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore17assert_valid_flag0EB2l_: argument 0"}
!473 = distinct !{!473, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils"}
!474 = distinct !{!474, !473, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils: argument 0"}
!475 = distinct !{!475, !473, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils: argument 1"}
!476 = distinct !{!476, i1 true, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore8has_flag"}
!477 = distinct !{!477, !476, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore8has_flag: argument 0"}
!478 = distinct !{!478, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore8has_flag0EB2l_"}
!479 = distinct !{!479, !478, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore8has_flag0EB2l_: argument 1"}
!480 = distinct !{!480, !478, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore8has_flag0EB2l_: argument 0"}
!481 = distinct !{!481, i1 true, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore17assert_valid_flag"}
!482 = distinct !{!482, !481, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore17assert_valid_flag: argument 0"}
!483 = distinct !{!483, !481, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore17assert_valid_flag: argument 2"}
!484 = distinct !{!484, !481, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore17assert_valid_flag: argument 1"}
!485 = distinct !{!485, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore17assert_valid_flag0EB2l_"}
!486 = distinct !{!486, !485, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore17assert_valid_flag0EB2l_: argument 1"}
!487 = distinct !{!487, !485, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore17assert_valid_flag0EB2l_: argument 0"}
!488 = distinct !{!488, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils"}
!489 = distinct !{!489, !488, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils: argument 0"}
!490 = distinct !{!490, !488, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils: argument 1"}
!491 = distinct !{!491, i1 true, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore8has_flag"}
!492 = distinct !{!492, !491, !"_RNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB4_8MiniCore8has_flag: argument 0"}
!493 = distinct !{!493, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore8has_flag0EB2l_"}
!494 = distinct !{!494, !493, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore8has_flag0EB2l_: argument 1"}
!495 = distinct !{!495, !493, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2j_8MiniCore8has_flag0EB2l_: argument 0"}
!496 = distinct !{!496, i1 true, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbXLDOPgjE5X_10test_utils"}
!497 = distinct !{!497, !496, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbXLDOPgjE5X_10test_utils: argument 0"}
!498 = distinct !{!498, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils"}
!499 = distinct !{!499, !498, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils: argument 0"}
!500 = distinct !{!500, !498, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils: argument 1"}
!501 = distinct !{!501, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils"}
!502 = distinct !{!502, !501, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils: argument 0"}
!503 = distinct !{!503, !501, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecReE8push_mutCsbXLDOPgjE5X_10test_utils: argument 1"}
!504 = distinct !{!504, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsbXLDOPgjE5X_10test_utils"}
!505 = distinct !{!505, !504, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsbXLDOPgjE5X_10test_utils: argument 0"}
!506 = distinct !{!506, !504, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsbXLDOPgjE5X_10test_utils: argument 1"}
!507 = distinct !{!507, i1 true, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources6repeat6RepeatReENtNtNtBa_6traits8iterator8Iterator3zipINtNtNtBa_8adapters6filter6FilterINtNtB1G_3map3MapINtNtNtBc_3str4iter5SplitBW_ENvMB2u_e4trimENCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB3d_8MiniCore11source_codes0_0EEB3f_"}
!508 = distinct !{!508, !507, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources6repeat6RepeatReENtNtNtBa_6traits8iterator8Iterator3zipINtNtNtBa_8adapters6filter6FilterINtNtB1G_3map3MapINtNtNtBc_3str4iter5SplitBW_ENvMB2u_e4trimENCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB3d_8MiniCore11source_codes0_0EEB3f_: argument 2"}
!509 = distinct !{!509, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtB9_7sources6repeat6RepeatReEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitB1s_ENvMB2c_e4trimENCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2W_8MiniCore11source_codes0_0EEINtB5_7ZipImplBW_B1v_E3newB2Y_"}
!510 = distinct !{!510, !509, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtB9_7sources6repeat6RepeatReEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitB1s_ENvMB2c_e4trimENCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2W_8MiniCore11source_codes0_0EEINtB5_7ZipImplBW_B1v_E3newB2Y_: argument 2"}
!511 = distinct !{!511, !507, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources6repeat6RepeatReENtNtNtBa_6traits8iterator8Iterator3zipINtNtNtBa_8adapters6filter6FilterINtNtB1G_3map3MapINtNtNtBc_3str4iter5SplitBW_ENvMB2u_e4trimENCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB3d_8MiniCore11source_codes0_0EEB3f_: argument 0"}
!512 = distinct !{!512, !509, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtB9_7sources6repeat6RepeatReEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitB1s_ENvMB2c_e4trimENCNvMs_NtCsbXLDOPgjE5X_10test_utils7fixtureNtB2W_8MiniCore11source_codes0_0EEINtB5_7ZipImplBW_B1v_E3newB2Y_: argument 0"}
!513 = !{i64 -2201859535147185320}
!514 = !{!360, !359}
!515 = !{!360}
!516 = !{!362}
!517 = !{!364}
!518 = !{!366}
!519 = !{!359}
!520 = !{!369, !368}
!521 = !{!373, !372, !371}
!522 = !{!375}
!523 = !{!375, !377, !376}
!524 = !{!381, !379}
!525 = !{!384, !383}
!526 = !{!379}
!527 = !{!387, !386, !375, !376}
!528 = !{!389}
!529 = !{!389, !391, !390}
!530 = !{!394, !393, !389, !390}
!531 = !{!399, !398, !396}
!532 = !{!399, !398}
!533 = !{!"llvm.loop.unswitch.partial.disable"}
!534 = !{!405, !404, !402}
!535 = !{!405, !404}
!536 = !{!408}
!537 = !{!409}
!538 = !{!411}
!539 = !{!413}
!540 = !{!415, !413}
!541 = !{!415}
!542 = !{!417}
!543 = !{!418, !415, !413}
!544 = !{!418}
!545 = !{!420, !413}
!546 = !{!"branch_weights", !"expected", i32 2142763204, i32 4720444}
!547 = !{!423, !422}
!548 = !{!426, !425}
!549 = !{!428}
!550 = !{!431, !430}
!551 = !{!433}
!552 = !{!437, !435, !433}
!553 = !{!439}
!554 = !{!441}
!555 = !{!441, !439, !433}
!556 = !{!443, !441, !439, !433}
!557 = !{!447, !445, !433}
!558 = !{!449}
!559 = !{!451}
!560 = !{!455, !453, !451}
!561 = !{!457}
!562 = !{!459}
!563 = !{!459, !457, !451}
!564 = !{!461, !459, !457, !451}
!565 = !{!465, !463, !451}
!566 = !{!467}
!567 = !{!467, !469, !468}
!568 = !{!472, !471, !467, !468}
!569 = !{!474}
!570 = !{!475}
!571 = !{!480, !479, !477}
!572 = !{!480, !479}
!573 = !{!482}
!574 = !{!482, !484, !483}
!575 = !{!487, !486, !482, !483}
!576 = !{!489}
!577 = !{!490}
!578 = !{!495, !494, !492}
!579 = !{!495, !494}
!580 = !{!497}
!581 = !{!499}
!582 = !{!500}
!583 = !{!502}
!584 = !{!503}
!585 = !{!505}
!586 = !{!506}
!587 = !{!508}
!588 = !{!510}
!589 = !{!512, !511}
!590 = !{!512, !510, !511, !508}
!591 = !{i64 -7784084752327925842}
!592 = !{i64 -2582688715390792163}
!593 = !{i64 3776354348386757604}
!594 = !{i64 -6440998805374833009}
!595 = !{i64 -4985264940212356881}
!596 = distinct !{!596, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains"}
!597 = distinct !{!597, !596, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains: argument 0"}
!598 = distinct !{!598, !596, !"_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains: argument 1"}
!599 = distinct !{!599, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsbXLDOPgjE5X_10test_utils"}
!600 = distinct !{!600, !599, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsbXLDOPgjE5X_10test_utils: argument 1"}
!601 = distinct !{!601, !599, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsbXLDOPgjE5X_10test_utils: argument 0"}
!602 = distinct !{!602, i1 true, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils"}
!603 = distinct !{!603, !602, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbXLDOPgjE5X_10test_utils: argument 0"}
!604 = distinct !{!604, i1 true, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains0CsbXLDOPgjE5X_10test_utils"}
!605 = distinct !{!605, !604, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains0CsbXLDOPgjE5X_10test_utils: argument 0"}
!606 = distinct !{!606, i1 true, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsbXLDOPgjE5X_10test_utils"}
!607 = distinct !{!607, !606, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsbXLDOPgjE5X_10test_utils: argument 1"}
!608 = distinct !{!608, !606, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsbXLDOPgjE5X_10test_utils: argument 0"}
!609 = distinct !{!609, i1 true, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0CsbXLDOPgjE5X_10test_utils"}
!610 = distinct !{!610, !609, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0CsbXLDOPgjE5X_10test_utils: argument 0"}
!611 = distinct !{!611, i1 true, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0CsbXLDOPgjE5X_10test_utils"}
!612 = distinct !{!612, !611, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0CsbXLDOPgjE5X_10test_utils: argument 0"}
!613 = distinct !{!613, i1 true, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0CsbXLDOPgjE5X_10test_utils"}
!614 = distinct !{!614, !613, !"_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss1_0CsbXLDOPgjE5X_10test_utils: argument 0"}
!615 = !{i64 -6855364195913029230}
!616 = !{!597}
!617 = !{!598}
!618 = !{!605, !603, !601, !600}
!619 = !{!605, !603, !601, !600, !597, !598}
!620 = !{!597, !598}
!621 = !{!608, !607}
!622 = !{!610}
!623 = !{!612}
!624 = !{!614}
!625 = distinct !{!625, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!626 = distinct !{!626, !625, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!627 = distinct !{!627, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!628 = distinct !{!628, !627, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!629 = distinct !{!629, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!630 = distinct !{!630, !629, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!631 = distinct !{!631, !625, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!632 = distinct !{!632, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils"}
!633 = distinct !{!633, !632, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils: argument 0"}
!634 = distinct !{!634, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils"}
!635 = distinct !{!635, !634, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 0"}
!636 = distinct !{!636, !634, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 1"}
!637 = distinct !{!637, !634, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 2"}
!638 = distinct !{!638, !634, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 3"}
!639 = distinct !{!639, i1 true, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!640 = distinct !{!640, !639, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!641 = distinct !{!641, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils"}
!642 = distinct !{!642, !641, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 0"}
!643 = distinct !{!643, !641, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 1"}
!644 = distinct !{!644, !641, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 2"}
!645 = distinct !{!645, !641, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 3"}
!646 = distinct !{!646, i1 true, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!647 = distinct !{!647, !646, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!648 = !{i64 2833537370195799890}
!649 = !{!626}
!650 = !{!628}
!651 = !{!630}
!652 = !{!631, !628}
!653 = !{!633, !631, !628}
!654 = !{!631, !626}
!655 = !{!633, !631, !626}
!656 = !{!635}
!657 = !{!636}
!658 = !{!637}
!659 = !{!638}
!660 = !{!640, !635}
!661 = !{!635, !636, !637, !638}
!662 = !{!642}
!663 = !{!643}
!664 = !{!644}
!665 = !{!645}
!666 = !{!642, !643, !644, !645}
!667 = !{!647, !642}
!668 = !{i64 6997047999396490350}
end_hunk_1
