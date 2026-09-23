Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AttributorAttributes?download=true
inline.NumInlined: 25342
inline.NumDeleted: 9928
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN12_GLOBAL__N_133AAPotentialConstantValuesFloating10updateImplERN4llvm10AttributorE:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !421
  %i.ay = icmp eq i8 %i.ap, 14
  br i1 %i.ay, label %_ZN4llvm3isaIJNS_8CallBaseEENS_5ValueEEEbRKT0_.exit.i.i.i, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !421
  br label %bb.j

_ZN4llvm3isaIJNS_8CallBaseEENS_5ValueEEEbRKT0_.exit.i.i.i: ; preds = %bb.h
  %i.ba = ptrtoint ptr %i.ae to i64
  %i.bb = or disjoint i64 %i.ba, 2
  br label %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = ptrtoint ptr %i.ae to i64
  br label %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i.i

_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i.i: ; preds = %bb.j, %_ZN4llvm3isaIJNS_8CallBaseEENS_5ValueEEEbRKT0_.exit.i.i.i
  %.sink.i.i.i = phi i64 [ %i.bb, %_ZN4llvm3isaIJNS_8CallBaseEENS_5ValueEEEbRKT0_.exit.i.i.i ], [ %i.bc, %bb.j ]
  store i64 %.sink.i.i.i, ptr %37, align 8, !tbaa !161
  call void @_ZN4llvm10IRPosition6verifyEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39, !inline_history !3391
  %.fca.0.load.pre.i.i = load i64, ptr %37, align 8
  %.fca.1.gep.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  %.fca.1.load.pre.i.i = load ptr, ptr %.fca.1.gep.phi.trans.insert.i.i, align 8
  br label %_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit.i

_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit.i: ; preds = %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i.i, %bb.g, %bb.d
  %.fca.1.load.i.i = phi ptr [ %.fca.1.load.i15.i.i, %bb.g ], [ %.fca.1.load.i.i.i, %bb.d ], [ %.fca.1.load.pre.i.i, %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i.i ]
  %.fca.0.load.i.i = phi i64 [ %.fca.0.load.i13.i.i, %bb.g ], [ %.fca.0.load.i.i.i, %bb.d ], [ %.fca.0.load.pre.i.i, %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  store i64 %.fca.0.load.i.i, ptr %41, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %.fca.1.load.i.i, ptr %i.bd, align 8
  %i.be = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_129AAPotentialConstantValuesImpl25fillSetWithConstantValuesERN4llvm10AttributorERKNS1_10IRPositionERNS1_14SmallSetVectorINS1_5APIntELj8EEERbb(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(3312) %1, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(168) %39, ptr noundef nonnull align 1 dereferenceable(1) %i.g, i1 noundef zeroext false), !inline_history !3391
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #39
  br i1 %i.be, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.bf = load i8, ptr %i.ag, align 8, !tbaa !209 ; 4 uses
  %i.bg = icmp eq i8 %i.bf, 23
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  %i.bh = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !421
  %i.bi = ptrtoint ptr %i.ag to i64
  store i64 %i.bi, ptr %33, align 8, !tbaa !161
  call void @_ZN4llvm10IRPosition6verifyEv(ptr noundef nonnull align 8 dereferenceable(16) %33) #39, !inline_history !3391
  %.fca.0.load.i.i137.i = load i64, ptr %33, align 8
  %.fca.1.load.i.i138.i = load ptr, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  br label %_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit139.i

bb.m:                                             ; preds = %bb.k
  %i.bj = icmp ugt i8 %i.bf, 29
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  switch i8 %i.bf, label %bb.q [
    i8 88, label %bb.o
    i8 36, label %bb.o
    i8 42, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  %i.bk = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.bl = ptrtoint ptr %i.ag to i64
  %i.bm = or disjoint i64 %i.bl, 1
  store i64 0, ptr %i.bk, align 8
  store i64 %i.bm, ptr %32, align 8, !tbaa !161
  call void @_ZN4llvm10IRPosition6verifyEv(ptr noundef nonnull align 8 dereferenceable(16) %32) #39, !inline_history !3391
  %.fca.0.load.i13.i135.i = load i64, ptr %32, align 8
  %.fca.1.load.i15.i136.i = load ptr, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  br label %_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit139.i

bb.p:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !421
  %i.bo = icmp eq i8 %i.bf, 14
  br i1 %i.bo, label %_ZN4llvm3isaIJNS_8CallBaseEENS_5ValueEEEbRKT0_.exit.i.i134.i, label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr null, ptr %i.bp, align 8, !tbaa !421
  br label %bb.r

_ZN4llvm3isaIJNS_8CallBaseEENS_5ValueEEEbRKT0_.exit.i.i134.i: ; preds = %bb.p
  %i.bq = ptrtoint ptr %i.ag to i64
  %i.br = or disjoint i64 %i.bq, 2
  br label %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i125.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bs = ptrtoint ptr %i.ag to i64
  br label %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i125.i

_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i125.i: ; preds = %bb.r, %_ZN4llvm3isaIJNS_8CallBaseEENS_5ValueEEEbRKT0_.exit.i.i134.i
  %.sink.i.i126.i = phi i64 [ %i.br, %_ZN4llvm3isaIJNS_8CallBaseEENS_5ValueEEEbRKT0_.exit.i.i134.i ], [ %i.bs, %bb.r ]
  store i64 %.sink.i.i126.i, ptr %34, align 8, !tbaa !161
  call void @_ZN4llvm10IRPosition6verifyEv(ptr noundef nonnull align 8 dereferenceable(16) %34) #39, !inline_history !3391
  %.fca.0.load.pre.i127.i = load i64, ptr %34, align 8
  %.fca.1.gep.phi.trans.insert.i128.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.fca.1.load.pre.i129.i = load ptr, ptr %.fca.1.gep.phi.trans.insert.i128.i, align 8
  br label %_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit139.i

_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit139.i: ; preds = %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i125.i, %bb.o, %bb.l
  %.fca.1.load.i130.i = phi ptr [ %.fca.1.load.i15.i136.i, %bb.o ], [ %.fca.1.load.i.i138.i, %bb.l ], [ %.fca.1.load.pre.i129.i, %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i125.i ]
  %.fca.0.load.i131.i = phi i64 [ %.fca.0.load.i13.i135.i, %bb.o ], [ %.fca.0.load.i.i137.i, %bb.l ], [ %.fca.0.load.pre.i127.i, %_ZN4llvm10IRPositionC2ERNS_5ValueENS0_4KindEPKNS_8CallBaseE.exit.i125.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  store i64 %.fca.0.load.i131.i, ptr %42, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.fca.1.load.i130.i, ptr %i.bt, align 8
  %i.bu = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_129AAPotentialConstantValuesImpl25fillSetWithConstantValuesERN4llvm10AttributorERKNS1_10IRPositionERNS1_14SmallSetVectorINS1_5APIntELj8EEERbb(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(3312) %1, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(168) %40, ptr noundef nonnull align 1 dereferenceable(1) %i.h, i1 noundef zeroext false), !inline_history !3391
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #39
  br i1 %i.bu, label %bb.t, label %bb.s

.critedge.i:                                      ; preds = %_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #39
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i, %_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit139.i
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(193) %i.l) #39, !inline_history !3391
  br label %bb.bb

bb.t:                                             ; preds = %_ZN4llvm10IRPosition5valueERKNS_5ValueEPKNS_8CallBaseE.exit139.i
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !408
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8            ; 2 uses
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !906
  %i.cf = icmp ult i32 %i.cc, 16640
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %43, align 8, !tbaa !161
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

bb.v:                                             ; preds = %bb.t
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %43, i64 noundef 0, i1 noundef zeroext false) #39, !inline_history !3391
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.v, %bb.u
  %i.cg = load i8, ptr %i.g, align 1, !tbaa !387, !range !141, !noundef !142
  %i.ch = trunc nuw i8 %i.cg to i1                ; 2 uses
  %i.ci = load i8, ptr %i.h, align 1, !range !141
  %i.cj = trunc nuw i8 %i.ci to i1                ; 2 uses
  %or.cond.i = select i1 %i.ch, i1 %i.cj, i1 false
  br i1 %or.cond.i, label %.thread178.i, label %bb.w

.thread178.i:                                     ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.ck = load i32, ptr %i.w, align 8, !tbaa !176
  %.not.i.i.i.i.i140.i = icmp eq i32 %i.ck, 0
  %i.cl = zext i1 %.not.i.i.i.i.i140.i to i8
  store i8 %i.cl, ptr %i.ab, align 8, !tbaa !533
  br label %.thread.i

bb.w:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  br i1 %i.ch, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %i.al, align 8, !tbaa !132 ; 2 uses
  %i.cn = load i32, ptr %i.an, align 8, !tbaa !176 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %.idx221.i = shl nuw nsw i64 %i.co, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx221.i
  %.not119211.i = icmp eq i32 %i.cn, 0
  br i1 %.not119211.i, label %.thread.i, label %.lr.ph216.i

.lr.ph216.i:                                      ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %.086214.i, i64 16 ; 2 uses
  %.not119.i = icmp eq ptr %i.cr, %i.cp
  br i1 %.not119.i, label %.thread149.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph216.i
  %.086214.i = phi ptr [ %i.cm, %.lr.ph216.i ], [ %i.cr, %bb.y ] ; 2 uses
  %.087213.i = phi i8 [ 0, %.lr.ph216.i ], [ %i.cz, %bb.y ]
  %.088212.i = phi i8 [ 0, %.lr.ph216.i ], [ %i.cw, %bb.y ]
  %.val124.i = load i16, ptr %i.cq, align 2, !tbaa !223
  %i.cs = and i16 %.val124.i, 63
  %i.ct = zext nneg i16 %i.cs to i32
  %i.cu = call noundef zeroext i1 @_ZN4llvm8ICmpInst7compareERKNS_5APIntES3_NS_7CmpInst9PredicateE(ptr noundef nonnull align 8 dereferenceable(12) %43, ptr noundef nonnull align 8 dereferenceable(12) %.086214.i, i32 noundef %i.ct) #39, !inline_history !3391 ; 2 uses
  %i.cv = zext i1 %i.cu to i8
  %i.cw = or i8 %.088212.i, %i.cv                 ; 3 uses
  %46 = icmp eq i8 %i.cw, 0
  %i.cx = xor i1 %i.cu, true
  %i.cy = zext i1 %i.cx to i8
  %i.cz = or i8 %.087213.i, %i.cy                 ; 3 uses
  %47 = icmp eq i8 %i.cz, 0
  %.not122.i = or i1 %46, %47
  br i1 %.not122.i, label %bb.y, label %_ZNK4llvm20PotentialValuesStateINS_5APIntEEeqERKS2_.exit.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.da = load ptr, ptr %i.ah, align 8, !tbaa !132 ; 3 uses
  %i.db = load i32, ptr %i.aj, align 8, !tbaa !176 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %.idx220.i = shl nuw nsw i64 %i.dc, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx220.i ; 2 uses
  %.not115203.i = icmp eq i32 %i.db, 0            ; 2 uses
  br i1 %i.cj, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not115203.i, label %.thread.i, label %.lr.ph208.i

.lr.ph208.i:                                      ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %.085206.i, i64 16 ; 2 uses
  %.not115.i = icmp eq ptr %i.df, %i.dd
  br i1 %.not115.i, label %.thread149.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph208.i
  %.085206.i = phi ptr [ %i.da, %.lr.ph208.i ], [ %i.df, %bb.ac ] ; 2 uses
  %.2205.i = phi i8 [ 0, %.lr.ph208.i ], [ %i.dn, %bb.ac ]
  %.290204.i = phi i8 [ 0, %.lr.ph208.i ], [ %i.dk, %bb.ac ]
  %.val123.i = load i16, ptr %i.de, align 2, !tbaa !223
  %i.dg = and i16 %.val123.i, 63
  %i.dh = zext nneg i16 %i.dg to i32
  %i.di = call noundef zeroext i1 @_ZN4llvm8ICmpInst7compareERKNS_5APIntES3_NS_7CmpInst9PredicateE(ptr noundef nonnull align 8 dereferenceable(12) %.085206.i, ptr noundef nonnull align 8 dereferenceable(12) %43, i32 noundef %i.dh) #39, !inline_history !3391 ; 2 uses
  %i.dj = zext i1 %i.di to i8
  %i.dk = or i8 %.290204.i, %i.dj                 ; 3 uses
  %48 = icmp eq i8 %i.dk, 0
  %i.dl = xor i1 %i.di, true
  %i.dm = zext i1 %i.dl to i8
  %i.dn = or i8 %.2205.i, %i.dm                   ; 3 uses
  %49 = icmp eq i8 %i.dn, 0
  %.not118.i = or i1 %48, %49
  br i1 %.not118.i, label %bb.ac, label %_ZNK4llvm20PotentialValuesStateINS_5APIntEEeqERKS2_.exit.sink.split.i

bb.ae:                                            ; preds = %bb.aa
  br i1 %.not115203.i, label %.thread.i, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.dp = load i32, ptr %i.an, align 8, !tbaa !176 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.thread.i, label %.lr.ph200.i.split

.lr.ph200.i.splitthread-pre-split:                ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.an, align 8, !tbaa !176
  br label %.lr.ph200.i.split

.lr.ph200.i.split:                                ; preds = %.lr.ph200.i, %.lr.ph200.i.splitthread-pre-split
  %i.dr = phi i32 [ %.pr, %.lr.ph200.i.splitthread-pre-split ], [ %i.dp, %.lr.ph200.i ] ; 2 uses
  %.084198.i = phi ptr [ %i.ef, %.lr.ph200.i.splitthread-pre-split ], [ %i.da, %.lr.ph200.i ] ; 2 uses
  %.4197.i = phi i8 [ %.5.lcssa.i, %.lr.ph200.i.splitthread-pre-split ], [ 0, %.lr.ph200.i ] ; 2 uses
  %.492196.i = phi i8 [ %.593.lcssa.i, %.lr.ph200.i.splitthread-pre-split ], [ 0, %.lr.ph200.i ] ; 2 uses
  %i.ds = load ptr, ptr %i.al, align 8, !tbaa !132 ; 2 uses
  %i.dt = zext i32 %i.dr to i64
  %.idx219.i = shl nuw nsw i64 %i.dt, 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx219.i
  %.not113190.i = icmp eq i32 %i.dr, 0
  br i1 %.not113190.i, label %._crit_edge.i, label %.lr.ph.i

bb.af:                                            ; preds = %.lr.ph.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.0193.i, i64 16 ; 2 uses
  %.not113.i = icmp eq ptr %i.dv, %i.du
  br i1 %.not113.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph200.i.split, %bb.af
  %.0193.i = phi ptr [ %i.dv, %bb.af ], [ %i.ds, %.lr.ph200.i.split ] ; 2 uses
  %.5192.i = phi i8 [ %i.ed, %bb.af ], [ %.4197.i, %.lr.ph200.i.split ]
  %.593191.i = phi i8 [ %i.ea, %bb.af ], [ %.492196.i, %.lr.ph200.i.split ]
  %.val.i = load i16, ptr %i.do, align 2, !tbaa !223
  %i.dw = and i16 %.val.i, 63
  %i.dx = zext nneg i16 %i.dw to i32
  %i.dy = call noundef zeroext i1 @_ZN4llvm8ICmpInst7compareERKNS_5APIntES3_NS_7CmpInst9PredicateE(ptr noundef nonnull align 8 dereferenceable(12) %.084198.i, ptr noundef nonnull align 8 dereferenceable(12) %.0193.i, i32 noundef %i.dx) #39, !inline_history !3391 ; 2 uses
  %i.dz = zext i1 %i.dy to i8
  %i.ea = or i8 %.593191.i, %i.dz                 ; 3 uses
  %i.eb = xor i1 %i.dy, true
  %i.ec = zext i1 %i.eb to i8
  %i.ed = or i8 %.5192.i, %i.ec                   ; 3 uses
  %i.ee = and i8 %i.ea, %i.ed
  %.not114.i = icmp eq i8 %i.ee, 0
  br i1 %.not114.i, label %bb.af, label %_ZNK4llvm20PotentialValuesStateINS_5APIntEEeqERKS2_.exit.sink.split.i

._crit_edge.i:                                    ; preds = %bb.af, %.lr.ph200.i.split
  %.593.lcssa.i = phi i8 [ %.492196.i, %.lr.ph200.i.split ], [ %i.ea, %bb.af ] ; 2 uses
  %.5.lcssa.i = phi i8 [ %.4197.i, %.lr.ph200.i.split ], [ %i.ed, %bb.af ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.084198.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ef, %i.dd
  br i1 %.not.i, label %.thread149.i, label %.lr.ph200.i.splitthread-pre-split, !llvm.loop !3392

.thread149.i:                                     ; preds = %._crit_edge.i, %bb.ac, %bb.y
  %.896.i = phi i8 [ %i.cw, %bb.y ], [ %i.dk, %bb.ac ], [ %.593.lcssa.i, %._crit_edge.i ]
  %.8.i = phi i8 [ %i.cz, %bb.y ], [ %i.dn, %bb.ac ], [ %.5.lcssa.i, %._crit_edge.i ]
  %i.eg = trunc nuw i8 %.896.i to i1
  br i1 %i.eg, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %.thread149.i
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #39
  %i.eh = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  store i32 1, ptr %i.eh, align 8, !tbaa !906
  store i64 1, ptr %44, align 8, !tbaa !161
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(193) %i.l) #39, !inline_history !3393
  br i1 %i.el, label %bb.ah, label %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.em = call noundef zeroext i1 @_ZN4llvm9SetVectorINS_5APIntENS_11SmallVectorIS1_Lj8EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj8EE6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %44), !inline_history !3391 ; 0 uses
  %i.en = load i32, ptr %i.w, align 8, !tbaa !176 ; 2 uses
  %i.eo = load i32, ptr @_ZN4llvm20PotentialValuesStateINS_5APIntEE18MaxPotentialValuesE, align 4, !tbaa !164
  %.not.i.i.i.i = icmp ult i32 %i.en, %i.eo
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(193) %i.l) #39, !inline_history !3394 ; 0 uses
  br label %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.et = load i8, ptr %i.ab, align 8, !tbaa !533, !range !141, !noundef !142
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.en, 0
  %i.eu = icmp ne i8 %i.et, 0
  %i.ev = and i1 %.not.i.i.i.i.i.i.i, %i.eu
  %i.ew = zext i1 %i.ev to i8
  store i8 %i.ew, ptr %i.ab, align 8, !tbaa !533
  br label %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit.i

_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.ex = load i32, ptr %i.eh, align 8, !tbaa !906
  %i.ey = icmp ugt i32 %i.ex, 64
  br i1 %i.ey, label %bb.ak, label %_ZN4llvm5APIntD2Ev.exit.i

bb.ak:                                            ; preds = %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit.i
  %i.ez = load ptr, ptr %44, align 8, !tbaa !161  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.ez) #42, !inline_history !3391
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.al, %bb.ak, %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #39
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %.thread149.i
  %i.fb = trunc nuw i8 %.8.i to i1
  br i1 %i.fb, label %bb.an, label %.thread.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #39
  %i.fc = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store i32 1, ptr %i.fc, align 8, !tbaa !906
  store i64 0, ptr %45, align 8, !tbaa !161
  %i.fd = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(193) %i.l) #39, !inline_history !3393
  br i1 %i.fg, label %bb.ao, label %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit143.i

bb.ao:                                            ; preds = %bb.an
  %i.fh = call noundef zeroext i1 @_ZN4llvm9SetVectorINS_5APIntENS_11SmallVectorIS1_Lj8EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj8EE6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %45), !inline_history !3391 ; 0 uses
  %i.fi = load i32, ptr %i.w, align 8, !tbaa !176 ; 2 uses
  %i.fj = load i32, ptr @_ZN4llvm20PotentialValuesStateINS_5APIntEE18MaxPotentialValuesE, align 4, !tbaa !164
  %.not.i.i.i141.i.a = icmp ult i32 %i.fi, %i.fj
  br i1 %.not.i.i.i141.i.a, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call noundef i32 %i.fm(ptr noundef nonnull align 8 dereferenceable(193) %i.l) #39, !inline_history !3394 ; 0 uses
  br label %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit143.i

bb.aq:                                            ; preds = %bb.ao
  %i.fo = load i8, ptr %i.ab, align 8, !tbaa !533, !range !141, !noundef !142
  %.not.i.i.i.i.i.i142.i = icmp eq i32 %i.fi, 0
  %i.fp = icmp ne i8 %i.fo, 0
  %i.fq = and i1 %.not.i.i.i.i.i.i142.i, %i.fp
  %i.fr = zext i1 %i.fq to i8
  store i8 %i.fr, ptr %i.ab, align 8, !tbaa !533
  br label %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit143.i

_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit143.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %i.fs = load i32, ptr %i.fc, align 8, !tbaa !906
  %i.ft = icmp ugt i32 %i.fs, 64
  br i1 %i.ft, label %bb.ar, label %_ZN4llvm5APIntD2Ev.exit144.i

bb.ar:                                            ; preds = %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit143.i
  %i.fu = load ptr, ptr %45, align 8, !tbaa !161  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_ZN4llvm5APIntD2Ev.exit144.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.fu) #42, !inline_history !3391
  br label %_ZN4llvm5APIntD2Ev.exit144.i

_ZN4llvm5APIntD2Ev.exit144.i:                     ; preds = %bb.as, %bb.ar, %_ZN4llvm20PotentialValuesStateINS_5APIntEE12unionAssumedERKS1_.exit143.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #39
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph200.i, %_ZN4llvm5APIntD2Ev.exit144.i, %bb.am, %bb.ae, %bb.ab, %bb.x, %.thread178.i
  %i.fw = load ptr, ptr %38, align 8, !tbaa !134
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = call noundef zeroext i1 %i.fy(ptr noundef nonnull align 8 dereferenceable(193) %38) #39, !inline_history !3395
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef zeroext i1 %i.gc(ptr noundef nonnull align 8 dereferenceable(193) %i.l) #39, !inline_history !3395
  %i.ge = xor i1 %i.fz, %i.gd
  br i1 %i.ge, label %_ZNK4llvm20PotentialValuesStateINS_5APIntEEeqERKS2_.exit.i, label %bb.at

bb.at:                                            ; preds = %.thread.i
  %i.gf = load ptr, ptr %38, align 8, !tbaa !134
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call noundef zeroext i1 %i.gh(ptr noundef nonnull align 8 dereferenceable(193) %38) #39, !inline_history !3395
  br i1 %i.gi, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef zeroext i1 %i.gl(ptr noundef nonnull align 8 dereferenceable(193) %i.l) #39, !inline_history !3395
  br i1 %i.gm, label %bb.av, label %_ZNK4llvm20PotentialValuesStateINS_5APIntEEeqERKS2_.exit.i

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gn = load i8, ptr %i.aa, align 8, !tbaa !533, !range !141, !noundef !142
  %i.go = load i8, ptr %i.ab, align 8, !tbaa !533, !range !141, !noundef !142
  %.not.i.i = icmp eq i8 %i.gn, %i.go
  br i1 %.not.i.i, label %bb.aw, label %_ZNK4llvm20PotentialValuesStateINS_5APIntEEeqERKS2_.exit.i
end_hunk_0
