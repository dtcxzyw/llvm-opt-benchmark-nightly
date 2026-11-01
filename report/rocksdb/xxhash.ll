Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/xxhash?download=true
inline.NumInlined: 910
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 57
begin_hunk_0_@ROCKSDB_XXH32_digest:bb.a
  %.015.lcssa.i = phi i64 [ %i.p, %bb.d ], [ %.lcssa23.unr, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i.prol.loopexit ], [ %i.by, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i ] ; 5 uses
  %.0.lcssa.i = phi i32 [ %i.k, %bb.d ], [ %.lcssa24.unr, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i.prol.loopexit ], [ %i.bx, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i ] ; 3 uses
  %.not24.i = icmp eq i64 %.015.lcssa.i, 0
  br i1 %.not24.i, label %_ZL14XXH32_finalizejPKhm13XXH_alignment.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter26 = and i64 %.015.lcssa.i, 7          ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.127.i.prol = phi i32 [ %i.ah, %.lr.ph.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.preheader ]
  %.11626.i.prol = phi i64 [ %i.ai, %.lr.ph.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.preheader ]
  %.11825.i.prol = phi ptr [ %i.ab, %.lr.ph.i.prol ], [ %.017.lcssa.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter28 = phi i64 [ %prol.iter28.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.11825.i.prol, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.11825.i.prol, align 1, !tbaa !21
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul i32 %i.ad, 374761393
  %i.af = add i32 %i.ae, %.127.i.prol             ; 2 uses
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 11)
  %i.ah = mul i32 %i.ag, -1640531535              ; 3 uses
  %i.ai = add nsw i64 %.11626.i.prol, -1          ; 2 uses
  %prol.iter28.next = add i64 %prol.iter28, 1     ; 2 uses
  %prol.iter28.cmp.not = icmp eq i64 %prol.iter28.next, %xtraiter26
  br i1 %prol.iter28.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !47

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %.127.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %.11626.i.unr = phi i64 [ %.015.lcssa.i, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %.11825.i.unr = phi ptr [ %.017.lcssa.i, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %i.aj = icmp ult i64 %.015.lcssa.i, 8
  br i1 %i.aj, label %_ZL14XXH32_finalizejPKhm13XXH_alignment.exit, label %.lr.ph.i

_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i: ; preds = %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i.prol.loopexit, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i
  %.021.i = phi i32 [ %i.bx, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i ], [ %.021.i.unr, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i.prol.loopexit ]
  %.01520.i = phi i64 [ %i.by, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i ], [ %.01520.i.unr, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i.prol.loopexit ]
  %.01719.i = phi ptr [ %i.bv, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i ], [ %.01719.i.unr, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i.prol.loopexit ] ; 9 uses
  %.0.i.i = load i32, ptr %.01719.i, align 1, !tbaa !17
  %i.ak = mul i32 %.0.i.i, -1028477379
  %i.al = add i32 %i.ak, %.021.i                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01719.i, i64 4
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 17)
  %i.ao = mul i32 %i.an, 668265263
  %.0.i.i.1 = load i32, ptr %i.am, align 1, !tbaa !17
  %i.ap = mul i32 %.0.i.i.1, -1028477379
  %i.aq = add i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01719.i, i64 8
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 17)
  %i.at = mul i32 %i.as, 668265263
  %.0.i.i.2 = load i32, ptr %i.ar, align 1, !tbaa !17
  %i.au = mul i32 %.0.i.i.2, -1028477379
  %i.av = add i32 %i.au, %i.at                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01719.i, i64 12
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 17)
  %i.ay = mul i32 %i.ax, 668265263
  %.0.i.i.3 = load i32, ptr %i.aw, align 1, !tbaa !17
  %i.az = mul i32 %.0.i.i.3, -1028477379
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01719.i, i64 16
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 17)
  %i.bd = mul i32 %i.bc, 668265263
  %.0.i.i.4 = load i32, ptr %i.bb, align 1, !tbaa !17
  %i.be = mul i32 %.0.i.i.4, -1028477379
  %i.bf = add i32 %i.be, %i.bd                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01719.i, i64 20
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 17)
  %i.bi = mul i32 %i.bh, 668265263
  %.0.i.i.5 = load i32, ptr %i.bg, align 1, !tbaa !17
  %i.bj = mul i32 %.0.i.i.5, -1028477379
  %i.bk = add i32 %i.bj, %i.bi                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01719.i, i64 24
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 17)
  %i.bn = mul i32 %i.bm, 668265263
  %.0.i.i.6 = load i32, ptr %i.bl, align 1, !tbaa !17
  %i.bo = mul i32 %.0.i.i.6, -1028477379
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01719.i, i64 28
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 17)
  %i.bs = mul i32 %i.br, 668265263
  %.0.i.i.7 = load i32, ptr %i.bq, align 1, !tbaa !17
  %i.bt = mul i32 %.0.i.i.7, -1028477379
  %i.bu = add i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01719.i, i64 32 ; 2 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 17)
  %i.bx = mul i32 %i.bw, 668265263                ; 2 uses
  %i.by = add nsw i64 %.01520.i, -32              ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 3
  br i1 %i.bz, label %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i, label %.preheader.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.127.i = phi i32 [ %i.ed, %.lr.ph.i ], [ %.127.i.unr, %.lr.ph.i.prol.loopexit ]
  %.11626.i = phi i64 [ %i.ee, %.lr.ph.i ], [ %.11626.i.unr, %.lr.ph.i.prol.loopexit ]
  %.11825.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %.11825.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.11825.i, i64 1
  %i.cb = load i8, ptr %.11825.i, align 1, !tbaa !21
  %i.cc = zext i8 %i.cb to i32
  %i.cd = mul i32 %i.cc, 374761393
  %i.ce = add i32 %i.cd, %.127.i                  ; 2 uses
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 11)
  %i.cg = mul i32 %i.cf, -1640531535
  %i.ch = getelementptr inbounds nuw i8, ptr %.11825.i, i64 2
  %i.ci = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cj = zext i8 %i.ci to i32
  %i.ck = mul i32 %i.cj, 374761393
  %i.cl = add i32 %i.ck, %i.cg                    ; 2 uses
  %i.cm = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 11)
  %i.cn = mul i32 %i.cm, -1640531535
  %i.co = getelementptr inbounds nuw i8, ptr %.11825.i, i64 3
  %i.cp = load i8, ptr %i.ch, align 1, !tbaa !21
  %i.cq = zext i8 %i.cp to i32
  %i.cr = mul i32 %i.cq, 374761393
  %i.cs = add i32 %i.cr, %i.cn                    ; 2 uses
  %i.ct = tail call i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 11)
  %i.cu = mul i32 %i.ct, -1640531535
  %i.cv = getelementptr inbounds nuw i8, ptr %.11825.i, i64 4
  %i.cw = load i8, ptr %i.co, align 1, !tbaa !21
  %i.cx = zext i8 %i.cw to i32
  %i.cy = mul i32 %i.cx, 374761393
  %i.cz = add i32 %i.cy, %i.cu                    ; 2 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 11)
  %i.db = mul i32 %i.da, -1640531535
  %i.dc = getelementptr inbounds nuw i8, ptr %.11825.i, i64 5
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !21
  %i.de = zext i8 %i.dd to i32
  %i.df = mul i32 %i.de, 374761393
  %i.dg = add i32 %i.df, %i.db                    ; 2 uses
  %i.dh = tail call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 11)
  %i.di = mul i32 %i.dh, -1640531535
  %i.dj = getelementptr inbounds nuw i8, ptr %.11825.i, i64 6
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !21
  %i.dl = zext i8 %i.dk to i32
  %i.dm = mul i32 %i.dl, 374761393
  %i.dn = add i32 %i.dm, %i.di                    ; 2 uses
  %i.do = tail call i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 11)
  %i.dp = mul i32 %i.do, -1640531535
  %i.dq = getelementptr inbounds nuw i8, ptr %.11825.i, i64 7
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !21
  %i.ds = zext i8 %i.dr to i32
  %i.dt = mul i32 %i.ds, 374761393
  %i.du = add i32 %i.dt, %i.dp                    ; 2 uses
  %i.dv = tail call i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 11)
  %i.dw = mul i32 %i.dv, -1640531535
  %i.dx = getelementptr inbounds nuw i8, ptr %.11825.i, i64 8
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !21
  %i.dz = zext i8 %i.dy to i32
  %i.ea = mul i32 %i.dz, 374761393
  %i.eb = add i32 %i.ea, %i.dw                    ; 2 uses
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 11)
  %i.ed = mul i32 %i.ec, -1640531535              ; 2 uses
  %i.ee = add nsw i64 %.11626.i, -8               ; 2 uses
  %.not.i.7 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.7, label %_ZL14XXH32_finalizejPKhm13XXH_alignment.exit, label %.lr.ph.i, !llvm.loop !1

_ZL14XXH32_finalizejPKhm13XXH_alignment.exit:     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ed, %.lr.ph.i ] ; 2 uses
  %i.ef = lshr i32 %.1.lcssa.i, 15
  %i.eg = xor i32 %i.ef, %.1.lcssa.i
  %i.eh = mul i32 %i.eg, -2048144777              ; 2 uses
  %i.ei = lshr i32 %i.eh, 13
  %i.ej = xor i32 %i.ei, %i.eh
  %i.ek = mul i32 %i.ej, -1028477379              ; 2 uses
  %i.el = lshr i32 %i.ek, 16
  %i.em = xor i32 %i.el, %i.ek
  ret i32 %i.em
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ROCKSDB_XXH32_canonicalFromHash(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.a, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @ROCKSDB_XXH32_hashFromCanonical(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %.val = load i32, ptr %0, align 1, !tbaa !17
  %i.a = tail call noundef i32 @llvm.bswap.i32(i32 %.val)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ROCKSDB_XXH64(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread52.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 31
  br i1 %i.b, label %bb.c, label %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -31
  %3 = insertelement <2 x i64> poison, i64 %2, i64 0
  %4 = shufflevector <2 x i64> %3, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = add <2 x i64> %4, <i64 6983438078262162902, i64 -4417276706812531889>
  %6 = add <2 x i64> %4, <i64 0, i64 7046029288634856825>
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.050.i = phi ptr [ %0, %bb.c ], [ %i.e, %bb.d ] ; 3 uses
  %7 = phi <2 x i64> [ %5, %bb.c ], [ %13, %bb.d ]
  %8 = phi <2 x i64> [ %6, %bb.c ], [ %19, %bb.d ]
  %9 = load <2 x i64>, ptr %.050.i, align 1, !tbaa !27
  %10 = mul <2 x i64> %9, splat (i64 -4417276706812531889)
  %11 = add <2 x i64> %10, %7                     ; 2 uses
  %12 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %11, <2 x i64> %11, <2 x i64> splat (i64 31)) ; 3 uses
  %13 = mul <2 x i64> %12, splat (i64 -7046029288634856825) ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %.050.i, i64 16
  %15 = load <2 x i64>, ptr %14, align 1, !tbaa !27
  %16 = mul <2 x i64> %15, splat (i64 -4417276706812531889)
  %17 = add <2 x i64> %16, %8                     ; 2 uses
  %18 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %17, <2 x i64> %17, <2 x i64> splat (i64 31)) ; 2 uses
  %19 = mul <2 x i64> %18, splat (i64 -7046029288634856825) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.050.i, i64 32 ; 3 uses
  %i.f = icmp ult ptr %i.e, %i.d
  br i1 %i.f, label %bb.d, label %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.thread, !llvm.loop !48

_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.thread: ; preds = %bb.d
  %i.g = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %13, <2 x i64> %13, <2 x i64> <i64 1, i64 7>)
  %i.h = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.g)
  %i.i = extractelement <2 x i64> %19, i64 0      ; 2 uses
  %i.j = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 12)
  %i.k = add i64 %i.h, %i.j
  %i.l = extractelement <2 x i64> %19, i64 1      ; 2 uses
  %i.m = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 18)
  %i.n = add i64 %i.k, %i.m
  %i.o = extractelement <2 x i64> %12, i64 0
  %i.p = mul i64 %i.o, -2381459717836149591       ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 31)
  %i.r = mul i64 %i.q, -7046029288634856825
  %i.s = xor i64 %i.n, %i.r
  %i.t = mul i64 %i.s, -7046029288634856825
  %i.u = add i64 %i.t, -8796714831421723037
  %i.v = extractelement <2 x i64> %12, i64 1
  %i.w = mul i64 %i.v, -2381459717836149591       ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 31)
  %i.y = mul i64 %i.x, -7046029288634856825
  %i.z = xor i64 %i.u, %i.y
  %i.aa = mul i64 %i.z, -7046029288634856825
  %i.ab = add i64 %i.aa, -8796714831421723037
  %i.ac = mul <2 x i64> %18, splat (i64 -2381459717836149591) ; 2 uses
  %i.ad = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ac, <2 x i64> %i.ac, <2 x i64> splat (i64 31)) ; 2 uses
  %i.ae = extractelement <2 x i64> %i.ad, i64 0
  %i.af = mul i64 %i.ae, -7046029288634856825
  %i.ag = xor i64 %i.ab, %i.af
  %i.ah = mul i64 %i.ag, -7046029288634856825
  %i.ai = add i64 %i.ah, -8796714831421723037
  %i.aj = extractelement <2 x i64> %i.ad, i64 1
  %i.ak = mul i64 %i.aj, -7046029288634856825
  %i.al = xor i64 %i.ai, %i.ak
  %i.am = mul i64 %i.al, -7046029288634856825
  %i.an = add i64 %i.am, -8796714831421723037
  br label %bb.e

_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit: ; preds = %bb.b
  %i.ao = add i64 %2, 2870177450012600261
  br label %bb.e

.thread52.i:                                      ; preds = %bb.a
  %i.ap = add i64 %2, 2870177450012600261
  %i.aq = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZL14XXH64_finalizemPKhm13XXH_alignment.exit

bb.e:                                             ; preds = %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit, %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.thread
  %.pn = phi i64 [ %i.an, %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.thread ], [ %i.ao, %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit ]
  %.1.i11 = phi ptr [ %i.e, %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit.thread ], [ %0, %_ZL18XXH64_endian_alignPKhmm13XXH_alignment.exit ] ; 3 uses
  %i.ar = add i64 %.pn, %1                        ; 3 uses
  %i.as = and i64 %1, 31                          ; 5 uses
  %i.at = icmp samesign ugt i64 %i.as, 7
  br i1 %i.at, label %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader, label %._crit_edge.i

_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader: ; preds = %bb.e
  %i.au = add nsw i64 %i.as, -8                   ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit, label %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol

_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol: ; preds = %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol
  %.034.i.prol = phi i64 [ %i.be, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ], [ %i.ar, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ]
  %.02333.i.prol = phi ptr [ %i.ba, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ], [ %.1.i11, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ] ; 2 uses
  %.02632.i.prol = phi i64 [ %i.bf, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ], [ %i.as, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ], [ 0, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ]
  %.0.i30.i.prol = load i64, ptr %.02333.i.prol, align 1, !tbaa !27
  %i.ax = mul i64 %.0.i30.i.prol, -4417276706812531889 ; 2 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 31)
  %i.az = mul i64 %i.ay, -7046029288634856825
  %i.ba = getelementptr inbounds nuw i8, ptr %.02333.i.prol, i64 8 ; 3 uses
  %i.bb = xor i64 %i.az, %.034.i.prol             ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 27)
  %i.bd = mul i64 %i.bc, -7046029288634856825
  %i.be = add i64 %i.bd, -8796714831421723037     ; 3 uses
  %i.bf = add nsw i64 %.02632.i.prol, -8          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit, label %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol, !llvm.loop !49

_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit: ; preds = %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader
  %.034.i.unr = phi i64 [ %i.ar, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ], [ %i.be, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ]
  %.02333.i.unr = phi ptr [ %.1.i11, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ], [ %i.ba, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ]
  %.02632.i.unr = phi i64 [ %i.as, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ], [ %i.bf, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ]
  %.lcssa68.unr = phi ptr [ poison, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ], [ %i.ba, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ]
  %.lcssa67.unr = phi i64 [ poison, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ], [ %i.be, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ]
  %.lcssa66.unr = phi i64 [ poison, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.preheader ], [ %i.bf, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol ]
  %i.bg = icmp ult i64 %i.au, 24
  br i1 %i.bg, label %._crit_edge.i, label %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i

_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i: ; preds = %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i
  %.034.i = phi i64 [ %i.cm, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i ], [ %.034.i.unr, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit ]
  %.02333.i = phi ptr [ %i.ci, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i ], [ %.02333.i.unr, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit ] ; 5 uses
  %.02632.i = phi i64 [ %i.cn, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i ], [ %.02632.i.unr, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit ]
  %.0.i30.i = load i64, ptr %.02333.i, align 1, !tbaa !27
  %i.bh = mul i64 %.0.i30.i, -4417276706812531889 ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 31)
  %i.bj = mul i64 %i.bi, -7046029288634856825
  %i.bk = getelementptr inbounds nuw i8, ptr %.02333.i, i64 8
  %i.bl = xor i64 %i.bj, %.034.i                  ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 27)
  %i.bn = mul i64 %i.bm, -7046029288634856825
  %i.bo = add i64 %i.bn, -8796714831421723037
  %.0.i30.i.1 = load i64, ptr %i.bk, align 1, !tbaa !27
  %i.bp = mul i64 %.0.i30.i.1, -4417276706812531889 ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 31)
  %i.br = mul i64 %i.bq, -7046029288634856825
  %i.bs = getelementptr inbounds nuw i8, ptr %.02333.i, i64 16
  %i.bt = xor i64 %i.br, %i.bo                    ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 27)
  %i.bv = mul i64 %i.bu, -7046029288634856825
  %i.bw = add i64 %i.bv, -8796714831421723037
  %.0.i30.i.2 = load i64, ptr %i.bs, align 1, !tbaa !27
  %i.bx = mul i64 %.0.i30.i.2, -4417276706812531889 ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 31)
  %i.bz = mul i64 %i.by, -7046029288634856825
  %i.ca = getelementptr inbounds nuw i8, ptr %.02333.i, i64 24
  %i.cb = xor i64 %i.bz, %i.bw                    ; 2 uses
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 27)
  %i.cd = mul i64 %i.cc, -7046029288634856825
  %i.ce = add i64 %i.cd, -8796714831421723037
  %.0.i30.i.3 = load i64, ptr %i.ca, align 1, !tbaa !27
  %i.cf = mul i64 %.0.i30.i.3, -4417276706812531889 ; 2 uses
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 31)
  %i.ch = mul i64 %i.cg, -7046029288634856825
  %i.ci = getelementptr inbounds nuw i8, ptr %.02333.i, i64 32 ; 2 uses
  %i.cj = xor i64 %i.ch, %i.ce                    ; 2 uses
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 27)
  %i.cl = mul i64 %i.ck, -7046029288634856825
  %i.cm = add i64 %i.cl, -8796714831421723037     ; 2 uses
  %i.cn = add nsw i64 %.02632.i, -32              ; 3 uses
  %i.co = icmp ugt i64 %i.cn, 7
  br i1 %i.co, label %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i, %bb.e
  %.026.lcssa.i = phi i64 [ %i.as, %bb.e ], [ %.lcssa66.unr, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit ], [ %i.cn, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i ] ; 3 uses
  %.023.lcssa.i = phi ptr [ %.1.i11, %bb.e ], [ %.lcssa68.unr, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit ], [ %i.ci, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ %i.ar, %bb.e ], [ %.lcssa67.unr, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i.prol.loopexit ], [ %i.cm, %_ZL18XXH_readLE64_alignPKv13XXH_alignment.exit.i ] ; 2 uses
  %i.cp = icmp samesign ugt i64 %.026.lcssa.i, 3
  br i1 %i.cp, label %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i, label %bb.f

_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i: ; preds = %._crit_edge.i
  %.0.i.i = load i32, ptr %.023.lcssa.i, align 1, !tbaa !17
  %i.cq = zext i32 %.0.i.i to i64
  %i.cr = mul i64 %i.cq, -7046029288634856825
  %i.cs = xor i64 %i.cr, %.0.lcssa.i              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 4
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 23)
  %i.cv = mul i64 %i.cu, -4417276706812531889
  %i.cw = add i64 %i.cv, 1609587929392839161
  %i.cx = add nsw i64 %.026.lcssa.i, -4
  br label %bb.f

bb.f:                                             ; preds = %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i, %._crit_edge.i
  %.127.i = phi i64 [ %i.cx, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i ], [ %.026.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.124.i = phi ptr [ %i.ct, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i ], [ %.023.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.1.i8 = phi i64 [ %i.cw, %_ZL18XXH_readLE32_alignPKv13XXH_alignment.exit.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not37.i = icmp eq i64 %.127.i, 0
  br i1 %.not37.i, label %_ZL14XXH64_finalizemPKhm13XXH_alignment.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %xtraiter74 = and i64 %.127.i, 7                ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.240.i.prol = phi i64 [ %i.de, %.lr.ph.i.prol ], [ %.1.i8, %.lr.ph.i.preheader ]
  %.22539.i.prol = phi ptr [ %i.cy, %.lr.ph.i.prol ], [ %.124.i, %.lr.ph.i.preheader ] ; 2 uses
  %.22838.i.prol = phi i64 [ %i.df, %.lr.ph.i.prol ], [ %.127.i, %.lr.ph.i.preheader ]
  %prol.iter76 = phi i64 [ %prol.iter76.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.22539.i.prol, i64 1 ; 2 uses
  %i.cz = load i8, ptr %.22539.i.prol, align 1, !tbaa !21
  %i.da = zext i8 %i.cz to i64
  %i.db = mul i64 %i.da, 2870177450012600261
  %i.dc = xor i64 %i.db, %.240.i.prol             ; 2 uses
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 11)
  %i.de = mul i64 %i.dd, -7046029288634856825     ; 3 uses
  %i.df = add nsw i64 %.22838.i.prol, -1          ; 2 uses
  %prol.iter76.next = add i64 %prol.iter76, 1     ; 2 uses
  %prol.iter76.cmp.not = icmp eq i64 %prol.iter76.next, %xtraiter74
  br i1 %prol.iter76.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !50

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.de, %.lr.ph.i.prol ]
  %.240.i.unr = phi i64 [ %.1.i8, %.lr.ph.i.preheader ], [ %i.de, %.lr.ph.i.prol ]
  %.22539.i.unr = phi ptr [ %.124.i, %.lr.ph.i.preheader ], [ %i.cy, %.lr.ph.i.prol ]
  %.22838.i.unr = phi i64 [ %.127.i, %.lr.ph.i.preheader ], [ %i.df, %.lr.ph.i.prol ]
  %i.dg = icmp ult i64 %.127.i, 8
  br i1 %i.dg, label %_ZL14XXH64_finalizemPKhm13XXH_alignment.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.240.i = phi i64 [ %i.fk, %.lr.ph.i ], [ %.240.i.unr, %.lr.ph.i.prol.loopexit ]
  %.22539.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %.22539.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.22838.i = phi i64 [ %i.fl, %.lr.ph.i ], [ %.22838.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.22539.i, i64 1
  %i.di = load i8, ptr %.22539.i, align 1, !tbaa !21
  %i.dj = zext i8 %i.di to i64
  %i.dk = mul i64 %i.dj, 2870177450012600261
  %i.dl = xor i64 %i.dk, %.240.i                  ; 2 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 11)
  %i.dn = mul i64 %i.dm, -7046029288634856825
  %i.do = getelementptr inbounds nuw i8, ptr %.22539.i, i64 2
  %i.dp = load i8, ptr %i.dh, align 1, !tbaa !21
  %i.dq = zext i8 %i.dp to i64
  %i.dr = mul i64 %i.dq, 2870177450012600261
  %i.ds = xor i64 %i.dr, %i.dn                    ; 2 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 11)
  %i.du = mul i64 %i.dt, -7046029288634856825
  %i.dv = getelementptr inbounds nuw i8, ptr %.22539.i, i64 3
  %i.dw = load i8, ptr %i.do, align 1, !tbaa !21
  %i.dx = zext i8 %i.dw to i64
  %i.dy = mul i64 %i.dx, 2870177450012600261
  %i.dz = xor i64 %i.dy, %i.du                    ; 2 uses
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 11)
  %i.eb = mul i64 %i.ea, -7046029288634856825
  %i.ec = getelementptr inbounds nuw i8, ptr %.22539.i, i64 4
  %i.ed = load i8, ptr %i.dv, align 1, !tbaa !21
  %i.ee = zext i8 %i.ed to i64
  %i.ef = mul i64 %i.ee, 2870177450012600261
  %i.eg = xor i64 %i.ef, %i.eb                    ; 2 uses
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 11)
  %i.ei = mul i64 %i.eh, -7046029288634856825
end_hunk_0
begin_hunk_1_@_ZL22XXH3_len_129to240_128bPKhmS0_mm:bb.a
  %i.cy = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.cz = insertelement <2 x i64> %i.cy, i64 %i.cs, i64 1
  %i.da = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.db = insertelement <2 x i64> %i.da, i64 %i.ct, i64 1
  %i.dc = xor <2 x i64> %i.cz, %i.db
  %i.dd = load <2 x i64>, ptr %i.cw, align 1, !tbaa !27 ; 3 uses
  %i.de = load <4 x i64>, ptr %i.cv, align 1, !tbaa !27 ; 2 uses
  %i.df = shufflevector <4 x i64> %i.de, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dg = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.dh = shufflevector <2 x i64> %i.dg, <2 x i64> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.di = add <2 x i64> %i.df, %i.dh
  %i.dj = shufflevector <4 x i64> %i.de, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.dk = sub <2 x i64> %i.dj, %i.dh
  %i.dl = insertelement <2 x i64> %i.dd, i64 %.val66.3, i64 1
  %i.dm = xor <2 x i64> %i.dk, %i.dl
  %i.dn = zext <2 x i64> %i.dm to <2 x i128>
  %i.do = insertelement <2 x i64> %i.dd, i64 %.val71.3, i64 0
  %i.dp = xor <2 x i64> %i.di, %i.do
  %i.dq = zext <2 x i64> %i.dp to <2 x i128>
  %i.dr = mul nuw <2 x i128> %i.dn, %i.dq         ; 3 uses
  %i.ds = extractelement <2 x i128> %i.dr, i64 0
  %i.dt = lshr i128 %i.ds, 64
  %i.du = extractelement <2 x i128> %i.dr, i64 1
  %i.dv = lshr i128 %i.du, 64
  %i.dw = insertelement <2 x i128> poison, i128 %i.dt, i64 0
  %i.dx = insertelement <2 x i128> %i.dw, i128 %i.dv, i64 1
  %i.dy = xor <2 x i128> %i.dx, %i.dr
  %i.dz = trunc <2 x i128> %i.dy to <2 x i64>
  %i.ea = add <2 x i64> %i.dc, %i.dz
  %i.eb = insertelement <2 x i64> poison, i64 %.val71.3, i64 0
  %i.ec = insertelement <2 x i64> %i.eb, i64 %.val66.3, i64 1
  %i.ed = add <2 x i64> %i.dd, %i.ec
  %i.ee = shufflevector <2 x i64> %i.ed, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = xor <2 x i64> %i.ea, %i.ee              ; 2 uses
  %i.eg = lshr <2 x i64> %i.ef, splat (i64 37)
  %i.eh = xor <2 x i64> %i.eg, %i.ef
  %i.ei = mul <2 x i64> %i.eh, splat (i64 1609587791953885689) ; 2 uses
  %i.ej = lshr <2 x i64> %i.ei, splat (i64 32)
  %i.ek = xor <2 x i64> %i.ej, %i.ei              ; 2 uses
  %.not99 = icmp samesign ult i64 %1, 160
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eo = load <2 x i64>, ptr %i.en, align 1, !tbaa !27 ; 3 uses
  %i.ep = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.el, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !27
  %i.eq = shufflevector <4 x i64> %i.ep, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.er = load <4 x i64>, ptr %i.em, align 1, !tbaa !27 ; 2 uses
  %i.es = shufflevector <4 x i64> %i.er, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.et = add <2 x i64> %i.es, %i.dh
  %i.eu = shufflevector <2 x i64> %i.eq, <2 x i64> %i.eo, <2 x i32> <i32 0, i32 3>
  %i.ev = xor <2 x i64> %i.et, %i.eu
  %i.ew = shufflevector <4 x i64> %i.er, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ex = sub <2 x i64> %i.ew, %i.dh
  %i.ey = shufflevector <2 x i64> %i.eo, <2 x i64> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.ez = xor <2 x i64> %i.ex, %i.ey
  %i.fa = zext <2 x i64> %i.ev to <2 x i128>
  %i.fb = zext <2 x i64> %i.ez to <2 x i128>
  %i.fc = mul nuw <2 x i128> %i.fb, %i.fa         ; 2 uses
  %i.fd = lshr <2 x i128> %i.fc, splat (i128 64)
  %i.fe = xor <2 x i128> %i.fd, %i.fc
  %i.ff = trunc <2 x i128> %i.fe to <2 x i64>
  %i.fg = add <2 x i64> %i.ek, %i.ff
  %i.fh = add <2 x i64> %i.eo, %i.eq
  %i.fi = shufflevector <2 x i64> %i.fh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = xor <2 x i64> %i.fg, %i.fi              ; 2 uses
  %.not = icmp samesign ult i64 %1, 192
  br i1 %.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fn = load <2 x i64>, ptr %i.fm, align 1, !tbaa !27 ; 3 uses
  %i.fo = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.fk, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !27
  %i.fp = shufflevector <4 x i64> %i.fo, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.fq = load <4 x i64>, ptr %i.fl, align 1, !tbaa !27 ; 2 uses
  %i.fr = shufflevector <4 x i64> %i.fq, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fs = add <2 x i64> %i.fr, %i.dh
  %i.ft = shufflevector <2 x i64> %i.fp, <2 x i64> %i.fn, <2 x i32> <i32 0, i32 3>
  %i.fu = xor <2 x i64> %i.fs, %i.ft
  %i.fv = shufflevector <4 x i64> %i.fq, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fw = sub <2 x i64> %i.fv, %i.dh
  %i.fx = shufflevector <2 x i64> %i.fn, <2 x i64> %i.fp, <2 x i32> <i32 0, i32 3>
  %i.fy = xor <2 x i64> %i.fw, %i.fx
  %i.fz = zext <2 x i64> %i.fu to <2 x i128>
  %i.ga = zext <2 x i64> %i.fy to <2 x i128>
  %i.gb = mul nuw <2 x i128> %i.ga, %i.fz         ; 2 uses
  %i.gc = lshr <2 x i128> %i.gb, splat (i128 64)
  %i.gd = xor <2 x i128> %i.gc, %i.gb
  %i.ge = trunc <2 x i128> %i.gd to <2 x i64>
  %i.gf = add <2 x i64> %i.fj, %i.ge
  %i.gg = add <2 x i64> %i.fn, %i.fp
  %i.gh = shufflevector <2 x i64> %i.gg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = xor <2 x i64> %i.gf, %i.gh              ; 2 uses
  %.not.1 = icmp samesign ult i64 %1, 224
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 67
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gm = load <2 x i64>, ptr %i.gl, align 1, !tbaa !27 ; 3 uses
  %i.gn = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr nonnull align 1 %i.gj, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison), !tbaa !27
  %i.go = shufflevector <4 x i64> %i.gn, <4 x i64> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.gp = load <4 x i64>, ptr %i.gk, align 1, !tbaa !27 ; 2 uses
  %i.gq = shufflevector <4 x i64> %i.gp, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.gr = add <2 x i64> %i.gq, %i.dh
  %i.gs = shufflevector <2 x i64> %i.go, <2 x i64> %i.gm, <2 x i32> <i32 0, i32 3>
  %i.gt = xor <2 x i64> %i.gr, %i.gs
  %i.gu = shufflevector <4 x i64> %i.gp, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.gv = sub <2 x i64> %i.gu, %i.dh
  %i.gw = shufflevector <2 x i64> %i.gm, <2 x i64> %i.go, <2 x i32> <i32 0, i32 3>
  %i.gx = xor <2 x i64> %i.gv, %i.gw
  %i.gy = zext <2 x i64> %i.gt to <2 x i128>
  %i.gz = zext <2 x i64> %i.gx to <2 x i128>
  %i.ha = mul nuw <2 x i128> %i.gz, %i.gy         ; 2 uses
  %i.hb = lshr <2 x i128> %i.ha, splat (i128 64)
  %i.hc = xor <2 x i128> %i.hb, %i.ha
  %i.hd = trunc <2 x i128> %i.hc to <2 x i64>
  %i.he = add <2 x i64> %i.gi, %i.hd
  %i.hf = add <2 x i64> %i.gm, %i.go
  %i.hg = shufflevector <2 x i64> %i.hf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hh = xor <2 x i64> %i.he, %i.hg
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.a
  %i.hi = phi <2 x i64> [ %i.ek, %bb.a ], [ %i.fj, %.lr.ph ], [ %i.gi, %.lr.ph.1 ], [ %i.hh, %.lr.ph.2 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -32
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 103
  %i.hm = load <4 x i64>, ptr %i.hk, align 1, !tbaa !27 ; 4 uses
  %i.hn = load <4 x i64>, ptr %i.hl, align 1, !tbaa !27 ; 2 uses
  %i.ho = shufflevector <4 x i64> %i.hn, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.hp = sub <2 x i64> %i.ho, %i.dh
  %i.hq = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %i.hr = xor <2 x i64> %i.hp, %i.hq
  %i.hs = shufflevector <4 x i64> %i.hn, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ht = add <2 x i64> %i.hs, %i.dh
  %i.hu = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.hv = xor <2 x i64> %i.ht, %i.hu
  %i.hw = zext <2 x i64> %i.hr to <2 x i128>
  %i.hx = zext <2 x i64> %i.hv to <2 x i128>
  %i.hy = mul nuw <2 x i128> %i.hx, %i.hw         ; 2 uses
  %i.hz = lshr <2 x i128> %i.hy, splat (i128 64)
  %i.ia = xor <2 x i128> %i.hz, %i.hy
  %i.ib = trunc <2 x i128> %i.ia to <2 x i64>
  %i.ic = add <2 x i64> %i.hi, %i.ib
  %i.id = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ie = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.if = add <2 x i64> %i.id, %i.ie
  %i.ig = xor <2 x i64> %i.ic, %i.if              ; 2 uses
  %i.ih = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ig) ; 2 uses
  %i.ii = mul <2 x i64> %i.ig, <i64 -7046029288634856825, i64 -8796714831421723037> ; 2 uses
  %i.ij = sub i64 %1, %3
  %i.ik = mul i64 %i.ij, -4417276706812531889
  %i.il = extractelement <2 x i64> %i.ii, i64 0
  %i.im = add i64 %i.il, %i.ik
  %i.in = extractelement <2 x i64> %i.ii, i64 1
  %i.io = add i64 %i.im, %i.in                    ; 2 uses
  %i.ip = lshr i64 %i.ih, 37
  %i.iq = xor i64 %i.ip, %i.ih
  %i.ir = mul i64 %i.iq, 1609587791953885689      ; 2 uses
  %i.is = lshr i64 %i.ir, 32
  %i.it = xor i64 %i.is, %i.ir
  %i.iu = lshr i64 %i.io, 37
  %i.iv = xor i64 %i.iu, %i.io
  %i.iw = mul i64 %i.iv, 1609587791953885689      ; 2 uses
  %i.ix = lshr i64 %i.iw, 32
  %i.iy = xor i64 %i.ix, %i.iw
  %i.iz = sub i64 0, %i.iy
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.it, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.iz, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.bswap.v4i64(<4 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i64> @llvm.masked.load.v4i64.p0(ptr captures(none), <4 x i1>, <4 x i64>) #31

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { mustprogress nofree noinline nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #29 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !19}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 4}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{i64 2148225614}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!13, !13, i64 0}
!22 = !{!"_ZTS13XXH32_state_s", !14, i64 0, !14, i64 4, !13, i64 8, !13, i64 24, !14, i64 40, !14, i64 44}
!23 = !{!22, !14, i64 0}
!24 = !{!22, !14, i64 4}
!25 = !{!22, !14, i64 40}
!26 = !{!"long", !13, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTS13XXH64_state_s", !26, i64 0, !13, i64 8, !13, i64 40, !14, i64 72, !14, i64 76, !26, i64 80}
!29 = !{!28, !26, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"any pointer", !13, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"_ZTS12XXH3_state_s", !13, i64 0, !13, i64 64, !13, i64 256, !14, i64 512, !14, i64 516, !26, i64 520, !26, i64 528, !26, i64 536, !26, i64 544, !26, i64 552, !26, i64 560, !32, i64 568}
!34 = !{!33, !26, i64 552}
!35 = !{!33, !32, i64 568}
!36 = !{!33, !26, i64 544}
!37 = !{!33, !26, i64 536}
!38 = !{!33, !14, i64 516}
!39 = !{!33, !26, i64 528}
!40 = !{!33, !14, i64 512}
!41 = !{!33, !26, i64 520}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !19}
!52 = !{!28, !14, i64 72}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19, !58, !59}
!57 = distinct !{!57, !19, !59, !58}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !19}
!61 = !{i64 2152231085}
end_hunk_1
