inline.NumInlined: 454
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_:bb.a
  %i.af = icmp eq i8 %i.ad, %i.ae
  %spec.select.idx.i = zext i1 %i.af to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i = phi ptr [ %.4.i, %bb.j ], [ %spec.select.i, %bb.k ]
  %i.ag = ptrtoint ptr %.5.i to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.c, %.thread63.i, %bb.l
  %.3.i = phi i64 [ %i.r, %.thread63.i ], [ %i.ai, %bb.l ], [ %i.j, %bb.c ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.3.i
  %.not = icmp eq ptr %i.aj, %3
  br i1 %.not, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.3.i ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  br i1 %i.am, label %bb.n, label %.loopexit.i22

bb.n:                                             ; preds = %bb.m
  %.val60.i37 = load i64, ptr %4, align 1, !tbaa !26 ; 2 uses
  %.val.i38 = load i64, ptr %i.ak, align 1, !tbaa !26 ; 2 uses
  %.not.i39 = icmp eq i64 %.val60.i37, %.val.i38
  br i1 %.not.i39, label %.preheader.i40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = xor i64 %.val.i38, %.val60.i37
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.an, i1 true)
  %i.ap = lshr i64 %i.ao, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49

.preheader.i40:                                   ; preds = %bb.n, %bb.p
  %.pn.i41 = phi ptr [ %.049.i44, %bb.p ], [ %4, %bb.n ]
  %.pn67.i42 = phi ptr [ %.045.i43, %bb.p ], [ %i.ak, %bb.n ]
  %.045.i43 = getelementptr inbounds nuw i8, ptr %.pn67.i42, i64 8 ; 5 uses
  %.049.i44 = getelementptr inbounds nuw i8, ptr %.pn.i41, i64 8 ; 3 uses
  %i.aq = icmp ult ptr %.045.i43, %i.al
  br i1 %i.aq, label %bb.p, label %.loopexit.i22

bb.p:                                             ; preds = %.preheader.i40
  %.049.val.i45 = load i64, ptr %.049.i44, align 1, !tbaa !26 ; 2 uses
  %.045.val.i46 = load i64, ptr %.045.i43, align 1, !tbaa !26 ; 2 uses
  %.not59.i47 = icmp eq i64 %.049.val.i45, %.045.val.i46
  br i1 %.not59.i47, label %.preheader.i40, label %.thread63.i48

.thread63.i48:                                    ; preds = %bb.p
  %i.ar = xor i64 %.045.val.i46, %.049.val.i45
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ar, i1 true)
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %.045.i43, i64 %i.at
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.ak to i64
  %i.ax = sub i64 %i.av, %i.aw
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49

.loopexit.i22:                                    ; preds = %.preheader.i40, %bb.m
  %.251.i23 = phi ptr [ %4, %bb.m ], [ %.049.i44, %.preheader.i40 ] ; 4 uses
  %.247.i24 = phi ptr [ %i.ak, %bb.m ], [ %.045.i43, %.preheader.i40 ] ; 5 uses
  %i.ay = getelementptr inbounds i8, ptr %2, i64 -3
  %i.az = icmp ult ptr %.247.i24, %i.ay
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i22
  %.251.val.i35 = load i32, ptr %.251.i23, align 1, !tbaa !3
  %.247.val.i36 = load i32, ptr %.247.i24, align 1, !tbaa !3
  %i.ba = icmp eq i32 %.251.val.i35, %.247.val.i36
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.247.i24, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.251.i23, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i22
  %.352.i25 = phi ptr [ %i.bc, %bb.r ], [ %.251.i23, %bb.q ], [ %.251.i23, %.loopexit.i22 ] ; 4 uses
  %.348.i26 = phi ptr [ %i.bb, %bb.r ], [ %.247.i24, %bb.q ], [ %.247.i24, %.loopexit.i22 ] ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %2, i64 -1
  %i.be = icmp ult ptr %.348.i26, %i.bd
  br i1 %i.be, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.352.val.i33 = load i16, ptr %.352.i25, align 1, !tbaa !35
  %.348.val.i34 = load i16, ptr %.348.i26, align 1, !tbaa !35
  %i.bf = icmp eq i16 %.352.val.i33, %.348.val.i34
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %.348.i26, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.352.i25, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i27 = phi ptr [ %i.bh, %bb.u ], [ %.352.i25, %bb.t ], [ %.352.i25, %bb.s ]
  %.4.i28 = phi ptr [ %i.bg, %bb.u ], [ %.348.i26, %bb.t ], [ %.348.i26, %bb.s ] ; 4 uses
  %i.bi = icmp ult ptr %.4.i28, %2
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = load i8, ptr %.453.i27, align 1, !tbaa !37
  %i.bk = load i8, ptr %.4.i28, align 1, !tbaa !37
  %i.bl = icmp eq i8 %i.bj, %i.bk
  %spec.select.idx.i31 = zext i1 %i.bl to i64
  %spec.select.i32 = getelementptr inbounds nuw i8, ptr %.4.i28, i64 %spec.select.idx.i31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i29 = phi ptr [ %.4.i28, %bb.v ], [ %spec.select.i32, %bb.w ]
  %i.bm = ptrtoint ptr %.5.i29 to i64
  %i.bn = ptrtoint ptr %i.ak to i64
  %i.bo = sub i64 %i.bm, %i.bn
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49:   ; preds = %bb.o, %.thread63.i48, %bb.x
  %.3.i30 = phi i64 [ %i.ax, %.thread63.i48 ], [ %i.bo, %bb.x ], [ %i.ap, %bb.o ]
  %i.bp = add i64 %.3.i30, %.3.i
  br label %bb.y

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49
  %.0 = phi i64 [ %i.bp, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49 ], [ %.3.i, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL45ZSTD_compressBlock_doubleFast_extDict_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmj(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4, 8) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 13 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 8 uses
  %i.n = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 5 uses
  %i.p = add i64 %4, %i.n
  %i.q = sub i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = load i32, ptr %i.a, align 8, !tbaa !31
  %i.t = getelementptr i8, ptr %0, i64 28
  %.val407 = load i32, ptr %i.t, align 4, !tbaa !135 ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 40
  %.val408 = load i32, ptr %i.u, align 8, !tbaa !33
  %i.v = shl nuw i32 1, %i.s                      ; 2 uses
  %i.w = sub i32 %i.r, %.val407
  %i.x = icmp ugt i32 %i.w, %i.v
  %i.y = sub i32 %i.r, %i.v
  %.not.i409 = icmp eq i32 %.val408, 0
  %i.z = select i1 %.not.i409, i1 %i.x, i1 false
  %i.aa = select i1 %i.z, i32 %i.y, i32 %.val407  ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 %i.aa) ; 7 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ae ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !136 ; 7 uses
  %i.ai = zext i32 %i.aa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae ; 5 uses
  %i.al = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %.not = icmp ult i32 %i.aa, %i.ac
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.ao = icmp sgt i64 %4, 8
  br i1 %i.ao, label %.lr.ph531, label %._crit_edge

.lr.ph531:                                        ; preds = %.preheader
  %i.ap = sub i32 32, %i.i                        ; 4 uses
  %i.aq = sub i32 64, %i.i
  %i.ar = zext nneg i32 %i.aq to i64              ; 12 uses
  %i.as = sub i32 64, %i.e
  %i.at = zext nneg i32 %i.as to i64              ; 5 uses
  %i.au = add i32 %i.ad, -1                       ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 14 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = tail call noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_doubleFastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %bb.bk

bb.c:                                             ; preds = %.lr.ph531, %.thread
  %.0306530 = phi ptr [ %3, %.lr.ph531 ], [ %.9, %.thread ] ; 21 uses
  %.0307529 = phi ptr [ %3, %.lr.ph531 ], [ %.4311, %.thread ] ; 29 uses
  %.0312528 = phi i32 [ %i.al, %.lr.ph531 ], [ %.5317, %.thread ] ; 9 uses
  %.0318527 = phi i32 [ %i.an, %.lr.ph531 ], [ %.5323, %.thread ] ; 3 uses
  switch i32 %5, label %.unreachabledefault [
    i32 7, label %bb.g
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 4, label %bb.d
  ]

.unreachabledefault:                              ; preds = %bb.c
  unreachable

default.unreachable:                              ; preds = %bb.ba, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  unreachable

bb.d:                                             ; preds = %bb.c
  %.0306.val370 = load i32, ptr %.0306530, align 1, !tbaa !3
  %i.bc = mul i32 %.0306.val370, -1640531535
  %i.bd = lshr i32 %i.bc, %i.ap
  %i.be = zext i32 %i.bd to i64
  %.0306.val391.pre = load i64, ptr %.0306530, align 1, !tbaa !26
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit352

bb.e:                                             ; preds = %bb.c
  %.0306.val378 = load i64, ptr %.0306530, align 1, !tbaa !26 ; 2 uses
  %i.bf = mul i64 %.0306.val378, -3523014627271114752
  %i.bg = lshr i64 %i.bf, %i.ar
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit352

bb.f:                                             ; preds = %bb.c
  %.0306.val382 = load i64, ptr %.0306530, align 1, !tbaa !26 ; 2 uses
  %i.bh = mul i64 %.0306.val382, -3523014627193847808
  %i.bi = lshr i64 %i.bh, %i.ar
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit352

bb.g:                                             ; preds = %bb.c
  %.0306.val386 = load i64, ptr %.0306530, align 1, !tbaa !26 ; 2 uses
  %i.bj = mul i64 %.0306.val386, -3523014627193167104
  %i.bk = lshr i64 %i.bj, %i.ar
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit352

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit352:    ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0306.val391 = phi i64 [ %.0306.val391.pre, %bb.d ], [ %.0306.val386, %bb.g ], [ %.0306.val378, %bb.e ], [ %.0306.val382, %bb.f ] ; 2 uses
  %.0.i351 = phi i64 [ %i.be, %bb.d ], [ %i.bk, %bb.g ], [ %i.bg, %bb.e ], [ %i.bi, %bb.f ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0.i351 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 4 uses
  %i.bn = icmp ult i32 %i.bm, %i.ad               ; 3 uses
  %i.bo = select i1 %i.bn, ptr %i.ah, ptr %i.m
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 4 uses
  %i.br = mul i64 %.0306.val391, -3523014627327384477
  %i.bs = lshr i64 %i.br, %i.at
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 4 uses
  %i.bv = icmp ult i32 %i.bu, %i.ad               ; 3 uses
  %i.bw = select i1 %i.bv, ptr %i.ah, ptr %i.m
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx ; 4 uses
  %i.bz = ptrtoint ptr %.0306530 to i64           ; 6 uses
  %i.ca = sub i64 %i.bz, %i.o
  %i.cb = trunc i64 %i.ca to i32                  ; 6 uses
  %i.cc = add i32 %i.cb, 1                        ; 4 uses
  %i.cd = sub i32 %i.cc, %.0312528                ; 3 uses
  %i.ce = icmp ult i32 %i.cd, %i.ad               ; 2 uses
  %i.cf = select i1 %i.ce, ptr %i.ah, ptr %i.m
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg ; 2 uses
  store i32 %i.cb, ptr %i.bt, align 4, !tbaa !3
  store i32 %i.cb, ptr %i.bl, align 4, !tbaa !3
  %i.ci = sub i32 %i.au, %i.cd
  %i.cj = icmp ugt i32 %i.ci, 2
  %i.ck = sub i32 %i.cc, %i.aa
  %i.cl = icmp ule i32 %.0312528, %i.ck
  %i.cm = and i1 %i.cl, %i.cj
  br i1 %i.cm, label %bb.h, label %bb.t

bb.h:                                             ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit352
  %.val369 = load i32, ptr %i.ch, align 1, !tbaa !3
  %i.cn = getelementptr inbounds nuw i8, ptr %.0306530, i64 1 ; 6 uses
  %.val368 = load i32, ptr %i.cn, align 1, !tbaa !3
  %i.co = icmp eq i32 %.val369, %.val368
  br i1 %i.co, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.cp = select i1 %i.ce, ptr %i.ak, ptr %i.j
  %i.cq = getelementptr inbounds nuw i8, ptr %.0306530, i64 5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cs = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.j, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.af) ; 2 uses
  %i.ct = add i64 %i.cs, 4                        ; 2 uses
  %i.cu = ptrtoint ptr %i.cn to i64
  %i.cv = ptrtoint ptr %.0307529 to i64           ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 7 uses
  %.not.i357 = icmp ugt ptr %i.cn, %i.av
  %i.cx = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i357, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0307.val = load <2 x i64>, ptr %.0307529, align 1, !tbaa !37
  store <2 x i64> %.0307.val, ptr %i.cx, align 1, !tbaa !37
  %i.cy = icmp ugt i64 %i.cw, 16
  %i.cz = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 4 uses
  br i1 %i.cy, label %bb.k, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread: ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw
  store ptr %i.da, ptr %i.aw, align 8, !tbaa !38
  %.pre545 = load ptr, ptr %i.az, align 8, !tbaa !42
  br label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.0307529, i64 16 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.cw
  %.val404 = load <2 x i64>, ptr %i.dc, align 1, !tbaa !37
  store <2 x i64> %.val404, ptr %i.db, align 1, !tbaa !37
  %i.de = icmp slt i64 %i.cw, 33
  br i1 %i.de, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.130.i = phi ptr [ %i.df, %bb.l ], [ %i.di, %bb.m ] ; 3 uses
  %.pn.i = phi ptr [ %i.dc, %bb.l ], [ %i.dh, %bb.m ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !37
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val403 = load <2 x i64>, ptr %i.dh, align 1, !tbaa !37
  store <2 x i64> %.val403, ptr %i.dg, align 1, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.dd
  br i1 %i.dj, label %bb.m, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !llvm.loop !43

bb.n:                                             ; preds = %bb.i
  %.not.i410 = icmp ugt ptr %.0307529, %i.av
  br i1 %.not.i410, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = sub i64 %i.ax, %i.cv                    ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.cx, i64 %i.dk ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0307529, align 1, !tbaa !37
  store <2 x i64> %.val19.i, ptr %i.cx, align 1, !tbaa !37
  %i.dm = icmp slt i64 %i.dk, 17
  br i1 %i.dm, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.130.i.i = phi ptr [ %i.dn, %bb.p ], [ %i.dq, %bb.q ] ; 3 uses
  %.pn.i.i = phi ptr [ %.0307529, %bb.p ], [ %i.dp, %bb.q ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !37
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !37
  %i.do = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.dp, align 1, !tbaa !37
  store <2 x i64> %.val.i, ptr %i.do, align 1, !tbaa !37
  %i.dq = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dl
  br i1 %i.dr, label %bb.q, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !43

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.q, %bb.o, %bb.n
  %.014.i = phi ptr [ %.0307529, %bb.n ], [ %i.av, %bb.o ], [ %i.av, %bb.q ] ; 7 uses
  %.0.i411 = phi ptr [ %i.cx, %bb.n ], [ %i.dl, %bb.o ], [ %i.dl, %bb.q ] ; 6 uses
  %i.ds = icmp ult ptr %.014.i, %i.cn
  br i1 %i.ds, label %iter.check, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit

iter.check:                                       ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.014.i608 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i411607 = ptrtoaddr ptr %.0.i411 to i64
  %i.dt = add i64 %i.bz, 1
  %i.du = sub i64 %i.dt, %.014.i608               ; 7 uses
  %min.iters.check = icmp ult i64 %i.du, 4
  %i.dv = sub i64 %.014.i608, %.0.i411607
  %diff.check = icmp ugt i64 %i.dv, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check609 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check609, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.du, 28
  %n.vec = and i64 %i.du, -32                     ; 5 uses
  %i.dx = getelementptr i8, ptr %.0.i411, i64 %n.vec
  %i.dy = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i411, i64 %index ; 2 uses
  %next.gep610 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep610, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep610, align 1, !tbaa !37
  %wide.load611 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !37
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !37
  store <16 x i8> %wide.load611, ptr %i.ea, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL45ZSTD_compressBlock_doubleFast_extDict_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmj:bb.a
  %i.my = getelementptr i8, ptr %.014.i435, i64 %n.vec667
  br label %vector.body668

vector.body668:                                   ; preds = %vector.body668, %vector.ph666
  %index669 = phi i64 [ 0, %vector.ph666 ], [ %index.next674, %vector.body668 ] ; 3 uses
  %next.gep670 = getelementptr i8, ptr %.0.i436, i64 %index669 ; 2 uses
  %next.gep671 = getelementptr i8, ptr %.014.i435, i64 %index669 ; 2 uses
  %i.mz = getelementptr i8, ptr %next.gep671, i64 16
  %wide.load672 = load <16 x i8>, ptr %next.gep671, align 1, !tbaa !37
  %wide.load673 = load <16 x i8>, ptr %i.mz, align 1, !tbaa !37
  %i.na = getelementptr i8, ptr %next.gep670, i64 16
  store <16 x i8> %wide.load672, ptr %next.gep670, align 1, !tbaa !37
  store <16 x i8> %wide.load673, ptr %i.na, align 1, !tbaa !37
  %index.next674 = add nuw i64 %index669, 32      ; 2 uses
  %i.nb = icmp eq i64 %index.next674, %n.vec667
  br i1 %i.nb, label %middle.block675, label %vector.body668, !llvm.loop !148

middle.block675:                                  ; preds = %vector.body668
  %cmp.n676 = icmp eq i64 %i.mu, %n.vec667
  br i1 %cmp.n676, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366, label %vec.epilog.iter.check681

vec.epilog.iter.check681:                         ; preds = %middle.block675
  %min.epilog.iters.check682 = icmp eq i64 %i.mw, 0
  br i1 %min.epilog.iters.check682, label %.lr.ph.i437.preheader, label %vec.epilog.ph683, !prof !47

vec.epilog.ph683:                                 ; preds = %vector.main.loop.iter.check664, %vec.epilog.iter.check681
  %vec.epilog.resume.val677 = phi i64 [ %n.vec667, %vec.epilog.iter.check681 ], [ 0, %vector.main.loop.iter.check664 ]
  %n.vec684 = and i64 %i.mu, -4                   ; 4 uses
  %i.nc = getelementptr i8, ptr %.0.i436, i64 %n.vec684
  %i.nd = getelementptr i8, ptr %.014.i435, i64 %n.vec684
  br label %vec.epilog.vector.body685

vec.epilog.vector.body685:                        ; preds = %vec.epilog.vector.body685, %vec.epilog.ph683
  %index686 = phi i64 [ %vec.epilog.resume.val677, %vec.epilog.ph683 ], [ %index.next690, %vec.epilog.vector.body685 ] ; 3 uses
  %next.gep687 = getelementptr i8, ptr %.0.i436, i64 %index686
  %next.gep688 = getelementptr i8, ptr %.014.i435, i64 %index686
  %wide.load689 = load <4 x i8>, ptr %next.gep688, align 1, !tbaa !37
  store <4 x i8> %wide.load689, ptr %next.gep687, align 1, !tbaa !37
  %index.next690 = add nuw i64 %index686, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next690, %n.vec684
  br i1 %i.ne, label %vec.epilog.middle.block691, label %vec.epilog.vector.body685, !llvm.loop !149

vec.epilog.middle.block691:                       ; preds = %vec.epilog.vector.body685
  %cmp.n692 = icmp eq i64 %i.mu, %n.vec684
  br i1 %cmp.n692, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366, label %.lr.ph.i437.preheader

.lr.ph.i437.preheader:                            ; preds = %iter.check679, %vec.epilog.iter.check681, %vec.epilog.middle.block691
  %.121.i438.ph = phi ptr [ %.0.i436, %iter.check679 ], [ %i.mx, %vec.epilog.iter.check681 ], [ %i.nc, %vec.epilog.middle.block691 ] ; 2 uses
  %.11520.i439.ph = phi ptr [ %.014.i435, %iter.check679 ], [ %i.my, %vec.epilog.iter.check681 ], [ %i.nd, %vec.epilog.middle.block691 ] ; 3 uses
  %.11520.i439.ph704 = ptrtoaddr ptr %.11520.i439.ph to i64 ; 2 uses
  %i.nf = sub i64 %i.lu, %.11520.i439.ph704
  %xtraiter = and i64 %i.nf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i437.prol.loopexit, label %.lr.ph.i437.prol

.lr.ph.i437.prol:                                 ; preds = %.lr.ph.i437.preheader, %.lr.ph.i437.prol
  %.121.i438.prol = phi ptr [ %i.ni, %.lr.ph.i437.prol ], [ %.121.i438.ph, %.lr.ph.i437.preheader ] ; 2 uses
  %.11520.i439.prol = phi ptr [ %i.ng, %.lr.ph.i437.prol ], [ %.11520.i439.ph, %.lr.ph.i437.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i437.prol ], [ 0, %.lr.ph.i437.preheader ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.11520.i439.prol, i64 1 ; 2 uses
  %i.nh = load i8, ptr %.11520.i439.prol, align 1, !tbaa !37
  %i.ni = getelementptr inbounds nuw i8, ptr %.121.i438.prol, i64 1 ; 2 uses
  store i8 %i.nh, ptr %.121.i438.prol, align 1, !tbaa !37
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i437.prol.loopexit, label %.lr.ph.i437.prol, !llvm.loop !150

.lr.ph.i437.prol.loopexit:                        ; preds = %.lr.ph.i437.prol, %.lr.ph.i437.preheader
  %.121.i438.unr = phi ptr [ %.121.i438.ph, %.lr.ph.i437.preheader ], [ %i.ni, %.lr.ph.i437.prol ]
  %.11520.i439.unr = phi ptr [ %.11520.i439.ph, %.lr.ph.i437.preheader ], [ %i.ng, %.lr.ph.i437.prol ]
  %i.nj = sub i64 %.11520.i439.ph704, %i.lu
  %i.nk = icmp ugt i64 %i.nj, -8
  br i1 %i.nk, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366, label %.lr.ph.i437

.lr.ph.i437:                                      ; preds = %.lr.ph.i437.prol.loopexit, %.lr.ph.i437
  %.121.i438 = phi ptr [ %i.oi, %.lr.ph.i437 ], [ %.121.i438.unr, %.lr.ph.i437.prol.loopexit ] ; 9 uses
  %.11520.i439 = phi ptr [ %i.og, %.lr.ph.i437 ], [ %.11520.i439.unr, %.lr.ph.i437.prol.loopexit ] ; 9 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.11520.i439, i64 1
  %i.nm = load i8, ptr %.11520.i439, align 1, !tbaa !37
  %i.nn = getelementptr inbounds nuw i8, ptr %.121.i438, i64 1
  store i8 %i.nm, ptr %.121.i438, align 1, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %.11520.i439, i64 2
  %i.np = load i8, ptr %i.nl, align 1, !tbaa !37
  %i.nq = getelementptr inbounds nuw i8, ptr %.121.i438, i64 2
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !37
  %i.nr = getelementptr inbounds nuw i8, ptr %.11520.i439, i64 3
  %i.ns = load i8, ptr %i.no, align 1, !tbaa !37
  %i.nt = getelementptr inbounds nuw i8, ptr %.121.i438, i64 3
  store i8 %i.ns, ptr %i.nq, align 1, !tbaa !37
  %i.nu = getelementptr inbounds nuw i8, ptr %.11520.i439, i64 4
  %i.nv = load i8, ptr %i.nr, align 1, !tbaa !37
  %i.nw = getelementptr inbounds nuw i8, ptr %.121.i438, i64 4
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !37
  %i.nx = getelementptr inbounds nuw i8, ptr %.11520.i439, i64 5
  %i.ny = load i8, ptr %i.nu, align 1, !tbaa !37
  %i.nz = getelementptr inbounds nuw i8, ptr %.121.i438, i64 5
  store i8 %i.ny, ptr %i.nw, align 1, !tbaa !37
  %i.oa = getelementptr inbounds nuw i8, ptr %.11520.i439, i64 6
  %i.ob = load i8, ptr %i.nx, align 1, !tbaa !37
  %i.oc = getelementptr inbounds nuw i8, ptr %.121.i438, i64 6
  store i8 %i.ob, ptr %i.nz, align 1, !tbaa !37
  %i.od = getelementptr inbounds nuw i8, ptr %.11520.i439, i64 7
  %i.oe = load i8, ptr %i.oa, align 1, !tbaa !37
  %i.of = getelementptr inbounds nuw i8, ptr %.121.i438, i64 7
  store i8 %i.oe, ptr %i.oc, align 1, !tbaa !37
  %i.og = getelementptr inbounds nuw i8, ptr %.11520.i439, i64 8 ; 2 uses
  %i.oh = load i8, ptr %i.od, align 1, !tbaa !37
  %i.oi = getelementptr inbounds nuw i8, ptr %.121.i438, i64 8
  store i8 %i.oh, ptr %i.of, align 1, !tbaa !37
  %exitcond.not.i440.7 = icmp eq ptr %i.og, %.4
  br i1 %exitcond.not.i440.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366, label %.lr.ph.i437, !llvm.loop !151

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366: ; preds = %bb.as, %.lr.ph.i437.prol.loopexit, %.lr.ph.i437, %middle.block675, %vec.epilog.middle.block691, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i434, %bb.aq
  %i.oj = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.lw
  store ptr %i.ok, ptr %i.aw, align 8, !tbaa !38
  %i.ol = icmp ugt i64 %i.lw, 65535
  %.pre542 = load ptr, ptr %i.az, align 8, !tbaa !42 ; 3 uses
  br i1 %i.ol, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366
  store i32 1, ptr %i.ay, align 8, !tbaa !52
  %i.om = load ptr, ptr %1, align 8, !tbaa !53
  %i.on = ptrtoint ptr %.pre542 to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = lshr exact i64 %i.op, 3
  %i.or = trunc i64 %i.oq to i32
  store i32 %i.or, ptr %i.ba, align 4, !tbaa !54
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366.thread, %bb.ax, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366
  %i.os = phi ptr [ %.pre, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366.thread ], [ %.pre542, %bb.ax ], [ %.pre542, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit366 ] ; 4 uses
  %i.ot = trunc i64 %i.lw to i16
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  store i16 %i.ot, ptr %i.ou, align 4, !tbaa !55
  store i32 %i.lx, ptr %i.os, align 4, !tbaa !57
  %i.ov = add i64 %.3330, -3                      ; 3 uses
  %i.ow = icmp ugt i64 %i.ov, 65535
  br i1 %i.ow, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358

bb.az:                                            ; preds = %bb.ai, %bb.ah
  %i.ox = ptrtoint ptr %.0307529 to i64
  %i.oy = sub i64 %i.bz, %i.ox
  %i.oz = ashr i64 %i.oy, 8
  %i.pa = getelementptr i8, ptr %.0306530, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 1
  br label %.thread, !llvm.loop !152

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split: ; preds = %bb.ay, %bb.ag, %bb.s
  %.sink599 = phi ptr [ %i.jq, %bb.ag ], [ %i.ft, %bb.s ], [ %i.os, %bb.ay ] ; 2 uses
  %.sink595.ph = phi i64 [ %i.jt, %bb.ag ], [ %i.fw, %bb.s ], [ %i.ov, %bb.ay ]
  %.4331.ph = phi i64 [ %.0327.lcssa, %bb.ag ], [ %i.ct, %bb.s ], [ %.3330, %bb.ay ]
  %.1319.ph = phi i32 [ %.0312528, %bb.ag ], [ %.0318527, %bb.s ], [ %.0312528, %bb.ay ]
  %.1313.ph = phi i32 [ %i.gg, %bb.ag ], [ %.0312528, %bb.s ], [ %.0333, %bb.ay ]
  %.5.ph = phi ptr [ %.1.lcssa, %bb.ag ], [ %i.cn, %bb.s ], [ %.4, %bb.ay ]
  store i32 2, ptr %i.ay, align 8, !tbaa !52
  %i.pc = load ptr, ptr %1, align 8, !tbaa !53
  %i.pd = ptrtoint ptr %.sink599 to i64
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = lshr exact i64 %i.pf, 3
  %i.ph = trunc i64 %i.pg to i32
  store i32 %i.ph, ptr %i.ba, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358: ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split, %bb.ay, %bb.ag, %bb.s
  %.sink595 = phi i64 [ %i.jt, %bb.ag ], [ %i.ov, %bb.ay ], [ %i.fw, %bb.s ], [ %.sink595.ph, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split ]
  %.sink594 = phi ptr [ %i.jq, %bb.ag ], [ %i.os, %bb.ay ], [ %i.ft, %bb.s ], [ %.sink599, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split ] ; 2 uses
  %.4331 = phi i64 [ %.0327.lcssa, %bb.ag ], [ %.3330, %bb.ay ], [ %i.ct, %bb.s ], [ %.4331.ph, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split ]
  %.1319 = phi i32 [ %.0312528, %bb.ag ], [ %.0312528, %bb.ay ], [ %.0318527, %bb.s ], [ %.1319.ph, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split ] ; 2 uses
  %.1313 = phi i32 [ %i.gg, %bb.ag ], [ %.0333, %bb.ay ], [ %.0312528, %bb.s ], [ %.1313.ph, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split ] ; 2 uses
  %.5 = phi ptr [ %.1.lcssa, %bb.ag ], [ %.4, %bb.ay ], [ %i.cn, %bb.s ], [ %.5.ph, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358.sink.split ]
  %i.pi = trunc i64 %.sink595 to i16
  %i.pj = getelementptr inbounds nuw i8, ptr %.sink594, i64 6
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !65
  %i.pk = getelementptr inbounds nuw i8, ptr %.sink594, i64 8 ; 2 uses
  store ptr %i.pk, ptr %i.az, align 8, !tbaa !42
  %i.pl = getelementptr inbounds nuw i8, ptr %.5, i64 %.4331 ; 9 uses
  %.not341 = icmp ugt ptr %i.pl, %i.k
  br i1 %.not341, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358
  %i.pm = add i32 %i.cb, 2                        ; 6 uses
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.pn ; 2 uses
  %.val393 = load i64, ptr %i.po, align 1, !tbaa !26 ; 4 uses
  %i.pp = mul i64 %.val393, -3523014627327384477
  %i.pq = lshr i64 %i.pp, %i.at
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pq
  store i32 %i.pm, ptr %i.pr, align 4, !tbaa !3
  %i.ps = getelementptr inbounds i8, ptr %i.pl, i64 -2 ; 2 uses
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = sub i64 %i.pt, %i.o
  %i.pv = trunc i64 %i.pu to i32
  %.val394 = load i64, ptr %i.ps, align 1, !tbaa !26
  %i.pw = mul i64 %.val394, -3523014627327384477
  %i.px = lshr i64 %i.pw, %i.at
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.px
  store i32 %i.pv, ptr %i.py, align 4, !tbaa !3
  switch i32 %5, label %default.unreachable [
    i32 7, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread462
    i32 5, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread458
    i32 6, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread460
    i32 4, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346
  ]

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread458: ; preds = %bb.ba
  %i.pz = mul i64 %.val393, -3523014627271114752
  %i.qa = lshr i64 %i.pz, %i.ar
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.qa
  store i32 %i.pm, ptr %i.qb, align 4, !tbaa !3
  %i.qc = getelementptr inbounds i8, ptr %i.pl, i64 -1 ; 2 uses
  %.val380 = load i64, ptr %i.qc, align 1, !tbaa !26
  %i.qd = mul i64 %.val380, -3523014627271114752
  %i.qe = lshr i64 %i.qd, %i.ar
  br label %.lr.ph515.preheader

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread460: ; preds = %bb.ba
  %i.qf = mul i64 %.val393, -3523014627193847808
  %i.qg = lshr i64 %i.qf, %i.ar
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.qg
  store i32 %i.pm, ptr %i.qh, align 4, !tbaa !3
  %i.qi = getelementptr inbounds i8, ptr %i.pl, i64 -1 ; 2 uses
  %.val384 = load i64, ptr %i.qi, align 1, !tbaa !26
  %i.qj = mul i64 %.val384, -3523014627193847808
  %i.qk = lshr i64 %i.qj, %i.ar
  br label %.lr.ph515.preheader

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread462: ; preds = %bb.ba
  %i.ql = mul i64 %.val393, -3523014627193167104
  %i.qm = lshr i64 %i.ql, %i.ar
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.qm
  store i32 %i.pm, ptr %i.qn, align 4, !tbaa !3
  %i.qo = getelementptr inbounds i8, ptr %i.pl, i64 -1 ; 2 uses
  %.val388 = load i64, ptr %i.qo, align 1, !tbaa !26
  %i.qp = mul i64 %.val388, -3523014627193167104
  %i.qq = lshr i64 %i.qp, %i.ar
  br label %.lr.ph515.preheader

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346:    ; preds = %bb.ba
  %.val371 = load i32, ptr %i.po, align 1, !tbaa !3
  %i.qr = mul i32 %.val371, -1640531535
  %i.qs = lshr i32 %i.qr, %i.ap
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.qt
  store i32 %i.pm, ptr %i.qu, align 4, !tbaa !3
  %i.qv = getelementptr inbounds i8, ptr %i.pl, i64 -1 ; 2 uses
  %.val372 = load i32, ptr %i.qv, align 1, !tbaa !3
  %i.qw = mul i32 %.val372, -1640531535
  %i.qx = lshr i32 %i.qw, %i.ap
  %i.qy = zext i32 %i.qx to i64
  br label %.lr.ph515.preheader

.lr.ph515.preheader:                              ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread462, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread460, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread458, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346
  %.pn.in = phi ptr [ %i.qv, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346 ], [ %i.qo, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread462 ], [ %i.qc, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread458 ], [ %i.qi, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread460 ]
  %.0.i343 = phi i64 [ %i.qy, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346 ], [ %i.qq, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread462 ], [ %i.qe, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread458 ], [ %i.qk, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit346.thread460 ]
  %.pn = ptrtoint ptr %.pn.in to i64
  %.in = sub i64 %.pn, %i.o
  %i.qz = trunc i64 %.in to i32
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0.i343
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !3
  br label %.lr.ph515

.lr.ph515:                                        ; preds = %.lr.ph515.preheader, %bb.bj
  %i.rb = phi ptr [ %i.sg, %bb.bj ], [ %i.pk, %.lr.ph515.preheader ]
  %.1308514 = phi ptr [ %i.sv, %bb.bj ], [ %i.pl, %.lr.ph515.preheader ] ; 15 uses
  %.2314513 = phi i32 [ %.2320512, %bb.bj ], [ %.1313, %.lr.ph515.preheader ] ; 4 uses
  %.2320512 = phi i32 [ %.2314513, %bb.bj ], [ %.1319, %.lr.ph515.preheader ] ; 6 uses
  %i.rc = ptrtoint ptr %.1308514 to i64
  %i.rd = sub i64 %i.rc, %i.o
  %i.re = trunc i64 %i.rd to i32                  ; 4 uses
  %i.rf = sub i32 %i.re, %.2320512                ; 3 uses
  %i.rg = icmp ult i32 %i.rf, %i.ad               ; 2 uses
  %i.rh = zext i32 %i.rf to i64
  %.v = select i1 %i.rg, ptr %i.ah, ptr %i.m
  %i.ri = getelementptr inbounds nuw i8, ptr %.v, i64 %i.rh ; 2 uses
  %i.rj = sub i32 %i.au, %i.rf
  %i.rk = icmp ugt i32 %i.rj, 2
  %i.rl = sub i32 %i.re, %i.aa
  %i.rm = icmp ule i32 %.2320512, %i.rl
  %i.rn = and i1 %i.rm, %i.rk
  br i1 %i.rn, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %.lr.ph515
  %.val = load i32, ptr %i.ri, align 1, !tbaa !3
  %.6.val = load i32, ptr %.1308514, align 1, !tbaa !3
  %i.ro = icmp eq i32 %.val, %.6.val
  br i1 %i.ro, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.rp = select i1 %i.rg, ptr %i.ak, ptr %i.j
  %i.rq = getelementptr inbounds nuw i8, ptr %.1308514, i64 4
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  %i.rs = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.rq, ptr noundef nonnull %i.rr, ptr noundef nonnull %i.j, ptr noundef nonnull %i.rp, ptr noundef nonnull %i.af) ; 2 uses
  %.not.i = icmp ugt ptr %.1308514, %i.av
  br i1 %.not.i, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit456, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.rt = load ptr, ptr %i.aw, align 8, !tbaa !38
  %.1308.val = load <2 x i64>, ptr %.1308514, align 1, !tbaa !37
  store <2 x i64> %.1308.val, ptr %i.rt, align 1, !tbaa !37
  %.pre547 = load ptr, ptr %i.az, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit456

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit456: ; preds = %bb.bc, %bb.bd
  %i.ru = phi ptr [ %i.rb, %bb.bc ], [ %.pre547, %bb.bd ] ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store i16 0, ptr %i.rv, align 4, !tbaa !55
  store i32 1, ptr %i.ru, align 4, !tbaa !57
  %i.rw = add i64 %i.rs, 1                        ; 2 uses
  %i.rx = icmp ugt i64 %i.rw, 65535
  br i1 %i.rx, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit

bb.be:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit456
  store i32 2, ptr %i.ay, align 8, !tbaa !52
  %i.ry = load ptr, ptr %1, align 8, !tbaa !53
  %i.rz = ptrtoint ptr %i.ru to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa
  %i.sc = lshr exact i64 %i.sb, 3
  %i.sd = trunc i64 %i.sc to i32
  store i32 %i.sd, ptr %i.ba, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit: ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit456, %bb.be
  %i.se = trunc i64 %i.rw to i16
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 6
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !65
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 2 uses
  store ptr %i.sg, ptr %i.az, align 8, !tbaa !42
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.bi
    i32 5, label %bb.bg
    i32 6, label %bb.bh
    i32 4, label %bb.bf
  ]

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  %.6.val373 = load i32, ptr %.1308514, align 1, !tbaa !3
  %i.sh = mul i32 %.6.val373, -1640531535
  %i.si = lshr i32 %i.sh, %i.ap
  %i.sj = zext i32 %i.si to i64
  %.6.val398.pre = load i64, ptr %.1308514, align 1, !tbaa !26
  br label %bb.bj

bb.bg:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  %.6.val381 = load i64, ptr %.1308514, align 1, !tbaa !26 ; 2 uses
  %i.sk = mul i64 %.6.val381, -3523014627271114752
  %i.sl = lshr i64 %i.sk, %i.ar
  br label %bb.bj

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  %.6.val385 = load i64, ptr %.1308514, align 1, !tbaa !26 ; 2 uses
  %i.sm = mul i64 %.6.val385, -3523014627193847808
  %i.sn = lshr i64 %i.sm, %i.ar
  br label %bb.bj

bb.bi:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  %.6.val389 = load i64, ptr %.1308514, align 1, !tbaa !26 ; 2 uses
  %i.so = mul i64 %.6.val389, -3523014627193167104
  %i.sp = lshr i64 %i.so, %i.ar
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.6.val398 = phi i64 [ %.6.val398.pre, %bb.bf ], [ %.6.val389, %bb.bi ], [ %.6.val381, %bb.bg ], [ %.6.val385, %bb.bh ]
  %.0.i = phi i64 [ %i.sj, %bb.bf ], [ %i.sp, %bb.bi ], [ %i.sl, %bb.bg ], [ %i.sn, %bb.bh ]
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0.i
  store i32 %i.re, ptr %i.sq, align 4, !tbaa !3
  %i.sr = mul i64 %.6.val398, -3523014627327384477
  %i.ss = lshr i64 %i.sr, %i.at
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ss
  store i32 %i.re, ptr %i.st, align 4, !tbaa !3
  %i.su = getelementptr i8, ptr %.1308514, i64 %i.rs
  %i.sv = getelementptr i8, ptr %i.su, i64 4      ; 4 uses
  %.not342 = icmp ugt ptr %i.sv, %i.k
  br i1 %.not342, label %.thread, label %.lr.ph515

.thread:                                          ; preds = %bb.bj, %bb.bb, %.lr.ph515, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358, %bb.az
  %.5323 = phi i32 [ %.0318527, %bb.az ], [ %.1319, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358 ], [ %.2314513, %bb.bj ], [ %.2320512, %bb.bb ], [ %.2320512, %.lr.ph515 ] ; 2 uses
  %.5317 = phi i32 [ %.0312528, %bb.az ], [ %.1313, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358 ], [ %.2320512, %bb.bj ], [ %.2314513, %bb.bb ], [ %.2314513, %.lr.ph515 ] ; 2 uses
  %.4311 = phi ptr [ %.0307529, %bb.az ], [ %i.pl, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358 ], [ %i.sv, %bb.bj ], [ %.1308514, %bb.bb ], [ %.1308514, %.lr.ph515 ] ; 2 uses
  %.9 = phi ptr [ %i.pb, %bb.az ], [ %i.pl, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit358 ], [ %i.sv, %bb.bj ], [ %.1308514, %bb.bb ], [ %.1308514, %.lr.ph515 ] ; 2 uses
  %i.sw = icmp ult ptr %.9, %i.k
  br i1 %i.sw, label %bb.c, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.thread
  %.pre549 = ptrtoint ptr %.4311 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi = phi i64 [ %.pre549, %._crit_edge.loopexit ], [ %i.n, %.preheader ]
  %.0318.lcssa = phi i32 [ %.5323, %._crit_edge.loopexit ], [ %i.an, %.preheader ]
  %.0312.lcssa = phi i32 [ %.5317, %._crit_edge.loopexit ], [ %i.al, %.preheader ]
  store i32 %.0312.lcssa, ptr %2, align 4, !tbaa !3
  store i32 %.0318.lcssa, ptr %i.am, align 4, !tbaa !3
  %i.sx = ptrtoint ptr %i.j to i64
  %i.sy = sub i64 %i.sx, %.pre-phi
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge, %bb.b
  %.0 = phi i64 [ %i.bb, %bb.b ], [ %i.sy, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !13, i64 112}
!8 = !{!"_ZTSN11duckdb_zstd17ZSTD_matchState_tE", !9, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !10, i64 56, !5, i64 64, !12, i64 96, !4, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !4, i64 136, !4, i64 140, !14, i64 144, !17, i64 248, !18, i64 256, !11, i64 288, !4, i64 296, !4, i64 300}
!9 = !{!"_ZTSN11duckdb_zstd13ZSTD_window_tE", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"_ZTSN11duckdb_zstd10optState_tE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !11, i64 32, !11, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !15, i64 80, !11, i64 88, !16, i64 96}
!15 = !{!"_ZTSN11duckdb_zstd15ZSTD_OptPrice_eE", !5, i64 0}
!16 = !{!"_ZTSN11duckdb_zstd18ZSTD_paramSwitch_eE", !5, i64 0}
!17 = !{!"p1 _ZTSN11duckdb_zstd17ZSTD_matchState_tE", !11, i64 0}
!18 = !{!"_ZTSN11duckdb_zstd26ZSTD_compressionParametersE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !19, i64 24}
!19 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !5, i64 0}
!20 = !{!18, !4, i64 16}
!21 = !{!8, !13, i64 128}
!22 = !{!8, !10, i64 8}
!23 = !{!8, !4, i64 44}
!24 = !{!18, !4, i64 4}
!25 = !{!18, !4, i64 8}
!26 = !{!12, !12, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!8, !4, i64 272}
!31 = !{!18, !4, i64 0}
!32 = !{!8, !4, i64 24}
!33 = !{!8, !4, i64 40}
!34 = distinct !{!34, !28}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !5, i64 0}
!37 = !{!5, !5, i64 0}
!38 = !{!39, !10, i64 24}
!39 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !40, i64 0, !40, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !12, i64 64, !41, i64 72, !4, i64 76}
!40 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !11, i64 0}
!41 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !5, i64 0}
!42 = !{!39, !40, i64 8}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4, i32 28}
!48 = distinct !{!48, !28, !45, !46}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !28, !45}
!52 = !{!39, !41, i64 72}
!53 = !{!39, !40, i64 0}
!54 = !{!39, !4, i64 76}
!55 = !{!56, !36, i64 4}
!56 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !4, i64 0, !36, i64 4, !36, i64 6}
!57 = !{!56, !4, i64 0}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, !28, !45, !46}
!62 = distinct !{!62, !28, !45, !46}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !28, !45}
!65 = !{!56, !36, i64 6}
!66 = distinct !{!66, !28}
!67 = distinct !{!67, !28, !45, !46}
!68 = distinct !{!68, !28, !45, !46}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !28, !45}
!71 = distinct !{!71, !28, !45, !46}
!72 = distinct !{!72, !28, !45, !46}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !28, !45}
!75 = distinct !{!75, !28, !45, !46}
!76 = distinct !{!76, !28, !45, !46}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !28, !45}
!79 = distinct !{!79, !28, !45, !46}
!80 = distinct !{!80, !28, !45, !46}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !28, !45}
!83 = distinct !{!83, !28, !45, !46}
!84 = distinct !{!84, !28, !45, !46}
!85 = distinct !{!85, !50}
!86 = distinct !{!86, !28, !45}
!87 = distinct !{!87, !28, !45, !46}
!88 = distinct !{!88, !28, !45, !46}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !28, !45}
!91 = !{!8, !17, i64 248}
!92 = !{!8, !10, i64 0}
!93 = !{!8, !4, i64 296}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !28}
!96 = distinct !{!96, !28, !45, !46}
!97 = distinct !{!97, !28, !45, !46}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !28, !45}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !28}
!102 = distinct !{!102, !28}
!103 = distinct !{!103, !28}
!104 = distinct !{!104, !28}
!105 = distinct !{!105, !28}
!106 = distinct !{!106, !28}
!107 = distinct !{!107, !28, !45, !46}
!108 = distinct !{!108, !28, !45, !46}
!109 = distinct !{!109, !50}
!110 = distinct !{!110, !28, !45}
!111 = distinct !{!111, !28, !45, !46}
end_hunk_1
