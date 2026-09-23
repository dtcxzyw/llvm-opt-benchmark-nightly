Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/FlatVector?download=true
inline.NumInlined: 6335
inline.NumDeleted: 1804
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi:bb.a
  %9 = alloca %class.anon.80, align 8             ; 9 uses
  %10 = alloca %class.anon.214, align 8           ; 9 uses
  %11 = alloca %class.anon.213, align 8           ; 5 uses
  %12 = alloca %class.anon.79, align 8            ; 10 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 12 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"class.folly::LockedPtr", align 8 ; 7 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !179
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !180  ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !181  ; 25 uses
  %i.k = icmp slt i32 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit"

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !168
  %i.n = icmp eq i8 %i.m, 33
  br i1 %i.n, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !169
  %i.q = icmp eq i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.t = load i8, ptr %i.s, align 1, !tbaa !182, !range !136, !noundef !137
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  br i1 %i.u, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.e

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.d
  %.0.in.pre.i.i = load i8, ptr %i.r, align 4, !tbaa !135, !range !136
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.h, 0
  br i1 %i.v, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !183
  %i.y = icmp eq i32 %i.j, %i.x
  br i1 %i.y, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %2, align 8, !tbaa !184    ; 2 uses
  %i.aa = and i32 %i.j, 2147483584                ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.not37.i.i.not.i.i352.not = icmp eq i32 %i.aa, 0
  br i1 %.not37.i.i.not.i.i352.not, label %.critedge.i.i.i.i, label %.lr.ph354

bb.h:                                             ; preds = %.lr.ph354
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i353, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ab
  br i1 %.not37.i.i.not.i.i, label %.lr.ph354, label %.critedge.i.i.i.i, !llvm.loop !2

.lr.ph354:                                        ; preds = %bb.g, %bb.h
  %indvars.iv.i.i353 = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.ac = lshr exact i64 %indvars.iv.i.i353, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !113
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.h, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !2

.critedge.i.i.i.i:                                ; preds = %bb.h, %bb.g
  %.not38.i.i.i.i = icmp eq i32 %i.j, %i.aa
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.critedge.i.i.i.i
  %i.ag = lshr i32 %i.j, 6
  %i.ah = and i32 %i.j, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ai
  %i.aj = zext nneg i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !113
  %.demorgan.i.i = or i64 %i.al, %notmask.i40.i.i.i.i
  %i.am = icmp eq i64 %.demorgan.i.i, -1
  %i.an = zext i1 %i.am to i16
  %i.ao = or disjoint i16 %i.an, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph354, %bb.i, %.critedge.i.i.i.i, %bb.f, %bb.e
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.f ], [ 256, %bb.e ], [ %i.ao, %bb.i ], [ 257, %.critedge.i.i.i.i ], [ 256, %.lr.ph354 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.r, align 4
  %i.ap = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ap, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %.lr.ph.i, label %bb.l

.lr.ph.i:                                         ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.j

bb.j:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i", %.lr.ph.i
  %.07.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.bh, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i" ] ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.as, i1 noundef zeroext true)
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !116 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !122
  %i.aw = and i8 %i.av, 2
  %.not.i3.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i3.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i", label %bb.k, !prof !123

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i": ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !124
  %i.az = zext i32 %.07.i to i64                  ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !125
  %i.bd = and i64 %i.az, 7
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !125
  %i.bg = and i8 %i.bf, %i.bc
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !125
  %i.bh = add i32 %.07.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %i.j
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.j, !llvm.loop !644

bb.l:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bi = load ptr, ptr %2, align 8, !tbaa !184   ; 4 uses
  %i.bj = add i32 %i.h, 63                        ; 2 uses
  %i.bk = srem i32 %i.bj, 64
  %i.bl = sub nsw i32 %i.bj, %i.bk                ; 6 uses
  %i.bm = and i32 %i.j, -64                       ; 6 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bo = ashr i32 %i.j, 6
  %i.bp = and i32 %i.j, 63
  %i.bq = zext nneg i32 %i.bp to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bq
  %i.br = xor i64 %notmask.i.i.i.i.i, -1
  %i.bs = sub nsw i32 %i.bl, %i.h                 ; 2 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bt
  %i.bu = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bv = sub nsw i32 64, %i.bs
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl i64 %i.bu, %i.bw
  %i.by = and i64 %i.bx, %i.br
  %i.bz = sext i32 %i.bo to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !113
  %i.cc = and i64 %i.by, %i.cb                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.m
  %i.cd = zext i32 %i.bm to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.n

bb.n:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.cc, %.preheader.i.i.i.i.i ], [ %i.cx, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i" ] ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.cg, i1 noundef zeroext true)
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !116 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !122
  %i.ck = and i8 %i.cj, 2
  %.not.i3.i.i.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i3.i.i.i.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i", label %bb.o, !prof !123

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i": ; preds = %bb.n
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !124
  %i.co = or disjoint i64 %i.cl, %i.cd
  %i.cp = lshr i64 %i.co, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !125
  %i.cs = and i64 %i.cl, 7
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !125
  %i.cv = and i8 %i.cu, %i.cr
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !125
  %i.cw = add nsw i64 %.011.i.i.i.i.i, -1
  %i.cx = and i64 %i.cw, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.n, !llvm.loop !645

bb.p:                                             ; preds = %bb.l
  %.not32.i.i.i.i = icmp eq i32 %i.h, %i.bl
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = sdiv i32 %i.h, 64                       ; 2 uses
  %i.cz = sub nsw i32 %i.bl, %i.h                 ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.da
  %i.db = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dc = sub nsw i32 64, %i.cz
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl i64 %i.db, %i.dd
  %i.df = sext i32 %i.cy to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !113
  %i.di = and i64 %i.dh, %i.de                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.q
  %i.dj = shl nsw i32 %i.cy, 6
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.r

bb.r:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i", %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.di, %.preheader.i37.i.i.i.i ], [ %i.ee, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i" ] ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.dn, i1 noundef zeroext true)
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !116 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !122
  %i.dr = and i8 %i.dq, 2
  %.not.i3.i.i.i40.i.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i3.i.i.i40.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i", label %bb.s, !prof !123

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i": ; preds = %bb.r
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true) ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !124
  %i.dv = or disjoint i64 %i.ds, %i.dk
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !125
  %i.dz = and i64 %i.ds, 7
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !125
  %i.ec = and i8 %i.eb, %i.dy
  store i8 %i.ec, ptr %i.dx, align 1, !tbaa !125
  %i.ed = add i64 %.011.i38.i.i.i.i, -1
  %i.ee = and i64 %i.ed, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i42.i.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not10.i42.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.r, !llvm.loop !645

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i41.i.i.i.i", %bb.q, %bb.p
  %i.ef = add nsw i32 %i.bl, 64                   ; 2 uses
  %.not3359.i.i.i.i = icmp sgt i32 %i.ef, %i.bm
  br i1 %.not3359.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.t

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %.not34.i.i.i.i = icmp eq i32 %i.j, %i.bm
  br i1 %.not34.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.z

bb.t:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.ei = phi i32 [ %i.ef, %.lr.ph.i.i.i.i ], [ %i.gc, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.060.i.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.ei, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.ej = sdiv i32 %.060.i.i.i.i, 64              ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !113 ; 2 uses
  switch i64 %i.em, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.u
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t
  %i.en = shl nsw i32 %i.ej, 6
  %i.eo = zext i32 %i.en to i64
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ep = shl nsw i32 %i.ej, 6                    ; 2 uses
  %i.eq = add i32 %i.ep, 64
  %i.er = sext i32 %i.eq to i64
  %.0.off.i.i.i.i = add i32 %.060.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph24.i.i.i.i.i

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.u
  %i.es = sext i32 %i.ep to i64
  br label %bb.v

bb.v:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i", %.lr.ph24.i.i.i.i.i
  %.023.i.i.i.i.i = phi i64 [ %i.es, %.lr.ph24.i.i.i.i.i ], [ %i.fi, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i" ] ; 3 uses
  %i.et = load i32, ptr %i.eh, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.et, i1 noundef zeroext true)
  %i.eu = load ptr, ptr %i.eg, align 8, !tbaa !116 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 44
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !122
  %i.ex = and i8 %i.ew, 2
  %.not.i3.i.i.i44.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i3.i.i.i44.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i", label %bb.w, !prof !123

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i": ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !124
  %i.fa = lshr i64 %.023.i.i.i.i.i, 3
  %i.fb = and i64 %i.fa, 536870911
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !125
  %i.fe = and i64 %.023.i.i.i.i.i, 7
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !125
  %i.fh = and i8 %i.fg, %i.fd
  store i8 %i.fh, ptr %i.fc, align 1, !tbaa !125
  %i.fi = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.er
  br i1 %i.fj, label %bb.v, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !646

bb.x:                                             ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i ], [ %i.gb, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i" ] ; 3 uses
  %i.fk = load i32, ptr %i.eh, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.fk, i1 noundef zeroext true)
  %i.fl = load ptr, ptr %i.eg, align 8, !tbaa !116 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 44
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !122
  %i.fo = and i8 %i.fn, 2
  %.not.i3.i.i18.i.i.i.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i3.i.i18.i.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i", label %bb.y, !prof !123

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i": ; preds = %bb.x
  %i.fp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true) ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !124
  %i.fs = or disjoint i64 %i.fp, %i.eo
  %i.ft = lshr i64 %i.fs, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !125
  %i.fw = and i64 %i.fp, 7
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !125
  %i.fz = and i8 %i.fy, %i.fv
  store i8 %i.fz, ptr %i.fu, align 1, !tbaa !125
  %i.ga = add i64 %.01522.i.i.i.i.i, -1
  %i.gb = and i64 %i.ga, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i47.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.x, !llvm.loop !647

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i45.i.i.i.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit19.i.i.i.i.i", %bb.u, %bb.t
  %i.gc = add nsw i32 %i.ei, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.gc, %i.bm
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.t, !llvm.loop !648

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gd = ashr i32 %i.j, 6
  %i.ge = and i32 %i.j, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.gf
  %i.gg = xor i64 %notmask.i48.i.i.i.i, -1
  %i.gh = sext i32 %i.gd to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !113
  %i.gk = and i64 %i.gj, %i.gg                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.z
  %i.gl = zext i32 %i.bm to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i
  %.011.i51.i.i.i.i = phi i64 [ %i.gk, %.preheader.i50.i.i.i.i ], [ %i.hf, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i" ] ; 3 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.go, i1 noundef zeroext true)
  %i.gp = load ptr, ptr %i.gm, align 8, !tbaa !116 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 44
  %i.gr = load i8, ptr %i.gq, align 4, !tbaa !122
  %i.gs = and i8 %i.gr, 2
  %.not.i3.i.i.i53.i.i.i.i = icmp eq i8 %i.gs, 0
  br i1 %.not.i3.i.i.i53.i.i.i.i, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i", label %bb.ab, !prof !123

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i": ; preds = %bb.aa
  %i.gt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i, i1 true) ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !124
  %i.gw = or disjoint i64 %i.gt, %i.gl
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gx ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !125
  %i.ha = and i64 %i.gt, 7
  %i.hb = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !125
  %i.hd = and i8 %i.hc, %i.gz
  store i8 %i.hd, ptr %i.gy, align 1, !tbaa !125
  %i.he = add nsw i64 %.011.i51.i.i.i.i, -1
  %i.hf = and i64 %i.he, %.011.i51.i.i.i.i        ; 2 uses
  %.not10.i55.i.i.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not10.i55.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.aa, !llvm.loop !645

bb.ac:                                            ; preds = %bb.c
  br i1 %i.u, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i75, label %bb.ad

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i75: ; preds = %bb.ac
  %.0.in.pre.i.i76 = load i8, ptr %i.r, align 4, !tbaa !135, !range !136
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25

bb.ad:                                            ; preds = %bb.ac
  %i.hg = icmp eq i32 %i.h, 0
  br i1 %i.hg, label %bb.ae, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23

bb.ae:                                            ; preds = %bb.ad
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !183
  %i.hj = icmp eq i32 %i.j, %i.hi
  br i1 %i.hj, label %bb.af, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23

bb.af:                                            ; preds = %bb.ae
  %i.hk = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %i.hl = and i32 %i.j, 2147483584                ; 3 uses
  %i.hm = zext nneg i32 %i.hl to i64
  %.not37.i.i.not.i.i69349.not = icmp eq i32 %i.hl, 0
  br i1 %.not37.i.i.not.i.i69349.not, label %.critedge.i.i.i.i70, label %.lr.ph351

bb.ag:                                            ; preds = %.lr.ph351
  %indvars.iv.next.i.i74 = add nuw nsw i64 %indvars.iv.i.i68350, 64 ; 2 uses
  %.not37.i.i.not.i.i69 = icmp samesign ult i64 %indvars.iv.next.i.i74, %i.hm
  br i1 %.not37.i.i.not.i.i69, label %.lr.ph351, label %.critedge.i.i.i.i70, !llvm.loop !2

.lr.ph351:                                        ; preds = %bb.af, %bb.ag
  %indvars.iv.i.i68350 = phi i64 [ %indvars.iv.next.i.i74, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.hn = lshr exact i64 %indvars.iv.i.i68350, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !113
  %i.hq = icmp eq i64 %i.hp, -1
  br i1 %i.hq, label %bb.ag, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23, !llvm.loop !2

.critedge.i.i.i.i70:                              ; preds = %bb.ag, %bb.af
  %.not38.i.i.i.i71 = icmp eq i32 %i.j, %i.hl
  br i1 %.not38.i.i.i.i71, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i.i.i.i70
  %i.hr = lshr i32 %i.j, 6
  %i.hs = and i32 %i.j, 63
  %i.ht = zext nneg i32 %i.hs to i64
  %notmask.i40.i.i.i.i72 = shl nsw i64 -1, %i.ht
  %i.hu = zext nneg i32 %i.hr to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hu
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !113
  %.demorgan.i.i73 = or i64 %i.hw, %notmask.i40.i.i.i.i72
  %i.hx = icmp eq i64 %.demorgan.i.i73, -1
  %i.hy = zext i1 %i.hx to i16
  %i.hz = or disjoint i16 %i.hy, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23: ; preds = %.lr.ph351, %bb.ah, %.critedge.i.i.i.i70, %bb.ae, %bb.ad
  %.sroa.0.0.insert.ext.i.i24 = phi i16 [ 256, %bb.ae ], [ 256, %bb.ad ], [ %i.hz, %bb.ah ], [ 257, %.critedge.i.i.i.i70 ], [ 256, %.lr.ph351 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i24, ptr %i.r, align 4
  %i.ia = trunc i16 %.sroa.0.0.insert.ext.i.i24 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i75
  %.0.in.i.i26 = phi i8 [ %.0.in.pre.i.i76, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i75 ], [ %i.ia, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i23 ]
  %.0.i.i27 = trunc nuw i8 %.0.in.i.i26 to i1
  br i1 %.0.i.i27, label %.lr.ph.i64, label %bb.ak

.lr.ph.i64:                                       ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ai

bb.ai:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i", %.lr.ph.i64
  %.08.i = phi i32 [ %i.h, %.lr.ph.i64 ], [ %i.is, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i" ] ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.id, i1 noundef zeroext true)
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !116 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 44
  %i.ig = load i8, ptr %i.if, align 4, !tbaa !122
  %i.ih = and i8 %i.ig, 2
  %.not.i3.i.i.i65 = icmp eq i8 %i.ih, 0
  br i1 %.not.i3.i.i.i65, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i", label %bb.aj, !prof !123

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i": ; preds = %bb.ai
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !124
  %i.ik = zext i32 %.08.i to i64                  ; 2 uses
  %i.il = lshr i64 %i.ik, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.il ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !125
  %i.io = and i64 %i.ik, 7
  %i.ip = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !125
  %i.ir = and i8 %i.iq, %i.in
  store i8 %i.ir, ptr %i.im, align 1, !tbaa !125
  %i.is = add i32 %.08.i, 1                       ; 2 uses
  %exitcond.not.i66 = icmp eq i32 %i.is, %i.j
  br i1 %exitcond.not.i66, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.ai, !llvm.loop !649

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i25
  %i.it = load ptr, ptr %2, align 8, !tbaa !184   ; 4 uses
  %i.iu = add i32 %i.h, 63                        ; 2 uses
  %i.iv = srem i32 %i.iu, 64
  %i.iw = sub nsw i32 %i.iu, %i.iv                ; 6 uses
  %i.ix = and i32 %i.j, -64                       ; 6 uses
  %i.iy = icmp slt i32 %i.ix, %i.iw
  br i1 %i.iy, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.iz = ashr i32 %i.j, 6
  %i.ja = and i32 %i.j, 63
  %i.jb = zext nneg i32 %i.ja to i64
  %notmask.i.i.i.i.i57 = shl nsw i64 -1, %i.jb
  %i.jc = xor i64 %notmask.i.i.i.i.i57, -1
  %i.jd = sub nsw i32 %i.iw, %i.h                 ; 2 uses
  %i.je = zext nneg i32 %i.jd to i64
  %notmask.i.i.i.i.i.i58 = shl nsw i64 -1, %i.je
  %i.jf = xor i64 %notmask.i.i.i.i.i.i58, -1
  %i.jg = sub nsw i32 64, %i.jd
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl i64 %i.jf, %i.jh
  %i.jj = and i64 %i.ji, %i.jc
  %i.jk = sext i32 %i.iz to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !113
  %i.jn = and i64 %i.jj, %i.jm                    ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq i64 %i.jn, 0
  br i1 %.not.i.i.i.i.i59, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i60

.preheader.i.i.i.i.i60:                           ; preds = %bb.al
  %i.jo = zext i32 %i.ix to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.am

bb.am:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i", %.preheader.i.i.i.i.i60
  %.011.i.i.i.i.i61 = phi i64 [ %i.jn, %.preheader.i.i.i.i.i60 ], [ %i.ki, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i" ] ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.jr, i1 noundef zeroext true)
  %i.js = load ptr, ptr %i.jp, align 8, !tbaa !116 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 44
  %i.ju = load i8, ptr %i.jt, align 4, !tbaa !122
  %i.jv = and i8 %i.ju, 2
  %.not.i3.i.i.i.i.i.i.i62 = icmp eq i8 %i.jv, 0
  br i1 %.not.i3.i.i.i.i.i.i.i62, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i", label %bb.an, !prof !123

bb.an:                                            ; preds = %bb.am
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i": ; preds = %bb.am
  %i.jw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i61, i1 true) ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !124
  %i.jz = or disjoint i64 %i.jw, %i.jo
  %i.ka = lshr i64 %i.jz, 3
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ka ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !125
  %i.kd = and i64 %i.jw, 7
  %i.ke = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !125
  %i.kg = and i8 %i.kf, %i.kc
  store i8 %i.kg, ptr %i.kb, align 1, !tbaa !125
  %i.kh = add nsw i64 %.011.i.i.i.i.i61, -1
  %i.ki = and i64 %i.kh, %.011.i.i.i.i.i61        ; 2 uses
  %.not10.i.i.i.i.i63 = icmp eq i64 %i.ki, 0
  br i1 %.not10.i.i.i.i.i63, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.am, !llvm.loop !650

bb.ao:                                            ; preds = %bb.ak
  %.not32.i.i.i.i29 = icmp eq i32 %i.h, %i.iw
  br i1 %.not32.i.i.i.i29, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kj = sdiv i32 %i.h, 64                       ; 2 uses
  %i.kk = sub nsw i32 %i.iw, %i.h                 ; 2 uses
  %i.kl = zext nneg i32 %i.kk to i64
  %notmask.i.i35.i.i.i.i30 = shl nsw i64 -1, %i.kl
  %i.km = xor i64 %notmask.i.i35.i.i.i.i30, -1
  %i.kn = sub nsw i32 64, %i.kk
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = shl i64 %i.km, %i.ko
  %i.kq = sext i32 %i.kj to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.kq
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !113
  %i.kt = and i64 %i.ks, %i.kp                    ; 2 uses
  %.not.i36.i.i.i.i31 = icmp eq i64 %i.kt, 0
  br i1 %.not.i36.i.i.i.i31, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %.preheader.i37.i.i.i.i32

.preheader.i37.i.i.i.i32:                         ; preds = %bb.ap
  %i.ku = shl nsw i32 %i.kj, 6
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.aq

bb.aq:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i", %.preheader.i37.i.i.i.i32
  %.011.i38.i.i.i.i33 = phi i64 [ %i.kt, %.preheader.i37.i.i.i.i32 ], [ %i.lp, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i" ] ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.ky, i1 noundef zeroext true)
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !116 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 44
  %i.lb = load i8, ptr %i.la, align 4, !tbaa !122
  %i.lc = and i8 %i.lb, 2
  %.not.i3.i.i.i40.i.i.i.i34 = icmp eq i8 %i.lc, 0
  br i1 %.not.i3.i.i.i40.i.i.i.i34, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i", label %bb.ar, !prof !123

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i": ; preds = %bb.aq
  %i.ld = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i33, i1 true) ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !124
  %i.lg = or disjoint i64 %i.ld, %i.kv
  %i.lh = lshr i64 %i.lg, 3
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lh ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !125
  %i.lk = and i64 %i.ld, 7
  %i.ll = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !125
  %i.ln = and i8 %i.lm, %i.lj
  store i8 %i.ln, ptr %i.li, align 1, !tbaa !125
  %i.lo = add i64 %.011.i38.i.i.i.i33, -1
  %i.lp = and i64 %i.lo, %.011.i38.i.i.i.i33      ; 2 uses
  %.not10.i42.i.i.i.i35 = icmp eq i64 %i.lp, 0
  br i1 %.not10.i42.i.i.i.i35, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.aq, !llvm.loop !650

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i41.i.i.i.i", %bb.ap, %bb.ao
  %i.lq = add nsw i32 %i.iw, 64                   ; 2 uses
  %.not3359.i.i.i.i36 = icmp sgt i32 %i.lq, %i.ix
  br i1 %.not3359.i.i.i.i36, label %._crit_edge.i.i.i.i40, label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.as

._crit_edge.i.i.i.i40:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %.not34.i.i.i.i41 = icmp eq i32 %i.j, %i.ix
  br i1 %.not34.i.i.i.i41, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.ay

bb.as:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i37
  %i.lt = phi i32 [ %i.lq, %.lr.ph.i.i.i.i37 ], [ %i.nn, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.060.i.i.i.i38 = phi i32 [ %i.iw, %.lr.ph.i.i.i.i37 ], [ %i.lt, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.lu = sdiv i32 %.060.i.i.i.i38, 64            ; 3 uses
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.lv
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !113 ; 2 uses
  switch i64 %i.lx, label %.lr.ph.i.i.i.i.i53 [
    i64 -1, label %bb.at
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i53:                               ; preds = %bb.as
  %i.ly = shl nsw i32 %i.lu, 6
  %i.lz = zext i32 %i.ly to i64
  br label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ma = shl nsw i32 %i.lu, 6                    ; 2 uses
  %i.mb = add i32 %i.ma, 64
  %i.mc = sext i32 %i.mb to i64
  %.0.off.i.i.i.i48 = add i32 %.060.i.i.i.i38, 127
  %.not25.i.i.i.i.i49 = icmp ult i32 %.0.off.i.i.i.i48, 64
  br i1 %.not25.i.i.i.i.i49, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph24.i.i.i.i.i50

.lr.ph24.i.i.i.i.i50:                             ; preds = %bb.at
  %i.md = sext i32 %i.ma to i64
  br label %bb.au

bb.au:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i", %.lr.ph24.i.i.i.i.i50
  %.023.i.i.i.i.i51 = phi i64 [ %i.md, %.lr.ph24.i.i.i.i.i50 ], [ %i.mt, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i" ] ; 3 uses
  %i.me = load i32, ptr %i.ls, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.me, i1 noundef zeroext true)
  %i.mf = load ptr, ptr %i.lr, align 8, !tbaa !116 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 44
  %i.mh = load i8, ptr %i.mg, align 4, !tbaa !122
  %i.mi = and i8 %i.mh, 2
  %.not.i3.i.i.i44.i.i.i.i52 = icmp eq i8 %i.mi, 0
  br i1 %.not.i3.i.i.i44.i.i.i.i52, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i", label %bb.av, !prof !123

bb.av:                                            ; preds = %bb.au
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i": ; preds = %bb.au
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !124
  %i.ml = lshr i64 %.023.i.i.i.i.i51, 3
  %i.mm = and i64 %i.ml, 536870911
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mm ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !125
  %i.mp = and i64 %.023.i.i.i.i.i51, 7
  %i.mq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !125
  %i.ms = and i8 %i.mr, %i.mo
  store i8 %i.ms, ptr %i.mn, align 1, !tbaa !125
  %i.mt = add nuw i64 %.023.i.i.i.i.i51, 1        ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.mc
  br i1 %i.mu, label %bb.au, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !651

bb.aw:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i", %.lr.ph.i.i.i.i.i53
  %.01522.i.i.i.i.i54 = phi i64 [ %i.lx, %.lr.ph.i.i.i.i.i53 ], [ %i.nm, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i" ] ; 3 uses
  %i.mv = load i32, ptr %i.ls, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.mv, i1 noundef zeroext true)
  %i.mw = load ptr, ptr %i.lr, align 8, !tbaa !116 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 44
  %i.my = load i8, ptr %i.mx, align 4, !tbaa !122
  %i.mz = and i8 %i.my, 2
  %.not.i3.i.i18.i.i.i.i.i55 = icmp eq i8 %i.mz, 0
  br i1 %.not.i3.i.i18.i.i.i.i.i55, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i", label %bb.ax, !prof !123

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i": ; preds = %bb.aw
  %i.na = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i54, i1 true) ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !124
  %i.nd = or disjoint i64 %i.na, %i.lz
  %i.ne = lshr i64 %i.nd, 3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ne ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !125
  %i.nh = and i64 %i.na, 7
  %i.ni = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !125
  %i.nk = and i8 %i.nj, %i.ng
  store i8 %i.nk, ptr %i.nf, align 1, !tbaa !125
  %i.nl = add i64 %.01522.i.i.i.i.i54, -1
  %i.nm = and i64 %i.nl, %.01522.i.i.i.i.i54      ; 2 uses
  %.not.i47.i.i.i.i56 = icmp eq i64 %i.nm, 0
  br i1 %.not.i47.i.i.i.i56, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.aw, !llvm.loop !652

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i45.i.i.i.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit19.i.i.i.i.i", %bb.at, %bb.as
  %i.nn = add nsw i32 %i.lt, 64                   ; 2 uses
  %.not33.i.i.i.i39 = icmp sgt i32 %i.nn, %i.ix
  br i1 %.not33.i.i.i.i39, label %._crit_edge.i.i.i.i40, label %bb.as, !llvm.loop !653

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i40
  %i.no = ashr i32 %i.j, 6
  %i.np = and i32 %i.j, 63
  %i.nq = zext nneg i32 %i.np to i64
  %notmask.i48.i.i.i.i42 = shl nsw i64 -1, %i.nq
  %i.nr = xor i64 %notmask.i48.i.i.i.i42, -1
  %i.ns = sext i32 %i.no to i64
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !113
  %i.nv = and i64 %i.nu, %i.nr                    ; 2 uses
  %.not.i49.i.i.i.i43 = icmp eq i64 %i.nv, 0
  br i1 %.not.i49.i.i.i.i43, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i50.i.i.i.i44

.preheader.i50.i.i.i.i44:                         ; preds = %bb.ay
  %i.nw = zext i32 %i.ix to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.az

bb.az:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i44
  %.011.i51.i.i.i.i45 = phi i64 [ %i.nv, %.preheader.i50.i.i.i.i44 ], [ %i.oq, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i" ] ; 3 uses
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.nz, i1 noundef zeroext true)
  %i.oa = load ptr, ptr %i.nx, align 8, !tbaa !116 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 44
  %i.oc = load i8, ptr %i.ob, align 4, !tbaa !122
  %i.od = and i8 %i.oc, 2
  %.not.i3.i.i.i53.i.i.i.i46 = icmp eq i8 %i.od, 0
  br i1 %.not.i3.i.i.i53.i.i.i.i46, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i", label %bb.ba, !prof !123

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i": ; preds = %bb.az
  %i.oe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i45, i1 true) ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !124
  %i.oh = or disjoint i64 %i.oe, %i.nw
  %i.oi = lshr i64 %i.oh, 3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oi ; 2 uses
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !125
  %i.ol = and i64 %i.oe, 7
  %i.om = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !125
  %i.oo = and i8 %i.on, %i.ok
  store i8 %i.oo, ptr %i.oj, align 1, !tbaa !125
  %i.op = add nsw i64 %.011.i51.i.i.i.i45, -1
  %i.oq = and i64 %i.op, %.011.i51.i.i.i.i45      ; 2 uses
  %.not10.i55.i.i.i.i47 = icmp eq i64 %i.oq, 0
  br i1 %.not10.i55.i.i.i.i47, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.az, !llvm.loop !650

bb.bb:                                            ; preds = %bb.b
  %i.or = load ptr, ptr %1, align 8, !tbaa !133
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 128
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = tail call noundef ptr %i.ot(ptr noundef nonnull align 8 dereferenceable(94) %1)
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !129
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !129
  %i.oz = icmp eq ptr %i.ow, %i.oy
  br i1 %i.oz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3)
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %1)
  br label %bb.dv

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull align 8 dereferenceable(94) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !115
  store ptr %i.pb, ptr %i.d, align 8, !tbaa !185
  %i.pc = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.pd = load i8, ptr %i.pc, align 8, !tbaa !670, !range !136, !noundef !137
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !114
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.pg, i1 noundef zeroext true)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ph = load ptr, ptr %i.pa, align 8, !tbaa !115
  store ptr %i.ph, ptr %i.d, align 8, !tbaa !185
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.bh:                                            ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.c, ptr %12, align 8
  %.sroa.2194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %13, ptr %.sroa.2194.0..sroa_idx, align 8
  %.sroa.3195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.d, ptr %.sroa.3195.0..sroa_idx, align 8
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %0, ptr %.sroa.4196.0..sroa_idx, align 8
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.e, ptr %.sroa.5197.0..sroa_idx, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 37 ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !182, !range !136, !noundef !137
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i110, label %bb.bi

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i110: ; preds = %bb.bh
  %.0.in.pre.i.i111 = load i8, ptr %i.pj, align 4, !tbaa !135, !range !136
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79

bb.bi:                                            ; preds = %bb.bh
  %i.pn = load i32, ptr %i.g, align 4, !tbaa !180
  %i.po = icmp eq i32 %i.pn, 0
  br i1 %i.po, label %bb.bj, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77

bb.bj:                                            ; preds = %bb.bi
  %i.pp = load i32, ptr %i.i, align 8, !tbaa !181 ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !183
  %i.ps = icmp eq i32 %i.pp, %i.pr
  br i1 %i.ps, label %bb.bk, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77

bb.bk:                                            ; preds = %bb.bj
  %i.pt = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %.not.i.i.i102 = icmp sgt i32 %i.pp, 0
  br i1 %.not.i.i.i102, label %bb.bl, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77

bb.bl:                                            ; preds = %bb.bk
  %i.pu = and i32 %i.pp, 2147483584               ; 3 uses
  %i.pv = zext nneg i32 %i.pu to i64
  %.not37.i.i.not.i.i104344.not = icmp eq i32 %i.pu, 0
  br i1 %.not37.i.i.not.i.i104344.not, label %.critedge.i.i.i.i105, label %.lr.ph

bb.bm:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i109 = add nuw nsw i64 %indvars.iv.i.i103345, 64 ; 2 uses
  %.not37.i.i.not.i.i104 = icmp samesign ult i64 %indvars.iv.next.i.i109, %i.pv
  br i1 %.not37.i.i.not.i.i104, label %.lr.ph, label %.critedge.i.i.i.i105, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.bl, %bb.bm
  %indvars.iv.i.i103345 = phi i64 [ %indvars.iv.next.i.i109, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %i.pw = lshr exact i64 %indvars.iv.i.i103345, 3
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pw
  %i.py = load i64, ptr %i.px, align 8, !tbaa !113
  %i.pz = icmp eq i64 %i.py, -1
  br i1 %i.pz, label %bb.bm, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77, !llvm.loop !2

.critedge.i.i.i.i105:                             ; preds = %bb.bm, %bb.bl
  %.not38.i.i.i.i106 = icmp eq i32 %i.pp, %i.pu
  br i1 %.not38.i.i.i.i106, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77, label %bb.bn

bb.bn:                                            ; preds = %.critedge.i.i.i.i105
  %i.qa = lshr i32 %i.pp, 6
  %i.qb = and i32 %i.pp, 63
  %i.qc = zext nneg i32 %i.qb to i64
  %notmask.i40.i.i.i.i107 = shl nsw i64 -1, %i.qc
  %i.qd = zext nneg i32 %i.qa to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.qd
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !113
  %.demorgan.i.i108 = or i64 %i.qf, %notmask.i40.i.i.i.i107
  %i.qg = icmp eq i64 %.demorgan.i.i108, -1
  %i.qh = zext i1 %i.qg to i16
  %i.qi = or disjoint i16 %i.qh, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77: ; preds = %.lr.ph, %bb.bn, %.critedge.i.i.i.i105, %bb.bk, %bb.bj, %bb.bi
  %.sroa.0.0.insert.ext.i.i78 = phi i16 [ 256, %bb.bj ], [ 256, %bb.bi ], [ 257, %bb.bk ], [ 257, %.critedge.i.i.i.i105 ], [ %i.qi, %bb.bn ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i78, ptr %i.pj, align 4
  %i.qj = trunc i16 %.sroa.0.0.insert.ext.i.i78 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i110
  %.0.in.i.i80 = phi i8 [ %.0.in.pre.i.i111, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i110 ], [ %i.qj, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i77 ]
  %.0.i.i81 = trunc nuw i8 %.0.in.i.i80 to i1
  %i.qk = load i32, ptr %i.g, align 4, !tbaa !180 ; 8 uses
  br i1 %.0.i.i81, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79
  %i.ql = load i32, ptr %i.i, align 8, !tbaa !181 ; 2 uses
  %i.qm = icmp slt i32 %i.qk, %i.ql
  br i1 %i.qm, label %.lr.ph.i100, label %.loopexit231

.lr.ph.i100:                                      ; preds = %bb.bo, %.lr.ph.i100
  %.06.i = phi i32 [ %i.qn, %.lr.ph.i100 ], [ %i.qk, %bb.bo ] ; 2 uses
  call fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi"(ptr noundef nonnull readonly align 8 dereferenceable(40) %12, i32 noundef %.06.i)
  %i.qn = add nsw i32 %.06.i, 1                   ; 2 uses
  %exitcond.not.i101 = icmp eq i32 %i.qn, %i.ql
  br i1 %exitcond.not.i101, label %.loopexit231, label %.lr.ph.i100, !llvm.loop !654

bb.bp:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i79
  %i.qo = load ptr, ptr %2, align 8, !tbaa !184   ; 6 uses
  %i.qp = load i32, ptr %i.i, align 8, !tbaa !181 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %12, i64 40, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %12, i64 40, i1 false)
  store i8 1, ptr %10, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.qo, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %11, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.qo, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i82 = icmp slt i32 %i.qk, %i.qp
  br i1 %.not.i.i.i.i82, label %bb.bq, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i"

bb.bq:                                            ; preds = %bb.bp
  %i.qq = add i32 %i.qk, 63                       ; 2 uses
  %i.qr = srem i32 %i.qq, 64
  %i.qs = sub nsw i32 %i.qq, %i.qr                ; 6 uses
  %i.qt = and i32 %i.qp, -64                      ; 6 uses
  %i.qu = icmp slt i32 %i.qt, %i.qs
  br i1 %i.qu, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.qv = ashr i32 %i.qp, 6
  %i.qw = and i32 %i.qp, 63
  %i.qx = zext nneg i32 %i.qw to i64
  %notmask.i.i.i.i.i94 = shl nsw i64 -1, %i.qx
  %i.qy = xor i64 %notmask.i.i.i.i.i94, -1
  %i.qz = sub nsw i32 %i.qs, %i.qk                ; 2 uses
  %i.ra = zext nneg i32 %i.qz to i64
  %notmask.i.i.i.i.i.i95 = shl nsw i64 -1, %i.ra
  %i.rb = xor i64 %notmask.i.i.i.i.i.i95, -1
  %i.rc = sub nsw i32 64, %i.qz
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = shl i64 %i.rb, %i.rd
  %i.rf = and i64 %i.re, %i.qy
  %i.rg = sext i32 %i.qv to i64
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !113
  %i.rj = and i64 %i.rf, %i.ri                    ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq i64 %i.rj, 0
  br i1 %.not.i.i.i.i.i96, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i", label %.preheader.i.i.i.i.i97

.preheader.i.i.i.i.i97:                           ; preds = %bb.br, %.preheader.i.i.i.i.i97
  %.011.i.i.i.i.i98 = phi i64 [ %i.ro, %.preheader.i.i.i.i.i97 ], [ %i.rj, %bb.br ] ; 3 uses
  %i.rk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i98, i1 true)
  %i.rl = trunc nuw nsw i64 %i.rk to i32
  %i.rm = or disjoint i32 %i.qt, %i.rl
  call fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi"(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.rm)
  %i.rn = add nsw i64 %.011.i.i.i.i.i98, -1
  %i.ro = and i64 %i.rn, %.011.i.i.i.i.i98        ; 2 uses
  %.not10.i.i.i.i.i99 = icmp eq i64 %i.ro, 0
  br i1 %.not10.i.i.i.i.i99, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i", label %.preheader.i.i.i.i.i97, !llvm.loop !655

bb.bs:                                            ; preds = %bb.bq
  %.not32.i.i.i.i83 = icmp eq i32 %i.qk, %i.qs
  br i1 %.not32.i.i.i.i83, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.rp = sdiv i32 %i.qk, 64                      ; 2 uses
  %i.rq = sub nsw i32 %i.qs, %i.qk                ; 2 uses
  %i.rr = zext nneg i32 %i.rq to i64
  %notmask.i.i35.i.i.i.i84 = shl nsw i64 -1, %i.rr
  %i.rs = xor i64 %notmask.i.i35.i.i.i.i84, -1
  %i.rt = sub nsw i32 64, %i.rq
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = shl i64 %i.rs, %i.ru
  %i.rw = sext i32 %i.rp to i64
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.rw
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !113
  %i.rz = and i64 %i.ry, %i.rv                    ; 2 uses
  %.not.i36.i.i.i.i85 = icmp eq i64 %i.rz, 0
  br i1 %.not.i36.i.i.i.i85, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %.preheader.i37.i.i.i.i86

.preheader.i37.i.i.i.i86:                         ; preds = %bb.bt
  %i.sa = shl nsw i32 %i.rp, 6
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.preheader.i37.i.i.i.i86
  %.011.i38.i.i.i.i87 = phi i64 [ %i.rz, %.preheader.i37.i.i.i.i86 ], [ %i.sf, %bb.bu ] ; 3 uses
  %i.sb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i87, i1 true)
  %i.sc = trunc nuw nsw i64 %i.sb to i32
  %i.sd = or disjoint i32 %i.sa, %i.sc
  call fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi"(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.sd)
  %i.se = add i64 %.011.i38.i.i.i.i87, -1
  %i.sf = and i64 %i.se, %.011.i38.i.i.i.i87      ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.sf, 0
  br i1 %.not10.i39.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.bu, !llvm.loop !655

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i": ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.sg = add nsw i32 %i.qs, 64                   ; 2 uses
  %.not3351.i.i.i.i = icmp sgt i32 %i.sg, %i.qt
  br i1 %.not3351.i.i.i.i, label %._crit_edge.i.i.i.i90, label %.lr.ph.i.i.i.i88

.lr.ph.i.i.i.i88:                                 ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %i.sh = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !nonnull !137, !align !195
  %i.sk = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8            ; 7 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 58 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 57
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 59 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ss = load ptr, ptr %i.sr, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %i.sl, i64 64
  %i.sv = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.sw = load ptr, ptr %i.sv, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.si, i64 216
  br label %bb.bv

._crit_edge.i.i.i.i90:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %.not34.i.i.i.i91 = icmp eq i32 %i.qp, %i.qt
  br i1 %.not34.i.i.i.i91, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i", label %bb.cl

bb.bv:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i88
  %i.sy = phi i32 [ %i.sg, %.lr.ph.i.i.i.i88 ], [ %i.wh, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.052.i.i.i.i = phi i32 [ %i.qs, %.lr.ph.i.i.i.i88 ], [ %i.sy, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.sz = sdiv i32 %.052.i.i.i.i, 64              ; 3 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.ta
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !113 ; 2 uses
  switch i64 %i.tc, label %.lr.ph.i.i.i.i.i93 [
    i64 -1, label %bb.bw
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i93:                               ; preds = %bb.bv
  %i.td = shl nsw i32 %i.sz, 6
  br label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.te = shl nsw i32 %i.sz, 6                    ; 2 uses
  %i.tf = add i32 %i.te, 64
  %i.tg = sext i32 %i.tf to i64
  %.0.off.i.i.i.i92 = add i32 %.052.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i92, 64
  br i1 %.not22.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.bw
  %i.th = sext i32 %i.te to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.th, %.lr.ph21.i.i.i.i.i ], [ %i.tj, %bb.bx ] ; 2 uses
  %i.ti = trunc i64 %.020.i.i.i.i.i to i32
  call fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi"(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ti)
  %i.tj = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.tk = icmp ult i64 %i.tj, %i.tg
  br i1 %i.tk, label %bb.bx, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !656

bb.by:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i.i93
  %.01519.i.i.i.i.i = phi i64 [ %i.tc, %.lr.ph.i.i.i.i.i93 ], [ %i.wg, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi.exit.i.i.i.i" ] ; 3 uses
  %i.tl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true) ; 2 uses
  %i.tm = trunc nuw nsw i64 %i.tl to i32
  %i.tn = or disjoint i32 %i.td, %i.tm            ; 5 uses
  %i.to = load ptr, ptr %i.sj, align 8, !tbaa !179 ; 2 uses
  %.not.i48.i.i.i.i = icmp eq ptr %i.to, null
  br i1 %.not.i48.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.tp = sext i32 %i.tn to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !167
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ts = phi i32 [ %i.tr, %bb.bz ], [ %i.tn, %bb.by ] ; 4 uses
  %i.tt = load ptr, ptr %i.sm, align 8, !tbaa !196 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.tu = load i8, ptr %i.sn, align 2, !tbaa !197, !range !136, !noundef !137
  %i.tv = trunc nuw i8 %i.tu to i1
  %i.tw = load i8, ptr %i.so, align 1, !range !136
  %i.tx = trunc nuw i8 %i.tw to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.tv, i1 true, i1 %i.tx
  br i1 %or.cond.i.i.i.i.i.i, label %.split.i.i.i.i.i, label %bb.cc

.split.i.i.i.i.i:                                 ; preds = %bb.cb
  %i.ty = zext i32 %i.ts to i64                   ; 2 uses
  %i.tz = lshr i64 %i.ty, 6
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tz
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !113
  %i.uc = and i64 %i.ty, 63
  %i.ud = shl nuw i64 1, %i.uc
  %i.ue = and i64 %i.ub, %i.ud
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ue, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.uf = load i8, ptr %i.sp, align 1, !tbaa !198, !range !136, !noundef !137
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, label %.split11.i.i.i.i.i

.split11.i.i.i.i.i:                               ; preds = %bb.cc
  %i.uh = load ptr, ptr %i.sq, align 8, !tbaa !199
  %i.ui = sext i32 %i.ts to i64
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !167
  %i.ul = zext i32 %i.uk to i64                   ; 2 uses
  %i.um = lshr i64 %i.ul, 6
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.um
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !113
  %i.up = and i64 %i.ul, 63
  %i.uq = shl nuw i64 1, %i.up
  %i.ur = and i64 %i.uq, %i.uo
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.ur, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.cd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %bb.cc
  %i.us = load i64, ptr %i.tt, align 8, !tbaa !113
  %i.ut = and i64 %i.us, 1
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.ut, 0
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.cd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.cd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %.split11.i.i.i.i.i, %.split.i.i.i.i.i
  %i.uu = load ptr, ptr %i.ss, align 8, !tbaa !185
  %i.uv = zext i32 %i.tn to i64                   ; 2 uses
  %i.uw = and i64 %i.uv, 7
  %i.ux = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !125
  %i.uz = lshr i64 %i.uv, 3
  %i.va = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.uz ; 2 uses
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !125
  %i.vc = and i8 %i.vb, %i.uy
  store i8 %i.vc, ptr %i.va, align 1, !tbaa !125
  br label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi.exit.i.i.i.i"

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i, %.split11.i.i.i.i.i, %.split.i.i.i.i.i, %bb.ca
  %i.vd = load ptr, ptr %i.ss, align 8, !tbaa !185 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.vd, null
  br i1 %.not8.i.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i
  %i.ve = trunc nuw nsw i64 %i.tl to i8
  %i.vf = and i8 %i.ve, 7
  %i.vg = shl nuw i8 1, %i.vf
  %i.vh = lshr i32 %i.tn, 3
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vi ; 2 uses
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !125
  %i.vl = or i8 %i.vk, %i.vg
  store i8 %i.vl, ptr %i.vj, align 1, !tbaa !125
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i
  %i.vm = load ptr, ptr %i.st, align 8, !tbaa !200
  %i.vn = load i8, ptr %i.sn, align 2, !tbaa !197, !range !136, !noundef !137
  %i.vo = trunc nuw i8 %i.vn to i1
  br i1 %i.vo, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vp = load i8, ptr %i.sp, align 1, !tbaa !198, !range !136, !noundef !137
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.vr = load i32, ptr %i.su, align 8, !tbaa !201
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.vs = load ptr, ptr %i.sq, align 8, !tbaa !199
  %i.vt = sext i32 %i.ts to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !167
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i: ; preds = %bb.ci, %bb.ch, %bb.cf
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.vv, %bb.ci ], [ %i.vr, %bb.ch ], [ %i.ts, %bb.cf ]
  %i.vw = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.vx = getelementptr inbounds [16 x i8], ptr %i.vm, i64 %i.vw ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.vx, align 8 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i to i32
  %i.vy = icmp ult i32 %.sroa.0.sroa.0.0.extract.trunc.i.i.i.i.i, 13
  br i1 %i.vy, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !125
  %i.vz = load ptr, ptr %i.sx, align 8, !tbaa !164
  %i.wa = sext i32 %i.tn to i64
  %i.wb = getelementptr inbounds [16 x i8], ptr %i.vz, i64 %i.wa ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.wb, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !125
  br label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi.exit.i.i.i.i"

bb.ck:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i
  %i.wc = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4294967295
  %i.wd = load i64, ptr %i.sw, align 8, !tbaa !113
  %i.we = add i64 %i.wd, %i.wc
  store i64 %i.we, ptr %i.sw, align 8, !tbaa !113
  br label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi.exit.i.i.i.i"

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi.exit.i.i.i.i": ; preds = %bb.ck, %bb.cj, %bb.cd
  %i.wf = add i64 %.01519.i.i.i.i.i, -1
  %i.wg = and i64 %i.wf, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.wg, 0
  br i1 %.not.i41.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.by, !llvm.loop !657

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %bb.bx, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi.exit.i.i.i.i", %bb.bw, %bb.bv
  %i.wh = add nsw i32 %i.sy, 64                   ; 2 uses
  %.not33.i.i.i.i89 = icmp sgt i32 %i.wh, %i.qt
  br i1 %.not33.i.i.i.i89, label %._crit_edge.i.i.i.i90, label %bb.bv, !llvm.loop !658

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i90
  %i.wi = ashr i32 %i.qp, 6
  %i.wj = and i32 %i.qp, 63
  %i.wk = zext nneg i32 %i.wj to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.wk
  %i.wl = xor i64 %notmask.i42.i.i.i.i, -1
  %i.wm = sext i32 %i.wi to i64
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.wm
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !113
  %i.wp = and i64 %i.wo, %i.wl                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.wp, 0
  br i1 %.not.i43.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i", label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.cl, %.preheader.i44.i.i.i.i
  %.011.i45.i.i.i.i = phi i64 [ %i.wu, %.preheader.i44.i.i.i.i ], [ %i.wp, %bb.cl ] ; 3 uses
  %i.wq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.wr = trunc nuw nsw i64 %i.wq to i32
  %i.ws = or disjoint i32 %i.qt, %i.wr
  call fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clEi"(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ws)
  %i.wt = add nsw i64 %.011.i45.i.i.i.i, -1
  %i.wu = and i64 %i.wt, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.wu, 0
  br i1 %.not10.i46.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i", label %.preheader.i44.i.i.i.i, !llvm.loop !655

"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i": ; preds = %.preheader.i44.i.i.i.i, %.preheader.i.i.i.i.i97, %bb.cl, %._crit_edge.i.i.i.i90, %bb.br, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %.loopexit231

.loopexit231:                                     ; preds = %.lr.ph.i100, %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiiT_.exit.i", %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.wv = load i64, ptr %i.e, align 8, !tbaa !113 ; 3 uses
  %.not = icmp eq i64 %i.wv, 0
  br i1 %.not, label %bb.dr, label %bb.cm

bb.cm:                                            ; preds = %.loopexit231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ww = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 noundef %i.wv, i1 noundef zeroext false)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %bb.cm
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 44
  %i.wy = load i8, ptr %i.wx, align 4, !tbaa !122
  %i.wz = and i8 %i.wy, 2
  %.not.i.i = icmp eq i8 %i.wz, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, label %bb.cn, !prof !123

bb.cn:                                            ; preds = %.noexc
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #38
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %bb.cn
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i: ; preds = %.noexc
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !124
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !127 ; 2 uses
  %i.xe = add i64 %i.xd, %i.wv
  %i.xf = load ptr, ptr %i.ww, align 8, !tbaa !133
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8
  invoke void %i.xh(ptr noundef nonnull align 8 dereferenceable(64) %i.ww, i64 noundef %i.xe)
          to label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE27getRawStringBufferWithSpaceEmb.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !671

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE27getRawStringBufferWithSpaceEmb.exit: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.xd
  store ptr %i.xi, ptr %i.f, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.c, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %13, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.xj = load i8, ptr %i.pk, align 1, !tbaa !182, !range !136, !noundef !137
  %i.xk = trunc nuw i8 %i.xj to i1
  br i1 %i.xk, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i179, label %bb.co

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i179: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE27getRawStringBufferWithSpaceEmb.exit
  %.0.in.pre.i.i180 = load i8, ptr %i.pj, align 4, !tbaa !135, !range !136
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i116

bb.co:                                            ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE27getRawStringBufferWithSpaceEmb.exit
  %i.xl = load i32, ptr %i.g, align 4, !tbaa !180
  %i.xm = icmp eq i32 %i.xl, 0
  br i1 %i.xm, label %bb.cp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114

bb.cp:                                            ; preds = %bb.co
  %i.xn = load i32, ptr %i.i, align 8, !tbaa !181 ; 6 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !183
  %i.xq = icmp eq i32 %i.xn, %i.xp
  br i1 %i.xq, label %bb.cq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114

bb.cq:                                            ; preds = %bb.cp
  %i.xr = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %.not.i.i.i171 = icmp sgt i32 %i.xn, 0
  br i1 %.not.i.i.i171, label %bb.cr, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114

bb.cr:                                            ; preds = %bb.cq
  %i.xs = and i32 %i.xn, 2147483584               ; 3 uses
  %i.xt = zext nneg i32 %i.xs to i64
  %.not37.i.i.not.i.i173346.not = icmp eq i32 %i.xs, 0
  br i1 %.not37.i.i.not.i.i173346.not, label %.critedge.i.i.i.i174, label %.lr.ph348

bb.cs:                                            ; preds = %.lr.ph348
  %indvars.iv.next.i.i178 = add nuw nsw i64 %indvars.iv.i.i172347, 64 ; 2 uses
  %.not37.i.i.not.i.i173 = icmp samesign ult i64 %indvars.iv.next.i.i178, %i.xt
  br i1 %.not37.i.i.not.i.i173, label %.lr.ph348, label %.critedge.i.i.i.i174, !llvm.loop !2

.lr.ph348:                                        ; preds = %bb.cr, %bb.cs
  %indvars.iv.i.i172347 = phi i64 [ %indvars.iv.next.i.i178, %bb.cs ], [ 0, %bb.cr ] ; 2 uses
  %i.xu = lshr exact i64 %indvars.iv.i.i172347, 3
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xu
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !113
  %i.xx = icmp eq i64 %i.xw, -1
  br i1 %i.xx, label %bb.cs, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114, !llvm.loop !2

.critedge.i.i.i.i174:                             ; preds = %bb.cs, %bb.cr
  %.not38.i.i.i.i175 = icmp eq i32 %i.xn, %i.xs
  br i1 %.not38.i.i.i.i175, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114, label %bb.ct

bb.ct:                                            ; preds = %.critedge.i.i.i.i174
  %i.xy = lshr i32 %i.xn, 6
  %i.xz = and i32 %i.xn, 63
  %i.ya = zext nneg i32 %i.xz to i64
  %notmask.i40.i.i.i.i176 = shl nsw i64 -1, %i.ya
  %i.yb = zext nneg i32 %i.xy to i64
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %i.yb
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !113
  %.demorgan.i.i177 = or i64 %i.yd, %notmask.i40.i.i.i.i176
  %i.ye = icmp eq i64 %.demorgan.i.i177, -1
  %i.yf = zext i1 %i.ye to i16
  %i.yg = or disjoint i16 %i.yf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114: ; preds = %.lr.ph348, %bb.ct, %.critedge.i.i.i.i174, %bb.cq, %bb.cp, %bb.co
  %.sroa.0.0.insert.ext.i.i115 = phi i16 [ 256, %bb.cp ], [ 256, %bb.co ], [ 257, %bb.cq ], [ 257, %.critedge.i.i.i.i174 ], [ %i.yg, %bb.ct ], [ 256, %.lr.ph348 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i115, ptr %i.pj, align 4
  %i.yh = trunc i16 %.sroa.0.0.insert.ext.i.i115 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i116

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i116: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i179
  %.0.in.i.i117 = phi i8 [ %.0.in.pre.i.i180, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i179 ], [ %i.yh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i114 ]
  %.0.i.i118 = trunc nuw i8 %.0.in.i.i117 to i1
  %i.yi = load i32, ptr %i.g, align 4, !tbaa !180 ; 8 uses
  br i1 %.0.i.i118, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i116
  %i.yj = load i32, ptr %i.i, align 8, !tbaa !181 ; 2 uses
  %i.yk = icmp slt i32 %i.yi, %i.yj
  br i1 %i.yk, label %.lr.ph.i168, label %.loopexit218

.lr.ph.i168:                                      ; preds = %bb.cu, %.noexc181
  %.06.i169 = phi i32 [ %i.yl, %.noexc181 ], [ %i.yi, %bb.cu ] ; 2 uses
  invoke fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi"(ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i32 noundef %.06.i169)
          to label %.noexc181 unwind label %.loopexit

.noexc181:                                        ; preds = %.lr.ph.i168
  %i.yl = add i32 %.06.i169, 1                    ; 2 uses
  %exitcond.not.i170 = icmp eq i32 %i.yl, %i.yj
  br i1 %exitcond.not.i170, label %.loopexit218, label %.lr.ph.i168, !llvm.loop !659

bb.cv:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i116
  %i.ym = load ptr, ptr %2, align 8, !tbaa !184   ; 6 uses
  %i.yn = load i32, ptr %i.i, align 8, !tbaa !181 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i119 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i119, ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i64 32, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i120 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i120, ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i64 32, i1 false)
  store i8 1, ptr %7, align 8
  %.sroa.25.0..sroa_idx.i.i.i121 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ym, ptr %.sroa.25.0..sroa_idx.i.i.i121, align 8
  store i8 1, ptr %8, align 8
  %.sroa.28.0..sroa_idx.i.i.i122 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ym, ptr %.sroa.28.0..sroa_idx.i.i.i122, align 8
  %.not.i.i.i.i123 = icmp slt i32 %i.yi, %i.yn
  br i1 %.not.i.i.i.i123, label %bb.cw, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiiT_.exit.i"

bb.cw:                                            ; preds = %bb.cv
  %i.yo = add i32 %i.yi, 63                       ; 2 uses
  %i.yp = srem i32 %i.yo, 64
  %i.yq = sub nsw i32 %i.yo, %i.yp                ; 6 uses
  %i.yr = and i32 %i.yn, -64                      ; 6 uses
  %i.ys = icmp slt i32 %i.yr, %i.yq
  br i1 %i.ys, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.yt = ashr i32 %i.yn, 6
  %i.yu = and i32 %i.yn, 63
  %i.yv = zext nneg i32 %i.yu to i64
  %notmask.i.i.i.i.i162 = shl nsw i64 -1, %i.yv
  %i.yw = xor i64 %notmask.i.i.i.i.i162, -1
  %i.yx = sub nsw i32 %i.yq, %i.yi                ; 2 uses
  %i.yy = zext nneg i32 %i.yx to i64
  %notmask.i.i.i.i.i.i163 = shl nsw i64 -1, %i.yy
  %i.yz = xor i64 %notmask.i.i.i.i.i.i163, -1
  %i.za = sub nsw i32 64, %i.yx
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = shl i64 %i.yz, %i.zb
  %i.zd = and i64 %i.zc, %i.yw
  %i.ze = sext i32 %i.yt to i64
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %i.ze
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !113
  %i.zh = and i64 %i.zd, %i.zg                    ; 2 uses
  %.not.i.i.i.i.i164 = icmp eq i64 %i.zh, 0
  br i1 %.not.i.i.i.i.i164, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiiT_.exit.i", label %.preheader.i.i.i.i.i165

.preheader.i.i.i.i.i165:                          ; preds = %bb.cx, %.noexc182
  %.011.i.i.i.i.i166 = phi i64 [ %i.zm, %.noexc182 ], [ %i.zh, %bb.cx ] ; 3 uses
  %i.zi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i166, i1 true)
  %i.zj = trunc nuw nsw i64 %i.zi to i32
  %i.zk = or disjoint i32 %i.yr, %i.zj
  invoke fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi"(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i119, i32 noundef %i.zk)
          to label %.noexc182 unwind label %.loopexit.split-lp.loopexit

.noexc182:                                        ; preds = %.preheader.i.i.i.i.i165
  %i.zl = add nsw i64 %.011.i.i.i.i.i166, -1
  %i.zm = and i64 %i.zl, %.011.i.i.i.i.i166       ; 2 uses
  %.not10.i.i.i.i.i167 = icmp eq i64 %i.zm, 0
  br i1 %.not10.i.i.i.i.i167, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiiT_.exit.i", label %.preheader.i.i.i.i.i165, !llvm.loop !660

bb.cy:                                            ; preds = %bb.cw
  %.not32.i.i.i.i124 = icmp eq i32 %i.yi, %i.yq
  br i1 %.not32.i.i.i.i124, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zn = sdiv i32 %i.yi, 64                      ; 2 uses
  %i.zo = sub nsw i32 %i.yq, %i.yi                ; 2 uses
  %i.zp = zext nneg i32 %i.zo to i64
  %notmask.i.i35.i.i.i.i125 = shl nsw i64 -1, %i.zp
  %i.zq = xor i64 %notmask.i.i35.i.i.i.i125, -1
  %i.zr = sub nsw i32 64, %i.zo
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = shl i64 %i.zq, %i.zs
  %i.zu = sext i32 %i.zn to i64
  %i.zv = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %i.zu
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !113
  %i.zx = and i64 %i.zw, %i.zt                    ; 2 uses
  %.not.i36.i.i.i.i126 = icmp eq i64 %i.zx, 0
  br i1 %.not.i36.i.i.i.i126, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %.preheader.i37.i.i.i.i127

.preheader.i37.i.i.i.i127:                        ; preds = %bb.cz
  %i.zy = shl nsw i32 %i.zn, 6
  br label %bb.da

bb.da:                                            ; preds = %.noexc183, %.preheader.i37.i.i.i.i127
  %.011.i38.i.i.i.i128 = phi i64 [ %i.zx, %.preheader.i37.i.i.i.i127 ], [ %i.aad, %.noexc183 ] ; 3 uses
  %i.zz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i128, i1 true)
  %i.aaa = trunc nuw nsw i64 %i.zz to i32
  %i.aab = or disjoint i32 %i.zy, %i.aaa
  invoke fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi"(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i119, i32 noundef %i.aab)
          to label %.noexc183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc183:                                        ; preds = %bb.da
  %i.aac = add i64 %.011.i38.i.i.i.i128, -1
  %i.aad = and i64 %i.aac, %.011.i38.i.i.i.i128   ; 2 uses
  %.not10.i39.i.i.i.i129 = icmp eq i64 %i.aad, 0
  br i1 %.not10.i39.i.i.i.i129, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.da, !llvm.loop !660

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i": ; preds = %.noexc183, %bb.cz, %bb.cy
  %i.aae = add nsw i32 %i.yq, 64                  ; 2 uses
  %.not3351.i.i.i.i130 = icmp sgt i32 %i.aae, %i.yr
  br i1 %.not3351.i.i.i.i130, label %._crit_edge.i.i.i.i134, label %.lr.ph.i.i.i.i131

.lr.ph.i.i.i.i131:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %i.aaf = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aag = load ptr, ptr %i.aaf, align 8
  %i.aah = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i120, align 8, !nonnull !137, !align !195
  %i.aai = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aaj = load ptr, ptr %i.aai, align 8, !nonnull !137, !align !195 ; 7 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aaj, i64 58
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 57
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 59 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aaj, i64 64
  %i.aaq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aar = load ptr, ptr %i.aaq, align 8, !nonnull !137, !align !195 ; 4 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aag, i64 216
  br label %bb.db

._crit_edge.i.i.i.i134:                           ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %.not34.i.i.i.i135 = icmp eq i32 %i.yn, %i.yr
  br i1 %.not34.i.i.i.i135, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiiT_.exit.i", label %bb.dq

bb.db:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i131
  %i.aat = phi i32 [ %i.aae, %.lr.ph.i.i.i.i131 ], [ %i.adw, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.052.i.i.i.i132 = phi i32 [ %i.yq, %.lr.ph.i.i.i.i131 ], [ %i.aat, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.aau = sdiv i32 %.052.i.i.i.i132, 64          ; 3 uses
  %i.aav = sext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %i.aav
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !113 ; 2 uses
  switch i64 %i.aax, label %.lr.ph.i.i.i.i.i145 [
    i64 -1, label %bb.dc
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i145:                              ; preds = %bb.db
  %i.aay = shl nsw i32 %i.aau, 6
  br label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.aaz = shl nsw i32 %i.aau, 6                  ; 2 uses
  %i.aba = add i32 %i.aaz, 64
  %i.abb = sext i32 %i.aba to i64
  %.0.off.i.i.i.i141 = add i32 %.052.i.i.i.i132, 127
  %.not22.i.i.i.i.i142 = icmp ult i32 %.0.off.i.i.i.i141, 64
  br i1 %.not22.i.i.i.i.i142, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph21.i.i.i.i.i143

.lr.ph21.i.i.i.i.i143:                            ; preds = %bb.dc
  %i.abc = sext i32 %i.aaz to i64
  br label %bb.dd

bb.dd:                                            ; preds = %.noexc184, %.lr.ph21.i.i.i.i.i143
  %.020.i.i.i.i.i144 = phi i64 [ %i.abc, %.lr.ph21.i.i.i.i.i143 ], [ %i.abe, %.noexc184 ] ; 2 uses
  %i.abd = trunc i64 %.020.i.i.i.i.i144 to i32
  invoke fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi"(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i120, i32 noundef %i.abd)
          to label %.noexc184 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc184:                                        ; preds = %bb.dd
  %i.abe = add nuw i64 %.020.i.i.i.i.i144, 1      ; 2 uses
  %i.abf = icmp ult i64 %i.abe, %i.abb
  br i1 %i.abf, label %bb.dd, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !661

bb.de:                                            ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i.i145
  %.01519.i.i.i.i.i146 = phi i64 [ %i.aax, %.lr.ph.i.i.i.i.i145 ], [ %i.adv, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i" ] ; 3 uses
  %i.abg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i146, i1 true)
  %i.abh = trunc nuw nsw i64 %i.abg to i32
  %i.abi = or disjoint i32 %i.aay, %i.abh         ; 3 uses
  %i.abj = load ptr, ptr %i.aah, align 8, !tbaa !179 ; 2 uses
  %.not.i48.i.i.i.i147 = icmp eq ptr %i.abj, null
  br i1 %.not.i48.i.i.i.i147, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.abk = sext i32 %i.abi to i64
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.abk
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !167
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.abn = phi i32 [ %i.abm, %bb.df ], [ %i.abi, %bb.de ] ; 5 uses
  %i.abo = load ptr, ptr %i.aak, align 8, !tbaa !196 ; 4 uses
  %.not.i.i.i.i.i.i148 = icmp eq ptr %i.abo, null
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 2, !tbaa !197, !range !136
  %.pre55.i.i.i.i = trunc nuw i8 %.pre.i.i.i.i.i to i1 ; 3 uses
  br i1 %.not.i.i.i.i.i.i148, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.dh

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %bb.dg
  %i.abp = load ptr, ptr %i.aao, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre55.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i151, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.abq = load i8, ptr %i.aal, align 1, !range !136
  %i.abr = trunc nuw i8 %i.abq to i1
  %or.cond.i.i.i.i.i.i149 = select i1 %.pre55.i.i.i.i, i1 true, i1 %i.abr
  br i1 %or.cond.i.i.i.i.i.i149, label %.split.i.i.i.i.i159, label %bb.di

.split.i.i.i.i.i159:                              ; preds = %bb.dh
  %i.abs = zext i32 %i.abn to i64                 ; 2 uses
  %i.abt = lshr i64 %i.abs, 6
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.abt
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !113
  %i.abw = and i64 %i.abs, 63
  %i.abx = shl nuw i64 1, %i.abw
  %i.aby = and i64 %i.abv, %i.abx
  %.not.i.i.i.i.i.i.i160 = icmp eq i64 %i.aby, 0
  br i1 %.not.i.i.i.i.i.i.i160, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i161

bb.di:                                            ; preds = %bb.dh
  %i.abz = load i8, ptr %i.aam, align 1, !tbaa !198, !range !136, !noundef !137 ; 2 uses
  %i.aca = trunc nuw i8 %i.abz to i1
  br i1 %i.aca, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i157, label %.split8.i.i.i.i.i

.split8.i.i.i.i.i:                                ; preds = %bb.di
  %i.acb = load ptr, ptr %i.aan, align 8, !tbaa !199
  %i.acc = sext i32 %i.abn to i64
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.acb, i64 %i.acc
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !167
  %i.acf = zext i32 %i.ace to i64                 ; 2 uses
  %i.acg = lshr i64 %i.acf, 6
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.acg
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !113
  %i.acj = and i64 %i.acf, 63
  %i.ack = shl nuw i64 1, %i.acj
  %i.acl = and i64 %i.ack, %i.aci
  %.not.i7.i.i.i.i.i.i150 = icmp eq i64 %i.acl, 0
  br i1 %.not.i7.i.i.i.i.i.i150, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i157: ; preds = %bb.di
  %i.acm = load i64, ptr %i.abo, align 8, !tbaa !113
  %i.acn = and i64 %i.acm, 1
  %.not.i6.i.i.i.i.i.i158 = icmp eq i64 %i.acn, 0
  br i1 %.not.i6.i.i.i.i.i.i158, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i", label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i157, %.split8.i.i.i.i.i
  %i.aco = load ptr, ptr %i.aao, align 8, !tbaa !200
  br label %bb.dj

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i161: ; preds = %.split.i.i.i.i.i159
  %i.acp = load ptr, ptr %i.aao, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre55.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i151, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i161, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.acq = phi ptr [ %i.abp, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ], [ %i.acp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i161 ]
  %.pre.i.i.i.i = load i8, ptr %i.aam, align 1, !tbaa !198, !range !136
  br label %bb.dj

bb.dj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i
  %i.acr = phi i8 [ %i.abz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i ], [ %.pre.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i ]
  %i.acs = phi ptr [ %i.aco, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i ], [ %i.acq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i.i.i.i ] ; 2 uses
  %i.act = trunc nuw i8 %i.acr to i1
  br i1 %i.act, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.acu = load i32, ptr %i.aap, align 8, !tbaa !201
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i151

bb.dl:                                            ; preds = %bb.dj
  %i.acv = load ptr, ptr %i.aan, align 8, !tbaa !199
  %i.acw = sext i32 %i.abn to i64
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !167
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i151

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i151: ; preds = %bb.dl, %bb.dk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i161, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.acz = phi ptr [ %i.acs, %bb.dl ], [ %i.acs, %bb.dk ], [ %i.acp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i161 ], [ %i.abp, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %.0.i.i.i.i.i.i.i152 = phi i32 [ %i.acy, %bb.dl ], [ %i.acu, %bb.dk ], [ %i.abn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i161 ], [ %i.abn, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ]
  %i.ada = sext i32 %.0.i.i.i.i.i.i.i152 to i64
  %i.adb = getelementptr inbounds [16 x i8], ptr %i.acz, i64 %i.ada ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i153 = load i64, ptr %i.adb, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i153 to i32 ; 4 uses
  %i.adc = icmp ult i32 %.sroa.0.0.extract.trunc.i.i.i.i.i, 13
  br i1 %i.adc, label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i", label %bb.dm

bb.dm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i151
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i154 = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i155 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i154, align 8, !tbaa !125
  %i.add = load ptr, ptr %i.aar, align 8, !tbaa !202
  %i.ade = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i153, 4294967295 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.add, ptr align 1 %.sroa.2.0.copyload.i.i.i.i.i.i155, i64 %i.ade, i1 false)
  %i.adf = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %i.adf, label %bb.dn, label %_ZN8facebook5velox10StringViewC2EPKci.exit.i.i.i.i.i, !prof !141

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !672
  store i32 %.sroa.0.0.extract.trunc.i.i.i.i.i, ptr %5, align 16, !tbaa !125, !noalias !672
  %i.adg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.adg, align 16, !tbaa !125, !noalias !672
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.12, i64 11, i64 17, ptr nonnull %5)
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc185:                                        ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !672
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.12) #38
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %.noexc185
  unreachable

bb.dp:                                            ; preds = %.noexc185
  %i.adh = landingpad { ptr, i32 }
          cleanup
  %i.adi = load ptr, ptr %6, align 8, !tbaa !144  ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.adk = icmp eq ptr %i.adi, %i.adj
  br i1 %i.adk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dp
  %i.adl = load i64, ptr %i.adj, align 8, !tbaa !125
  %i.adm = add i64 %i.adl, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body

_ZN8facebook5velox10StringViewC2EPKci.exit.i.i.i.i.i: ; preds = %bb.dm
  %i.adn = load ptr, ptr %i.aar, align 8, !tbaa !202 ; 2 uses
  %i.ado = load i32, ptr %i.adn, align 1
  %i.adp = load ptr, ptr %i.aas, align 8, !tbaa !164
  %i.adq = sext i32 %i.abi to i64
  %i.adr = getelementptr inbounds [16 x i8], ptr %i.adp, i64 %i.adq ; 3 uses
  store i32 %.sroa.0.0.extract.trunc.i.i.i.i.i, ptr %i.adr, align 8, !tbaa !167
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  store i32 %i.ado, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !125
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  store ptr %i.adn, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !tbaa !125
  %i.ads = load ptr, ptr %i.aar, align 8, !tbaa !202
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.ade
  store ptr %i.adt, ptr %i.aar, align 8, !tbaa !202
  br label %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i"

"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i": ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i151, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i157, %.split8.i.i.i.i.i, %.split.i.i.i.i.i159
  %i.adu = add i64 %.01519.i.i.i.i.i146, -1
  %i.adv = and i64 %i.adu, %.01519.i.i.i.i.i146   ; 2 uses
  %.not.i41.i.i.i.i156 = icmp eq i64 %i.adv, 0
  br i1 %.not.i41.i.i.i.i156, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.de, !llvm.loop !664

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %.noexc184, %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi.exit.i.i.i.i", %bb.dc, %bb.db
  %i.adw = add nsw i32 %i.aat, 64                 ; 2 uses
  %.not33.i.i.i.i133 = icmp sgt i32 %i.adw, %i.yr
  br i1 %.not33.i.i.i.i133, label %._crit_edge.i.i.i.i134, label %bb.db, !llvm.loop !665

bb.dq:                                            ; preds = %._crit_edge.i.i.i.i134
  %i.adx = ashr i32 %i.yn, 6
  %i.ady = and i32 %i.yn, 63
  %i.adz = zext nneg i32 %i.ady to i64
  %notmask.i42.i.i.i.i136 = shl nsw i64 -1, %i.adz
  %i.aea = xor i64 %notmask.i42.i.i.i.i136, -1
  %i.aeb = sext i32 %i.adx to i64
  %i.aec = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %i.aeb
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !113
  %i.aee = and i64 %i.aed, %i.aea                 ; 2 uses
  %.not.i43.i.i.i.i137 = icmp eq i64 %i.aee, 0
  br i1 %.not.i43.i.i.i.i137, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiiT_.exit.i", label %.preheader.i44.i.i.i.i138

.preheader.i44.i.i.i.i138:                        ; preds = %bb.dq, %.noexc186
  %.011.i45.i.i.i.i139 = phi i64 [ %i.aej, %.noexc186 ], [ %i.aee, %bb.dq ] ; 3 uses
  %i.aef = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i139, i1 true)
  %i.aeg = trunc nuw nsw i64 %i.aef to i32
  %i.aeh = or disjoint i32 %i.yr, %i.aeg
  invoke fastcc void @"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_3clEi"(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i119, i32 noundef %i.aeh)
          to label %.noexc186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc186:                                        ; preds = %.preheader.i44.i.i.i.i138
  %i.aei = add nsw i64 %.011.i45.i.i.i.i139, -1
  %i.aej = and i64 %i.aei, %.011.i45.i.i.i.i139   ; 2 uses
  %.not10.i46.i.i.i.i140 = icmp eq i64 %i.aej, 0
  br i1 %.not10.i46.i.i.i.i140, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiiT_.exit.i", label %.preheader.i44.i.i.i.i138, !llvm.loop !660

"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiiT_.exit.i": ; preds = %.noexc186, %.noexc182, %bb.dq, %._crit_edge.i.i.i.i134, %bb.cx, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit218

.loopexit218:                                     ; preds = %.noexc181, %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiiT_.exit.i", %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.dr

.loopexit:                                        ; preds = %.lr.ph.i168
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.i.i.i.i.i165
  %lpad.loopexit219 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.preheader.i44.i.i.i.i138
  %lpad.loopexit222 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.dd
  %lpad.loopexit225 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.da
  %lpad.loopexit229 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cm, %bb.cn, %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, %bb.dn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.adh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit219, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit222, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit225, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit229, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.du

bb.dr:                                            ; preds = %.loopexit218, %.loopexit231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.aek = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i.i187 = icmp eq ptr %i.ael, null
  br i1 %.not.i.i.i.i187, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aem = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !203
  %i.aeo = ptrtoint ptr %i.aen to i64
  %i.aep = ptrtoint ptr %i.ael to i64
  %i.aeq = sub i64 %i.aeo, %i.aep
  call void @_ZdlPvm(ptr noundef nonnull %i.ael, i64 noundef %i.aeq) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.ds, %bb.dr
  %i.aer = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aes, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.aet = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !205
  %i.aev = ptrtoint ptr %i.aeu to i64
  %i.aew = ptrtoint ptr %i.aes to i64
  %i.aex = sub i64 %i.aev, %i.aew
  call void @_ZdlPvm(ptr noundef nonnull %i.aes, i64 noundef %i.aex) #40
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.dv

bb.du:                                            ; preds = %.body, %bb.bg
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.pi, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.eg

bb.dv:                                            ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit, %bb.bc
  %i.aey = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %1, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #18 ; 2 uses
  %.not20 = icmp eq ptr %i.aey, null
  br i1 %.not20, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aez = load ptr, ptr %i.c, align 8, !tbaa !179
  %i.afa = call i16 @_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7isAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKi(ptr noundef nonnull align 8 dereferenceable(208) %i.aey, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %i.aez) ; 2 uses
  %i.afb = and i16 %i.afa, 256
  %.not210 = icmp eq i16 %i.afb, 0
  br i1 %.not210, label %bb.dx, label %_ZNRSt8optionalIbE5valueEv.exit

_ZNRSt8optionalIbE5valueEv.exit:                  ; preds = %bb.dw
  %i.afc = trunc i16 %i.afa to i1
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE10setIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEbRKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %i.afc, ptr noundef nonnull align 8 dereferenceable(38) %2)
  br label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit"

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.afe = load atomic i8, ptr %i.afd seq_cst, align 8, !range !136, !noundef !137
  %i.aff = trunc nuw i8 %i.afe to i1
  br i1 %i.aff, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE17invalidateIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit"

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store ptr %i.afg, ptr %14, align 8, !tbaa !208, !alias.scope !675
  %i.afh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i8 0, ptr %i.afh, align 8, !tbaa !209, !alias.scope !675
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !675
  %i.afi = load atomic i32, ptr %i.afg acquire, align 8, !noalias !675 ; 4 uses
  store i32 %i.afi, ptr %i.b, align 4, !tbaa !167, !noalias !675
  %i.afj = and i32 %i.afi, -1312
  %i.afk = icmp eq i32 %i.afj, 0
  br i1 %i.afk, label %bb.ea, label %.critedge.i.i.i.i.i.i.i, !prof !123

bb.ea:                                            ; preds = %bb.dz
  %i.afl = or disjoint i32 %i.afi, 128
  %i.afm = cmpxchg ptr %i.afg, i32 %i.afi, i32 %i.afl seq_cst seq_cst, align 4, !noalias !675 ; 2 uses
  %i.afn = extractvalue { i32, i1 } %i.afm, 1
  br i1 %i.afn, label %bb.eb, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !210

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.ea
  %i.afo = extractvalue { i32, i1 } %i.afm, 0
  store i32 %i.afo, ptr %i.b, align 4, !noalias !675
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.dz
  %i.afp = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.afg, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !675 ; 0 uses
  br label %bb.eb

bb.eb:                                            ; preds = %.critedge.i.i.i.i.i.i.i, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !675
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !675
  store i8 1, ptr %i.afh, align 8, !tbaa !209, !alias.scope !675
  %i.afq = load ptr, ptr %14, align 8, !tbaa !208 ; 4 uses
  %.not.i.i188 = icmp eq ptr %i.afq, null
  %.neg.i.i = select i1 %.not.i.i188, i64 0, i64 -40
  %i.afr = getelementptr inbounds i8, ptr %i.afq, i64 %.neg.i.i
  invoke void @_ZN8facebook5velox17SelectivityVector8deselectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.afr, ptr noundef nonnull align 8 dereferenceable(38) %2)
          to label %bb.ec unwind label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.afs = atomicrmw and ptr %i.afq, i32 -401 seq_cst, align 4 ; 2 uses
  %i.aft = and i32 %i.afs, -401
  store i32 %i.aft, ptr %i.a, align 4, !tbaa !167
  %i.afu = and i32 %i.afs, 15
  %.not.i.i.i.i.i190 = icmp eq i32 %i.afu, 0
  br i1 %.not.i.i.i.i.i190, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.ed, !prof !123

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.afq, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.afv = landingpad { ptr, i32 }
          catch ptr null
  %i.afw = extractvalue { ptr, i32 } %i.afv, 0
  call void @__clang_call_terminate(ptr %i.afw) #39
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit"

bb.ef:                                            ; preds = %bb.eb
  %i.afx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.eg

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit": ; preds = %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i54.i.i.i.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clEi.exit.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i54.i.i.i.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_0clEi.exit.i", %_ZNRSt8optionalIbE5valueEv.exit, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, %bb.dy, %bb.ay, %._crit_edge.i.i.i.i40, %bb.al, %bb.z, %._crit_edge.i.i.i.i, %bb.m, %bb.dv, %bb.a
  ret void

bb.eg:                                            ; preds = %bb.ef, %bb.du
  %.pn21 = phi { ptr, i32 } [ %i.afx, %bb.ef ], [ %.pn.pn, %bb.du ]
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorIbE16mutableRawValuesEv:bb.a

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %2, align 8, !tbaa !116    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.v = load i8, ptr %i.u, align 4, !tbaa !122
  %i.w = and i8 %i.v, 2
  %.not.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i5, label %bb.f, label %bb.e, !prof !123

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #38
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112
  %sext = shl i64 %i.s, 32
  %i.ab = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.ad = load ptr, ptr %2, align 8, !tbaa !116   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = atomicrmw add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.i, %bb.h
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !116 ; 7 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !116
  %.not.i2.i = icmp eq ptr %i.ag, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = atomicrmw sub ptr %i.ah, i32 1 acq_rel, align 4
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.j
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.noexc.i.i unwind label %bb.k, !inline_history !0

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140
  %.not.i.i.i = icmp eq ptr %i.ao, null
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !133
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %..i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.k, !inline_history !0

bb.k:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.j, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !116 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !122
  %i.ax = and i8 %i.aw, 2
  %.not.i6 = icmp eq i8 %i.ax, 0
  br i1 %.not.i6, label %bb.m, label %bb.l, !prof !123

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIbEEPT_vE18veloxCheckFailArgs) #38
          to label %.noexc7 unwind label %bb.p

.noexc7:                                          ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !112
  %i.bb = load ptr, ptr %2, align 8, !tbaa !116   ; 7 uses
  %.not.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.n
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !133
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(64) %i.bb)
          to label %.noexc.i unwind label %bb.o, !inline_history !0

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140
  %.not.i.i9 = icmp eq ptr %i.bj, null
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !133
  %..i.i = select i1 %.not.i.i9, i64 8, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %..i.i
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bb)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.o, !inline_history !0

bb.o:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.m, %bb.n, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.p ], [ %i.ac, %bb.g ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !112
  ret ptr %i.br
}

declare noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.162") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !311  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !312   ; 3 uses
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.w = add nsw i32 %.sroa.040.0, -1
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !134
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !134
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !123, !llvm.loop !12

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !123

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !13

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !125
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !312
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !311
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !125
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.at, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !316 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !316
  br label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.028                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bh, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !906

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !317
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !125
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.2) #43
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !125
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !134
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !134
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !318
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !113
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !311 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !311
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !908
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !113
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !911
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSD_:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.de ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !125
  %i.dh = and i8 %i.dg, %i.dc
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !125
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSC_.exit

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSC_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !971

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.di = load ptr, ptr %0, align 8, !tbaa !184
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !180
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !181
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSE_(ptr noundef %i.di, i32 noundef %i.dk, i32 noundef %i.dm, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.197) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSC_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #5 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.198", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !277
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !125
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !279
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !125
  %i.e = load ptr, ptr %1, align 8, !tbaa !281    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !282  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !125
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !281
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !282
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !281
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !282
  %i.t = load i8, ptr %0, align 1, !tbaa !211
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !277
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !284
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !277    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !167
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !167
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !284
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

declare { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.199) align 8 %2, ptr noundef byval(%class.anon.200) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !220, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !221
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !976
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !977, !nonnull !137, !align !195
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !978, !nonnull !137, !align !195
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.au, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !179
  %i.al = or disjoint i64 %i.aj, %i.ad            ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !167
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !212
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !164
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !213
  %i.at = add nsw i64 %.011.i, -1
  %i.au = and i64 %i.at, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.au, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !972

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = sdiv i32 %0, 64                         ; 2 uses
  %i.aw = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i35, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = load i8, ptr %2, align 8, !tbaa !220, !range !136, !noundef !137
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !221
  %i.bf = sext i32 %i.av to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !113
  %i.bi = xor i8 %i.bc, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = and i64 %i.bl, %i.bb                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bm, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i32 %i.av, 6
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !976
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !977, !nonnull !137, !align !195
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !978, !nonnull !137, !align !195
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 216
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bm, %.preheader.i37 ], [ %i.ch, %bb.g ] ; 3 uses
  %i.bw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !179
  %i.by = or disjoint i64 %i.bw, %i.bq            ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !167
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !212
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !164
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !213
  %i.cg = add i64 %.011.i38, -1
  %i.ch = and i64 %i.cg, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.ch, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !972

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ci = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ci, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40
  %i.cj = load i8, ptr %3, align 8, !tbaa !223, !range !136, !noundef !137
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !224
  %i.cm = xor i8 %i.cj, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cs = load ptr, ptr %i.cq, align 8
  %i.ct = load ptr, ptr %i.cp, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 216 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit
  %i.cw = phi i32 [ %i.ci, %.lr.ph ], [ %i.ee, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit ] ; 2 uses
  %i.cx = sdiv i32 %.051, 64                      ; 3 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !113
  %i.db = xor i64 %i.da, %i.co                    ; 2 uses
  switch i64 %i.db, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.dc = shl nsw i32 %i.cx, 6
  %i.dd = sext i32 %i.dc to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.de = shl nsw i32 %i.cx, 6                    ; 2 uses
  %i.df = add nuw i32 %i.de, 64
  %i.dg = sext i32 %i.df to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dh = sext i32 %i.de to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dh, %.lr.ph21.i ], [ %i.dq, %bb.j ] ; 3 uses
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !179
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.020.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !167
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !212
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load ptr, ptr %i.cv, align 8, !tbaa !164
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %.020.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !213
  %i.dq = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dg
  br i1 %i.dr, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit, !llvm.loop !973

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.db, %.lr.ph.i ], [ %i.ed, %bb.k ] ; 3 uses
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dt = load ptr, ptr %i.ct, align 8, !tbaa !179
  %i.du = or disjoint i64 %i.ds, %i.dd            ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !167
  %i.dx = load ptr, ptr %i.cu, align 8, !tbaa !212
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load ptr, ptr %i.cv, align 8, !tbaa !164
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !213
  %i.ec = add i64 %.01519.i, -1
  %i.ed = and i64 %i.ec, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ed, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !974

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ee = add nsw i32 %i.cw, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ee, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !975

bb.l:                                             ; preds = %._crit_edge
  %i.ef = ashr i32 %1, 6
  %i.eg = and i32 %1, 63
  %i.eh = zext nneg i32 %i.eg to i64
  %notmask.i42 = shl nsw i64 -1, %i.eh
  %i.ei = xor i64 %notmask.i42, -1
  %i.ej = load i8, ptr %2, align 8, !tbaa !220, !range !136, !noundef !137
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !221
  %i.em = sext i32 %i.ef to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !113
  %i.ep = xor i8 %i.ej, 1
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = sub nsw i64 0, %i.eq
  %i.es = xor i64 %i.eo, %i.er
  %i.et = and i64 %i.es, %i.ei                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.et, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = sext i32 %i.d to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !976
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !977, !nonnull !137, !align !195
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !978, !nonnull !137, !align !195
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 216
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.et, %.preheader.i44 ], [ %i.fn, %bb.m ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !179
  %i.fe = or disjoint i64 %i.fc, %i.ew            ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !167
  %i.fh = load ptr, ptr %i.fa, align 8, !tbaa !212
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [16 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !164
  %i.fl = getelementptr inbounds [16 x i8], ptr %i.fk, i64 %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !213
  %i.fm = add nsw i64 %.011.i45, -1
  %i.fn = and i64 %i.fm, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fn, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !972

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.201) align 8 %2, ptr noundef byval(%class.anon.202) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !227, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !228
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !983
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !984, !nonnull !137, !align !195
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !212
  %i.aj = or disjoint i64 %i.ah, %i.ad            ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !164
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !213
  %i.an = add nsw i64 %.011.i, -1
  %i.ao = and i64 %i.an, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !979

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sdiv i32 %0, 64                         ; 2 uses
  %i.aq = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i35, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = load i8, ptr %2, align 8, !tbaa !227, !range !136, !noundef !137
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !228
  %i.az = sext i32 %i.ap to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !113
  %i.bc = xor i8 %i.aw, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, %i.av                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = shl nsw i32 %i.ap, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !983
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !984, !nonnull !137, !align !195
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bg, %.preheader.i37 ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !212
  %i.bq = or disjoint i64 %i.bo, %i.bk            ; 2 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !164
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !213
  %i.bu = add i64 %.011.i38, -1
  %i.bv = and i64 %i.bu, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bv, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !979

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bw = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bw, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40
  %i.bx = load i8, ptr %3, align 8, !tbaa !232, !range !136, !noundef !137
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !233
  %i.ca = xor i8 %i.bx, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.cd, align 8
  %i.cg = load ptr, ptr %i.ce, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 216 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit
  %i.ci = phi i32 [ %i.bw, %.lr.ph ], [ %i.di, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit ] ; 2 uses
  %i.cj = sdiv i32 %.051, 64                      ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !113
  %i.cn = xor i64 %i.cm, %i.cc                    ; 2 uses
  switch i64 %i.cn, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.co = shl nsw i32 %i.cj, 6
  %i.cp = sext i32 %i.co to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cr = add nuw i32 %i.cq, 64
  %i.cs = sext i32 %i.cr to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ct = sext i32 %i.cq to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ct, %.lr.ph21.i ], [ %i.cy, %bb.j ] ; 3 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !212
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.020.i
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !164
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.020.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !tbaa.struct !213
  %i.cy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cs
  br i1 %i.cz, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit, !llvm.loop !980

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.dh, %bb.k ] ; 3 uses
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !212
  %i.dc = or disjoint i64 %i.da, %i.cp            ; 2 uses
  %i.dd = getelementptr inbounds [16 x i8], ptr %i.db, i64 %i.dc
  %i.de = load ptr, ptr %i.ch, align 8, !tbaa !164
  %i.df = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !tbaa.struct !213
  %i.dg = add i64 %.01519.i, -1
  %i.dh = and i64 %i.dg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !981

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.di = add nsw i32 %i.ci, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.di, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !982

bb.l:                                             ; preds = %._crit_edge
  %i.dj = ashr i32 %1, 6
  %i.dk = and i32 %1, 63
  %i.dl = zext nneg i32 %i.dk to i64
  %notmask.i42 = shl nsw i64 -1, %i.dl
  %i.dm = xor i64 %notmask.i42, -1
  %i.dn = load i8, ptr %2, align 8, !tbaa !227, !range !136, !noundef !137
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !228
  %i.dq = sext i32 %i.dj to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !113
  %i.dt = xor i8 %i.dn, 1
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = xor i64 %i.ds, %i.dv
  %i.dx = and i64 %i.dw, %i.dm                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dx, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ea = sext i32 %i.d to i64
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !983
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !984, !nonnull !137, !align !195
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 216
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dx, %.preheader.i44 ], [ %i.el, %bb.m ] ; 3 uses
  %i.ee = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !212
  %i.eg = or disjoint i64 %i.ee, %i.ea            ; 2 uses
  %i.eh = getelementptr inbounds [16 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !164
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !tbaa.struct !213
  %i.ek = add nsw i64 %.011.i45, -1
  %i.el = and i64 %i.ek, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.el, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !979

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.205) align 8 %2, ptr noundef byval(%class.anon.206) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !333, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !334
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !329, !nonnull !137, !align !195
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !330, !nonnull !137, !align !195
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !331, !nonnull !137, !align !195
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !167
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !185
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !185
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !113
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !125
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !125
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !985

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !333, !range !136, !noundef !137
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !334
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !113
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !329, !nonnull !137, !align !195
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !330, !nonnull !137, !align !195
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !331, !nonnull !137, !align !195
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !179
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !167
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !185
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !185
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !113
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !125
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !125
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !985

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !986

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !333, !range !136, !noundef !137
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !334
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !113
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !329, !nonnull !137, !align !195
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !330, !nonnull !137, !align !195
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !331, !nonnull !137, !align !195
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !179
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !167
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !185
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !185
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !113
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !125
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !125
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !985

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !336, !range !136, !noundef !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !337
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !329, !nonnull !137, !align !195
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !179
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !167
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !330, !nonnull !137, !align !195
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !185
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !331, !nonnull !137, !align !195
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !113
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !125
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !125
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !987

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !329, !nonnull !137, !align !195
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !179
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !167
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !330, !nonnull !137, !align !195
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !185
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !331, !nonnull !137, !align !195
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !185
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !113
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !125
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !125
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !988

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISF_EEvSH_iibSI_EUliE_EEviiSI_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.207) align 8 %2, ptr noundef byval(%class.anon.208) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !239, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !240
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !993
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !994, !nonnull !137, !align !195
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.am, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !164
  %i.aj = getelementptr [16 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr [16 x i8], ptr %i.aj, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !213
  %i.al = add nsw i64 %.011.i, -1
  %i.am = and i64 %i.al, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.am, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !989

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sdiv i32 %0, 64                         ; 2 uses
  %i.ao = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ap
  %i.aq = xor i64 %notmask.i.i35, -1
  %i.ar = sub nsw i32 64, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.aq, %i.as
  %i.au = load i8, ptr %2, align 8, !tbaa !239, !range !136, !noundef !137
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !240
  %i.ax = sext i32 %i.an to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !113
  %i.ba = xor i8 %i.au, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = xor i64 %i.az, %i.bc
  %i.be = and i64 %i.bd, %i.at                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.be, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = shl nsw i32 %i.an, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = sext i32 %i.bg to i64
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !993
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !994, !nonnull !137, !align !195
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 216
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.be, %.preheader.i37 ], [ %i.br, %bb.g ] ; 3 uses
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !164
  %i.bo = getelementptr [16 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = getelementptr [16 x i8], ptr %i.bo, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !213
  %i.bq = add i64 %.011.i38, -1
  %i.br = and i64 %i.bq, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.br, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !989

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bs = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bs, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bt = load i8, ptr %3, align 8, !tbaa !242, !range !136, !noundef !137
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !243
  %i.bw = xor i8 %i.bt, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = load ptr, ptr %i.bz, align 8
  %i.cc = load ptr, ptr %i.ca, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 216 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ce = phi i32 [ %i.bs, %.lr.ph ], [ %i.db, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cf = sdiv i32 %.051, 64                      ; 3 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !113
  %i.cj = xor i64 %i.ci, %i.by                    ; 2 uses
  switch i64 %i.cj, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.ck = shl nsw i32 %i.cf, 6
  %i.cl = sext i32 %i.ck to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cm = shl nsw i32 %i.cf, 6                    ; 2 uses
  %i.cn = add nuw i32 %i.cm, 64
  %i.co = sext i32 %i.cn to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.cp = sext i32 %i.cm to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.cp, %.lr.ph21.i ], [ %i.ct, %bb.j ] ; 2 uses
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !164
  %sext.i = shl i64 %.020.i, 32
  %i.cr = ashr exact i64 %sext.i, 28
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !213
  %i.ct = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.co
  br i1 %i.cu, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !990

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %i.da, %bb.k ] ; 3 uses
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !164
  %i.cx = getelementptr [16 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = getelementptr [16 x i8], ptr %i.cx, i64 %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !213
  %i.cz = add i64 %.01519.i, -1
  %i.da = and i64 %i.cz, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.da, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !991

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.db = add nsw i32 %i.ce, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.db, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !992

bb.l:                                             ; preds = %._crit_edge
  %i.dc = ashr i32 %1, 6
  %i.dd = and i32 %1, 63
  %i.de = zext nneg i32 %i.dd to i64
  %notmask.i42 = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i42, -1
  %i.dg = load i8, ptr %2, align 8, !tbaa !239, !range !136, !noundef !137
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !240
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !113
  %i.dm = xor i8 %i.dg, 1
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = xor i64 %i.dl, %i.do
  %i.dq = and i64 %i.dp, %i.df                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dq, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dt = sext i32 %i.d to i64
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !993
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !994, !nonnull !137, !align !195
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 216
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dq, %.preheader.i44 ], [ %i.ec, %bb.m ] ; 3 uses
  %i.dx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !164
  %i.dz = getelementptr [16 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = getelementptr [16 x i8], ptr %i.dz, i64 %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !213
  %i.eb = add nsw i64 %.011.i45, -1
  %i.ec = and i64 %i.eb, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.ec, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !989

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.209) align 8 %2, ptr noundef byval(%class.anon.210) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !340, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !341
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !347
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !348, !nonnull !137, !align !195 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 59 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ch, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = or disjoint i32 %i.d, %i.an             ; 6 uses
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !196 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 2, !tbaa !197, !range !136
  %.pre12.i = trunc nuw i8 %.pre.i.i to i1        ; 3 uses
  br i1 %.not.i.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i, label %bb.e

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i: ; preds = %bb.d
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre12.i, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.ar = load i8, ptr %i.ag, align 1, !range !136
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond.i.i.i = select i1 %.pre12.i, i1 true, i1 %i.as
  br i1 %or.cond.i.i.i, label %.split.i.i, label %bb.f

.split.i.i:                                       ; preds = %bb.e
  %i.at = zext i32 %i.ao to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !113
  %i.ax = and i64 %i.at, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = and i64 %i.aw, %i.ay
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.ah, align 1, !tbaa !198, !range !136, !noundef !137 ; 2 uses
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i, label %.split4.i.i

.split4.i.i:                                      ; preds = %bb.f
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !199
  %i.bd = sext i32 %i.ao to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !167
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 6
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !113
  %i.bk = and i64 %i.bg, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bl, %i.bj
  %.not.i7.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i7.i.i.i, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i: ; preds = %bb.f
  %i.bn = load i64, ptr %i.ap, align 8, !tbaa !113
  %i.bo = and i64 %i.bn, 1
  %.not.i6.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i6.i.i.i, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i, %.split4.i.i
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !200
  br label %bb.g

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i: ; preds = %.split.i.i
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre12.i, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i
  %i.br = phi ptr [ %i.aq, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i ], [ %i.bq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i ]
  %.pre.i = load i8, ptr %i.ah, align 1, !tbaa !198, !range !136
  br label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i
  %i.bs = phi i8 [ %i.ba, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i ], [ %.pre.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i ]
  %i.bt = phi ptr [ %i.bp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i ], [ %i.br, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i ] ; 2 uses
  %i.bu = trunc nuw i8 %i.bs to i1
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = load i32, ptr %i.ak, align 8, !tbaa !201
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.ai, align 8, !tbaa !199
  %i.bx = sext i32 %i.ao to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !167
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i: ; preds = %bb.i, %bb.h, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i
  %i.ca = phi ptr [ %i.bt, %bb.i ], [ %i.bt, %bb.h ], [ %i.bq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i ], [ %i.aq, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i ]
  %.0.i.i.i.i = phi i32 [ %i.bz, %bb.i ], [ %i.bv, %bb.h ], [ %i.ao, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i ], [ %i.ao, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i ]
  %i.cb = sext i32 %.0.i.i.i.i to i64
  %i.cc = getelementptr inbounds [16 x i8], ptr %i.ca, i64 %i.cb ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cc, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !125
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !164
  %i.ce = sext i32 %i.ao to i64
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.cf, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !125
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i, %.split4.i.i, %.split.i.i
  %i.cg = add nsw i64 %.011.i, -1
  %i.ch = and i64 %i.cg, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ch, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !995

bb.j:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit64, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = sdiv i32 %0, 64                         ; 2 uses
  %i.cj = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ck
  %i.cl = xor i64 %notmask.i.i35, -1
  %i.cm = sub nsw i32 64, %i.cj
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl i64 %i.cl, %i.cn
  %i.cp = load i8, ptr %2, align 8, !tbaa !340, !range !136, !noundef !137
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !341
  %i.cs = sext i32 %i.ci to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !113
  %i.cv = xor i8 %i.cp, 1
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = xor i64 %i.cu, %i.cx
  %i.cz = and i64 %i.cy, %i.co                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cz, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit64, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = shl nsw i32 %i.ci, 6
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !347
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !348, !nonnull !137, !align !195 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %.phi.trans.insert.i.i40 = getelementptr inbounds nuw i8, ptr %i.de, i64 58
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 59 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 216
  br label %bb.l

bb.l:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i53, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cz, %.preheader.i37 ], [ %i.fh, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i53 ] ; 3 uses
  %i.dm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = or disjoint i32 %i.db, %i.dn            ; 6 uses
  %i.dp = load ptr, ptr %i.df, align 8, !tbaa !196 ; 4 uses
  %.not.i.i.i39 = icmp eq ptr %i.dp, null
  %.pre.i.i41 = load i8, ptr %.phi.trans.insert.i.i40, align 2, !tbaa !197, !range !136
  %.pre12.i42 = trunc nuw i8 %.pre.i.i41 to i1    ; 3 uses
  br i1 %.not.i.i.i39, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i63, label %bb.m

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i63: ; preds = %bb.l
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre12.i42, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i60

bb.m:                                             ; preds = %bb.l
  %i.dr = load i8, ptr %i.dg, align 1, !range !136
  %i.ds = trunc nuw i8 %i.dr to i1
  %or.cond.i.i.i43 = select i1 %.pre12.i42, i1 true, i1 %i.ds
  br i1 %or.cond.i.i.i43, label %.split.i.i57, label %bb.n

.split.i.i57:                                     ; preds = %bb.m
  %i.dt = zext i32 %i.do to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 6
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !113
  %i.dx = and i64 %i.dt, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = and i64 %i.dw, %i.dy
  %.not.i.i.i.i58 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i58, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i53, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i59

bb.n:                                             ; preds = %bb.m
  %i.ea = load i8, ptr %i.dh, align 1, !tbaa !198, !range !136, !noundef !137 ; 2 uses
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i55, label %.split4.i.i44

.split4.i.i44:                                    ; preds = %bb.n
  %i.ec = load ptr, ptr %i.di, align 8, !tbaa !199
  %i.ed = sext i32 %i.do to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !167
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = lshr i64 %i.eg, 6
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !113
  %i.ek = and i64 %i.eg, 63
  %i.el = shl nuw i64 1, %i.ek
  %i.em = and i64 %i.el, %i.ej
  %.not.i7.i.i.i45 = icmp eq i64 %i.em, 0
  br i1 %.not.i7.i.i.i45, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i53, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i46

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i55: ; preds = %bb.n
  %i.en = load i64, ptr %i.dp, align 8, !tbaa !113
  %i.eo = and i64 %i.en, 1
  %.not.i6.i.i.i56 = icmp eq i64 %i.eo, 0
  br i1 %.not.i6.i.i.i56, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i53, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i46

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i46: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i55, %.split4.i.i44
  %i.ep = load ptr, ptr %i.dj, align 8, !tbaa !200
  br label %bb.o

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i59: ; preds = %.split.i.i57
  %i.eq = load ptr, ptr %i.dj, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre12.i42, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i60

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i60: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i59, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i63
  %i.er = phi ptr [ %i.dq, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i63 ], [ %i.eq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i59 ]
  %.pre.i62 = load i8, ptr %i.dh, align 1, !tbaa !198, !range !136
  br label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i60, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i46
  %i.es = phi i8 [ %i.ea, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i46 ], [ %.pre.i62, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i60 ]
  %i.et = phi ptr [ %i.ep, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i46 ], [ %i.er, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i60 ] ; 2 uses
  %i.eu = trunc nuw i8 %i.es to i1
  br i1 %i.eu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ev = load i32, ptr %i.dk, align 8, !tbaa !201
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47

bb.q:                                             ; preds = %bb.o
  %i.ew = load ptr, ptr %i.di, align 8, !tbaa !199
  %i.ex = sext i32 %i.do to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !167
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47: ; preds = %bb.q, %bb.p, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i59, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i63
  %i.fa = phi ptr [ %i.et, %bb.q ], [ %i.et, %bb.p ], [ %i.eq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i59 ], [ %i.dq, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i63 ]
  %.0.i.i.i.i48 = phi i32 [ %i.ez, %bb.q ], [ %i.ev, %bb.p ], [ %i.do, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i59 ], [ %i.do, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i63 ]
  %i.fb = sext i32 %.0.i.i.i.i48 to i64
  %i.fc = getelementptr inbounds [16 x i8], ptr %i.fa, i64 %i.fb ; 2 uses
  %.sroa.0.0.copyload.i.i.i49 = load i64, ptr %i.fc, align 8
  %.sroa.2.0..sroa_idx.i.i.i50 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.2.0.copyload.i.i.i51 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i50, align 8, !tbaa !125
  %i.fd = load ptr, ptr %i.dl, align 8, !tbaa !164
  %i.fe = sext i32 %i.do to i64
  %i.ff = getelementptr inbounds [16 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i49, ptr %i.ff, align 8
  %.sroa.4.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i51, ptr %.sroa.4.0..sroa_idx.i.i52, align 8, !tbaa !125
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i53

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i53: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i47, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i55, %.split4.i.i44, %.split.i.i57
  %i.fg = add i64 %.011.i38, -1
  %i.fh = and i64 %i.fg, %.011.i38                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.fh, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit64, label %bb.l, !llvm.loop !995

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit64: ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i53, %bb.k, %bb.j
  %i.fi = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3396 = icmp sgt i32 %i.fi, %i.d
  br i1 %.not3396, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit64
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.r

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit64, %.lr.ph
  %i.fj = phi i32 [ %i.fl, %.lr.ph ], [ %i.fi, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit64 ] ; 2 uses
  %.097 = phi i32 [ %i.fj, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit64 ]
  %i.fk = sdiv i32 %.097, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.fk)
  %i.fl = add nsw i32 %i.fj, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fl, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !996

bb.r:                                             ; preds = %._crit_edge
  %i.fm = ashr i32 %1, 6
  %i.fn = and i32 %1, 63
  %i.fo = zext nneg i32 %i.fn to i64
  %notmask.i65 = shl nsw i64 -1, %i.fo
  %i.fp = xor i64 %notmask.i65, -1
  %i.fq = load i8, ptr %2, align 8, !tbaa !340, !range !136, !noundef !137
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !341
  %i.ft = sext i32 %i.fm to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !113
  %i.fw = xor i8 %i.fq, 1
  %i.fx = zext nneg i8 %i.fw to i64
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = xor i64 %i.fv, %i.fy
  %i.ga = and i64 %i.fz, %i.fp                    ; 2 uses
  %.not.i66 = icmp eq i64 %i.ga, 0
  br i1 %.not.i66, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i67

.preheader.i67:                                   ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !347
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !348, !nonnull !137, !align !195 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %.phi.trans.insert.i.i70 = getelementptr inbounds nuw i8, ptr %i.ge, i64 58
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 57
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 59 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 216
  br label %bb.s

bb.s:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i83, %.preheader.i67
  %.011.i68 = phi i64 [ %i.ga, %.preheader.i67 ], [ %i.ih, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i83 ] ; 3 uses
  %i.gm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i68, i1 true)
  %i.gn = trunc nuw nsw i64 %i.gm to i32
  %i.go = or disjoint i32 %i.d, %i.gn             ; 6 uses
  %i.gp = load ptr, ptr %i.gf, align 8, !tbaa !196 ; 4 uses
  %.not.i.i.i69 = icmp eq ptr %i.gp, null
  %.pre.i.i71 = load i8, ptr %.phi.trans.insert.i.i70, align 2, !tbaa !197, !range !136
  %.pre12.i72 = trunc nuw i8 %.pre.i.i71 to i1    ; 3 uses
  br i1 %.not.i.i.i69, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i93, label %bb.t

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i93: ; preds = %bb.s
  %i.gq = load ptr, ptr %i.gj, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre12.i72, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i77, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i90

bb.t:                                             ; preds = %bb.s
  %i.gr = load i8, ptr %i.gg, align 1, !range !136
  %i.gs = trunc nuw i8 %i.gr to i1
  %or.cond.i.i.i73 = select i1 %.pre12.i72, i1 true, i1 %i.gs
  br i1 %or.cond.i.i.i73, label %.split.i.i87, label %bb.u

.split.i.i87:                                     ; preds = %bb.t
  %i.gt = zext i32 %i.go to i64                   ; 2 uses
  %i.gu = lshr i64 %i.gt, 6
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !113
  %i.gx = and i64 %i.gt, 63
  %i.gy = shl nuw i64 1, %i.gx
  %i.gz = and i64 %i.gw, %i.gy
  %.not.i.i.i.i88 = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i.i88, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i83, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i89

bb.u:                                             ; preds = %bb.t
  %i.ha = load i8, ptr %i.gh, align 1, !tbaa !198, !range !136, !noundef !137 ; 2 uses
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i85, label %.split4.i.i74

.split4.i.i74:                                    ; preds = %bb.u
  %i.hc = load ptr, ptr %i.gi, align 8, !tbaa !199
  %i.hd = sext i32 %i.go to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !167
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %i.hh = lshr i64 %i.hg, 6
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !113
  %i.hk = and i64 %i.hg, 63
  %i.hl = shl nuw i64 1, %i.hk
  %i.hm = and i64 %i.hl, %i.hj
  %.not.i7.i.i.i75 = icmp eq i64 %i.hm, 0
  br i1 %.not.i7.i.i.i75, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i83, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i76

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i85: ; preds = %bb.u
  %i.hn = load i64, ptr %i.gp, align 8, !tbaa !113
  %i.ho = and i64 %i.hn, 1
  %.not.i6.i.i.i86 = icmp eq i64 %i.ho, 0
  br i1 %.not.i6.i.i.i86, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i83, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i76

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i76: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i85, %.split4.i.i74
  %i.hp = load ptr, ptr %i.gj, align 8, !tbaa !200
  br label %bb.v

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i89: ; preds = %.split.i.i87
  %i.hq = load ptr, ptr %i.gj, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre12.i72, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i77, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i90

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i90: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i89, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i93
  %i.hr = phi ptr [ %i.gq, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i93 ], [ %i.hq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i89 ]
  %.pre.i92 = load i8, ptr %i.gh, align 1, !tbaa !198, !range !136
  br label %bb.v

bb.v:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i90, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i76
  %i.hs = phi i8 [ %i.ha, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i76 ], [ %.pre.i92, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i90 ]
  %i.ht = phi ptr [ %i.hp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i76 ], [ %i.hr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge.i90 ] ; 2 uses
  %i.hu = trunc nuw i8 %i.hs to i1
  br i1 %i.hu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hv = load i32, ptr %i.gk, align 8, !tbaa !201
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i77

bb.x:                                             ; preds = %bb.v
  %i.hw = load ptr, ptr %i.gi, align 8, !tbaa !199
  %i.hx = sext i32 %i.go to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !167
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i77

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i77: ; preds = %bb.x, %bb.w, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i89, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i93
  %i.ia = phi ptr [ %i.ht, %bb.x ], [ %i.ht, %bb.w ], [ %i.hq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i89 ], [ %i.gq, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i93 ]
  %.0.i.i.i.i78 = phi i32 [ %i.hz, %bb.x ], [ %i.hv, %bb.w ], [ %i.go, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i89 ], [ %i.go, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i93 ]
  %i.ib = sext i32 %.0.i.i.i.i78 to i64
  %i.ic = getelementptr inbounds [16 x i8], ptr %i.ia, i64 %i.ib ; 2 uses
  %.sroa.0.0.copyload.i.i.i79 = load i64, ptr %i.ic, align 8
  %.sroa.2.0..sroa_idx.i.i.i80 = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.sroa.2.0.copyload.i.i.i81 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i80, align 8, !tbaa !125
  %i.id = load ptr, ptr %i.gl, align 8, !tbaa !164
  %i.ie = sext i32 %i.go to i64
  %i.if = getelementptr inbounds [16 x i8], ptr %i.id, i64 %i.ie ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i79, ptr %i.if, align 8
  %.sroa.4.0..sroa_idx.i.i82 = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i81, ptr %.sroa.4.0..sroa_idx.i.i82, align 8, !tbaa !125
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i83

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i83: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i77, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i85, %.split4.i.i74, %.split.i.i87
  %i.ig = add nsw i64 %.011.i68, -1
  %i.ih = and i64 %i.ig, %.011.i68                ; 2 uses
  %.not10.i84 = icmp eq i64 %i.ih, 0
  br i1 %.not10.i84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.s, !llvm.loop !995

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i83, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit.i, %bb.r, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !343, !range !136, !noundef !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not43 = icmp eq i32 %i.n, -64
  br i1 %.not43, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph42, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSC_.exit
  %.038 = phi i64 [ %i.q, %.lr.ph42 ], [ %i.bw, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSC_.exit ] ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !347
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !348, !nonnull !137, !align !195 ; 11 uses
  %i.v = trunc i64 %.038 to i32                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !196  ; 4 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !197, !range !136
  %.pre48 = trunc nuw i8 %.pre.i to i1            ; 3 uses
  br i1 %.not.i.i, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, label %bb.d

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !200  ; 2 uses
  br i1 %.pre48, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 57
  %i.ab = load i8, ptr %i.aa, align 1, !range !136
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i.i = select i1 %.pre48, i1 true, i1 %i.ac
  br i1 %or.cond.i.i, label %.split.i, label %bb.e

.split.i:                                         ; preds = %bb.d
  %i.ad = lshr i64 %.038, 6
  %i.ae = and i64 %i.ad, 67108863
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !113
  %i.ah = and i64 %.038, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSC_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 59
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !198, !range !136, !noundef !137 ; 2 uses
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split4.i

.split4.i:                                        ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199
  %sext.i = shl i64 %.038, 32
  %i.ap = ashr exact i64 %sext.i, 30
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !167
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !113
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.ax, %i.av
  %.not.i7.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i7.i.i, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSC_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.e
  %i.az = load i64, ptr %i.x, align 8, !tbaa !113
  %i.ba = and i64 %i.az, 1
  %.not.i6.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i6.i.i, label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSC_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split4.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !200
  br label %bb.f

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %.split.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre48, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.bf = phi ptr [ %i.z, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.be, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 59
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !198, !range !136
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.bg = phi i8 [ %i.al, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.bh = phi ptr [ %i.bc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.bf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.bi = trunc nuw i8 %i.bg to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !201
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !199
  %sext5.i = shl i64 %.038, 32
  %i.bn = ashr exact i64 %sext5.i, 30
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !167
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.h, %bb.g, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.bq = phi ptr [ %i.bh, %bb.h ], [ %i.bh, %bb.g ], [ %i.be, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.z, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.bp, %bb.h ], [ %i.bk, %bb.g ], [ %i.v, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.v, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.br = sext i32 %.0.i.i.i to i64
  %i.bs = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bs, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !125
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !164
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.038 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bv, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !125
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSC_.exit

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clImEEDaSC_.exit: ; preds = %.split.i, %.split4.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i
  %i.bw = add nuw i64 %.038, 1                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.p
  br i1 %i.bx, label %bb.c, label %.loopexit, !llvm.loop !997

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit
  %.01537 = phi i64 [ %i.j, %.lr.ph ], [ %i.ef, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E2_clIiEEDaSC_.exit ] ; 3 uses
  %i.by = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01537, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = or disjoint i32 %i.l, %i.bz             ; 6 uses
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !347
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !348, !nonnull !137, !align !195 ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !196 ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.ce, null
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.cc, i64 58
  %.pre.i19 = load i8, ptr %.phi.trans.insert.i18, align 2, !tbaa !197, !range !136
  %.pre47 = trunc nuw i8 %.pre.i19 to i1          ; 3 uses
  br i1 %.not.i.i17, label %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34_crit_edge, label %bb.j

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34_crit_edge: ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre47, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i24, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  %i.ci = load i8, ptr %i.ch, align 1, !range !136
  %i.cj = trunc nuw i8 %i.ci to i1
  %or.cond.i.i20 = select i1 %.pre47, i1 true, i1 %i.cj
  br i1 %or.cond.i.i20, label %.split.i32, label %bb.k

.split.i32:                                       ; preds = %bb.j
  %i.ck = zext i32 %i.ca to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !113
  %i.co = and i64 %i.ck, 63
end_hunk_2
begin_hunk_3_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_:bb.a
_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %.thread77, %bb.p
  %i.bw = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bw, ptr %1, align 4, !tbaa !167
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit, %bb.u, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, %.thread82, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, %bb.o
  br label %bb.c, !llvm.loop !1027

bb.q:                                             ; preds = %.thread77
  %i.bx = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  store i32 %i.bx, ptr %1, align 4, !tbaa !167
  %i.by = and i32 %i.bx, 512
  %.not53 = icmp eq i32 %i.by, 0
  br i1 %.not53, label %bb.u, label %bb.r

.thread79:                                        ; preds = %bb.p
  %i.bz = load atomic i32, ptr %0 acquire, align 4
  store i32 %i.bz, ptr %1, align 4, !tbaa !167
  store atomic i32 %.2.ph, ptr %i.m monotonic, align 4
  %i.ca = load i32, ptr %1, align 4, !tbaa !167
  %i.cb = and i32 %i.ca, 512
  %.not5380 = icmp eq i32 %i.cb, 0
  br i1 %.not5380, label %.thread82, label %.thread81

bb.r:                                             ; preds = %bb.q
  store i16 3, ptr %2, align 2, !tbaa !253
  %i.cc = trunc i32 %.2.ph to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !254
  br label %.thread81

.thread82:                                        ; preds = %.thread79
  %i.ce = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %0)
  br i1 %i.ce, label %.backedge, label %bb.s

bb.s:                                             ; preds = %.thread82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cf = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cg = add i32 %i.cf, -2048                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !167
  %i.ch = icmp ugt i32 %i.cg, 2047
  %i.ci = and i32 %i.cf, 16
  %.not.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i = or i1 %i.ch, %.not.i.i
  br i1 %or.cond.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit, label %bb.t, !prof !255

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  %i.cj = cmpxchg ptr %i.br, i64 %i.k, i64 0 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cl = atomicrmw sub ptr %0, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cm = add i32 %i.cl, -2048                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !167
  %i.cn = icmp ugt i32 %i.cm, 2047
  %i.co = and i32 %i.cl, 16
  %.not.i.i60 = icmp eq i32 %i.co, 0
  %or.cond.i61 = or i1 %i.cn, %.not.i.i60
  br i1 %or.cond.i61, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63, label %bb.w, !prof !255

bb.w:                                             ; preds = %bb.v
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit63: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.backedge

.thread81:                                        ; preds = %.thread79, %bb.k, %bb.l, %bb.r
  ret i1 true
}

declare noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

declare noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr noundef nonnull align 8 dereferenceable(65800), ptr noundef nonnull, ptr noundef nonnull) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv() #5 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %i.a
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v() #8

declare noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly18SequentialThreadId3getEv() ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !167
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %1, align 4, !tbaa !167
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

declare noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits9testWordsIZNS1_8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS5_EENSt9enable_ifIXsr3stdE9is_same_vIT_S5_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS9_E_EEbPKmiibS9_EUlimE_ZNS3_ISJ_EEbSL_iibS9_EUliE_EEbiiS9_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.223) align 8 %2, ptr noundef byval(%class.anon.224) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !353, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !354
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1031, !nonnull !137, !align !195
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !252 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  %.neg.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -40
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1032, !nonnull !137, !align !195
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !179
  %i.ai = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ah, i64 %i.ai
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !184
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i
  %.014.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.au, %bb.e ] ; 3 uses
  %i.ak = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i, i1 true)
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ak
  %i.al = load i32, ptr %gep.i, align 4, !tbaa !167
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !113
  %i.aq = and i64 %i.am, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ar, %i.ap
  %.not13.not.i.not.not = icmp ne i64 %i.as, 0    ; 3 uses
  br i1 %.not13.not.i.not.not, label %bb.e, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit

bb.e:                                             ; preds = %bb.d
  %i.at = add nsw i64 %.014.i, -1
  %i.au = and i64 %i.at, %.014.i                  ; 2 uses
  %.not12.i = icmp eq i64 %i.au, 0
  br i1 %.not12.i, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1028

bb.f:                                             ; preds = %bb.b
  %.not36 = icmp eq i32 %0, %i.c
  br i1 %.not36, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit50.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sdiv i32 %0, 64                         ; 2 uses
  %i.aw = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i39 = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i39, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = load i8, ptr %2, align 8, !tbaa !353, !range !136, !noundef !137
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !354
  %i.bf = sext i32 %i.av to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !113
  %i.bi = xor i8 %i.bc, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = and i64 %i.bl, %i.bb                    ; 2 uses
  %.not.i40 = icmp eq i64 %i.bm, 0
  br i1 %.not.i40, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit50.thread, label %.preheader.i41

.preheader.i41:                                   ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i32 %i.av, 6
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !1031, !nonnull !137, !align !195
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !252 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.bq, null
  %.neg.i.i.i.i43 = select i1 %.not.i.i.i.i42, i64 0, i64 -40
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %.neg.i.i.i.i43
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1032, !nonnull !137, !align !195
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !179
  %i.bv = sext i32 %i.bo to i64
  %invariant.gep.i44 = getelementptr [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !184
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.i41
  %.014.i45 = phi i64 [ %i.bm, %.preheader.i41 ], [ %i.ch, %bb.i ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i45, i1 true)
  %gep.i46 = getelementptr [4 x i8], ptr %invariant.gep.i44, i64 %i.bx
  %i.by = load i32, ptr %gep.i46, align 4, !tbaa !167
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !113
  %i.cd = and i64 %i.bz, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.cc
  %.not13.not.i47 = icmp eq i64 %i.cf, 0
  br i1 %.not13.not.i47, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = add i64 %.014.i45, -1
  %i.ch = and i64 %i.cg, %.014.i45                ; 2 uses
  %.not12.i48 = icmp eq i64 %i.ch, 0
  br i1 %.not12.i48, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit50.thread, label %bb.h, !llvm.loop !1028

_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit50.thread: ; preds = %bb.i, %bb.g, %bb.f
  %i.ci = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3775 = icmp sgt i32 %i.ci, %i.d
  br i1 %.not3775, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit50.thread
  %i.cj = load i8, ptr %3, align 8, !tbaa !356, !range !136, !noundef !137
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !357
  %i.cm = xor i8 %i.cj, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !137, !align !195
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !137, !align !195
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit
  %i.ct = phi i32 [ %i.ci, %.lr.ph ], [ %i.dq, %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit ] ; 2 uses
  %.076 = phi i32 [ %i.c, %.lr.ph ], [ %i.ct, %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit ]
  %i.cu = sdiv i32 %.076, 64                      ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !113 ; 2 uses
  %.not.i51 = icmp eq i64 %i.cx, %i.co
  br i1 %.not.i51, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit, label %.preheader.i52

.preheader.i52:                                   ; preds = %bb.j
  %i.cy = xor i64 %i.cx, %i.co
  %i.cz = shl nsw i32 %i.cu, 6
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !252 ; 2 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.da, null
  %.neg.i.i.i.i54 = select i1 %.not.i.i.i.i53, i64 0, i64 -40
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.neg.i.i.i.i54
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !179
  %i.dd = sext i32 %i.cz to i64
  %invariant.gep.i55 = getelementptr [4 x i8], ptr %i.dc, i64 %i.dd
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !184
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i52
  %.013.i = phi i64 [ %i.cy, %.preheader.i52 ], [ %i.dp, %bb.l ] ; 3 uses
  %i.df = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.013.i, i1 true)
  %gep.i56 = getelementptr [4 x i8], ptr %invariant.gep.i55, i64 %i.df
  %i.dg = load i32, ptr %gep.i56, align 4, !tbaa !167
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !113
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not12.not.i = icmp eq i64 %i.dn, 0
  br i1 %.not12.not.i, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = add i64 %.013.i, -1
  %i.dp = and i64 %i.do, %.013.i                  ; 2 uses
  %.not11.i = icmp eq i64 %i.dp, 0
  br i1 %.not11.i, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1029

_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit: ; preds = %bb.l, %bb.j
  %i.dq = add nsw i32 %i.ct, 64                   ; 2 uses
  %.not37 = icmp sgt i32 %i.dq, %i.d
  br i1 %.not37, label %.critedge, label %bb.j, !llvm.loop !1030

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit50.thread
  %.not38 = icmp eq i32 %1, %i.d
  br i1 %.not38, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.dr = ashr i32 %1, 6
  %i.ds = and i32 %1, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %notmask.i57 = shl nsw i64 -1, %i.dt
  %i.du = xor i64 %notmask.i57, -1
  %i.dv = load i8, ptr %2, align 8, !tbaa !353, !range !136, !noundef !137
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !354
  %i.dy = sext i32 %i.dr to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !113
  %i.eb = xor i8 %i.dv, 1
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = xor i64 %i.ea, %i.ed
  %i.ef = and i64 %i.ee, %i.du                    ; 2 uses
  %.not.i58 = icmp eq i64 %i.ef, 0
  br i1 %.not.i58, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1031, !nonnull !137, !align !195
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !252 ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.ei, null
  %.neg.i.i.i.i61 = select i1 %.not.i.i.i.i60, i64 0, i64 -40
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %.neg.i.i.i.i61
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1032, !nonnull !137, !align !195
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !179
  %i.en = sext i32 %i.d to i64
  %invariant.gep.i62 = getelementptr [4 x i8], ptr %i.em, i64 %i.en
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !184
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.i59
  %.014.i63 = phi i64 [ %i.ef, %.preheader.i59 ], [ %i.ez, %bb.o ] ; 3 uses
  %i.ep = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i63, i1 true)
  %gep.i64 = getelementptr [4 x i8], ptr %invariant.gep.i62, i64 %i.ep
  %i.eq = load i32, ptr %gep.i64, align 4, !tbaa !167
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !113
  %i.ev = and i64 %i.er, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eu
  %.not13.not.i65.not.not = icmp ne i64 %i.ex, 0  ; 3 uses
  br i1 %.not13.not.i65.not.not, label %bb.o, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit

bb.o:                                             ; preds = %bb.n
  %i.ey = add nsw i64 %.014.i63, -1
  %i.ez = and i64 %i.ey, %.014.i63                ; 2 uses
  %.not12.i66 = icmp eq i64 %i.ez, 0
  br i1 %.not12.i66, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.n, !llvm.loop !1028

_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit: ; preds = %bb.h, %bb.k, %bb.o, %bb.n, %bb.e, %bb.d, %bb.m, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ %.not13.not.i65.not.not, %bb.o ], [ true, %bb.m ], [ %.not13.not.i.not.not, %bb.e ], [ true, %bb.c ], [ false, %bb.k ], [ %.not13.not.i.not.not, %bb.d ], [ %.not13.not.i65.not.not, %bb.n ], [ false, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox17SelectivityVector6selectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %class.anon.95, align 8             ; 6 uses
  %3 = alloca %class.anon.96, align 8             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !167  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183  ; 3 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %0, i32 noundef %i.e, i1 noundef zeroext false)
  %.pr = load i32, ptr %i.b, align 8, !tbaa !167
  %.pre = load i32, ptr %i.d, align 8, !tbaa !183
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %i.h = phi i32 [ %.pr, %bb.b ], [ %i.c, %bb.a ] ; 7 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !184    ; 10 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !184    ; 6 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.speculated, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %.sroa.speculated, 2147483584    ; 3 uses
  %.not3337.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not3337.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = add nsw i64 %i.l, -64                    ; 3 uses
  %i.n = lshr exact i64 %i.m, 6
  %i.o = add nuw nsw i64 %i.n, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.m, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.p = add nsw i64 %i.l, -64
  %i.q = lshr exact i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.r
  %scevgep24 = getelementptr i8, ptr %i.j, i64 %i.r
  %bound0 = icmp ult ptr %i.i, %scevgep24
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check25 = icmp ult i64 %i.m, 960
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.o, 12
  %n.vec = and i64 %i.o, 576460752303423472       ; 4 uses
  %i.t = shl i64 %n.vec, 6                        ; 2 uses
  %i.u = or disjoint i64 %i.t, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.v, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  %wide.load26 = load <4 x i64>, ptr %i.w, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  %wide.load27 = load <4 x i64>, ptr %i.x, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  %wide.load28 = load <4 x i64>, ptr %i.y, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load29 = load <4 x i64>, ptr %i.z, align 8, !tbaa !113, !alias.scope !1040
  %wide.load30 = load <4 x i64>, ptr %i.aa, align 8, !tbaa !113, !alias.scope !1040
  %wide.load31 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !113, !alias.scope !1040
  %wide.load32 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !113, !alias.scope !1040
  %i.ad = or <4 x i64> %wide.load29, %wide.load
  %i.ae = or <4 x i64> %wide.load30, %wide.load26
  %i.af = or <4 x i64> %wide.load31, %wide.load27
  %i.ag = or <4 x i64> %wide.load32, %wide.load28
  store <4 x i64> %i.ad, ptr %i.v, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  store <4 x i64> %i.ae, ptr %i.w, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  store <4 x i64> %i.af, ptr %i.x, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  store <4 x i64> %i.ag, ptr %i.y, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1036

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !272

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.o, 576460752303423484     ; 3 uses
  %i.ai = shl i64 %n.vec34, 6                     ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index35 ; 2 uses
  %wide.load36 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index35
  %wide.load37 = load <4 x i64>, ptr %i.al, align 8, !tbaa !113, !alias.scope !1040
  %i.am = or <4 x i64> %wide.load37, %wide.load36
  store <4 x i64> %i.am, ptr %i.ak, align 8, !tbaa !113, !alias.scope !1039, !noalias !1040
  %index.next38 = add nuw i64 %index35, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next38, %n.vec34
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1037

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.o, %n.vec34
  br i1 %cmp.n39, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv9.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.d
  %.not34.i.i.i = icmp eq i32 %.sroa.speculated, %i.k
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit, label %bb.e

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %.lr.ph.i.i.i ], [ %indvars.iv9.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ao = lshr exact i64 %indvars.iv9, 6          ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ao ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !113
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ao
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !113
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !113
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.l
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1038

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.au = lshr i32 %.sroa.speculated, 6
  %i.av = and i32 %.sroa.speculated, 63
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.aw      ; 2 uses
  %i.ax = xor i64 %notmask.i36.i.i.i, -1
  %i.ay = zext nneg i32 %i.au to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !113 ; 2 uses
  %i.bb = and i64 %i.ba, %notmask.i36.i.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ay
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !113
  %i.be = or i64 %i.bd, %i.ba
  %i.bf = and i64 %i.be, %i.ax
  %i.bg = or disjoint i64 %i.bf, %i.bb
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !113
  br label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

_ZN8facebook5velox4bits6orBitsEPmPKmii.exit:      ; preds = %bb.c, %._crit_edge.i.i.i, %bb.e
  %.not.i.i.i5 = icmp sgt i32 %i.h, 0
  br i1 %.not.i.i.i5, label %bb.f, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.f:                                             ; preds = %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit
  %i.bh = and i32 %i.h, 2147483584                ; 4 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %.not37.i.i.not.i22.not = icmp eq i32 %i.bh, 0
  br i1 %.not37.i.i.not.i22.not, label %.critedge.i.i.i, label %.lr.ph

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i23, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.bi
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !3

.lr.ph:                                           ; preds = %bb.f, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.bj = lshr exact i64 %indvars.iv.i23, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !113 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !3
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.ao, align 1, !range !136
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.pre10, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !113
  %i.bi = and i64 %i.be, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.ap, align 1, !tbaa !198, !range !136, !noundef !137 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !199
  %i.bo = sext i32 %i.az to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !167
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !113
  %i.bv = and i64 %i.br, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not.i7.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !113
  %i.bz = and i64 %i.by, 1
  %.not.i6.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !200
  br label %bb.l

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %.split.i
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !200 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cc = phi ptr [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.pre = load i8, ptr %i.ap, align 1, !tbaa !198, !range !136
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cd = phi i8 [ %i.bl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.ce = phi ptr [ %i.ca, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !201
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !199
  %i.ci = sext i32 %i.az to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !167
  br label %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cl = phi ptr [ %i.ce, %bb.n ], [ %i.ce, %bb.m ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.ck, %bb.n ], [ %i.cg, %bb.m ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.az, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cm = sext i32 %.0.i.i.i to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !113
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !476
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %indvars.iv
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !113
  %i.cr = load ptr, ptr %i.at, align 8, !tbaa !185 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i
  %i.cs = trunc i64 %indvars.iv to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = lshr i64 %indvars.iv, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !125
  %i.cz = or i8 %i.cy, %i.cu
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !125
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i, %.split.i
  %i.da = load ptr, ptr %i.at, align 8, !tbaa !185
  %i.db = and i64 %indvars.iv, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !125
  %i.de = lshr i64 %indvars.iv, 3
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !125
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !125
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1750

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !184
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !180
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !181
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.376) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.377) align 8 %2, ptr noundef byval(%class.anon.378) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !537, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !538
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1755
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1756, !nonnull !137, !align !195
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1757, !nonnull !137, !align !195
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !185
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !476
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !167
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !113
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !113
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1751

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !537, !range !136, !noundef !137
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !538
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !113
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1755
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1756, !nonnull !137, !align !195
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !179
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1757, !nonnull !137, !align !195
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !185
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !476
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !167
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !113
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !113
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1751

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !540, !range !136, !noundef !137
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !541
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !113
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !179
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !185
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !476
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !179
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !185
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !476
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !167
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !113
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !113
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1752

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !167
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !113
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !113
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1753

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1754

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !537, !range !136, !noundef !137
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !538
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !113
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1755
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1756, !nonnull !137, !align !195
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !179
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1757, !nonnull !137, !align !195
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !185
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !476
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !167
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !113
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !113
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1751

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.379) align 8 %2, ptr noundef byval(%class.anon.380) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !544, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !545
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1764
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1765, !nonnull !137, !align !195
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !185
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !476
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !113
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !113
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1758

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !544, !range !136, !noundef !137
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !545
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !113
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1764
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1765, !nonnull !137, !align !195
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !185
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !476
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !113
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !113
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1758

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !547, !range !136, !noundef !137
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !548
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !113
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !185
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !476
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !185 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !476 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !113
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !113
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !113
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !113
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !113
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !113
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !113
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !113
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1759

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !113
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !113
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1760

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !113
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !113
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1761

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !113
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !113
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1762

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1763

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !544, !range !136, !noundef !137
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !545
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !113
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1764
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1765, !nonnull !137, !align !195
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !185
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !476
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !113
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !113
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1758

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.381) align 8 %2, ptr noundef byval(%class.anon.382) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !563, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !564
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !559, !nonnull !137, !align !195
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !560, !nonnull !137, !align !195
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !561, !nonnull !137, !align !195
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !167
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !185
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !185
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !113
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !125
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !125
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1766

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !563, !range !136, !noundef !137
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !564
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !113
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !559, !nonnull !137, !align !195
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !560, !nonnull !137, !align !195
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !561, !nonnull !137, !align !195
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !179
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !167
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !185
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !185
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !113
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !125
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !125
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1766

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1767

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !563, !range !136, !noundef !137
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !564
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !113
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !559, !nonnull !137, !align !195
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !560, !nonnull !137, !align !195
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !561, !nonnull !137, !align !195
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !179
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !167
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !185
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !185
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !113
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !125
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !125
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1766

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !566, !range !136, !noundef !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !567
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !559, !nonnull !137, !align !195
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !179
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !167
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !560, !nonnull !137, !align !195
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !185
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !561, !nonnull !137, !align !195
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !113
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !125
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !125
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1768

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !559, !nonnull !137, !align !195
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !179
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !167
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !560, !nonnull !137, !align !195
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !185
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !561, !nonnull !137, !align !195
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !185
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !113
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !125 ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !125
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !125
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1769

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.383) align 8 %2, ptr noundef byval(%class.anon.384) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !551, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !552
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1776
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1777, !nonnull !137, !align !195
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !476
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !113
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1770

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !551, !range !136, !noundef !137
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !552
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !113
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1776
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1777, !nonnull !137, !align !195
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !476
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !113
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !113
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !1770

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !554, !range !136, !noundef !137
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !555
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !137, !align !195 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !113
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !476
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !113
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !476 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !113 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !113
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !113
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !113
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !113
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !113
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1772

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !113
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1773

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !113
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1774

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1775

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !551, !range !136, !noundef !137
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !552
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !113
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1776
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1777, !nonnull !137, !align !195
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !476
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !113
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !113
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1770

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #5 comdat {
bb.a:
  %6 = alloca %class.anon.386, align 8            ; 7 uses
  %7 = alloca %class.anon.385, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1778

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1781, !range !136, !noundef !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1782
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !571
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !572, !nonnull !137, !align !195 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !196  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !197, !range !136
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !200  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !476 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !113
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !113
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1779

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !198, !range !136, !noundef !137
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !201
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !113
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !113
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1779

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !199
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZSt10_ConstructIN8facebook5velox10FlatVectorImEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERKiSI_St6vectorISI_SaISI_EERKNS1_17SimpleVectorStatsImEERKSt8optionalIiESV_RKSS_IbESV_SV_EEvPT_DpOT0_:bb.a
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !133
  %..i.i22 = select i1 %.not.i.i21, i64 8, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %..i.i22
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit23 unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %.noexc.i20, %.sink.split.i.i19
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit23: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i20
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #18
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZN8facebook5velox6Buffer19sliceBufferZeroCopyEmbRKN5boost13intrusive_ptrIS1_EEmm(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorImEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats.320", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !262
  %i.b = load ptr, ptr %3, align 8, !tbaa !116
  store ptr %i.b, ptr %7, align 8, !tbaa !116
  store ptr null, ptr %3, align 8, !tbaa !116
  %i.c = load i32, ptr %4, align 4, !tbaa !167
  %i.d = load ptr, ptr %5, align 8, !tbaa !116
  store ptr %i.d, ptr %8, align 8, !tbaa !116
  store ptr null, ptr %5, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !372
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !372
  invoke void @_ZN8facebook5velox10FlatVectorImEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.g = load ptr, ptr %8, align 8, !tbaa !116    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !0

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !133
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !116    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !0

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !140
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !133
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  resume { ptr, i32 } %i.ai
}

declare void @_ZN8facebook5velox6Buffer5sliceIbEEN5boost13intrusive_ptrIS1_EERKS5_mmPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.404) align 8 %2, ptr noundef byval(%class.anon.405) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !482, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !483
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1804
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !476
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1805, !nonnull !137, !align !195
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !185
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !113
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !113
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1798

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !482, !range !136, !noundef !137
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !483
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !113
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1804
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !476
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !1805, !nonnull !137, !align !195
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !113
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !113
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1798

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !485, !range !136, !noundef !137
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !486
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !137, !align !195 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !113
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !476
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !185
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !476 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !185 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !113
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !113
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !113
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !113
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !113
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !113
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !113
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !113
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !1799

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !113
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !113
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1800

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !113
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !113
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1801

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !113
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !113
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1802

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1803

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !482, !range !136, !noundef !137
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !483
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !113
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1804
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !476
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !1805, !nonnull !137, !align !195
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !185
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !113
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !113
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1798

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !488
  %i.c = load i64, ptr %0, align 8, !tbaa !113
  %i.d = tail call noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.c)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %0, align 8, !tbaa !113
  %i.f = load ptr, ptr %1, align 8, !tbaa !488    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.g = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.e) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !170  ; 5 uses
  %i.j = sub i64 9223372036854775807, %i.i
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #38
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.l = add i64 %i.i, %i.g                       ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !144  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !125
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.a, align 16, !tbaa !125
  store i8 %i.t, ptr %i.s, align 1, !tbaa !125
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.g)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !170
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !144
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !141

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #41 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !144    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !170  ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.p = load i8, ptr %i.l, align 1, !tbaa !125
  store i8 %i.p, ptr %i.k, align 1, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  %i.q = icmp eq ptr %i.l, %i.b
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.r = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.s = load i64, ptr %i.b, align 8, !tbaa !125
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !144
  store i64 %.0, ptr %i.b, align 8, !tbaa !125
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !113
  %i.b = icmp ult i64 %0, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %0, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !574
  br i1 %or.cond, label %.loopexit, label %bb.b, !prof !574

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !113
  %i.f = icmp ult i64 %0, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c, !prof !141

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !113
  %i.h = icmp ult i64 %0, %i.g
  br i1 %i.h, label %.loopexit, label %bb.d, !prof !141

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !113
  %i.j = icmp ult i64 %0, %i.i
  br i1 %i.j, label %.loopexit, label %bb.e, !prof !141

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !113
  %i.l = icmp ult i64 %0, %i.k
  br i1 %i.l, label %.loopexit, label %bb.f, !prof !141

end_hunk_5
begin_hunk_6_@_ZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_E:bb.a
_ZSt4fillIPN8facebook5velox10StringViewES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !384    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !385  ; 2 uses
  %.not16 = icmp eq ptr %i.a, %i.c
  br i1 %.not16, label %._crit_edge18, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01417 = phi ptr [ %i.a, %.preheader.lr.ph ], [ %i.j, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01417, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !381
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.01417, i64 4
  br label %bb.b

._crit_edge18:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.01417, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge18, label %.preheader

bb.b:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit ] ; 3 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !380
  %i.l = add nsw i32 %i.k, %.015                  ; 2 uses
  %i.m = load i32, ptr %.01417, align 4, !tbaa !379
  %i.n = add nsw i32 %i.m, %.015                  ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !392  ; 4 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !1846, !nonnull !137, !align !195
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !386  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(94) %i.q, i32 noundef %i.n), !inline_history !1844
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !114
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.o, i32 noundef %i.x, i1 noundef zeroext true)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !116  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !122
  %i.ab = and i8 %i.aa, 2
  %.not.i3.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i3.i.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, label %bb.d, !prof !123

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !124
  %i.ae = zext i32 %i.l to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !125
  %i.ai = and i64 %i.ae, 7
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !125
  %i.al = and i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.ag, align 1, !tbaa !125
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit

bb.e:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !1847, !nonnull !137, !align !195
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !388 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !1846, !nonnull !137, !align !195
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !386 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !133
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(94) %i.ap, i32 noundef %i.n), !inline_history !1844
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(208) %i.an, i32 noundef %i.at), !inline_history !1844 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !125
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.o, i32 noundef %i.l, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, %bb.e
  %i.ay = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.az = load i32, ptr %i.f, align 4, !tbaa !381
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !1845
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #35 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair.162", align 8    ; 4 uses
  %5 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %6 = alloca %"class.std::optional.33", align 1  ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.428", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aj
  %i.l = icmp eq ptr %.sroa.0106.3, %.sroa.12.1
  br i1 %i.l, label %.loopexit, label %bb.ak

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.0106.0213 = phi ptr [ null, %.lr.ph ], [ %.sroa.0106.3, %bb.aj ] ; 13 uses
  %.sroa.12.0212 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %bb.aj ] ; 9 uses
  %.sroa.19.0211 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.3, %bb.aj ] ; 8 uses
  %.sroa.0103.0210 = phi ptr [ %i.d, %.lr.ph ], [ %i.ee, %bb.aj ] ; 10 uses
  %i.m = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !116 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef %1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !116 ; 3 uses
  %i.s = load i64, ptr %i.i, align 8, !tbaa !311  ; 2 uses
  %i.t = icmp ult i64 %i.s, 256
  br i1 %i.t, label %.loopexit131, label %bb.e, !prof !141

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.u) ; 2 uses
  %i.w = lshr i64 %i.v, 24
  %i.x = or i64 %i.w, 128                         ; 3 uses
  %i.y = add i64 %i.v, %i.u                       ; 2 uses
  %i.z = shl nuw nsw i64 %i.x, 1
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = trunc nuw i64 %i.x to i8
  %i.ac = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ae = and i64 %i.s, 255                       ; 2 uses
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !312
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.023.i39.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.ba, %bb.i ]
  %.025.i38.i.i.i = phi i64 [ %i.y, %bb.e ], [ %i.bb, %bb.i ] ; 2 uses
  %i.ah = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i.i, i64 range(i64 0, 256) %i.ae)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.am = icmp eq <16 x i8> %i.al, %i.ad
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = and i16 %i.an, 16383
  %i.ap = zext nneg i16 %i.ao to i32
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ar = extractelement <16 x i8> %i.al, i64 15
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.sroa.012.0.i.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.au, %bb.g ] ; 4 uses
  %.not.i.i.i = icmp eq i32 %.sroa.012.0.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.as = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i.i, i1 true)
  %i.at = add nsw i32 %.sroa.012.0.i.i.i, -1
  %i.au = and i32 %i.at, %.sroa.012.0.i.i.i
  %i.av = zext nneg i32 %i.as to i64              ; 3 uses
  call void @llvm.assume(i1 %i.aq)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !134
  %i.ay = icmp eq ptr %i.r, %i.ax
  br i1 %i.ay, label %bb.j, label %.critedge.i.i.i.i, !prof !123, !llvm.loop !12

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.az = icmp eq i8 %i.ar, 0
  br i1 %i.az, label %.loopexit131, label %bb.i, !prof !123

bb.i:                                             ; preds = %bb.h
  %i.ba = add i64 %.023.i39.i.i.i, -1             ; 2 uses
  %i.bb = add i64 %i.aa, %.025.i38.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i, label %.loopexit131, label %bb.f, !llvm.loop !13

bb.j:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr nonnull %i.bc, i64 %i.av, i64 %i.y, i64 %i.x)
          to label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit unwind label %bb.o

.loopexit131:                                     ; preds = %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.r, ptr %i.a, align 8, !tbaa !134
  %i.bd = invoke noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %.loopexit131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !1864
  store i64 %i.bd, ptr %7, align 16, !tbaa !125, !alias.scope !1865, !noalias !1864
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.be, align 16, !tbaa !125, !alias.scope !1865, !noalias !1864
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.140, i64 67, i64 20, ptr nonnull %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !1864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.140) #38
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.o:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.p:                                             ; preds = %.loopexit131
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn52 = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !125
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn54 = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn52, %bb.r ], [ %i.bj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body74

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  %i.bp = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !116, !noalias !1866, !nonnull !137, !noundef !137
  store ptr null, ptr %9, align 8, !tbaa !116, !alias.scope !1866
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !127, !noalias !1866
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !1866
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !1866
  store i8 0, ptr %i.j, align 1, !tbaa !131, !noalias !1866
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.br, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i unwind label %bb.t, !noalias !1866

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.bs = load ptr, ptr %5, align 8, !tbaa !116, !noalias !1866 ; 4 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !116, !alias.scope !1866
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.pre15.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !127, !noalias !1866
  %.pre.i = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !116, !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !1866
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !133, !noalias !1866
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1866
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef %.pre.i, i64 noundef %.pre15.i)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge unwind label %bb.u, !noalias !1866

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %.pre = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !116 ; 3 uses
  %.pre270 = load ptr, ptr %9, align 8, !tbaa !116 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !124 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre270, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !124 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !127 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0212, %.sroa.19.0211
  br i1 %.not.i.i, label %bb.v, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread

bb.t:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !1866
  br label %.body

bb.u:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  store ptr %i.bx, ptr %.sroa.12.0212, align 8, !tbaa !202
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !202
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx, align 8, !tbaa !113
  %.sroa.12.2299 = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 24
  store ptr null, ptr %9, align 8, !tbaa !116
  store ptr %.pre270, ptr %.sroa.0103.0210, align 8, !tbaa !116
  br label %bb.z

bb.v:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  %i.ce = ptrtoint ptr %.sroa.12.0212 to i64
  %i.cf = ptrtoint ptr %.sroa.0106.0213 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.w, label %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #38
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ci = sdiv exact i64 %i.cg, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 384307168202282325)
  %i.cm = select i1 %i.ck, i64 384307168202282325, i64 %i.cl ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.cn = mul nuw nsw i64 %i.cm, 24
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #41
          to label %.noexc61 unwind label %.loopexit133 ; 5 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 4 uses
  store ptr %i.bx, ptr %i.cp, align 8, !tbaa !202
  %.sroa.6.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx93, align 8, !tbaa !202
  %.sroa.795.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !113
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.x, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc61
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %.sroa.0106.0213, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.x, %.noexc61
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0106.0213, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0213, i64 noundef %i.cg) #40
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE:bb.a
_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.ao
  %i.fe = lshr i64 %indvars.iv, 6
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !113
  %i.fh = and i64 %indvars.iv, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fg, %i.fi
  %.not.i.i72 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i72, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %bb.ao, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %indvars.iv ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !1869 ; 3 uses
  %i.fm = icmp ult i32 %i.fl, 13
  br i1 %i.fm, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 4 uses
  br i1 %i.ey, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ap, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ez, %bb.ap ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.0106.3, %bb.ap ] ; 2 uses
  %i.fq = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.015.i.i, i64 %i.fq ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !576
  %i.ft = icmp ult ptr %i.fp, %i.fs               ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fv = xor i64 %i.fq, -1
  %i.fw = add nsw i64 %.016.i.i, %i.fv
  %.sroa.011.1.i.i = select i1 %i.ft, ptr %.sroa.011.015.i.i, ptr %i.fu ; 5 uses
  %.1.i.i = select i1 %i.ft, i64 %i.fq, i64 %i.fw ; 2 uses
  %i.fx = icmp sgt i64 %.1.i.i, 0
  br i1 %i.fx, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit, !llvm.loop !1860

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.fy = icmp eq ptr %.sroa.011.1.i.i, %.sroa.0106.3
  br i1 %i.fy, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit
  %i.fz = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !576 ; 3 uses
  %.not = icmp ult ptr %i.fp, %i.ga
  br i1 %.not, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !1870
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gc
  %i.ge = icmp ult ptr %i.fp, %i.gd
  br i1 %i.ge, label %bb.as, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.gf = icmp slt i32 %i.fl, 0
  br i1 %i.gf, label %bb.at, label %bb.aw, !prof !141

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !1871
  store i32 %i.fl, ptr %2, align 16, !tbaa !125, !noalias !1871
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.gg, align 16, !tbaa !125, !noalias !1871
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.12, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc73 unwind label %bb.ax

.noexc73:                                         ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !1871
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.12) #38
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc73
  unreachable

bb.av:                                            ; preds = %.noexc73
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %3, align 8, !tbaa !144   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.av
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !125
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body74

bb.aw:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1872
  %i.gp = ptrtoint ptr %i.fp to i64
  %i.gq = ptrtoint ptr %i.ga to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 1
  store i32 %i.gt, ptr %i.fn, align 4, !tbaa !125
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.gs, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8, !tbaa !125
  %.pre273 = load i32, ptr %i.eu, align 8, !tbaa !114
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

bb.ax:                                            ; preds = %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body74

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread: ; preds = %bb.ap, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit, %bb.aw, %bb.ar, %bb.aq, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.gv = phi i32 [ %i.fc, %bb.ap ], [ %i.fc, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit ], [ %.pre273, %bb.aw ], [ %i.fc, %bb.ar ], [ %i.fc, %bb.aq ], [ %i.fc, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread ], [ %i.fc, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next, %i.gw
  br i1 %i.gx, label %bb.ao, label %.loopexit, !llvm.loop !1863

.loopexit:                                        ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, %._crit_edge
  %.not.i.i.i76 = icmp eq ptr %.sroa.0106.3, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  %i.gy = ptrtoint ptr %.sroa.19.3 to i64
  %i.gz = ptrtoint ptr %.sroa.0106.3 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.3, i64 noundef %i.ha) #40
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit: ; preds = %bb.a, %.loopexit, %bb.ay
  ret void

.body74:                                          ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.n, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %bb.an, %bb.am
  %.sroa.19.5 = phi ptr [ %.sroa.19.0211, %bb.n ], [ %.sroa.19.3, %bb.an ], [ %.sroa.19.3, %bb.am ], [ %.sroa.19.0211, %bb.o ], [ %.sroa.19.2, %.body ], [ %.sroa.19.0211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.19.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.19.3, %bb.ax ]
  %.sroa.0106.5 = phi ptr [ %.sroa.0106.0213, %bb.n ], [ %.sroa.0106.3, %bb.an ], [ %.sroa.0106.3, %bb.am ], [ %.sroa.0106.0213, %bb.o ], [ %.sroa.0106.2, %.body ], [ %.sroa.0106.0213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0106.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0106.3, %bb.ax ] ; 3 uses
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %i.fb, %bb.an ], [ %i.fa, %bb.am ], [ %i.bg, %bb.o ], [ %.pn49.pn, %.body ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gu, %bb.ax ]
  %.not.i.i.i77 = icmp eq ptr %.sroa.0106.5, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78, label %.thread

.thread:                                          ; preds = %.body74
  %i.hb = ptrtoint ptr %.sroa.19.5 to i64
  %i.hc = ptrtoint ptr %.sroa.0106.5 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.5, i64 noundef %i.hd) #40
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78: ; preds = %.body74, %.thread
  resume { ptr, i32 } %.pn54.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !311  ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.b, !prof !141

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !134    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.e) ; 2 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = or i64 %i.g, 128                         ; 3 uses
  %i.i = add i64 %i.f, %i.e                       ; 2 uses
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  %i.l = trunc nuw i64 %i.h to i8
  %i.m = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.o = and i64 %i.b, 255                        ; 2 uses
  %i.p = shl nuw i64 1, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !312
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.023.i39.i.i = phi i64 [ %i.p, %bb.b ], [ %i.ak, %bb.f ]
  %.025.i38.i.i = phi i64 [ %i.i, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i, i64 range(i64 0, 256) %i.o)
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 0, i32 3, i32 1)
  %i.v = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.w = icmp eq <16 x i8> %i.v, %i.n
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ab = extractelement <16 x i8> %i.v, i64 15
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.d, %bb.c
  %.sroa.012.0.i.i = phi i32 [ %i.z, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %.not.i.i = icmp eq i32 %.sroa.012.0.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.ac = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i, i1 true)
  %i.ad = add nsw i32 %.sroa.012.0.i.i, -1
  %i.ae = and i32 %i.ad, %.sroa.012.0.i.i
  %i.af = zext nneg i32 %i.ac to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.aa)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !134
  %i.ai = icmp eq ptr %i.d, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i.i.i, !prof !123, !llvm.loop !12

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.aj = icmp eq i8 %i.ab, 0
  br i1 %i.aj, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.f, !prof !123

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.023.i39.i.i, -1               ; 2 uses
  %i.al = add i64 %i.k, %.025.i38.i.i
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.c, !llvm.loop !13

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.am, i64 %i.af, i64 %i.i, i64 %i.h)
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit: ; preds = %bb.e, %bb.f, %bb.a, %bb.g
  %.1.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !311
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !311
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i64 %i.d, 1
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !318
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, 256
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.q, %bb.d ], [ %2, %bb.c ]
  %i.p = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]
  %i.q = add i64 %i.o, -1                         ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !125
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, !prof !141, !llvm.loop !1873

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.n, %.critedge.i.i.i.preheader ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 3 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16, !tbaa !125
  %i.w = icmp slt <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.y, 0
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !141, !llvm.loop !1874

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ab = xor i32 %i.aa, 31
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -112
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.af, %bb.e ], [ %i.r, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %i.ag = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.ag, 1
  %i.aj = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !113
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !125
  %.not.i.i7 = icmp sgt i8 %i.ao, -1
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.2) #43
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !125
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !317
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load ptr, ptr %0, align 8, !tbaa !312   ; 4 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !311
  %i.av = and i64 %i.au, 255                      ; 2 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %3, i64 range(i64 0, 256) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.aw
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.az = phi i64 [ %i.aw, %bb.g ], [ %i.bk, %bb.i ]
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !317
  %i.bd = add i8 %i.bc, %.010.lcssa.i
  store i8 %i.bd, ptr %i.bb, align 2, !tbaa !317
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.be = phi i64 [ %i.bk, %bb.i ], [ %i.aw, %bb.g ]
  %.01126.i = phi i64 [ %i.bj, %bb.i ], [ %3, %bb.g ]
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !316 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bh, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bi = add i8 %i.bh, -1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !316
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bj = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %i.av) ; 3 uses
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.bk
  %i.bm = icmp eq ptr %i.bl, %i.am
  br i1 %i.bm, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %.sroa.4.i.i = alloca { ptr, i64 }, align 8     ; 4 uses
  %3 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %4 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %5 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %6 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %7 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %8 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %9 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %.sroa.4.i.i.i = alloca { ptr, i64 }, align 8   ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEET_SM_SM_T0_.exit
end_hunk_7
begin_hunk_8_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i22)
  %.sroa.5.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.pn17.i27, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i28, i64 16, i1 false), !tbaa.struct !1886
  %i.ai = load ptr, ptr %.pn17.i27, align 8, !tbaa !576
  %i.aj = icmp ult ptr %i.y, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i29

.lr.ph.i.i33:                                     ; preds = %bb.m, %.lr.ph.i.i33
  %.sroa.0.011.i.i34 = phi ptr [ %.sroa.0.0.i.i36, %.lr.ph.i.i33 ], [ %.pn17.i27, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i35 = phi ptr [ %.sroa.0.011.i.i34, %.lr.ph.i.i33 ], [ %.sroa.0.018.i26, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i35, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i34, i64 24, i1 false), !tbaa.struct !577
  %.sroa.0.0.i.i36 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i34, i64 -24 ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0.0.i.i36, align 8, !tbaa !576
  %i.al = icmp ult ptr %i.y, %i.ak
  br i1 %i.al, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i29, !llvm.loop !1883

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i29: ; preds = %.lr.ph.i.i33, %bb.m
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.0.018.i26, %bb.m ], [ %.sroa.0.011.i.i34, %.lr.ph.i.i33 ] ; 2 uses
  store ptr %i.y, ptr %.sroa.06.0.lcssa.i.i30, align 8, !tbaa !202
  %.sroa.5.0..sroa_idx5.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i31, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22, i64 16, i1 false), !tbaa.struct !1886
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i22)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i37
  %.sroa.0.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i26, i64 24 ; 2 uses
  %i.am = icmp eq ptr %.sroa.0.0.i32, %1
  br i1 %i.am, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit, label %.lr.ph.i25, !llvm.loop !1884

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSJ_St6vectorISJ_SaISJ_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats.22", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !262
  %i.b = load ptr, ptr %3, align 8, !tbaa !116
  store ptr %i.b, ptr %7, align 8, !tbaa !116
  store ptr null, ptr %3, align 8, !tbaa !116
  %i.c = load i32, ptr %4, align 4, !tbaa !167
  %i.d = load ptr, ptr %5, align 8, !tbaa !116
  store ptr %i.d, ptr %8, align 8, !tbaa !116
  store ptr null, ptr %5, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.e, align 8, !tbaa !269
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.f, align 8, !tbaa !269
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.g = load ptr, ptr %8, align 8, !tbaa !116    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !0

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !133
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !116    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !0

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !140
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !133
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  resume { ptr, i32 } %i.ai
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.434) align 8 %2, ptr noundef byval(%class.anon.435) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !395, !range !136, !noundef !137
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !396
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !113
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !1891
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !1892, !nonnull !137, !align !195
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !164
  %i.aj = or disjoint i64 %i.ah, %i.ad            ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !212
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !213
  %i.an = add nsw i64 %.011.i, -1
  %i.ao = and i64 %i.an, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1887

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sdiv i32 %0, 64                         ; 2 uses
  %i.aq = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i35, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = load i8, ptr %2, align 8, !tbaa !395, !range !136, !noundef !137
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !396
  %i.az = sext i32 %i.ap to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !113
  %i.bc = xor i8 %i.aw, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, %i.av                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = shl nsw i32 %i.ap, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !1891
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !1892, !nonnull !137, !align !195
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bg, %.preheader.i37 ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !164
  %i.bq = or disjoint i64 %i.bo, %i.bk            ; 2 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !212
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !213
  %i.bu = add i64 %.011.i38, -1
  %i.bv = and i64 %i.bu, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bv, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1887

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bw = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bw, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bx = load i8, ptr %3, align 8, !tbaa !398, !range !136, !noundef !137
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !399
  %i.ca = xor i8 %i.bx, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216 ; 2 uses
  %i.ch = load ptr, ptr %i.cd, align 8, !nonnull !137, !align !195 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ci = phi i32 [ %i.bw, %.lr.ph ], [ %i.dj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cj = sdiv i32 %.051, 64                      ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !113
  %i.cn = xor i64 %i.cm, %i.cc                    ; 2 uses
  switch i64 %i.cn, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.co = shl nsw i32 %i.cj, 6
  %i.cp = sext i32 %i.co to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cr = add nuw i32 %i.cq, 64
  %i.cs = sext i32 %i.cr to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ct = sext i32 %i.cq to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ct, %.lr.ph21.i ], [ %i.cz, %bb.j ] ; 2 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !164
  %sext.i = shl i64 %.020.i, 32
  %i.cv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !212
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !213
  %i.cz = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cs
  br i1 %i.da, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1888

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.di, %bb.k ] ; 3 uses
  %i.db = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dc = load ptr, ptr %i.cg, align 8, !tbaa !164
  %i.dd = or disjoint i64 %i.db, %i.cp            ; 2 uses
  %i.de = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !212
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !213
  %i.dh = add i64 %.01519.i, -1
  %i.di = and i64 %i.dh, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.di, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1889

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dj = add nsw i32 %i.ci, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dj, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1890

bb.l:                                             ; preds = %._crit_edge
  %i.dk = ashr i32 %1, 6
  %i.dl = and i32 %1, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i42 = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i42, -1
  %i.do = load i8, ptr %2, align 8, !tbaa !395, !range !136, !noundef !137
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !396
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !113
  %i.du = xor i8 %i.do, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = sext i32 %i.d to i64
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !1891
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 216
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !1892, !nonnull !137, !align !195
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dy, %.preheader.i44 ], [ %i.em, %bb.m ] ; 3 uses
  %i.ef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !164
  %i.eh = or disjoint i64 %i.ef, %i.eb            ; 2 uses
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !212
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !213
  %i.el = add nsw i64 %.011.i45, -1
  %i.em = and i64 %i.el, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.em, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1887

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERKiRSJ_St6vectorISJ_SaISJ_EERKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESX_RKSU_IbESX_SX_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(2) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %14 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !262
  %i.b = load ptr, ptr %3, align 8, !tbaa !116
  store ptr %i.b, ptr %13, align 8, !tbaa !116
  store ptr null, ptr %3, align 8, !tbaa !116
  %i.c = load i32, ptr %4, align 4, !tbaa !167
  %i.d = load ptr, ptr %5, align 8, !tbaa !116    ; 3 uses
  store ptr %i.d, ptr %14, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %.sroa.04.0.copyload = load i64, ptr %8, align 4
  %.sroa.03.0.copyload = load i64, ptr %9, align 4
  %.sroa.02.0.copyload = load i16, ptr %10, align 1
  %.sroa.01.0.copyload = load i64, ptr %11, align 4
  %.sroa.0.0.copyload = load i64, ptr %12, align 4
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %13, i32 noundef %i.c, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 %.sroa.04.0.copyload, i64 %.sroa.03.0.copyload, i16 %.sroa.02.0.copyload, i64 %.sroa.01.0.copyload, i64 %.sroa.0.0.copyload)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.g = load ptr, ptr %14, align 8, !tbaa !116   ; 7 uses
  %.not.i18 = icmp eq ptr %i.g, null
  br i1 %.not.i18, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.e, !inline_history !0

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !133
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.c, %bb.d, %.noexc.i
  %i.u = load ptr, ptr %13, align 8, !tbaa !116   ; 7 uses
  %.not.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i19, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit24, label %bb.f

bb.f:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i20, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit24

.sink.split.i.i20:                                ; preds = %bb.f
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i21 unwind label %bb.g, !inline_history !0

.noexc.i21:                                       ; preds = %.sink.split.i.i20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !140
  %.not.i.i22 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !133
  %..i.i23 = select i1 %.not.i.i22, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i23
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit24 unwind label %bb.g, !inline_history !0

bb.g:                                             ; preds = %.noexc.i21, %.sink.split.i.i20
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit24: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %.noexc.i21
  ret void

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #18
  resume { ptr, i32 } %i.ai
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #22

attributes #0 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nounwind }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_8
