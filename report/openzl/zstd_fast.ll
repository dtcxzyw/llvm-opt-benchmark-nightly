Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zstd_fast?download=true
inline.NumInlined: 470
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ZSTD_compressBlock_fast:bb.a
  store i32 1, ptr %i.cmg, align 4, !tbaa !50
  %i.cmi = add i64 %.3.i45.i1239, 1               ; 2 uses
  %i.cmj = icmp ugt i64 %i.cmi, 65535
  br i1 %i.cmj, label %bb.no, label %ZSTD_storeSeqOnly.exit6.i1245, !prof !51

bb.no:                                            ; preds = %ZSTD_storeSeq.exit.i1244
  store i32 2, ptr %i.cbp, align 8, !tbaa !45
  %i.cmk = load ptr, ptr %1, align 8, !tbaa !46
  %i.cml = ptrtoint ptr %i.cmg to i64
  %i.cmm = ptrtoint ptr %i.cmk to i64
  %i.cmn = sub i64 %i.cml, %i.cmm
  %i.cmo = lshr exact i64 %i.cmn, 3
  %i.cmp = trunc i64 %i.cmo to i32
  store i32 %i.cmp, ptr %i.cbr, align 4, !tbaa !47
  br label %ZSTD_storeSeqOnly.exit6.i1245

ZSTD_storeSeqOnly.exit6.i1245:                    ; preds = %bb.no, %ZSTD_storeSeq.exit.i1244
  %i.cmq = trunc i64 %i.cmi to i16
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmg, i64 6
  store i16 %i.cmq, ptr %i.cmr, align 2, !tbaa !52
  %i.cms = getelementptr inbounds nuw i8, ptr %i.cmg, i64 8 ; 2 uses
  store ptr %i.cms, ptr %i.cbq, align 8, !tbaa !39
  %.not287.i.i1246 = icmp ugt ptr %i.cme, %i.ae
  br i1 %.not287.i.i1246, label %.critedge3.i.i1225, label %.lr.ph206.i1219

.critedge3.i.i1225:                               ; preds = %ZSTD_storeSeqOnly.exit6.i1245, %.lr.ph206.i1219, %bb.na, %ZSTD_storeSeqOnly.exit.i1214
  %.6.i.i1226 = phi ptr [ %i.cka, %bb.na ], [ %i.cka, %ZSTD_storeSeqOnly.exit.i1214 ], [ %.5.i203.i1222, %.lr.ph206.i1219 ], [ %i.cme, %ZSTD_storeSeqOnly.exit6.i1245 ] ; 4 uses
  %.4257.i.i1227 = phi i32 [ %.2255.i.i1195, %bb.na ], [ %.2255.i.i1195, %ZSTD_storeSeqOnly.exit.i1214 ], [ %.3256.i204.i1221, %.lr.ph206.i1219 ], [ %.3251.i205.i1220, %ZSTD_storeSeqOnly.exit6.i1245 ] ; 2 uses
  %.4252.i.i1228 = phi i32 [ 0, %bb.na ], [ %.2250.i.i1196, %ZSTD_storeSeqOnly.exit.i1214 ], [ %.3251.i205.i1220, %.lr.ph206.i1219 ], [ %.3256.i204.i1221, %ZSTD_storeSeqOnly.exit6.i1245 ] ; 2 uses
  %i.cmt = getelementptr inbounds nuw i8, ptr %.6.i.i1226, i64 %i.l ; 2 uses
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.cmt, i64 1 ; 2 uses
  %.not281.i.i1229 = icmp ult ptr %i.cmu, %i.ae
  br i1 %.not281.i.i1229, label %bb.lv, label %ZSTD_compressBlock_fast_noDict_4_1.exit

ZSTD_compressBlock_fast_noDict_4_1.exit:          ; preds = %.critedge3.i.i1009, %bb.kg, %bb.kc, %.critedge3.i.i794, %bb.il, %bb.ih, %.critedge3.i.i1225, %bb.mb, %bb.lx, %.critedge3.i.i644, %bb.gq, %bb.gm, %.critedge3.i.i306, %bb.cz, %.critedge3.i.i130, %bb.be, %.critedge3.i.i487, %bb.eu, %.critedge3.i.i, %bb.j, %bb.lu, %bb.jz, %bb.ie, %bb.gj, %bb.en, %bb.cs, %bb.ax, %bb.c
  %.1254.i171.i1136.sink2955 = phi i32 [ %.1254.i217.fr.i716, %bb.il ], [ %.1254.i217.fr.i1147, %bb.mb ], [ %.1254.i201.i235, %bb.cz ], [ %.1254.i217.fr.i931, %bb.kg ], [ %.4257.i.i489, %.critedge3.i.i487 ], [ %.4257.i.i, %.critedge3.i.i ], [ %.4257.i.i796, %.critedge3.i.i794 ], [ %.1254.i217.fr.i, %bb.gq ], [ %.0253.i.i, %bb.c ], [ %.1254.i201.i, %bb.j ], [ %.0253.i.i, %bb.ax ], [ %.1254.i201.i416, %bb.eu ], [ %.0253.i.i, %bb.cs ], [ 0, %bb.kc ], [ %.0253.i.i, %bb.en ], [ %.4257.i.i132, %.critedge3.i.i130 ], [ %.1254.i201.i60, %bb.be ], [ %.0253.i.i, %bb.gj ], [ 0, %bb.lx ], [ %.4257.i.i646, %.critedge3.i.i644 ], [ %.0253.i.i, %bb.ie ], [ 0, %bb.ih ], [ %.4257.i.i1227, %.critedge3.i.i1225 ], [ %.0253.i.i, %bb.jz ], [ 0, %bb.gm ], [ %.4257.i.i308, %.critedge3.i.i306 ], [ %.0253.i.i, %bb.lu ], [ %.4257.i.i1011, %.critedge3.i.i1009 ] ; 2 uses
  %.1249.i169.i1137.sink2953 = phi i32 [ %.1249.i219.i712, %bb.il ], [ %.1249.i219.i1143, %bb.mb ], [ %.1249.i202.i234, %bb.cz ], [ %.1249.i219.i927, %bb.kg ], [ %.4252.i.i490, %.critedge3.i.i487 ], [ %.4252.i.i, %.critedge3.i.i ], [ %.4252.i.i797, %.critedge3.i.i794 ], [ %.1249.i219.i, %bb.gq ], [ %spec.select.i.i, %bb.c ], [ %.1249.i202.i, %bb.j ], [ %spec.select.i.i, %bb.ax ], [ %.1249.i202.i415, %bb.eu ], [ %spec.select.i.i, %bb.cs ], [ %.1249.i219.i927, %bb.kc ], [ %spec.select.i.i, %bb.en ], [ %.4252.i.i133, %.critedge3.i.i130 ], [ %.1249.i202.i59, %bb.be ], [ %spec.select.i.i, %bb.gj ], [ %.1249.i219.i1143, %bb.lx ], [ %.4252.i.i647, %.critedge3.i.i644 ], [ %spec.select.i.i, %bb.ie ], [ %.1249.i219.i712, %bb.ih ], [ %.4252.i.i1228, %.critedge3.i.i1225 ], [ %spec.select.i.i, %bb.jz ], [ %.1249.i219.i, %bb.gm ], [ %.4252.i.i309, %.critedge3.i.i306 ], [ %spec.select.i.i, %bb.lu ], [ %.4252.i.i1012, %.critedge3.i.i1009 ] ; 2 uses
  %.0270.i173.i1135.sink = phi ptr [ %.0270.i215.i715, %bb.il ], [ %.0270.i215.i1146, %bb.mb ], [ %.0270.i199.i237, %bb.cz ], [ %.0270.i215.i930, %bb.kg ], [ %.6.i.i488, %.critedge3.i.i487 ], [ %.6.i.i, %.critedge3.i.i ], [ %.6.i.i795, %.critedge3.i.i794 ], [ %.0270.i215.i, %bb.gq ], [ %3, %bb.c ], [ %.0270.i199.i, %bb.j ], [ %3, %bb.ax ], [ %.0270.i199.i418, %bb.eu ], [ %3, %bb.cs ], [ %.0270.i215.i930, %bb.kc ], [ %3, %bb.en ], [ %.6.i.i131, %.critedge3.i.i130 ], [ %.0270.i199.i62, %bb.be ], [ %3, %bb.gj ], [ %.0270.i215.i1146, %bb.lx ], [ %.6.i.i645, %.critedge3.i.i644 ], [ %3, %bb.ie ], [ %.0270.i215.i715, %bb.ih ], [ %.6.i.i1226, %.critedge3.i.i1225 ], [ %3, %bb.jz ], [ %.0270.i215.i, %bb.gm ], [ %.6.i.i307, %.critedge3.i.i306 ], [ %3, %bb.lu ], [ %.6.i.i1010, %.critedge3.i.i1009 ]
  %.0247.i.i1138 = select i1 %i.av, i32 %i.af, i32 0
  %spec.select289.i.i1139 = select i1 %i.au, i32 %i.ah, i32 0
  %i.cmv = icmp ne i32 %.1254.i171.i1136.sink2955, 0 ; 2 uses
  %or.cond.i.i1140 = select i1 %i.av, i1 %i.cmv, i1 false
  %i.cmw = select i1 %or.cond.i.i1140, i32 %i.af, i32 %spec.select289.i.i1139
  %i.cmx = select i1 %i.cmv, i32 %.1254.i171.i1136.sink2955, i32 %.0247.i.i1138
  store i32 %i.cmx, ptr %2, align 4, !tbaa !25
  %.not288.i.i1141 = icmp eq i32 %.1249.i169.i1137.sink2953, 0
  %i.cmy = select i1 %.not288.i.i1141, i32 %i.cmw, i32 %.1249.i169.i1137.sink2953
  store i32 %i.cmy, ptr %i.ag, align 4, !tbaa !25
  %i.cmz = ptrtoint ptr %i.ad to i64
  %i.cna = ptrtoint ptr %.0270.i173.i1135.sink to i64
  %i.cnb = sub i64 %i.cmz, %i.cna
  ret i64 %i.cnb
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_fast_dictMatchState(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 18 uses
  %i.l = zext i32 %i.i to i64                     ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29   ; 34 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 42 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 16 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !25     ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25   ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !143  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !29  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 18 uses
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad ; 5 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !144 ; 14 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %.neg.i.i = sub i64 %i.ah, %i.ag
  %.neg331.i.i = trunc i64 %.neg.i.i to i32
  %i.ai = add i32 %i.n, %.neg331.i.i              ; 12 uses
  %i.aj = ptrtoint ptr %3 to i64
  %i.ak = ptrtoint ptr %i.p to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !23 ; 12 uses
  %i.as = ptrtoint ptr %i.k to i64                ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.au = load i32, ptr %i.at, align 8, !tbaa !145
  %.not.i.i = icmp eq i32 %i.au, 0                ; 4 uses
  switch i32 %i.b, label %bb.b [
    i32 7, label %bb.gf
    i32 5, label %bb.bl
    i32 6, label %bb.dv
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = shl nuw i64 4, %i.av
  %.not207.i = icmp ugt i32 %i.ar, 61
  br i1 %.not207.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0284.i174.i = phi i64 [ %i.ay, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0284.i174.i
  tail call void @llvm.prefetch.p0(ptr %i.ax, i32 0, i32 2, i32 1)
  %i.ay = add nuw i64 %.0284.i174.i, 64           ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !92

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.c, %bb.b
  %i.ba = add nsw i64 %4, -8
  %.not332.i197.i = icmp slt i64 %i.ba, %i.l
  br i1 %.not332.i197.i, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %.lr.ph203.i

.lr.ph203.i:                                      ; preds = %.loopexit.i
  %.0307.i196.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.bb = and i64 %i.ap, 4294967295
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %i.bd
  %i.bf = sub i32 32, %i.f                        ; 4 uses
  %i.bg = sub i32 24, %i.ar                       ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.bp = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.bq = zext i32 %i.ai to i64
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.ac, i64 %i.br
  br label %bb.d

bb.d:                                             ; preds = %.thread122.i, %.lr.ph203.i
  %.0307.i202.i = phi ptr [ %.0307.i196.i, %.lr.ph203.i ], [ %.0307.i.i, %.thread122.i ]
  %.0285.i201.i = phi i32 [ %i.u, %.lr.ph203.i ], [ %.7.i.i, %.thread122.i ] ; 3 uses
  %.0291.i200.i = phi i32 [ %i.s, %.lr.ph203.i ], [ %.7298.i.i, %.thread122.i ] ; 8 uses
  %.0301.i199.i = phi ptr [ %3, %.lr.ph203.i ], [ %.9320.i.i, %.thread122.i ] ; 26 uses
  %.0311.i198.i = phi ptr [ %i.be, %.lr.ph203.i ], [ %.9320.i.i, %.thread122.i ] ; 3 uses
  %.0311.i.val11.i = load i32, ptr %.0311.i198.i, align 1, !tbaa !25
  %i.bt = mul i32 %.0311.i.val11.i, -1640531535   ; 2 uses
  %i.bu = lshr i32 %i.bt, %i.bg                   ; 2 uses
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  %i.bz = xor i32 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.0311.i198.i, i64 256
  %invariant.op2252.a = sub i32 1, %.0291.i200.i
  br label %bb.e

bb.e:                                             ; preds = %bb.bd, %bb.d
  %.1312.i.i = phi ptr [ %.0311.i198.i, %bb.d ], [ %.1308.i.i, %bb.bd ] ; 16 uses
  %.1308.i.i = phi ptr [ %.0307.i202.i, %bb.d ], [ %i.os, %bb.bd ] ; 4 uses
  %.pn209.i = phi i32 [ %i.bt, %bb.d ], [ %i.cd, %bb.bd ]
  %.0276.i.i = phi i32 [ %i.by, %bb.d ], [ %i.ox, %bb.bd ]
  %.0274.i.in.in.in.i = phi i32 [ %i.bz, %bb.d ], [ %i.oy, %bb.bd ]
  %.0267.i.i = phi i64 [ %i.l, %bb.d ], [ %.1268.i.i, %bb.bd ]
  %.0264.i.i = phi ptr [ %i.ca, %bb.d ], [ %.1265.i.i, %bb.bd ] ; 2 uses
  %.0278.i.in.i = lshr i32 %.pn209.i, %i.bf
  %.0278.i.i = zext i32 %.0278.i.in.i to i64
  %.0272.i.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0278.i.i ; 2 uses
  %.0272.i.i = load i32, ptr %.0272.i.in.i, align 4, !tbaa !25 ; 5 uses
  %.0274.i.in.in.i = and i32 %.0274.i.in.in.in.i, 255
  %.0274.i.in.i = icmp eq i32 %.0274.i.in.in.i, 0
  %.pn.i = ptrtoint ptr %.1312.i.i to i64         ; 5 uses
  %.0270.i.in.i = sub i64 %.pn.i, %i.as           ; 2 uses
  %.0270.i.i = trunc i64 %.0270.i.in.i to i32     ; 4 uses
  %i.cb = zext i32 %.0272.i.i to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cb ; 4 uses
  %.reass.i.reass.reass.reass = add i32 %.0270.i.i, %invariant.op2252.a ; 4 uses
  %.1308.i.val10.i = load i32, ptr %.1308.i.i, align 1, !tbaa !25
  %i.cd = mul i32 %.1308.i.val10.i, -1640531535   ; 2 uses
  %i.ce = lshr i32 %i.cd, %i.bg                   ; 2 uses
  store i32 %.0270.i.i, ptr %.0272.i.in.i, align 4, !tbaa !25
  %i.cf = sub i32 %.reass.i.reass.reass.reass, %i.n
  %5 = icmp ugt i32 %i.cf, -4
  br i1 %5, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = icmp ult i32 %.reass.i.reass.reass.reass, %i.n ; 2 uses
  %i.ch = sub i32 %.reass.i.reass.reass.reass, %i.ai
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ci
  %i.ck = zext i32 %.reass.i.reass.reass.reass to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ck
  %i.cm = select i1 %i.cg, ptr %i.cj, ptr %i.cl   ; 2 uses
  %.val6.i.a = load i32, ptr %i.cm, align 1, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %.1312.i.i, i64 1
  %.val5.i.a = load i32, ptr %i.cn, align 1, !tbaa !25
  %i.co = icmp eq i32 %.val6.i.a, %.val5.i.a
  br i1 %i.co, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %.1312.i.i.lcssa20792083 = ptrtoaddr ptr %.1312.i.i to i64 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1312.i.i, i64 1 ; 5 uses
  %i.cq = select i1 %i.cg, ptr %i.af, ptr %i.q
  %i.cr = getelementptr inbounds nuw i8, ptr %.1312.i.i, i64 5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.ct = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs, ptr noundef %i.q, ptr noundef %i.cq, ptr noundef %i.p) ; 2 uses
  %i.cu = add i64 %i.ct, 4                        ; 2 uses
  %i.cv = ptrtoint ptr %i.cp to i64
  %i.cw = ptrtoint ptr %.0301.i199.i to i64       ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 7 uses
  %.not.i357.i.i = icmp ugt ptr %i.cp, %i.bh
  %i.cy = load ptr, ptr %i.bi, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i357.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0301.i.val.i = load <2 x i64>, ptr %.0301.i199.i, align 1, !tbaa !33
  store <2 x i64> %.0301.i.val.i, ptr %i.cy, align 1, !tbaa !33
  %i.cz = icmp ugt i64 %i.cx, 16
  %i.da = load ptr, ptr %i.bi, align 8, !tbaa !38 ; 4 uses
  br i1 %i.cz, label %bb.i, label %ZSTD_storeSeq.exit358.i.thread.i

ZSTD_storeSeq.exit358.i.thread.i:                 ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  store ptr %i.db, ptr %i.bi, align 8, !tbaa !38
  %.pre.i.a = load ptr, ptr %i.bl, align 8, !tbaa !39
  br label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.0301.i199.i, i64 16 ; 2 uses
  %i.de = getelementptr i8, ptr %i.da, i64 %i.cx
  %.val13.i = load <2 x i64>, ptr %i.dd, align 1, !tbaa !33
  store <2 x i64> %.val13.i, ptr %i.dc, align 1, !tbaa !33
  %i.df = icmp slt i64 %i.cx, 33
  br i1 %i.df, label %ZSTD_storeSeq.exit358.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.pn.i.i.i = phi ptr [ %i.dd, %bb.j ], [ %i.di, %bb.k ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.dg, %bb.j ], [ %i.dj, %bb.k ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.i.val.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !33
  store <2 x i64> %.130.i.i.val.i, ptr %.1.i.i.i, align 1, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val12.i = load <2 x i64>, ptr %i.di, align 1, !tbaa !33
  store <2 x i64> %.val12.i, ptr %i.dh, align 1, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.de
  br i1 %i.dk, label %bb.k, label %ZSTD_storeSeq.exit358.i.i, !llvm.loop !0

bb.l:                                             ; preds = %bb.g
  %.not.i20.i = icmp ugt ptr %.0301.i199.i, %i.bh
  br i1 %.not.i20.i, label %ZSTD_wildcopy.exit.i24.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = sub i64 %i.bj, %i.cw                    ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.cy, i64 %i.dl ; 3 uses
  %.val19.i.i = load <2 x i64>, ptr %.0301.i199.i, align 1, !tbaa !33
  store <2 x i64> %.val19.i.i, ptr %i.cy, align 1, !tbaa !33
  %i.dn = icmp slt i64 %i.dl, 17
  br i1 %i.dn, label %ZSTD_wildcopy.exit.i24.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.pn.i.i21.i = phi ptr [ %.0301.i199.i, %bb.n ], [ %i.dq, %bb.o ] ; 2 uses
  %.1.i.i22.i = phi ptr [ %i.do, %bb.n ], [ %i.dr, %bb.o ] ; 3 uses
  %.130.i.i23.i = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i, i64 16
  %.130.i.val.i.i = load <2 x i64>, ptr %.130.i.i23.i, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i.i, ptr %.1.i.i22.i, align 1, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %.1.i.i22.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i, i64 32 ; 2 uses
  %.val.i.i = load <2 x i64>, ptr %i.dq, align 1, !tbaa !33
  store <2 x i64> %.val.i.i, ptr %i.dp, align 1, !tbaa !33
  %i.dr = getelementptr inbounds nuw i8, ptr %.1.i.i22.i, i64 32 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dm
  br i1 %i.ds, label %bb.o, label %ZSTD_wildcopy.exit.i24.i, !llvm.loop !0

ZSTD_wildcopy.exit.i24.i:                         ; preds = %bb.o, %bb.m, %bb.l
  %.014.i.i = phi ptr [ %.0301.i199.i, %bb.l ], [ %i.bh, %bb.m ], [ %i.bh, %bb.o ] ; 7 uses
  %.0.i25.i = phi ptr [ %i.cy, %bb.l ], [ %i.dm, %bb.m ], [ %i.dm, %bb.o ] ; 6 uses
  %i.dt = icmp ult ptr %.014.i.i, %i.cp
  br i1 %i.dt, label %iter.check1850, label %ZSTD_storeSeq.exit358.i.i

iter.check1850:                                   ; preds = %ZSTD_wildcopy.exit.i24.i
  %.014.i.i1832 = ptrtoaddr ptr %.014.i.i to i64  ; 2 uses
  %.0.i25.i1831 = ptrtoaddr ptr %.0.i25.i to i64
  %reass.sub1872.a = sub i64 %.pn.i, %.014.i.i1832
  %i.du = add i64 %reass.sub1872.a, 1             ; 7 uses
  %min.iters.check1834 = icmp ult i64 %i.du, 8
  %i.dv = sub i64 %.014.i.i1832, %.0.i25.i1831
  %diff.check1833.a = icmp ugt i64 %i.dv, -32
  %or.cond = select i1 %min.iters.check1834, i1 true, i1 %diff.check1833.a
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1835

vector.main.loop.iter.check1835:                  ; preds = %iter.check1850
  %min.iters.check1836 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check1836, label %vec.epilog.ph1854, label %vector.ph1837

vector.ph1837:                                    ; preds = %vector.main.loop.iter.check1835
  %i.dw = and i64 %i.du, 24
  %n.vec1838 = and i64 %i.du, -32                 ; 5 uses
  %i.dx = getelementptr i8, ptr %.0.i25.i, i64 %n.vec1838
  %i.dy = getelementptr i8, ptr %.014.i.i, i64 %n.vec1838
  br label %vector.body1839

vector.body1839:                                  ; preds = %vector.ph1837, %vector.body1839
  %index1840 = phi i64 [ 0, %vector.ph1837 ], [ %index.next1845, %vector.body1839 ] ; 3 uses
  %next.gep1841 = getelementptr i8, ptr %.0.i25.i, i64 %index1840 ; 2 uses
  %next.gep1842.a = getelementptr i8, ptr %.014.i.i, i64 %index1840 ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep1842.a, i64 16
  %wide.load1843 = load <16 x i8>, ptr %next.gep1842.a, align 1, !tbaa !33
  %wide.load1844.a = load <16 x i8>, ptr %i.dz, align 1, !tbaa !33
  %i.ea = getelementptr i8, ptr %next.gep1841, i64 16
  store <16 x i8> %wide.load1843, ptr %next.gep1841, align 1, !tbaa !33
  store <16 x i8> %wide.load1844.a, ptr %i.ea, align 1, !tbaa !33
  %index.next1845 = add nuw i64 %index1840, 32    ; 2 uses
  %i.eb = icmp eq i64 %index.next1845, %n.vec1838
  br i1 %i.eb, label %middle.block1846, label %vector.body1839, !llvm.loop !93

middle.block1846:                                 ; preds = %vector.body1839
  %cmp.n1847 = icmp eq i64 %i.du, %n.vec1838
  br i1 %cmp.n1847, label %ZSTD_storeSeq.exit358.i.i, label %vec.epilog.iter.check1852

vec.epilog.iter.check1852:                        ; preds = %middle.block1846
  %min.epilog.iters.check1853 = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check1853, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1854, !prof !42

vec.epilog.ph1854:                                ; preds = %vector.main.loop.iter.check1835, %vec.epilog.iter.check1852
  %vec.epilog.resume.val1848 = phi i64 [ %n.vec1838, %vec.epilog.iter.check1852 ], [ 0, %vector.main.loop.iter.check1835 ]
  %n.vec1855 = and i64 %i.du, -8                  ; 4 uses
  %i.ec = getelementptr i8, ptr %.0.i25.i, i64 %n.vec1855
  %i.ed = getelementptr i8, ptr %.014.i.i, i64 %n.vec1855
  br label %vec.epilog.vector.body1856

vec.epilog.vector.body1856:                       ; preds = %vec.epilog.vector.body1856, %vec.epilog.ph1854
  %index1857 = phi i64 [ %vec.epilog.resume.val1848, %vec.epilog.ph1854 ], [ %index.next1861, %vec.epilog.vector.body1856 ] ; 3 uses
  %next.gep1858 = getelementptr i8, ptr %.0.i25.i, i64 %index1857
  %next.gep1859.a = getelementptr i8, ptr %.014.i.i, i64 %index1857
  %wide.load1860 = load <8 x i8>, ptr %next.gep1859.a, align 1, !tbaa !33
  store <8 x i8> %wide.load1860, ptr %next.gep1858, align 1, !tbaa !33
  %index.next1861 = add nuw i64 %index1857, 8     ; 2 uses
  %i.ee = icmp eq i64 %index.next1861, %n.vec1855
  br i1 %i.ee, label %vec.epilog.middle.block1862, label %vec.epilog.vector.body1856, !llvm.loop !94

vec.epilog.middle.block1862:                      ; preds = %vec.epilog.vector.body1856
  %cmp.n1863 = icmp eq i64 %i.du, %n.vec1855
  br i1 %cmp.n1863, label %ZSTD_storeSeq.exit358.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1850, %vec.epilog.iter.check1852, %vec.epilog.middle.block1862
  %.121.i.i.ph = phi ptr [ %.0.i25.i, %iter.check1850 ], [ %i.dx, %vec.epilog.iter.check1852 ], [ %i.ec, %vec.epilog.middle.block1862 ] ; 2 uses
  %.11520.i.i.ph = phi ptr [ %.014.i.i, %iter.check1850 ], [ %i.dy, %vec.epilog.iter.check1852 ], [ %i.ed, %vec.epilog.middle.block1862 ] ; 3 uses
  %.11520.i.i.ph2078 = ptrtoaddr ptr %.11520.i.i.ph to i64 ; 2 uses
  %reass.sub2098.a = sub i64 %.1312.i.i.lcssa20792083, %.11520.i.i.ph2078
  %i.ef = add i64 %reass.sub2098.a, 1
  %i.eg = sub i64 %.1312.i.i.lcssa20792083, %.11520.i.i.ph2078
  %xtraiter2084.a = and i64 %i.ef, 7              ; 2 uses
  %lcmp.mod2085.not.a = icmp eq i64 %xtraiter2084.a, 0
  br i1 %lcmp.mod2085.not.a, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.121.i.i.prol = phi ptr [ %i.ej, %.lr.ph.i.i.prol ], [ %.121.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.11520.i.i.prol = phi ptr [ %i.eh, %.lr.ph.i.i.prol ], [ %.11520.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter2086.a = phi i64 [ %prol.iter2086.next.a, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.11520.i.i.prol, i64 1 ; 2 uses
  %i.ei = load i8, ptr %.11520.i.i.prol, align 1, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %.121.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ei, ptr %.121.i.i.prol, align 1, !tbaa !33
  %prol.iter2086.next.a = add i64 %prol.iter2086.a, 1 ; 2 uses
  %prol.iter2086.cmp.not.a = icmp eq i64 %prol.iter2086.next.a, %xtraiter2084.a
  br i1 %prol.iter2086.cmp.not.a, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !95

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.121.i.i.unr = phi ptr [ %.121.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ej, %.lr.ph.i.i.prol ]
  %.11520.i.i.unr = phi ptr [ %.11520.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.prol ]
  %i.ek = icmp ult i64 %i.eg, 7
  br i1 %i.ek, label %ZSTD_storeSeq.exit358.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.121.i.i = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %.121.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.11520.i.i = phi ptr [ %i.fg, %.lr.ph.i.i ], [ %.11520.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 1
  %i.em = load i8, ptr %.11520.i.i, align 1, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 1
  store i8 %i.em, ptr %.121.i.i, align 1, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 2
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !33
  %i.eq = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 2
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !33
  %i.er = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 3
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 3
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !33
  %i.eu = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 4
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !33
  %i.ew = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 4
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 5
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !33
  %i.ez = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 5
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 6
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !33
  %i.fc = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 6
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 7 ; 2 uses
  %i.fe = load i8, ptr %i.fa, align 1, !tbaa !33
  %i.ff = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 7
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !33
  %i.fg = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 8
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !33
  %i.fi = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 8
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !33
  %exitcond.not.i.i.7 = icmp eq ptr %i.fd, %.1312.i.i
  br i1 %exitcond.not.i.i.7, label %ZSTD_storeSeq.exit358.i.i, label %.lr.ph.i.i, !llvm.loop !96

ZSTD_storeSeq.exit358.i.i:                        ; preds = %bb.k, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block1846, %vec.epilog.middle.block1862, %ZSTD_wildcopy.exit.i24.i, %bb.i
  %i.fj = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.cx
  store ptr %i.fk, ptr %i.bi, align 8, !tbaa !38
  %i.fl = icmp ugt i64 %i.cx, 65535
  %.pre240.i.a = load ptr, ptr %i.bl, align 8, !tbaa !39 ; 3 uses
  br i1 %i.fl, label %bb.p, label %bb.q, !prof !44

bb.p:                                             ; preds = %ZSTD_storeSeq.exit358.i.i
  store i32 1, ptr %i.bk, align 8, !tbaa !45
  %i.fm = load ptr, ptr %1, align 8, !tbaa !46
  %i.fn = ptrtoint ptr %.pre240.i.a to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = lshr exact i64 %i.fp, 3
  %i.fr = trunc i64 %i.fq to i32
  store i32 %i.fr, ptr %i.bm, align 4, !tbaa !47
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ZSTD_storeSeq.exit358.i.i, %ZSTD_storeSeq.exit358.i.thread.i
  %i.fs = phi ptr [ %.pre.i.a, %ZSTD_storeSeq.exit358.i.thread.i ], [ %.pre240.i.a, %bb.p ], [ %.pre240.i.a, %ZSTD_storeSeq.exit358.i.i ] ; 4 uses
  %i.ft = trunc i64 %i.cx to i16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i16 %i.ft, ptr %i.fu, align 4, !tbaa !49
  store i32 1, ptr %i.fs, align 4, !tbaa !50
  %i.fv = add i64 %i.ct, 1                        ; 3 uses
  %i.fw = icmp ugt i64 %i.fv, 65535
  br i1 %i.fw, label %ZSTD_storeSeqOnly.exit.i.sink.split.i, label %ZSTD_storeSeqOnly.exit.i.i, !prof !51

bb.r:                                             ; preds = %bb.f, %bb.e
  br i1 %.0274.i.in.i, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.fx = lshr i32 %.0276.i.i, 8                  ; 3 uses
  %i.fy = icmp ugt i32 %i.fx, %i.aa
  br i1 %i.fy, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.fz = zext nneg i32 %i.fx to i64              ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fz
  %.val.i = load i32, ptr %i.ga, align 1, !tbaa !25
  %.1312.i.val.i = load i32, ptr %.1312.i.i, align 1, !tbaa !25
  %i.gb = icmp ne i32 %.val.i, %.1312.i.val.i
  %.not335.i.i = icmp ugt i32 %.0272.i.i, %i.n
  %or.cond.i.i = select i1 %i.gb, i1 true, i1 %.not335.i.i
  br i1 %or.cond.i.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fz ; 2 uses
  %i.gd = add i32 %i.ai, %i.fx
  %i.ge = sub i32 %.0270.i.i, %i.gd               ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1312.i.i, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gh = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gg, ptr noundef %i.q, ptr noundef %i.af, ptr noundef %i.p)
  %i.gi = add i64 %i.gh, 4                        ; 2 uses
  %i.gj = icmp ugt ptr %.1312.i.i, %.0301.i199.i
  br i1 %i.gj, label %.lr.ph179.i, label %.critedge.i.i

.lr.ph179.i:                                      ; preds = %bb.u, %bb.v
  %.0261.i178.i = phi ptr [ %i.gm, %bb.v ], [ %i.gc, %bb.u ]
  %.1281.i177.i = phi i64 [ %i.gp, %bb.v ], [ %i.gi, %bb.u ] ; 2 uses
  %.2313.i176.i = phi ptr [ %i.gk, %bb.v ], [ %.1312.i.i, %bb.u ] ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %.2313.i176.i, i64 -1 ; 4 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !33
  %i.gm = getelementptr inbounds i8, ptr %.0261.i178.i, i64 -1 ; 3 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !33
  %i.go = icmp eq i8 %i.gl, %i.gn
  br i1 %i.go, label %bb.v, label %.critedge.i.loopexit.i

bb.v:                                             ; preds = %.lr.ph179.i
  %i.gp = add i64 %.1281.i177.i, 1                ; 2 uses
  %i.gq = icmp ugt ptr %i.gk, %.0301.i199.i
  %i.gr = icmp ugt ptr %i.gm, %i.ae
  %i.gs = and i1 %i.gr, %i.gq
  br i1 %i.gs, label %.lr.ph179.i, label %.critedge.i.loopexit.i, !llvm.loop !97

.critedge.i.loopexit.i:                           ; preds = %bb.v, %.lr.ph179.i
  %.2313.i.lcssa.ph.i = phi ptr [ %i.gk, %bb.v ], [ %.2313.i176.i, %.lr.ph179.i ] ; 2 uses
  %.1281.i.lcssa.ph.i = phi i64 [ %i.gp, %bb.v ], [ %.1281.i177.i, %.lr.ph179.i ]
  %.pre247.i = ptrtoint ptr %.2313.i.lcssa.ph.i to i64
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.loopexit.i, %bb.u
  %.pre-phi248.i = phi i64 [ %.pre247.i, %.critedge.i.loopexit.i ], [ %.pn.i, %bb.u ]
  %.2313.i.lcssa.i = phi ptr [ %.2313.i.lcssa.ph.i, %.critedge.i.loopexit.i ], [ %.1312.i.i, %bb.u ] ; 6 uses
  %.1281.i.lcssa.i = phi i64 [ %.1281.i.lcssa.ph.i, %.critedge.i.loopexit.i ], [ %i.gi, %bb.u ] ; 3 uses
  %.2313.i.lcssa.i1797 = ptrtoaddr ptr %.2313.i.lcssa.i to i64 ; 3 uses
  %i.gt = ptrtoint ptr %.0301.i199.i to i64       ; 2 uses
  %i.gu = sub i64 %.pre-phi248.i, %i.gt           ; 7 uses
  %i.gv = add i32 %i.ge, 3
  %.not.i355.i.i = icmp ugt ptr %.2313.i.lcssa.i, %i.bh
  %i.gw = load ptr, ptr %i.bi, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i355.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i
  %.0301.i.val16.i = load <2 x i64>, ptr %.0301.i199.i, align 1, !tbaa !33
  store <2 x i64> %.0301.i.val16.i, ptr %i.gw, align 1, !tbaa !33
  %i.gx = icmp ugt i64 %i.gu, 16
  %i.gy = load ptr, ptr %i.bi, align 8, !tbaa !38 ; 4 uses
  br i1 %i.gx, label %bb.x, label %ZSTD_storeSeq.exit356.i.thread.i

ZSTD_storeSeq.exit356.i.thread.i:                 ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gu
  store ptr %i.gz, ptr %i.bi, align 8, !tbaa !38
  %.pre241.i.a = load ptr, ptr %i.bl, align 8, !tbaa !39
  br label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %.0301.i199.i, i64 16 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gy, i64 %i.gu
  %.val15.i = load <2 x i64>, ptr %i.hb, align 1, !tbaa !33
  store <2 x i64> %.val15.i, ptr %i.ha, align 1, !tbaa !33
  %i.hd = icmp slt i64 %i.gu, 33
  br i1 %i.hd, label %ZSTD_storeSeq.exit356.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.pn.i359.i.i = phi ptr [ %i.hb, %bb.y ], [ %i.hg, %bb.z ] ; 2 uses
  %.1.i360.i.i = phi ptr [ %i.he, %bb.y ], [ %i.hh, %bb.z ] ; 3 uses
  %.130.i361.i.i = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i, i64 16
  %.130.i361.i.val.i = load <2 x i64>, ptr %.130.i361.i.i, align 1, !tbaa !33
  store <2 x i64> %.130.i361.i.val.i, ptr %.1.i360.i.i, align 1, !tbaa !33
  %i.hf = getelementptr inbounds nuw i8, ptr %.1.i360.i.i, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i, i64 32 ; 2 uses
  %.val14.i = load <2 x i64>, ptr %i.hg, align 1, !tbaa !33
  store <2 x i64> %.val14.i, ptr %i.hf, align 1, !tbaa !33
  %i.hh = getelementptr inbounds nuw i8, ptr %.1.i360.i.i, i64 32 ; 2 uses
  %i.hi = icmp ult ptr %i.hh, %i.hc
  br i1 %i.hi, label %bb.z, label %ZSTD_storeSeq.exit356.i.i, !llvm.loop !0

bb.aa:                                            ; preds = %.critedge.i.i
  %.not.i26.i = icmp ugt ptr %.0301.i199.i, %i.bh
  br i1 %.not.i26.i, label %ZSTD_wildcopy.exit.i33.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = sub i64 %i.bj, %i.gt                    ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.gw, i64 %i.hj ; 3 uses
  %.val19.i27.i = load <2 x i64>, ptr %.0301.i199.i, align 1, !tbaa !33
  store <2 x i64> %.val19.i27.i, ptr %i.gw, align 1, !tbaa !33
  %i.hl = icmp slt i64 %i.hj, 17
  br i1 %i.hl, label %ZSTD_wildcopy.exit.i33.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i.i28.i = phi ptr [ %.0301.i199.i, %bb.ac ], [ %i.ho, %bb.ad ] ; 2 uses
  %.1.i.i29.i = phi ptr [ %i.hm, %bb.ac ], [ %i.hp, %bb.ad ] ; 3 uses
  %.130.i.i30.i = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i, i64 16
  %.130.i.val.i31.i = load <2 x i64>, ptr %.130.i.i30.i, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i31.i, ptr %.1.i.i29.i, align 1, !tbaa !33
  %i.hn = getelementptr inbounds nuw i8, ptr %.1.i.i29.i, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i, i64 32 ; 2 uses
  %.val.i32.i = load <2 x i64>, ptr %i.ho, align 1, !tbaa !33
  store <2 x i64> %.val.i32.i, ptr %i.hn, align 1, !tbaa !33
  %i.hp = getelementptr inbounds nuw i8, ptr %.1.i.i29.i, i64 32 ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %i.hk
  br i1 %i.hq, label %bb.ad, label %ZSTD_wildcopy.exit.i33.i, !llvm.loop !0

ZSTD_wildcopy.exit.i33.i:                         ; preds = %bb.ad, %bb.ab, %bb.aa
  %.014.i34.i = phi ptr [ %.0301.i199.i, %bb.aa ], [ %i.bh, %bb.ab ], [ %i.bh, %bb.ad ] ; 7 uses
  %.0.i35.i = phi ptr [ %i.gw, %bb.aa ], [ %i.hk, %bb.ab ], [ %i.hk, %bb.ad ] ; 6 uses
  %i.hr = icmp ult ptr %.014.i34.i, %.2313.i.lcssa.i
  br i1 %i.hr, label %iter.check1814.a, label %ZSTD_storeSeq.exit356.i.i

iter.check1814.a:                                 ; preds = %ZSTD_wildcopy.exit.i33.i
  %.014.i34.i1795 = ptrtoaddr ptr %.014.i34.i to i64 ; 2 uses
  %.0.i35.i1794 = ptrtoaddr ptr %.0.i35.i to i64
  %i.hs = sub i64 %.2313.i.lcssa.i1797, %.014.i34.i1795 ; 7 uses
  %min.iters.check1798.a = icmp ult i64 %i.hs, 8
  %i.ht = sub i64 %.014.i34.i1795, %.0.i35.i1794
  %diff.check1796.a = icmp ugt i64 %i.ht, -32
  %or.cond1873 = select i1 %min.iters.check1798.a, i1 true, i1 %diff.check1796.a
  br i1 %or.cond1873, label %.lr.ph.i36.i.preheader, label %vector.main.loop.iter.check1799.a

vector.main.loop.iter.check1799.a:                ; preds = %iter.check1814.a
  %min.iters.check1800.a = icmp ult i64 %i.hs, 32
  br i1 %min.iters.check1800.a, label %vec.epilog.ph1818.a, label %vector.ph1801.a

vector.ph1801.a:                                  ; preds = %vector.main.loop.iter.check1799.a
  %i.hu = and i64 %i.hs, 24
  %n.vec1802.a = and i64 %i.hs, -32               ; 5 uses
  %i.hv = getelementptr i8, ptr %.0.i35.i, i64 %n.vec1802.a
  %i.hw = getelementptr i8, ptr %.014.i34.i, i64 %n.vec1802.a
  br label %vector.body1803.a

vector.body1803.a:                                ; preds = %vector.ph1801.a, %vector.body1803.a
  %index1804.a = phi i64 [ 0, %vector.ph1801.a ], [ %index.next1809.a, %vector.body1803.a ] ; 3 uses
  %next.gep1805.a = getelementptr i8, ptr %.0.i35.i, i64 %index1804.a ; 2 uses
  %next.gep1806.a = getelementptr i8, ptr %.014.i34.i, i64 %index1804.a ; 2 uses
  %i.hx = getelementptr i8, ptr %next.gep1806.a, i64 16
  %wide.load1807.a = load <16 x i8>, ptr %next.gep1806.a, align 1, !tbaa !33
  %wide.load1808.a = load <16 x i8>, ptr %i.hx, align 1, !tbaa !33
  %i.hy = getelementptr i8, ptr %next.gep1805.a, i64 16
  store <16 x i8> %wide.load1807.a, ptr %next.gep1805.a, align 1, !tbaa !33
  store <16 x i8> %wide.load1808.a, ptr %i.hy, align 1, !tbaa !33
  %index.next1809.a = add nuw i64 %index1804.a, 32 ; 2 uses
  %i.hz = icmp eq i64 %index.next1809.a, %n.vec1802.a
  br i1 %i.hz, label %middle.block1810.a, label %vector.body1803.a, !llvm.loop !98

middle.block1810.a:                               ; preds = %vector.body1803.a
  %cmp.n1811.a = icmp eq i64 %i.hs, %n.vec1802.a
end_hunk_0
begin_hunk_1_@ZSTD_compressBlock_fast_dictMatchState:bb.a
  %i.mx = getelementptr i8, ptr %.014.i57.i, i64 %n.vec1782
  br label %vec.epilog.vector.body1783

vec.epilog.vector.body1783:                       ; preds = %vec.epilog.vector.body1783, %vec.epilog.ph1781
  %index1784 = phi i64 [ %vec.epilog.resume.val1775, %vec.epilog.ph1781 ], [ %index.next1788, %vec.epilog.vector.body1783 ] ; 3 uses
  %next.gep1785 = getelementptr i8, ptr %.0.i58.i, i64 %index1784
  %next.gep1786 = getelementptr i8, ptr %.014.i57.i, i64 %index1784
  %wide.load1787 = load <8 x i8>, ptr %next.gep1786, align 1, !tbaa !33
  store <8 x i8> %wide.load1787, ptr %next.gep1785, align 1, !tbaa !33
  %index.next1788 = add nuw i64 %index1784, 8     ; 2 uses
  %i.my = icmp eq i64 %index.next1788, %n.vec1782
  br i1 %i.my, label %vec.epilog.middle.block1789, label %vec.epilog.vector.body1783, !llvm.loop !104

vec.epilog.middle.block1789:                      ; preds = %vec.epilog.vector.body1783
  %cmp.n1790 = icmp eq i64 %i.mo, %n.vec1782
  br i1 %cmp.n1790, label %ZSTD_storeSeq.exit354.i.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %iter.check1777, %vec.epilog.iter.check1779, %vec.epilog.middle.block1789
  %.121.i60.i.ph = phi ptr [ %.0.i58.i, %iter.check1777 ], [ %i.mr, %vec.epilog.iter.check1779 ], [ %i.mw, %vec.epilog.middle.block1789 ] ; 2 uses
  %.11520.i61.i.ph = phi ptr [ %.014.i57.i, %iter.check1777 ], [ %i.ms, %vec.epilog.iter.check1779 ], [ %i.mx, %vec.epilog.middle.block1789 ] ; 3 uses
  %.11520.i61.i.ph2091 = ptrtoaddr ptr %.11520.i61.i.ph to i64 ; 2 uses
  %i.mz = sub i64 %.5316.i.lcssa.i1760, %.11520.i61.i.ph2091
  %xtraiter2092 = and i64 %i.mz, 7                ; 2 uses
  %lcmp.mod2093.not = icmp eq i64 %xtraiter2092, 0
  br i1 %lcmp.mod2093.not, label %.lr.ph.i59.i.prol.loopexit, label %.lr.ph.i59.i.prol

.lr.ph.i59.i.prol:                                ; preds = %.lr.ph.i59.i.preheader, %.lr.ph.i59.i.prol
  %.121.i60.i.prol = phi ptr [ %i.nc, %.lr.ph.i59.i.prol ], [ %.121.i60.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %.11520.i61.i.prol = phi ptr [ %i.na, %.lr.ph.i59.i.prol ], [ %.11520.i61.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %prol.iter2094 = phi i64 [ %prol.iter2094.next, %.lr.ph.i59.i.prol ], [ 0, %.lr.ph.i59.i.preheader ]
  %i.na = getelementptr inbounds nuw i8, ptr %.11520.i61.i.prol, i64 1 ; 2 uses
  %i.nb = load i8, ptr %.11520.i61.i.prol, align 1, !tbaa !33
  %i.nc = getelementptr inbounds nuw i8, ptr %.121.i60.i.prol, i64 1 ; 2 uses
  store i8 %i.nb, ptr %.121.i60.i.prol, align 1, !tbaa !33
  %prol.iter2094.next = add i64 %prol.iter2094, 1 ; 2 uses
  %prol.iter2094.cmp.not = icmp eq i64 %prol.iter2094.next, %xtraiter2092
  br i1 %prol.iter2094.cmp.not, label %.lr.ph.i59.i.prol.loopexit, label %.lr.ph.i59.i.prol, !llvm.loop !105

.lr.ph.i59.i.prol.loopexit:                       ; preds = %.lr.ph.i59.i.prol, %.lr.ph.i59.i.preheader
  %.121.i60.i.unr = phi ptr [ %.121.i60.i.ph, %.lr.ph.i59.i.preheader ], [ %i.nc, %.lr.ph.i59.i.prol ]
  %.11520.i61.i.unr = phi ptr [ %.11520.i61.i.ph, %.lr.ph.i59.i.preheader ], [ %i.na, %.lr.ph.i59.i.prol ]
  %i.nd = sub i64 %.11520.i61.i.ph2091, %.5316.i.lcssa.i1760
  %i.ne = icmp ugt i64 %i.nd, -8
  br i1 %i.ne, label %ZSTD_storeSeq.exit354.i.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.prol.loopexit, %.lr.ph.i59.i
  %.121.i60.i = phi ptr [ %i.oc, %.lr.ph.i59.i ], [ %.121.i60.i.unr, %.lr.ph.i59.i.prol.loopexit ] ; 9 uses
  %.11520.i61.i = phi ptr [ %i.oa, %.lr.ph.i59.i ], [ %.11520.i61.i.unr, %.lr.ph.i59.i.prol.loopexit ] ; 9 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 1
  %i.ng = load i8, ptr %.11520.i61.i, align 1, !tbaa !33
  %i.nh = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 1
  store i8 %i.ng, ptr %.121.i60.i, align 1, !tbaa !33
  %i.ni = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 2
  %i.nj = load i8, ptr %i.nf, align 1, !tbaa !33
  %i.nk = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 2
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !33
  %i.nl = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 3
  %i.nm = load i8, ptr %i.ni, align 1, !tbaa !33
  %i.nn = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 3
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !33
  %i.no = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 4
  %i.np = load i8, ptr %i.nl, align 1, !tbaa !33
  %i.nq = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 4
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !33
  %i.nr = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 5
  %i.ns = load i8, ptr %i.no, align 1, !tbaa !33
  %i.nt = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 5
  store i8 %i.ns, ptr %i.nq, align 1, !tbaa !33
  %i.nu = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 6
  %i.nv = load i8, ptr %i.nr, align 1, !tbaa !33
  %i.nw = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 6
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !33
  %i.nx = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 7
  %i.ny = load i8, ptr %i.nu, align 1, !tbaa !33
  %i.nz = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 7
  store i8 %i.ny, ptr %i.nw, align 1, !tbaa !33
  %i.oa = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 8 ; 2 uses
  %i.ob = load i8, ptr %i.nx, align 1, !tbaa !33
  %i.oc = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 8
  store i8 %i.ob, ptr %i.nz, align 1, !tbaa !33
  %exitcond.not.i62.i.7 = icmp eq ptr %i.oa, %.5316.i.lcssa.i
  br i1 %exitcond.not.i62.i.7, label %ZSTD_storeSeq.exit354.i.i, label %.lr.ph.i59.i, !llvm.loop !106

ZSTD_storeSeq.exit354.i.i:                        ; preds = %bb.aw, %.lr.ph.i59.i.prol.loopexit, %.lr.ph.i59.i, %middle.block1773, %vec.epilog.middle.block1789, %ZSTD_wildcopy.exit.i56.i, %bb.au
  %i.od = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.lq
  store ptr %i.oe, ptr %i.bi, align 8, !tbaa !38
  %i.of = icmp ugt i64 %i.lq, 65535
  %.pre244.i = load ptr, ptr %i.bl, align 8, !tbaa !39 ; 3 uses
  br i1 %i.of, label %bb.bb, label %bb.bc, !prof !44

bb.bb:                                            ; preds = %ZSTD_storeSeq.exit354.i.i
  store i32 1, ptr %i.bk, align 8, !tbaa !45
  %i.og = load ptr, ptr %1, align 8, !tbaa !46
  %i.oh = ptrtoint ptr %.pre244.i to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = lshr exact i64 %i.oj, 3
  %i.ol = trunc i64 %i.ok to i32
  store i32 %i.ol, ptr %i.bm, align 4, !tbaa !47
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %ZSTD_storeSeq.exit354.i.i, %ZSTD_storeSeq.exit354.i.thread.i
  %i.om = phi ptr [ %.pre243.i, %ZSTD_storeSeq.exit354.i.thread.i ], [ %.pre244.i, %bb.bb ], [ %.pre244.i, %ZSTD_storeSeq.exit354.i.i ] ; 4 uses
  %i.on = trunc i64 %i.lq to i16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  store i16 %i.on, ptr %i.oo, align 4, !tbaa !49
  store i32 %i.lr, ptr %i.om, align 4, !tbaa !50
  %i.op = add i64 %.4.i.lcssa.i, -3               ; 3 uses
  %i.oq = icmp ugt i64 %i.op, 65535
  br i1 %i.oq, label %ZSTD_storeSeqOnly.exit.i.sink.split.i, label %ZSTD_storeSeqOnly.exit.i.i, !prof !51

ZSTD_match4Found_cmov.exit.thread.i:              ; preds = %ZSTD_match4Found_cmov.exit.i, %.thread.i
  %.not337.i.i = icmp uge ptr %.1308.i.i, %.0264.i.i ; 2 uses
  %i.or = zext i1 %.not337.i.i to i64
  %.1268.i.i = add i64 %.0267.i.i, %i.or          ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.1308.i.i, i64 %.1268.i.i ; 2 uses
  %i.ot = icmp ugt ptr %i.os, %i.r
  br i1 %i.ot, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.bd

bb.bd:                                            ; preds = %ZSTD_match4Found_cmov.exit.thread.i
  %.1265.i.idx.i = select i1 %.not337.i.i, i64 256, i64 0
  %.1265.i.i = getelementptr inbounds nuw i8, ptr %.0264.i.i, i64 %.1265.i.idx.i
  %i.ou = lshr i32 %i.ce, 8
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !25 ; 2 uses
  %i.oy = xor i32 %i.ox, %i.ce
  br label %bb.e

ZSTD_storeSeqOnly.exit.i.sink.split.i:            ; preds = %bb.bc, %bb.af, %bb.q
  %.sink317.i = phi ptr [ %i.jq, %bb.af ], [ %i.fs, %bb.q ], [ %i.om, %bb.bc ] ; 2 uses
  %.sink313.ph.i = phi i64 [ %i.jt, %bb.af ], [ %i.fv, %bb.q ], [ %i.op, %bb.bc ]
  %.6317.i.ph.ph.i = phi ptr [ %.2313.i.lcssa.i, %bb.af ], [ %i.cp, %bb.q ], [ %.5316.i.lcssa.i, %bb.bc ]
  %.4295.i.ph.ph.i = phi i32 [ %i.ge, %bb.af ], [ %.0291.i200.i, %bb.q ], [ %i.jy, %bb.bc ]
  %.4289.i.ph.ph.i = phi i32 [ %.0291.i200.i, %bb.af ], [ %.0285.i201.i, %bb.q ], [ %.0291.i200.i, %bb.bc ]
  %.5.i.ph.ph.i = phi i64 [ %.1281.i.lcssa.i, %bb.af ], [ %i.cu, %bb.q ], [ %.4.i.lcssa.i, %bb.bc ]
  store i32 2, ptr %i.bk, align 8, !tbaa !45
  %i.oz = load ptr, ptr %1, align 8, !tbaa !46
  %i.pa = ptrtoint ptr %.sink317.i to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = lshr exact i64 %i.pc, 3
  %i.pe = trunc i64 %i.pd to i32
  store i32 %i.pe, ptr %i.bm, align 4, !tbaa !47
  br label %ZSTD_storeSeqOnly.exit.i.i

ZSTD_storeSeqOnly.exit.i.i:                       ; preds = %ZSTD_storeSeqOnly.exit.i.sink.split.i, %bb.bc, %bb.af, %bb.q
  %.sink313.i = phi i64 [ %i.fv, %bb.q ], [ %i.jt, %bb.af ], [ %i.op, %bb.bc ], [ %.sink313.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ]
  %.sink312.i = phi ptr [ %i.fs, %bb.q ], [ %i.jq, %bb.af ], [ %i.om, %bb.bc ], [ %.sink317.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ] ; 2 uses
  %.6317.i.ph.i = phi ptr [ %i.cp, %bb.q ], [ %.2313.i.lcssa.i, %bb.af ], [ %.5316.i.lcssa.i, %bb.bc ], [ %.6317.i.ph.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ]
  %.4295.i.ph.i = phi i32 [ %.0291.i200.i, %bb.q ], [ %i.ge, %bb.af ], [ %i.jy, %bb.bc ], [ %.4295.i.ph.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ] ; 2 uses
  %.4289.i.ph.i = phi i32 [ %.0285.i201.i, %bb.q ], [ %.0291.i200.i, %bb.af ], [ %.0291.i200.i, %bb.bc ], [ %.4289.i.ph.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ] ; 2 uses
  %.5.i.ph.i = phi i64 [ %i.cu, %bb.q ], [ %.1281.i.lcssa.i, %bb.af ], [ %.4.i.lcssa.i, %bb.bc ], [ %.5.i.ph.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ]
  %i.pf = trunc i64 %.sink313.i to i16
  %i.pg = getelementptr inbounds nuw i8, ptr %.sink312.i, i64 6
  store i16 %i.pf, ptr %i.pg, align 2, !tbaa !52
  %i.ph = getelementptr inbounds nuw i8, ptr %.sink312.i, i64 8 ; 2 uses
  store ptr %i.ph, ptr %i.bl, align 8, !tbaa !39
  %i.pi = getelementptr inbounds nuw i8, ptr %.6317.i.ph.i, i64 %.5.i.ph.i ; 4 uses
  %.not338.i.i = icmp ugt ptr %i.pi, %i.r
  br i1 %.not338.i.i, label %.thread122.i, label %bb.be

bb.be:                                            ; preds = %ZSTD_storeSeqOnly.exit.i.i
  %i.pj = add i32 %.0270.i.i, 2
  %i.pk = and i64 %.0270.i.in.i, 4294967295
  %i.pl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 2
  %.val9.i = load i32, ptr %i.pm, align 1, !tbaa !25
  %i.pn = mul i32 %.val9.i, -1640531535
  %i.po = lshr i32 %i.pn, %i.bf
  %i.pp = zext i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pp
  store i32 %i.pj, ptr %i.pq, align 4, !tbaa !25
  %i.pr = getelementptr inbounds i8, ptr %i.pi, i64 -2 ; 2 uses
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.ps, %i.as
  %i.pu = trunc i64 %i.pt to i32
  %.val8.i = load i32, ptr %i.pr, align 1, !tbaa !25
  %i.pv = mul i32 %.val8.i, -1640531535
  %i.pw = lshr i32 %i.pv, %i.bf
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.px
  store i32 %i.pu, ptr %i.py, align 4, !tbaa !25
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bk, %bb.be
  %i.pz = phi ptr [ %i.ph, %bb.be ], [ %i.ra, %bb.bk ]
  %.5290.i195.i = phi i32 [ %.4289.i.ph.i, %bb.be ], [ %.5296.i194.i, %bb.bk ] ; 5 uses
  %.5296.i194.i = phi i32 [ %.4295.i.ph.i, %bb.be ], [ %.5290.i195.i, %bb.bk ] ; 4 uses
  %.7318.i193.i = phi ptr [ %i.pi, %bb.be ], [ %i.rg, %bb.bk ] ; 9 uses
  %i.qa = ptrtoint ptr %.7318.i193.i to i64
  %i.qb = sub i64 %i.qa, %i.as
  %i.qc = trunc i64 %i.qb to i32                  ; 2 uses
  %i.qd = sub i32 %i.qc, %.5290.i195.i            ; 3 uses
  %i.qe = icmp ult i32 %i.qd, %i.n                ; 2 uses
  %i.qf = zext i32 %i.qd to i64
  %.v.i = select i1 %i.qe, ptr %i.bs, ptr %i.k
  %i.qg = getelementptr inbounds nuw i8, ptr %.v.i, i64 %i.qf ; 2 uses
  %i.qh = sub i32 %i.qd, %i.n
  %6 = icmp ugt i32 %i.qh, -4
  br i1 %6, label %.thread122.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val4.i = load i32, ptr %i.qg, align 1, !tbaa !25
  %.7318.i.val.i = load i32, ptr %.7318.i193.i, align 1, !tbaa !25
  %i.qi = icmp eq i32 %.val4.i, %.7318.i.val.i
  br i1 %i.qi, label %bb.bh, label %.thread122.i

bb.bh:                                            ; preds = %bb.bg
  %i.qj = select i1 %i.qe, ptr %i.af, ptr %i.q
  %i.qk = getelementptr inbounds nuw i8, ptr %.7318.i193.i, i64 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.qm = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.qk, ptr noundef nonnull %i.ql, ptr noundef %i.q, ptr noundef %i.qj, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i = icmp ugt ptr %.7318.i193.i, %i.bh
  br i1 %.not.i.i.i, label %ZSTD_storeSeq.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qn = load ptr, ptr %i.bi, align 8, !tbaa !38
  %.1302.i.val.i = load <2 x i64>, ptr %.7318.i193.i, align 1, !tbaa !33
  store <2 x i64> %.1302.i.val.i, ptr %i.qn, align 1, !tbaa !33
  %.pre245.i = load ptr, ptr %i.bl, align 8, !tbaa !39
  br label %ZSTD_storeSeq.exit.i.i

ZSTD_storeSeq.exit.i.i:                           ; preds = %bb.bi, %bb.bh
  %i.qo = phi ptr [ %i.pz, %bb.bh ], [ %.pre245.i, %bb.bi ] ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  store i16 0, ptr %i.qp, align 4, !tbaa !49
  store i32 1, ptr %i.qo, align 4, !tbaa !50
  %i.qq = add i64 %i.qm, 1                        ; 2 uses
  %i.qr = icmp ugt i64 %i.qq, 65535
  br i1 %i.qr, label %bb.bj, label %bb.bk, !prof !51

bb.bj:                                            ; preds = %ZSTD_storeSeq.exit.i.i
  store i32 2, ptr %i.bk, align 8, !tbaa !45
  %i.qs = load ptr, ptr %1, align 8, !tbaa !46
  %i.qt = ptrtoint ptr %i.qo to i64
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = sub i64 %i.qt, %i.qu
  %i.qw = lshr exact i64 %i.qv, 3
  %i.qx = trunc i64 %i.qw to i32
  store i32 %i.qx, ptr %i.bm, align 4, !tbaa !47
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %ZSTD_storeSeq.exit.i.i
  %i.qy = trunc i64 %i.qq to i16
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qo, i64 6
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !52
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qo, i64 8 ; 2 uses
  store ptr %i.ra, ptr %i.bl, align 8, !tbaa !39
  %.7318.i.val7.i = load i32, ptr %.7318.i193.i, align 1, !tbaa !25
  %i.rb = mul i32 %.7318.i.val7.i, -1640531535
  %i.rc = lshr i32 %i.rb, %i.bf
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rd
  store i32 %i.qc, ptr %i.re, align 4, !tbaa !25
  %i.rf = getelementptr i8, ptr %.7318.i193.i, i64 %i.qm
  %i.rg = getelementptr i8, ptr %i.rf, i64 4      ; 3 uses
  %.not339.i.i = icmp ugt ptr %i.rg, %i.r
  br i1 %.not339.i.i, label %.thread122.i, label %bb.bf

.thread122.i:                                     ; preds = %bb.bk, %bb.bg, %bb.bf, %ZSTD_storeSeqOnly.exit.i.i
  %.9320.i.i = phi ptr [ %i.pi, %ZSTD_storeSeqOnly.exit.i.i ], [ %.7318.i193.i, %bb.bf ], [ %.7318.i193.i, %bb.bg ], [ %i.rg, %bb.bk ] ; 4 uses
  %.7298.i.i = phi i32 [ %.4295.i.ph.i, %ZSTD_storeSeqOnly.exit.i.i ], [ %.5296.i194.i, %bb.bf ], [ %.5296.i194.i, %bb.bg ], [ %.5290.i195.i, %bb.bk ] ; 2 uses
  %.7.i.i = phi i32 [ %.4289.i.ph.i, %ZSTD_storeSeqOnly.exit.i.i ], [ %.5290.i195.i, %bb.bf ], [ %.5290.i195.i, %bb.bg ], [ %.5296.i194.i, %bb.bk ] ; 2 uses
  %.0307.i.i = getelementptr inbounds nuw i8, ptr %.9320.i.i, i64 %i.l ; 2 uses
  %.not332.i.i = icmp ugt ptr %.0307.i.i, %i.r
  br i1 %.not332.i.i, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.d

bb.bl:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i28, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.rh = zext nneg i32 %i.ar to i64
  %i.ri = shl nuw i64 4, %i.rh
  %.not207.i25 = icmp ugt i32 %i.ar, 61
  br i1 %.not207.i25, label %.loopexit.i28, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.bm, %.lr.ph.i26
  %.0284.i174.i27 = phi i64 [ %i.rk, %.lr.ph.i26 ], [ 0, %bb.bm ] ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0284.i174.i27
  tail call void @llvm.prefetch.p0(ptr %i.rj, i32 0, i32 2, i32 1)
  %i.rk = add nuw i64 %.0284.i174.i27, 64         ; 2 uses
  %i.rl = icmp ult i64 %i.rk, %i.ri
  br i1 %i.rl, label %.lr.ph.i26, label %.loopexit.i28, !llvm.loop !92

.loopexit.i28:                                    ; preds = %.lr.ph.i26, %bb.bm, %bb.bl
  %i.rm = add nsw i64 %4, -8
  %.not332.i197.i29 = icmp slt i64 %i.rm, %i.l
  br i1 %.not332.i197.i29, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %.lr.ph203.i30

.lr.ph203.i30:                                    ; preds = %.loopexit.i28
  %.0307.i196.i31 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.rn = and i64 %i.ap, 4294967295
  %i.ro = icmp eq i64 %i.rn, 0
  %i.rp = zext i1 %i.ro to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 %i.rp
  %i.rr = sub i32 64, %i.f
  %i.rs = zext nneg i32 %i.rr to i64              ; 4 uses
  %i.rt = sub i32 56, %i.ar
  %i.ru = zext nneg i32 %i.rt to i64              ; 2 uses
  %i.rv = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.rx = ptrtoint ptr %i.rv to i64               ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.sb = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 2 uses
  %i.sc = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.sd = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.se = zext i32 %i.ai to i64
  %i.sf = sub nsw i64 0, %i.se
  %i.sg = getelementptr inbounds i8, ptr %i.ac, i64 %i.sf
  br label %bb.bn

bb.bn:                                            ; preds = %.thread122.i105, %.lr.ph203.i30
  %.0307.i202.i32 = phi ptr [ %.0307.i196.i31, %.lr.ph203.i30 ], [ %.0307.i.i109, %.thread122.i105 ]
  %.0285.i201.i33 = phi i32 [ %i.u, %.lr.ph203.i30 ], [ %.7.i.i108, %.thread122.i105 ] ; 3 uses
  %.0291.i200.i34 = phi i32 [ %i.s, %.lr.ph203.i30 ], [ %.7298.i.i107, %.thread122.i105 ] ; 8 uses
  %.0301.i199.i35 = phi ptr [ %3, %.lr.ph203.i30 ], [ %.9320.i.i106, %.thread122.i105 ] ; 26 uses
  %.0311.i198.i36 = phi ptr [ %i.rq, %.lr.ph203.i30 ], [ %.9320.i.i106, %.thread122.i105 ] ; 3 uses
  %.0311.i.val11.i37 = load i64, ptr %.0311.i198.i36, align 1, !tbaa !24
  %i.sh = mul i64 %.0311.i.val11.i37, -3523014627271114752 ; 2 uses
  %i.si = lshr i64 %i.sh, %i.ru                   ; 2 uses
  %i.sj = lshr i64 %i.si, 8
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !25 ; 2 uses
  %i.sm = zext i32 %i.sl to i64
  %i.sn = xor i64 %i.si, %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %.0311.i198.i36, i64 256
  %invariant.op2250 = sub i32 1, %.0291.i200.i34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.dn, %bb.bn
  %.1312.i.i38 = phi ptr [ %.0311.i198.i36, %bb.bn ], [ %.1308.i.i39, %bb.dn ] ; 16 uses
  %.1308.i.i39 = phi ptr [ %.0307.i202.i32, %bb.bn ], [ %i.afg, %bb.dn ] ; 4 uses
  %.pn209.i40 = phi i64 [ %i.sh, %bb.bn ], [ %i.sr, %bb.dn ]
  %.0276.i.i41 = phi i32 [ %i.sl, %bb.bn ], [ %i.afk, %bb.dn ]
  %.0274.i.in.in.in.i42 = phi i64 [ %i.sn, %bb.bn ], [ %i.afm, %bb.dn ]
  %.0267.i.i43 = phi i64 [ %i.l, %bb.bn ], [ %.1268.i.i63, %bb.dn ]
  %.0264.i.i44 = phi ptr [ %i.so, %bb.bn ], [ %.1265.i.i65, %bb.dn ] ; 2 uses
  %.0278.i.i45 = lshr i64 %.pn209.i40, %i.rs
  %.0272.i.in.i46 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0278.i.i45 ; 2 uses
  %.0272.i.i47 = load i32, ptr %.0272.i.in.i46, align 4, !tbaa !25 ; 5 uses
  %.pn.i48 = ptrtoint ptr %.1312.i.i38 to i64     ; 5 uses
  %.0270.i.in.i49 = sub i64 %.pn.i48, %i.as       ; 2 uses
  %.0270.i.i50 = trunc i64 %.0270.i.in.i49 to i32 ; 4 uses
  %.0274.i.in.in.i51 = and i64 %.0274.i.in.in.in.i42, 255
  %.0274.i.in.not.i = icmp eq i64 %.0274.i.in.in.i51, 0
  %i.sp = zext i32 %.0272.i.i47 to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.sp ; 4 uses
  %.reass.i53.reass.reass.reass = add i32 %.0270.i.i50, %invariant.op2250 ; 4 uses
  %.1308.i.val10.i54 = load i64, ptr %.1308.i.i39, align 1, !tbaa !24
  %i.sr = mul i64 %.1308.i.val10.i54, -3523014627271114752 ; 2 uses
  %i.ss = lshr i64 %i.sr, %i.ru                   ; 2 uses
  store i32 %.0270.i.i50, ptr %.0272.i.in.i46, align 4, !tbaa !25
  %i.st = sub i32 %.reass.i53.reass.reass.reass, %i.n
  %7 = icmp ugt i32 %i.st, -4
  br i1 %7, label %bb.cb, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.su = icmp ult i32 %.reass.i53.reass.reass.reass, %i.n ; 2 uses
  %i.sv = sub i32 %.reass.i53.reass.reass.reass, %i.ai
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.sw
  %i.sy = zext i32 %.reass.i53.reass.reass.reass to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.sy
  %i.ta = select i1 %i.su, ptr %i.sx, ptr %i.sz   ; 2 uses
  %.val6.i55 = load i32, ptr %i.ta, align 1, !tbaa !25
  %i.tb = getelementptr inbounds nuw i8, ptr %.1312.i.i38, i64 1
  %.val5.i56 = load i32, ptr %i.tb, align 1, !tbaa !25
  %i.tc = icmp eq i32 %.val6.i55, %.val5.i56
  br i1 %i.tc, label %bb.bq, label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  %.1312.i.i38.lcssa20452049 = ptrtoaddr ptr %.1312.i.i38 to i64 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.1312.i.i38, i64 1 ; 5 uses
  %i.te = select i1 %i.su, ptr %i.af, ptr %i.q
  %i.tf = getelementptr inbounds nuw i8, ptr %.1312.i.i38, i64 5
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.th = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.tf, ptr noundef nonnull %i.tg, ptr noundef %i.q, ptr noundef %i.te, ptr noundef %i.p) ; 2 uses
  %i.ti = add i64 %i.th, 4                        ; 2 uses
  %i.tj = ptrtoint ptr %i.td to i64
  %i.tk = ptrtoint ptr %.0301.i199.i35 to i64     ; 2 uses
  %i.tl = sub i64 %i.tj, %i.tk                    ; 7 uses
  %.not.i357.i.i214 = icmp ugt ptr %i.td, %i.rv
  %i.tm = load ptr, ptr %i.rw, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i357.i.i214, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.0301.i.val.i215 = load <2 x i64>, ptr %.0301.i199.i35, align 1, !tbaa !33
  store <2 x i64> %.0301.i.val.i215, ptr %i.tm, align 1, !tbaa !33
  %i.tn = icmp ugt i64 %i.tl, 16
  %i.to = load ptr, ptr %i.rw, align 8, !tbaa !38 ; 4 uses
  br i1 %i.tn, label %bb.bs, label %ZSTD_storeSeq.exit358.i.thread.i216

ZSTD_storeSeq.exit358.i.thread.i216:              ; preds = %bb.br
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tl
  store ptr %i.tp, ptr %i.rw, align 8, !tbaa !38
  %.pre.i217 = load ptr, ptr %i.rz, align 8, !tbaa !39
  br label %bb.ca

bb.bs:                                            ; preds = %bb.br
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %.0301.i199.i35, i64 16 ; 2 uses
  %i.ts = getelementptr i8, ptr %i.to, i64 %i.tl
  %.val13.i218 = load <2 x i64>, ptr %i.tr, align 1, !tbaa !33
  store <2 x i64> %.val13.i218, ptr %i.tq, align 1, !tbaa !33
  %i.tt = icmp slt i64 %i.tl, 33
  br i1 %i.tt, label %ZSTD_storeSeq.exit358.i.i224, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %bb.bt
  %.pn.i.i.i219 = phi ptr [ %i.tr, %bb.bt ], [ %i.tw, %bb.bu ] ; 2 uses
  %.1.i.i.i220 = phi ptr [ %i.tu, %bb.bt ], [ %i.tx, %bb.bu ] ; 3 uses
  %.130.i.i.i221 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i219, i64 16
  %.130.i.i.val.i222 = load <2 x i64>, ptr %.130.i.i.i221, align 1, !tbaa !33
  store <2 x i64> %.130.i.i.val.i222, ptr %.1.i.i.i220, align 1, !tbaa !33
  %i.tv = getelementptr inbounds nuw i8, ptr %.1.i.i.i220, i64 16
  %i.tw = getelementptr inbounds nuw i8, ptr %.pn.i.i.i219, i64 32 ; 2 uses
  %.val12.i223 = load <2 x i64>, ptr %i.tw, align 1, !tbaa !33
  store <2 x i64> %.val12.i223, ptr %i.tv, align 1, !tbaa !33
  %i.tx = getelementptr inbounds nuw i8, ptr %.1.i.i.i220, i64 32 ; 2 uses
  %i.ty = icmp ult ptr %i.tx, %i.ts
  br i1 %i.ty, label %bb.bu, label %ZSTD_storeSeq.exit358.i.i224, !llvm.loop !0

bb.bv:                                            ; preds = %bb.bq
  %.not.i20.i226 = icmp ugt ptr %.0301.i199.i35, %i.rv
  br i1 %.not.i20.i226, label %ZSTD_wildcopy.exit.i24.i233, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tz = sub i64 %i.rx, %i.tk                    ; 2 uses
  %i.ua = getelementptr inbounds i8, ptr %i.tm, i64 %i.tz ; 3 uses
  %.val19.i.i227 = load <2 x i64>, ptr %.0301.i199.i35, align 1, !tbaa !33
  store <2 x i64> %.val19.i.i227, ptr %i.tm, align 1, !tbaa !33
  %i.ub = icmp slt i64 %i.tz, 17
  br i1 %i.ub, label %ZSTD_wildcopy.exit.i24.i233, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %bb.bx
  %.pn.i.i21.i228 = phi ptr [ %.0301.i199.i35, %bb.bx ], [ %i.ue, %bb.by ] ; 2 uses
  %.1.i.i22.i229 = phi ptr [ %i.uc, %bb.bx ], [ %i.uf, %bb.by ] ; 3 uses
  %.130.i.i23.i230 = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i228, i64 16
  %.130.i.val.i.i231 = load <2 x i64>, ptr %.130.i.i23.i230, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i.i231, ptr %.1.i.i22.i229, align 1, !tbaa !33
  %i.ud = getelementptr inbounds nuw i8, ptr %.1.i.i22.i229, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i228, i64 32 ; 2 uses
  %.val.i.i232 = load <2 x i64>, ptr %i.ue, align 1, !tbaa !33
  store <2 x i64> %.val.i.i232, ptr %i.ud, align 1, !tbaa !33
  %i.uf = getelementptr inbounds nuw i8, ptr %.1.i.i22.i229, i64 32 ; 2 uses
  %i.ug = icmp ult ptr %i.uf, %i.ua
  br i1 %i.ug, label %bb.by, label %ZSTD_wildcopy.exit.i24.i233, !llvm.loop !0

ZSTD_wildcopy.exit.i24.i233:                      ; preds = %bb.by, %bb.bw, %bb.bv
  %.014.i.i234 = phi ptr [ %.0301.i199.i35, %bb.bv ], [ %i.rv, %bb.bw ], [ %i.rv, %bb.by ] ; 7 uses
  %.0.i25.i235 = phi ptr [ %i.tm, %bb.bv ], [ %i.ua, %bb.bw ], [ %i.ua, %bb.by ] ; 6 uses
  %i.uh = icmp ult ptr %.014.i.i234, %i.td
  br i1 %i.uh, label %iter.check1624, label %ZSTD_storeSeq.exit358.i.i224

iter.check1624:                                   ; preds = %ZSTD_wildcopy.exit.i24.i233
  %.014.i.i2341606 = ptrtoaddr ptr %.014.i.i234 to i64 ; 2 uses
  %.0.i25.i2351605 = ptrtoaddr ptr %.0.i25.i235 to i64
  %reass.sub1870.a = sub i64 %.pn.i48, %.014.i.i2341606
  %i.ui = add i64 %reass.sub1870.a, 1             ; 7 uses
  %min.iters.check1608 = icmp ult i64 %i.ui, 8
  %i.uj = sub i64 %.014.i.i2341606, %.0.i25.i2351605
  %diff.check1607.a = icmp ugt i64 %i.uj, -32
  %or.cond1875 = select i1 %min.iters.check1608, i1 true, i1 %diff.check1607.a
  br i1 %or.cond1875, label %.lr.ph.i.i236.preheader, label %vector.main.loop.iter.check1609

vector.main.loop.iter.check1609:                  ; preds = %iter.check1624
  %min.iters.check1610 = icmp ult i64 %i.ui, 32
  br i1 %min.iters.check1610, label %vec.epilog.ph1628, label %vector.ph1611

vector.ph1611:                                    ; preds = %vector.main.loop.iter.check1609
  %i.uk = and i64 %i.ui, 24
  %n.vec1612 = and i64 %i.ui, -32                 ; 5 uses
  %i.ul = getelementptr i8, ptr %.0.i25.i235, i64 %n.vec1612
  %i.um = getelementptr i8, ptr %.014.i.i234, i64 %n.vec1612
  br label %vector.body1613

vector.body1613:                                  ; preds = %vector.ph1611, %vector.body1613
  %index1614 = phi i64 [ 0, %vector.ph1611 ], [ %index.next1619, %vector.body1613 ] ; 3 uses
  %next.gep1615 = getelementptr i8, ptr %.0.i25.i235, i64 %index1614 ; 2 uses
  %next.gep1616.a = getelementptr i8, ptr %.014.i.i234, i64 %index1614 ; 2 uses
  %i.un = getelementptr i8, ptr %next.gep1616.a, i64 16
  %wide.load1617 = load <16 x i8>, ptr %next.gep1616.a, align 1, !tbaa !33
  %wide.load1618.a = load <16 x i8>, ptr %i.un, align 1, !tbaa !33
  %i.uo = getelementptr i8, ptr %next.gep1615, i64 16
  store <16 x i8> %wide.load1617, ptr %next.gep1615, align 1, !tbaa !33
  store <16 x i8> %wide.load1618.a, ptr %i.uo, align 1, !tbaa !33
  %index.next1619 = add nuw i64 %index1614, 32    ; 2 uses
  %i.up = icmp eq i64 %index.next1619, %n.vec1612
  br i1 %i.up, label %middle.block1620, label %vector.body1613, !llvm.loop !107

middle.block1620:                                 ; preds = %vector.body1613
  %cmp.n1621 = icmp eq i64 %i.ui, %n.vec1612
  br i1 %cmp.n1621, label %ZSTD_storeSeq.exit358.i.i224, label %vec.epilog.iter.check1626

vec.epilog.iter.check1626:                        ; preds = %middle.block1620
  %min.epilog.iters.check1627 = icmp eq i64 %i.uk, 0
  br i1 %min.epilog.iters.check1627, label %.lr.ph.i.i236.preheader, label %vec.epilog.ph1628, !prof !42

vec.epilog.ph1628:                                ; preds = %vector.main.loop.iter.check1609, %vec.epilog.iter.check1626
  %vec.epilog.resume.val1622 = phi i64 [ %n.vec1612, %vec.epilog.iter.check1626 ], [ 0, %vector.main.loop.iter.check1609 ]
  %n.vec1629 = and i64 %i.ui, -8                  ; 4 uses
  %i.uq = getelementptr i8, ptr %.0.i25.i235, i64 %n.vec1629
  %i.ur = getelementptr i8, ptr %.014.i.i234, i64 %n.vec1629
  br label %vec.epilog.vector.body1630

vec.epilog.vector.body1630:                       ; preds = %vec.epilog.vector.body1630, %vec.epilog.ph1628
  %index1631 = phi i64 [ %vec.epilog.resume.val1622, %vec.epilog.ph1628 ], [ %index.next1635, %vec.epilog.vector.body1630 ] ; 3 uses
  %next.gep1632 = getelementptr i8, ptr %.0.i25.i235, i64 %index1631
  %next.gep1633.a = getelementptr i8, ptr %.014.i.i234, i64 %index1631
  %wide.load1634 = load <8 x i8>, ptr %next.gep1633.a, align 1, !tbaa !33
  store <8 x i8> %wide.load1634, ptr %next.gep1632, align 1, !tbaa !33
  %index.next1635 = add nuw i64 %index1631, 8     ; 2 uses
  %i.us = icmp eq i64 %index.next1635, %n.vec1629
  br i1 %i.us, label %vec.epilog.middle.block1636, label %vec.epilog.vector.body1630, !llvm.loop !108

vec.epilog.middle.block1636:                      ; preds = %vec.epilog.vector.body1630
  %cmp.n1637 = icmp eq i64 %i.ui, %n.vec1629
  br i1 %cmp.n1637, label %ZSTD_storeSeq.exit358.i.i224, label %.lr.ph.i.i236.preheader

.lr.ph.i.i236.preheader:                          ; preds = %iter.check1624, %vec.epilog.iter.check1626, %vec.epilog.middle.block1636
  %.121.i.i237.ph = phi ptr [ %.0.i25.i235, %iter.check1624 ], [ %i.ul, %vec.epilog.iter.check1626 ], [ %i.uq, %vec.epilog.middle.block1636 ] ; 2 uses
  %.11520.i.i238.ph = phi ptr [ %.014.i.i234, %iter.check1624 ], [ %i.um, %vec.epilog.iter.check1626 ], [ %i.ur, %vec.epilog.middle.block1636 ] ; 3 uses
  %.11520.i.i238.ph2044 = ptrtoaddr ptr %.11520.i.i238.ph to i64 ; 2 uses
  %reass.sub2096.a = sub i64 %.1312.i.i38.lcssa20452049, %.11520.i.i238.ph2044
  %i.ut = add i64 %reass.sub2096.a, 1
  %i.uu = sub i64 %.1312.i.i38.lcssa20452049, %.11520.i.i238.ph2044
  %xtraiter2050.a = and i64 %i.ut, 7              ; 2 uses
  %lcmp.mod2051.not.a = icmp eq i64 %xtraiter2050.a, 0
  br i1 %lcmp.mod2051.not.a, label %.lr.ph.i.i236.prol.loopexit, label %.lr.ph.i.i236.prol

.lr.ph.i.i236.prol:                               ; preds = %.lr.ph.i.i236.preheader, %.lr.ph.i.i236.prol
  %.121.i.i237.prol = phi ptr [ %i.ux, %.lr.ph.i.i236.prol ], [ %.121.i.i237.ph, %.lr.ph.i.i236.preheader ] ; 2 uses
  %.11520.i.i238.prol = phi ptr [ %i.uv, %.lr.ph.i.i236.prol ], [ %.11520.i.i238.ph, %.lr.ph.i.i236.preheader ] ; 2 uses
  %prol.iter2052.a = phi i64 [ %prol.iter2052.next.a, %.lr.ph.i.i236.prol ], [ 0, %.lr.ph.i.i236.preheader ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.11520.i.i238.prol, i64 1 ; 2 uses
  %i.uw = load i8, ptr %.11520.i.i238.prol, align 1, !tbaa !33
  %i.ux = getelementptr inbounds nuw i8, ptr %.121.i.i237.prol, i64 1 ; 2 uses
  store i8 %i.uw, ptr %.121.i.i237.prol, align 1, !tbaa !33
  %prol.iter2052.next.a = add i64 %prol.iter2052.a, 1 ; 2 uses
  %prol.iter2052.cmp.not.a = icmp eq i64 %prol.iter2052.next.a, %xtraiter2050.a
  br i1 %prol.iter2052.cmp.not.a, label %.lr.ph.i.i236.prol.loopexit, label %.lr.ph.i.i236.prol, !llvm.loop !109

.lr.ph.i.i236.prol.loopexit:                      ; preds = %.lr.ph.i.i236.prol, %.lr.ph.i.i236.preheader
  %.121.i.i237.unr = phi ptr [ %.121.i.i237.ph, %.lr.ph.i.i236.preheader ], [ %i.ux, %.lr.ph.i.i236.prol ]
  %.11520.i.i238.unr = phi ptr [ %.11520.i.i238.ph, %.lr.ph.i.i236.preheader ], [ %i.uv, %.lr.ph.i.i236.prol ]
  %i.uy = icmp ult i64 %i.uu, 7
  br i1 %i.uy, label %ZSTD_storeSeq.exit358.i.i224, label %.lr.ph.i.i236

.lr.ph.i.i236:                                    ; preds = %.lr.ph.i.i236.prol.loopexit, %.lr.ph.i.i236
  %.121.i.i237 = phi ptr [ %i.vw, %.lr.ph.i.i236 ], [ %.121.i.i237.unr, %.lr.ph.i.i236.prol.loopexit ] ; 9 uses
  %.11520.i.i238 = phi ptr [ %i.vu, %.lr.ph.i.i236 ], [ %.11520.i.i238.unr, %.lr.ph.i.i236.prol.loopexit ] ; 9 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 1
  %i.va = load i8, ptr %.11520.i.i238, align 1, !tbaa !33
  %i.vb = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 1
  store i8 %i.va, ptr %.121.i.i237, align 1, !tbaa !33
  %i.vc = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 2
  %i.vd = load i8, ptr %i.uz, align 1, !tbaa !33
  %i.ve = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 2
  store i8 %i.vd, ptr %i.vb, align 1, !tbaa !33
  %i.vf = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 3
  %i.vg = load i8, ptr %i.vc, align 1, !tbaa !33
  %i.vh = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 3
  store i8 %i.vg, ptr %i.ve, align 1, !tbaa !33
  %i.vi = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 4
  %i.vj = load i8, ptr %i.vf, align 1, !tbaa !33
  %i.vk = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 4
  store i8 %i.vj, ptr %i.vh, align 1, !tbaa !33
  %i.vl = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 5
  %i.vm = load i8, ptr %i.vi, align 1, !tbaa !33
  %i.vn = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 5
  store i8 %i.vm, ptr %i.vk, align 1, !tbaa !33
  %i.vo = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 6
  %i.vp = load i8, ptr %i.vl, align 1, !tbaa !33
  %i.vq = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 6
  store i8 %i.vp, ptr %i.vn, align 1, !tbaa !33
  %i.vr = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 7 ; 2 uses
  %i.vs = load i8, ptr %i.vo, align 1, !tbaa !33
  %i.vt = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 7
  store i8 %i.vs, ptr %i.vq, align 1, !tbaa !33
  %i.vu = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 8
  %i.vv = load i8, ptr %i.vr, align 1, !tbaa !33
  %i.vw = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 8
  store i8 %i.vv, ptr %i.vt, align 1, !tbaa !33
  %exitcond.not.i.i239.7 = icmp eq ptr %i.vr, %.1312.i.i38
  br i1 %exitcond.not.i.i239.7, label %ZSTD_storeSeq.exit358.i.i224, label %.lr.ph.i.i236, !llvm.loop !110

ZSTD_storeSeq.exit358.i.i224:                     ; preds = %bb.bu, %.lr.ph.i.i236.prol.loopexit, %.lr.ph.i.i236, %middle.block1620, %vec.epilog.middle.block1636, %ZSTD_wildcopy.exit.i24.i233, %bb.bs
  %i.vx = load ptr, ptr %i.rw, align 8, !tbaa !38
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.tl
  store ptr %i.vy, ptr %i.rw, align 8, !tbaa !38
  %i.vz = icmp ugt i64 %i.tl, 65535
  %.pre240.i225 = load ptr, ptr %i.rz, align 8, !tbaa !39 ; 3 uses
  br i1 %i.vz, label %bb.bz, label %bb.ca, !prof !44

bb.bz:                                            ; preds = %ZSTD_storeSeq.exit358.i.i224
  store i32 1, ptr %i.ry, align 8, !tbaa !45
  %i.wa = load ptr, ptr %1, align 8, !tbaa !46
  %i.wb = ptrtoint ptr %.pre240.i225 to i64
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = sub i64 %i.wb, %i.wc
  %i.we = lshr exact i64 %i.wd, 3
  %i.wf = trunc i64 %i.we to i32
  store i32 %i.wf, ptr %i.sa, align 4, !tbaa !47
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %ZSTD_storeSeq.exit358.i.i224, %ZSTD_storeSeq.exit358.i.thread.i216
  %i.wg = phi ptr [ %.pre.i217, %ZSTD_storeSeq.exit358.i.thread.i216 ], [ %.pre240.i225, %bb.bz ], [ %.pre240.i225, %ZSTD_storeSeq.exit358.i.i224 ] ; 4 uses
  %i.wh = trunc i64 %i.tl to i16
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  store i16 %i.wh, ptr %i.wi, align 4, !tbaa !49
  store i32 1, ptr %i.wg, align 4, !tbaa !50
  %i.wj = add i64 %i.th, 1                        ; 3 uses
  %i.wk = icmp ugt i64 %i.wj, 65535
  br i1 %i.wk, label %ZSTD_storeSeqOnly.exit.i.sink.split.i117, label %ZSTD_storeSeqOnly.exit.i.i89, !prof !51

bb.cb:                                            ; preds = %bb.bp, %bb.bo
  br i1 %.0274.i.in.not.i, label %bb.cc, label %.thread.i57

bb.cc:                                            ; preds = %bb.cb
  %i.wl = lshr i32 %.0276.i.i41, 8                ; 3 uses
  %i.wm = icmp ugt i32 %i.wl, %i.aa
  br i1 %i.wm, label %bb.cd, label %.thread.i57

bb.cd:                                            ; preds = %bb.cc
  %i.wn = zext nneg i32 %i.wl to i64              ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.wn
  %.val.i172 = load i32, ptr %i.wo, align 1, !tbaa !25
  %.1312.i.val.i173 = load i32, ptr %.1312.i.i38, align 1, !tbaa !25
  %i.wp = icmp ne i32 %.val.i172, %.1312.i.val.i173
  %.not335.i.i174 = icmp ugt i32 %.0272.i.i47, %i.n
  %or.cond.i.i175 = select i1 %i.wp, i1 true, i1 %.not335.i.i174
  br i1 %or.cond.i.i175, label %.thread.i57, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.wn ; 2 uses
  %i.wr = add i32 %i.ai, %i.wl
  %i.ws = sub i32 %.0270.i.i50, %i.wr             ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.1312.i.i38, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  %i.wv = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.wt, ptr noundef nonnull %i.wu, ptr noundef %i.q, ptr noundef %i.af, ptr noundef %i.p)
  %i.ww = add i64 %i.wv, 4                        ; 2 uses
  %i.wx = icmp ugt ptr %.1312.i.i38, %.0301.i199.i35
  br i1 %i.wx, label %.lr.ph179.i206, label %.critedge.i.i176

.lr.ph179.i206:                                   ; preds = %bb.ce, %bb.cf
  %.0261.i178.i207 = phi ptr [ %i.xa, %bb.cf ], [ %i.wq, %bb.ce ]
  %.1281.i177.i208 = phi i64 [ %i.xd, %bb.cf ], [ %i.ww, %bb.ce ] ; 2 uses
  %.2313.i176.i209 = phi ptr [ %i.wy, %bb.cf ], [ %.1312.i.i38, %bb.ce ] ; 2 uses
  %i.wy = getelementptr inbounds i8, ptr %.2313.i176.i209, i64 -1 ; 4 uses
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !33
  %i.xa = getelementptr inbounds i8, ptr %.0261.i178.i207, i64 -1 ; 3 uses
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !33
  %i.xc = icmp eq i8 %i.wz, %i.xb
  br i1 %i.xc, label %bb.cf, label %.critedge.i.loopexit.i210

bb.cf:                                            ; preds = %.lr.ph179.i206
  %i.xd = add i64 %.1281.i177.i208, 1             ; 2 uses
  %i.xe = icmp ugt ptr %i.wy, %.0301.i199.i35
  %i.xf = icmp ugt ptr %i.xa, %i.ae
  %i.xg = and i1 %i.xf, %i.xe
  br i1 %i.xg, label %.lr.ph179.i206, label %.critedge.i.loopexit.i210, !llvm.loop !97

.critedge.i.loopexit.i210:                        ; preds = %bb.cf, %.lr.ph179.i206
  %.2313.i.lcssa.ph.i211 = phi ptr [ %i.wy, %bb.cf ], [ %.2313.i176.i209, %.lr.ph179.i206 ] ; 2 uses
  %.1281.i.lcssa.ph.i212 = phi i64 [ %i.xd, %bb.cf ], [ %.1281.i177.i208, %.lr.ph179.i206 ]
  %.pre247.i213 = ptrtoint ptr %.2313.i.lcssa.ph.i211 to i64
  br label %.critedge.i.i176

.critedge.i.i176:                                 ; preds = %.critedge.i.loopexit.i210, %bb.ce
  %.pre-phi248.i177 = phi i64 [ %.pre247.i213, %.critedge.i.loopexit.i210 ], [ %.pn.i48, %bb.ce ]
  %.2313.i.lcssa.i178 = phi ptr [ %.2313.i.lcssa.ph.i211, %.critedge.i.loopexit.i210 ], [ %.1312.i.i38, %bb.ce ] ; 6 uses
  %.1281.i.lcssa.i179 = phi i64 [ %.1281.i.lcssa.ph.i212, %.critedge.i.loopexit.i210 ], [ %i.ww, %bb.ce ] ; 3 uses
  %.2313.i.lcssa.i1781571 = ptrtoaddr ptr %.2313.i.lcssa.i178 to i64 ; 3 uses
  %i.xh = ptrtoint ptr %.0301.i199.i35 to i64     ; 2 uses
  %i.xi = sub i64 %.pre-phi248.i177, %i.xh        ; 7 uses
  %i.xj = add i32 %i.ws, 3
  %.not.i355.i.i180 = icmp ugt ptr %.2313.i.lcssa.i178, %i.rv
  %i.xk = load ptr, ptr %i.rw, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i355.i.i180, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %.critedge.i.i176
  %.0301.i.val16.i181 = load <2 x i64>, ptr %.0301.i199.i35, align 1, !tbaa !33
  store <2 x i64> %.0301.i.val16.i181, ptr %i.xk, align 1, !tbaa !33
  %i.xl = icmp ugt i64 %i.xi, 16
  %i.xm = load ptr, ptr %i.rw, align 8, !tbaa !38 ; 4 uses
  br i1 %i.xl, label %bb.ch, label %ZSTD_storeSeq.exit356.i.thread.i182

ZSTD_storeSeq.exit356.i.thread.i182:              ; preds = %bb.cg
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xi
  store ptr %i.xn, ptr %i.rw, align 8, !tbaa !38
  %.pre241.i183 = load ptr, ptr %i.rz, align 8, !tbaa !39
  br label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xp = getelementptr inbounds nuw i8, ptr %.0301.i199.i35, i64 16 ; 2 uses
  %i.xq = getelementptr i8, ptr %i.xm, i64 %i.xi
  %.val15.i184 = load <2 x i64>, ptr %i.xp, align 1, !tbaa !33
  store <2 x i64> %.val15.i184, ptr %i.xo, align 1, !tbaa !33
  %i.xr = icmp slt i64 %i.xi, 33
  br i1 %i.xr, label %ZSTD_storeSeq.exit356.i.i190, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %bb.ci
  %.pn.i359.i.i185 = phi ptr [ %i.xp, %bb.ci ], [ %i.xu, %bb.cj ] ; 2 uses
  %.1.i360.i.i186 = phi ptr [ %i.xs, %bb.ci ], [ %i.xv, %bb.cj ] ; 3 uses
  %.130.i361.i.i187 = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i185, i64 16
  %.130.i361.i.val.i188 = load <2 x i64>, ptr %.130.i361.i.i187, align 1, !tbaa !33
  store <2 x i64> %.130.i361.i.val.i188, ptr %.1.i360.i.i186, align 1, !tbaa !33
  %i.xt = getelementptr inbounds nuw i8, ptr %.1.i360.i.i186, i64 16
  %i.xu = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i185, i64 32 ; 2 uses
  %.val14.i189 = load <2 x i64>, ptr %i.xu, align 1, !tbaa !33
  store <2 x i64> %.val14.i189, ptr %i.xt, align 1, !tbaa !33
  %i.xv = getelementptr inbounds nuw i8, ptr %.1.i360.i.i186, i64 32 ; 2 uses
  %i.xw = icmp ult ptr %i.xv, %i.xq
  br i1 %i.xw, label %bb.cj, label %ZSTD_storeSeq.exit356.i.i190, !llvm.loop !0

bb.ck:                                            ; preds = %.critedge.i.i176
  %.not.i26.i192 = icmp ugt ptr %.0301.i199.i35, %i.rv
  br i1 %.not.i26.i192, label %ZSTD_wildcopy.exit.i33.i199, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xx = sub i64 %i.rx, %i.xh                    ; 2 uses
  %i.xy = getelementptr inbounds i8, ptr %i.xk, i64 %i.xx ; 3 uses
  %.val19.i27.i193 = load <2 x i64>, ptr %.0301.i199.i35, align 1, !tbaa !33
  store <2 x i64> %.val19.i27.i193, ptr %i.xk, align 1, !tbaa !33
  %i.xz = icmp slt i64 %i.xx, 17
  br i1 %i.xz, label %ZSTD_wildcopy.exit.i33.i199, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %.pn.i.i28.i194 = phi ptr [ %.0301.i199.i35, %bb.cm ], [ %i.yc, %bb.cn ] ; 2 uses
  %.1.i.i29.i195 = phi ptr [ %i.ya, %bb.cm ], [ %i.yd, %bb.cn ] ; 3 uses
  %.130.i.i30.i196 = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i194, i64 16
  %.130.i.val.i31.i197 = load <2 x i64>, ptr %.130.i.i30.i196, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i31.i197, ptr %.1.i.i29.i195, align 1, !tbaa !33
  %i.yb = getelementptr inbounds nuw i8, ptr %.1.i.i29.i195, i64 16
  %i.yc = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i194, i64 32 ; 2 uses
  %.val.i32.i198 = load <2 x i64>, ptr %i.yc, align 1, !tbaa !33
  store <2 x i64> %.val.i32.i198, ptr %i.yb, align 1, !tbaa !33
  %i.yd = getelementptr inbounds nuw i8, ptr %.1.i.i29.i195, i64 32 ; 2 uses
  %i.ye = icmp ult ptr %i.yd, %i.xy
  br i1 %i.ye, label %bb.cn, label %ZSTD_wildcopy.exit.i33.i199, !llvm.loop !0

ZSTD_wildcopy.exit.i33.i199:                      ; preds = %bb.cn, %bb.cl, %bb.ck
  %.014.i34.i200 = phi ptr [ %.0301.i199.i35, %bb.ck ], [ %i.rv, %bb.cl ], [ %i.rv, %bb.cn ] ; 7 uses
  %.0.i35.i201 = phi ptr [ %i.xk, %bb.ck ], [ %i.xy, %bb.cl ], [ %i.xy, %bb.cn ] ; 6 uses
  %i.yf = icmp ult ptr %.014.i34.i200, %.2313.i.lcssa.i178
  br i1 %i.yf, label %iter.check1588.a, label %ZSTD_storeSeq.exit356.i.i190

iter.check1588.a:                                 ; preds = %ZSTD_wildcopy.exit.i33.i199
  %.014.i34.i2001569 = ptrtoaddr ptr %.014.i34.i200 to i64 ; 2 uses
  %.0.i35.i2011568 = ptrtoaddr ptr %.0.i35.i201 to i64
  %i.yg = sub i64 %.2313.i.lcssa.i1781571, %.014.i34.i2001569 ; 7 uses
  %min.iters.check1572.a = icmp ult i64 %i.yg, 8
  %i.yh = sub i64 %.014.i34.i2001569, %.0.i35.i2011568
  %diff.check1570.a = icmp ugt i64 %i.yh, -32
  %or.cond1876 = select i1 %min.iters.check1572.a, i1 true, i1 %diff.check1570.a
  br i1 %or.cond1876, label %.lr.ph.i36.i202.preheader, label %vector.main.loop.iter.check1573.a

vector.main.loop.iter.check1573.a:                ; preds = %iter.check1588.a
  %min.iters.check1574.a = icmp ult i64 %i.yg, 32
  br i1 %min.iters.check1574.a, label %vec.epilog.ph1592.a, label %vector.ph1575.a

vector.ph1575.a:                                  ; preds = %vector.main.loop.iter.check1573.a
  %i.yi = and i64 %i.yg, 24
  %n.vec1576.a = and i64 %i.yg, -32               ; 5 uses
  %i.yj = getelementptr i8, ptr %.0.i35.i201, i64 %n.vec1576.a
  %i.yk = getelementptr i8, ptr %.014.i34.i200, i64 %n.vec1576.a
  br label %vector.body1577.a

vector.body1577.a:                                ; preds = %vector.ph1575.a, %vector.body1577.a
  %index1578.a = phi i64 [ 0, %vector.ph1575.a ], [ %index.next1583.a, %vector.body1577.a ] ; 3 uses
  %next.gep1579.a = getelementptr i8, ptr %.0.i35.i201, i64 %index1578.a ; 2 uses
  %next.gep1580.a = getelementptr i8, ptr %.014.i34.i200, i64 %index1578.a ; 2 uses
  %i.yl = getelementptr i8, ptr %next.gep1580.a, i64 16
  %wide.load1581.a = load <16 x i8>, ptr %next.gep1580.a, align 1, !tbaa !33
  %wide.load1582.a = load <16 x i8>, ptr %i.yl, align 1, !tbaa !33
  %i.ym = getelementptr i8, ptr %next.gep1579.a, i64 16
  store <16 x i8> %wide.load1581.a, ptr %next.gep1579.a, align 1, !tbaa !33
  store <16 x i8> %wide.load1582.a, ptr %i.ym, align 1, !tbaa !33
  %index.next1583.a = add nuw i64 %index1578.a, 32 ; 2 uses
  %i.yn = icmp eq i64 %index.next1583.a, %n.vec1576.a
  br i1 %i.yn, label %middle.block1584.a, label %vector.body1577.a, !llvm.loop !111

middle.block1584.a:                               ; preds = %vector.body1577.a
  %cmp.n1585.a = icmp eq i64 %i.yg, %n.vec1576.a
end_hunk_1
begin_hunk_2_@ZSTD_compressBlock_fast_dictMatchState:bb.a
  %n.vec1556 = and i64 %i.adc, -8                 ; 4 uses
  %i.adk = getelementptr i8, ptr %.0.i58.i141, i64 %n.vec1556
  %i.adl = getelementptr i8, ptr %.014.i57.i140, i64 %n.vec1556
  br label %vec.epilog.vector.body1557

vec.epilog.vector.body1557:                       ; preds = %vec.epilog.vector.body1557, %vec.epilog.ph1555
  %index1558 = phi i64 [ %vec.epilog.resume.val1549, %vec.epilog.ph1555 ], [ %index.next1562, %vec.epilog.vector.body1557 ] ; 3 uses
  %next.gep1559 = getelementptr i8, ptr %.0.i58.i141, i64 %index1558
  %next.gep1560 = getelementptr i8, ptr %.014.i57.i140, i64 %index1558
  %wide.load1561 = load <8 x i8>, ptr %next.gep1560, align 1, !tbaa !33
  store <8 x i8> %wide.load1561, ptr %next.gep1559, align 1, !tbaa !33
  %index.next1562 = add nuw i64 %index1558, 8     ; 2 uses
  %i.adm = icmp eq i64 %index.next1562, %n.vec1556
  br i1 %i.adm, label %vec.epilog.middle.block1563, label %vec.epilog.vector.body1557, !llvm.loop !116

vec.epilog.middle.block1563:                      ; preds = %vec.epilog.vector.body1557
  %cmp.n1564 = icmp eq i64 %i.adc, %n.vec1556
  br i1 %cmp.n1564, label %ZSTD_storeSeq.exit354.i.i130, label %.lr.ph.i59.i142.preheader

.lr.ph.i59.i142.preheader:                        ; preds = %iter.check1551, %vec.epilog.iter.check1553, %vec.epilog.middle.block1563
  %.121.i60.i143.ph = phi ptr [ %.0.i58.i141, %iter.check1551 ], [ %i.adf, %vec.epilog.iter.check1553 ], [ %i.adk, %vec.epilog.middle.block1563 ] ; 2 uses
  %.11520.i61.i144.ph = phi ptr [ %.014.i57.i140, %iter.check1551 ], [ %i.adg, %vec.epilog.iter.check1553 ], [ %i.adl, %vec.epilog.middle.block1563 ] ; 3 uses
  %.11520.i61.i144.ph2057 = ptrtoaddr ptr %.11520.i61.i144.ph to i64 ; 2 uses
  %i.adn = sub i64 %.5316.i.lcssa.i831534, %.11520.i61.i144.ph2057
  %xtraiter2058 = and i64 %i.adn, 7               ; 2 uses
  %lcmp.mod2059.not = icmp eq i64 %xtraiter2058, 0
  br i1 %lcmp.mod2059.not, label %.lr.ph.i59.i142.prol.loopexit, label %.lr.ph.i59.i142.prol

.lr.ph.i59.i142.prol:                             ; preds = %.lr.ph.i59.i142.preheader, %.lr.ph.i59.i142.prol
  %.121.i60.i143.prol = phi ptr [ %i.adq, %.lr.ph.i59.i142.prol ], [ %.121.i60.i143.ph, %.lr.ph.i59.i142.preheader ] ; 2 uses
  %.11520.i61.i144.prol = phi ptr [ %i.ado, %.lr.ph.i59.i142.prol ], [ %.11520.i61.i144.ph, %.lr.ph.i59.i142.preheader ] ; 2 uses
  %prol.iter2060 = phi i64 [ %prol.iter2060.next, %.lr.ph.i59.i142.prol ], [ 0, %.lr.ph.i59.i142.preheader ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.11520.i61.i144.prol, i64 1 ; 2 uses
  %i.adp = load i8, ptr %.11520.i61.i144.prol, align 1, !tbaa !33
  %i.adq = getelementptr inbounds nuw i8, ptr %.121.i60.i143.prol, i64 1 ; 2 uses
  store i8 %i.adp, ptr %.121.i60.i143.prol, align 1, !tbaa !33
  %prol.iter2060.next = add i64 %prol.iter2060, 1 ; 2 uses
  %prol.iter2060.cmp.not = icmp eq i64 %prol.iter2060.next, %xtraiter2058
  br i1 %prol.iter2060.cmp.not, label %.lr.ph.i59.i142.prol.loopexit, label %.lr.ph.i59.i142.prol, !llvm.loop !117

.lr.ph.i59.i142.prol.loopexit:                    ; preds = %.lr.ph.i59.i142.prol, %.lr.ph.i59.i142.preheader
  %.121.i60.i143.unr = phi ptr [ %.121.i60.i143.ph, %.lr.ph.i59.i142.preheader ], [ %i.adq, %.lr.ph.i59.i142.prol ]
  %.11520.i61.i144.unr = phi ptr [ %.11520.i61.i144.ph, %.lr.ph.i59.i142.preheader ], [ %i.ado, %.lr.ph.i59.i142.prol ]
  %i.adr = sub i64 %.11520.i61.i144.ph2057, %.5316.i.lcssa.i831534
  %i.ads = icmp ugt i64 %i.adr, -8
  br i1 %i.ads, label %ZSTD_storeSeq.exit354.i.i130, label %.lr.ph.i59.i142

.lr.ph.i59.i142:                                  ; preds = %.lr.ph.i59.i142.prol.loopexit, %.lr.ph.i59.i142
  %.121.i60.i143 = phi ptr [ %i.aeq, %.lr.ph.i59.i142 ], [ %.121.i60.i143.unr, %.lr.ph.i59.i142.prol.loopexit ] ; 9 uses
  %.11520.i61.i144 = phi ptr [ %i.aeo, %.lr.ph.i59.i142 ], [ %.11520.i61.i144.unr, %.lr.ph.i59.i142.prol.loopexit ] ; 9 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 1
  %i.adu = load i8, ptr %.11520.i61.i144, align 1, !tbaa !33
  %i.adv = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 1
  store i8 %i.adu, ptr %.121.i60.i143, align 1, !tbaa !33
  %i.adw = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 2
  %i.adx = load i8, ptr %i.adt, align 1, !tbaa !33
  %i.ady = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 2
  store i8 %i.adx, ptr %i.adv, align 1, !tbaa !33
  %i.adz = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 3
  %i.aea = load i8, ptr %i.adw, align 1, !tbaa !33
  %i.aeb = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 3
  store i8 %i.aea, ptr %i.ady, align 1, !tbaa !33
  %i.aec = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 4
  %i.aed = load i8, ptr %i.adz, align 1, !tbaa !33
  %i.aee = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 4
  store i8 %i.aed, ptr %i.aeb, align 1, !tbaa !33
  %i.aef = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 5
  %i.aeg = load i8, ptr %i.aec, align 1, !tbaa !33
  %i.aeh = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 5
  store i8 %i.aeg, ptr %i.aee, align 1, !tbaa !33
  %i.aei = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 6
  %i.aej = load i8, ptr %i.aef, align 1, !tbaa !33
  %i.aek = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 6
  store i8 %i.aej, ptr %i.aeh, align 1, !tbaa !33
  %i.ael = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 7
  %i.aem = load i8, ptr %i.aei, align 1, !tbaa !33
  %i.aen = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 7
  store i8 %i.aem, ptr %i.aek, align 1, !tbaa !33
  %i.aeo = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 8 ; 2 uses
  %i.aep = load i8, ptr %i.ael, align 1, !tbaa !33
  %i.aeq = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 8
  store i8 %i.aep, ptr %i.aen, align 1, !tbaa !33
  %exitcond.not.i62.i145.7 = icmp eq ptr %i.aeo, %.5316.i.lcssa.i83
  br i1 %exitcond.not.i62.i145.7, label %ZSTD_storeSeq.exit354.i.i130, label %.lr.ph.i59.i142, !llvm.loop !118

ZSTD_storeSeq.exit354.i.i130:                     ; preds = %bb.dg, %.lr.ph.i59.i142.prol.loopexit, %.lr.ph.i59.i142, %middle.block1547, %vec.epilog.middle.block1563, %ZSTD_wildcopy.exit.i56.i139, %bb.de
  %i.aer = load ptr, ptr %i.rw, align 8, !tbaa !38
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.ace
  store ptr %i.aes, ptr %i.rw, align 8, !tbaa !38
  %i.aet = icmp ugt i64 %i.ace, 65535
  %.pre244.i131 = load ptr, ptr %i.rz, align 8, !tbaa !39 ; 3 uses
  br i1 %i.aet, label %bb.dl, label %bb.dm, !prof !44

bb.dl:                                            ; preds = %ZSTD_storeSeq.exit354.i.i130
  store i32 1, ptr %i.ry, align 8, !tbaa !45
  %i.aeu = load ptr, ptr %1, align 8, !tbaa !46
  %i.aev = ptrtoint ptr %.pre244.i131 to i64
  %i.aew = ptrtoint ptr %i.aeu to i64
  %i.aex = sub i64 %i.aev, %i.aew
  %i.aey = lshr exact i64 %i.aex, 3
  %i.aez = trunc i64 %i.aey to i32
  store i32 %i.aez, ptr %i.sa, align 4, !tbaa !47
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %ZSTD_storeSeq.exit354.i.i130, %ZSTD_storeSeq.exit354.i.thread.i87
  %i.afa = phi ptr [ %.pre243.i88, %ZSTD_storeSeq.exit354.i.thread.i87 ], [ %.pre244.i131, %bb.dl ], [ %.pre244.i131, %ZSTD_storeSeq.exit354.i.i130 ] ; 4 uses
  %i.afb = trunc i64 %i.ace to i16
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afa, i64 4
  store i16 %i.afb, ptr %i.afc, align 4, !tbaa !49
  store i32 %i.acf, ptr %i.afa, align 4, !tbaa !50
  %i.afd = add i64 %.4.i.lcssa.i84, -3            ; 3 uses
  %i.afe = icmp ugt i64 %i.afd, 65535
  br i1 %i.afe, label %ZSTD_storeSeqOnly.exit.i.sink.split.i117, label %ZSTD_storeSeqOnly.exit.i.i89, !prof !51

ZSTD_match4Found_cmov.exit.thread.i61:            ; preds = %ZSTD_match4Found_cmov.exit.i69, %.thread.i57
  %.not337.i.i62 = icmp uge ptr %.1308.i.i39, %.0264.i.i44 ; 2 uses
  %i.aff = zext i1 %.not337.i.i62 to i64
  %.1268.i.i63 = add i64 %.0267.i.i43, %i.aff     ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.1308.i.i39, i64 %.1268.i.i63 ; 2 uses
  %i.afh = icmp ugt ptr %i.afg, %i.r
  br i1 %i.afh, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.dn

bb.dn:                                            ; preds = %ZSTD_match4Found_cmov.exit.thread.i61
  %.1265.i.idx.i64 = select i1 %.not337.i.i62, i64 256, i64 0
  %.1265.i.i65 = getelementptr inbounds nuw i8, ptr %.0264.i.i44, i64 %.1265.i.idx.i64
  %i.afi = lshr i64 %i.ss, 8
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.afi
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !25 ; 2 uses
  %i.afl = zext i32 %i.afk to i64
  %i.afm = xor i64 %i.ss, %i.afl
  br label %bb.bo

ZSTD_storeSeqOnly.exit.i.sink.split.i117:         ; preds = %bb.dm, %bb.cp, %bb.ca
  %.sink317.i118 = phi ptr [ %i.aae, %bb.cp ], [ %i.wg, %bb.ca ], [ %i.afa, %bb.dm ] ; 2 uses
  %.sink313.ph.i119 = phi i64 [ %i.aah, %bb.cp ], [ %i.wj, %bb.ca ], [ %i.afd, %bb.dm ]
  %.6317.i.ph.ph.i120 = phi ptr [ %.2313.i.lcssa.i178, %bb.cp ], [ %i.td, %bb.ca ], [ %.5316.i.lcssa.i83, %bb.dm ]
  %.4295.i.ph.ph.i121 = phi i32 [ %i.ws, %bb.cp ], [ %.0291.i200.i34, %bb.ca ], [ %i.aam, %bb.dm ]
  %.4289.i.ph.ph.i122 = phi i32 [ %.0291.i200.i34, %bb.cp ], [ %.0285.i201.i33, %bb.ca ], [ %.0291.i200.i34, %bb.dm ]
  %.5.i.ph.ph.i123 = phi i64 [ %.1281.i.lcssa.i179, %bb.cp ], [ %i.ti, %bb.ca ], [ %.4.i.lcssa.i84, %bb.dm ]
  store i32 2, ptr %i.ry, align 8, !tbaa !45
  %i.afn = load ptr, ptr %1, align 8, !tbaa !46
  %i.afo = ptrtoint ptr %.sink317.i118 to i64
  %i.afp = ptrtoint ptr %i.afn to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = lshr exact i64 %i.afq, 3
  %i.afs = trunc i64 %i.afr to i32
  store i32 %i.afs, ptr %i.sa, align 4, !tbaa !47
  br label %ZSTD_storeSeqOnly.exit.i.i89

ZSTD_storeSeqOnly.exit.i.i89:                     ; preds = %ZSTD_storeSeqOnly.exit.i.sink.split.i117, %bb.dm, %bb.cp, %bb.ca
  %.sink313.i90 = phi i64 [ %i.wj, %bb.ca ], [ %i.aah, %bb.cp ], [ %i.afd, %bb.dm ], [ %.sink313.ph.i119, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ]
  %.sink312.i91 = phi ptr [ %i.wg, %bb.ca ], [ %i.aae, %bb.cp ], [ %i.afa, %bb.dm ], [ %.sink317.i118, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ] ; 2 uses
  %.6317.i.ph.i92 = phi ptr [ %i.td, %bb.ca ], [ %.2313.i.lcssa.i178, %bb.cp ], [ %.5316.i.lcssa.i83, %bb.dm ], [ %.6317.i.ph.ph.i120, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ]
  %.4295.i.ph.i93 = phi i32 [ %.0291.i200.i34, %bb.ca ], [ %i.ws, %bb.cp ], [ %i.aam, %bb.dm ], [ %.4295.i.ph.ph.i121, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ] ; 2 uses
  %.4289.i.ph.i94 = phi i32 [ %.0285.i201.i33, %bb.ca ], [ %.0291.i200.i34, %bb.cp ], [ %.0291.i200.i34, %bb.dm ], [ %.4289.i.ph.ph.i122, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ] ; 2 uses
  %.5.i.ph.i95 = phi i64 [ %i.ti, %bb.ca ], [ %.1281.i.lcssa.i179, %bb.cp ], [ %.4.i.lcssa.i84, %bb.dm ], [ %.5.i.ph.ph.i123, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ]
  %i.aft = trunc i64 %.sink313.i90 to i16
  %i.afu = getelementptr inbounds nuw i8, ptr %.sink312.i91, i64 6
  store i16 %i.aft, ptr %i.afu, align 2, !tbaa !52
  %i.afv = getelementptr inbounds nuw i8, ptr %.sink312.i91, i64 8 ; 2 uses
  store ptr %i.afv, ptr %i.rz, align 8, !tbaa !39
  %i.afw = getelementptr inbounds nuw i8, ptr %.6317.i.ph.i92, i64 %.5.i.ph.i95 ; 4 uses
  %.not338.i.i96 = icmp ugt ptr %i.afw, %i.r
  br i1 %.not338.i.i96, label %.thread122.i105, label %bb.do

bb.do:                                            ; preds = %ZSTD_storeSeqOnly.exit.i.i89
  %i.afx = add i32 %.0270.i.i50, 2
  %i.afy = and i64 %.0270.i.in.i49, 4294967295
  %i.afz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.afy
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 2
  %.val9.i97 = load i64, ptr %i.aga, align 1, !tbaa !24
  %i.agb = mul i64 %.val9.i97, -3523014627271114752
  %i.agc = lshr i64 %i.agb, %i.rs
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.agc
  store i32 %i.afx, ptr %i.agd, align 4, !tbaa !25
  %i.age = getelementptr inbounds i8, ptr %i.afw, i64 -2 ; 2 uses
  %i.agf = ptrtoint ptr %i.age to i64
  %i.agg = sub i64 %i.agf, %i.as
  %i.agh = trunc i64 %i.agg to i32
  %.val8.i98 = load i64, ptr %i.age, align 1, !tbaa !24
  %i.agi = mul i64 %.val8.i98, -3523014627271114752
  %i.agj = lshr i64 %i.agi, %i.rs
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.agj
  store i32 %i.agh, ptr %i.agk, align 4, !tbaa !25
  br label %bb.dp

bb.dp:                                            ; preds = %bb.du, %bb.do
  %i.agl = phi ptr [ %i.afv, %bb.do ], [ %i.ahm, %bb.du ]
  %.5290.i195.i99 = phi i32 [ %.4289.i.ph.i94, %bb.do ], [ %.5296.i194.i100, %bb.du ] ; 5 uses
  %.5296.i194.i100 = phi i32 [ %.4295.i.ph.i93, %bb.do ], [ %.5290.i195.i99, %bb.du ] ; 4 uses
  %.7318.i193.i101 = phi ptr [ %i.afw, %bb.do ], [ %i.ahr, %bb.du ] ; 9 uses
  %i.agm = ptrtoint ptr %.7318.i193.i101 to i64
  %i.agn = sub i64 %i.agm, %i.as
  %i.ago = trunc i64 %i.agn to i32                ; 2 uses
  %i.agp = sub i32 %i.ago, %.5290.i195.i99        ; 3 uses
  %i.agq = icmp ult i32 %i.agp, %i.n              ; 2 uses
  %i.agr = zext i32 %i.agp to i64
  %.v.i102 = select i1 %i.agq, ptr %i.sg, ptr %i.k
  %i.ags = getelementptr inbounds nuw i8, ptr %.v.i102, i64 %i.agr ; 2 uses
  %i.agt = sub i32 %i.agp, %i.n
  %8 = icmp ugt i32 %i.agt, -4
  br i1 %8, label %.thread122.i105, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.val4.i103 = load i32, ptr %i.ags, align 1, !tbaa !25
  %.7318.i.val.i104 = load i32, ptr %.7318.i193.i101, align 1, !tbaa !25
  %i.agu = icmp eq i32 %.val4.i103, %.7318.i.val.i104
  br i1 %i.agu, label %bb.dr, label %.thread122.i105

bb.dr:                                            ; preds = %bb.dq
  %i.agv = select i1 %i.agq, ptr %i.af, ptr %i.q
  %i.agw = getelementptr inbounds nuw i8, ptr %.7318.i193.i101, i64 4
  %i.agx = getelementptr inbounds nuw i8, ptr %i.ags, i64 4
  %i.agy = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.agw, ptr noundef nonnull %i.agx, ptr noundef %i.q, ptr noundef %i.agv, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i111 = icmp ugt ptr %.7318.i193.i101, %i.rv
  br i1 %.not.i.i.i111, label %ZSTD_storeSeq.exit.i.i114, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.agz = load ptr, ptr %i.rw, align 8, !tbaa !38
  %.1302.i.val.i112 = load <2 x i64>, ptr %.7318.i193.i101, align 1, !tbaa !33
  store <2 x i64> %.1302.i.val.i112, ptr %i.agz, align 1, !tbaa !33
  %.pre245.i113 = load ptr, ptr %i.rz, align 8, !tbaa !39
  br label %ZSTD_storeSeq.exit.i.i114

ZSTD_storeSeq.exit.i.i114:                        ; preds = %bb.ds, %bb.dr
  %i.aha = phi ptr [ %i.agl, %bb.dr ], [ %.pre245.i113, %bb.ds ] ; 5 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 4
  store i16 0, ptr %i.ahb, align 4, !tbaa !49
  store i32 1, ptr %i.aha, align 4, !tbaa !50
  %i.ahc = add i64 %i.agy, 1                      ; 2 uses
  %i.ahd = icmp ugt i64 %i.ahc, 65535
  br i1 %i.ahd, label %bb.dt, label %bb.du, !prof !51

bb.dt:                                            ; preds = %ZSTD_storeSeq.exit.i.i114
  store i32 2, ptr %i.ry, align 8, !tbaa !45
  %i.ahe = load ptr, ptr %1, align 8, !tbaa !46
  %i.ahf = ptrtoint ptr %i.aha to i64
  %i.ahg = ptrtoint ptr %i.ahe to i64
  %i.ahh = sub i64 %i.ahf, %i.ahg
  %i.ahi = lshr exact i64 %i.ahh, 3
  %i.ahj = trunc i64 %i.ahi to i32
  store i32 %i.ahj, ptr %i.sa, align 4, !tbaa !47
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %ZSTD_storeSeq.exit.i.i114
  %i.ahk = trunc i64 %i.ahc to i16
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.aha, i64 6
  store i16 %i.ahk, ptr %i.ahl, align 2, !tbaa !52
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.aha, i64 8 ; 2 uses
  store ptr %i.ahm, ptr %i.rz, align 8, !tbaa !39
  %.7318.i.val7.i115 = load i64, ptr %.7318.i193.i101, align 1, !tbaa !24
  %i.ahn = mul i64 %.7318.i.val7.i115, -3523014627271114752
  %i.aho = lshr i64 %i.ahn, %i.rs
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aho
  store i32 %i.ago, ptr %i.ahp, align 4, !tbaa !25
  %i.ahq = getelementptr i8, ptr %.7318.i193.i101, i64 %i.agy
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 4    ; 3 uses
  %.not339.i.i116 = icmp ugt ptr %i.ahr, %i.r
  br i1 %.not339.i.i116, label %.thread122.i105, label %bb.dp

.thread122.i105:                                  ; preds = %bb.du, %bb.dq, %bb.dp, %ZSTD_storeSeqOnly.exit.i.i89
  %.9320.i.i106 = phi ptr [ %i.afw, %ZSTD_storeSeqOnly.exit.i.i89 ], [ %.7318.i193.i101, %bb.dp ], [ %.7318.i193.i101, %bb.dq ], [ %i.ahr, %bb.du ] ; 4 uses
  %.7298.i.i107 = phi i32 [ %.4295.i.ph.i93, %ZSTD_storeSeqOnly.exit.i.i89 ], [ %.5296.i194.i100, %bb.dp ], [ %.5296.i194.i100, %bb.dq ], [ %.5290.i195.i99, %bb.du ] ; 2 uses
  %.7.i.i108 = phi i32 [ %.4289.i.ph.i94, %ZSTD_storeSeqOnly.exit.i.i89 ], [ %.5290.i195.i99, %bb.dp ], [ %.5290.i195.i99, %bb.dq ], [ %.5296.i194.i100, %bb.du ] ; 2 uses
  %.0307.i.i109 = getelementptr inbounds nuw i8, ptr %.9320.i.i106, i64 %i.l ; 2 uses
  %.not332.i.i110 = icmp ugt ptr %.0307.i.i109, %i.r
  br i1 %.not332.i.i110, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.bn

bb.dv:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i246, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ahs = zext nneg i32 %i.ar to i64
  %i.aht = shl nuw i64 4, %i.ahs
  %.not207.i243 = icmp ugt i32 %i.ar, 61
  br i1 %.not207.i243, label %.loopexit.i246, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %bb.dw, %.lr.ph.i244
  %.0284.i174.i245 = phi i64 [ %i.ahv, %.lr.ph.i244 ], [ 0, %bb.dw ] ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0284.i174.i245
  tail call void @llvm.prefetch.p0(ptr %i.ahu, i32 0, i32 2, i32 1)
  %i.ahv = add nuw i64 %.0284.i174.i245, 64       ; 2 uses
  %i.ahw = icmp ult i64 %i.ahv, %i.aht
  br i1 %i.ahw, label %.lr.ph.i244, label %.loopexit.i246, !llvm.loop !92

.loopexit.i246:                                   ; preds = %.lr.ph.i244, %bb.dw, %bb.dv
  %i.ahx = add nsw i64 %4, -8
  %.not332.i197.i247 = icmp slt i64 %i.ahx, %i.l
  br i1 %.not332.i197.i247, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %.lr.ph203.i248

.lr.ph203.i248:                                   ; preds = %.loopexit.i246
  %.0307.i196.i249 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.ahy = and i64 %i.ap, 4294967295
  %i.ahz = icmp eq i64 %i.ahy, 0
  %i.aia = zext i1 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw i8, ptr %3, i64 %i.aia
  %i.aic = sub i32 64, %i.f
  %i.aid = zext nneg i32 %i.aic to i64            ; 4 uses
  %i.aie = sub i32 56, %i.ar
  %i.aif = zext nneg i32 %i.aie to i64            ; 2 uses
  %i.aig = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.aii = ptrtoint ptr %i.aig to i64             ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.aim = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 2 uses
  %i.ain = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.aio = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.aip = zext i32 %i.ai to i64
  %i.aiq = sub nsw i64 0, %i.aip
  %i.air = getelementptr inbounds i8, ptr %i.ac, i64 %i.aiq
  br label %bb.dx

bb.dx:                                            ; preds = %.thread122.i324, %.lr.ph203.i248
  %.0307.i202.i250 = phi ptr [ %.0307.i196.i249, %.lr.ph203.i248 ], [ %.0307.i.i328, %.thread122.i324 ]
  %.0285.i201.i251 = phi i32 [ %i.u, %.lr.ph203.i248 ], [ %.7.i.i327, %.thread122.i324 ] ; 3 uses
  %.0291.i200.i252 = phi i32 [ %i.s, %.lr.ph203.i248 ], [ %.7298.i.i326, %.thread122.i324 ] ; 8 uses
  %.0301.i199.i253 = phi ptr [ %3, %.lr.ph203.i248 ], [ %.9320.i.i325, %.thread122.i324 ] ; 26 uses
  %.0311.i198.i254 = phi ptr [ %i.aib, %.lr.ph203.i248 ], [ %.9320.i.i325, %.thread122.i324 ] ; 3 uses
  %.0311.i.val11.i255 = load i64, ptr %.0311.i198.i254, align 1, !tbaa !24
  %i.ais = mul i64 %.0311.i.val11.i255, -3523014627193847808 ; 2 uses
  %i.ait = lshr i64 %i.ais, %i.aif                ; 2 uses
  %i.aiu = lshr i64 %i.ait, 8
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !25 ; 2 uses
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = xor i64 %i.ait, %i.aix
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0311.i198.i254, i64 256
  %invariant.op = sub i32 1, %.0291.i200.i252
  br label %bb.dy

bb.dy:                                            ; preds = %bb.fx, %bb.dx
  %.1312.i.i256 = phi ptr [ %.0311.i198.i254, %bb.dx ], [ %.1308.i.i257, %bb.fx ] ; 16 uses
  %.1308.i.i257 = phi ptr [ %.0307.i202.i250, %bb.dx ], [ %i.avr, %bb.fx ] ; 4 uses
  %.pn209.i258 = phi i64 [ %i.ais, %bb.dx ], [ %i.ajc, %bb.fx ]
  %.0276.i.i259 = phi i32 [ %i.aiw, %bb.dx ], [ %i.avv, %bb.fx ]
  %.0274.i.in.in.in.i260 = phi i64 [ %i.aiy, %bb.dx ], [ %i.avx, %bb.fx ]
  %.0267.i.i261 = phi i64 [ %i.l, %bb.dx ], [ %.1268.i.i282, %bb.fx ]
  %.0264.i.i262 = phi ptr [ %i.aiz, %bb.dx ], [ %.1265.i.i284, %bb.fx ] ; 2 uses
  %.0278.i.i263 = lshr i64 %.pn209.i258, %i.aid
  %.0272.i.in.i264 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0278.i.i263 ; 2 uses
  %.0272.i.i265 = load i32, ptr %.0272.i.in.i264, align 4, !tbaa !25 ; 5 uses
  %.pn.i266 = ptrtoint ptr %.1312.i.i256 to i64   ; 5 uses
  %.0270.i.in.i267 = sub i64 %.pn.i266, %i.as     ; 2 uses
  %.0270.i.i268 = trunc i64 %.0270.i.in.i267 to i32 ; 4 uses
  %.0274.i.in.in.i269 = and i64 %.0274.i.in.in.in.i260, 255
  %.0274.i.in.not.i270 = icmp eq i64 %.0274.i.in.in.i269, 0
  %i.aja = zext i32 %.0272.i.i265 to i64
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aja ; 4 uses
  %.reass.i272.reass.reass.reass = add i32 %.0270.i.i268, %invariant.op ; 4 uses
  %.1308.i.val10.i273 = load i64, ptr %.1308.i.i257, align 1, !tbaa !24
  %i.ajc = mul i64 %.1308.i.val10.i273, -3523014627193847808 ; 2 uses
  %i.ajd = lshr i64 %i.ajc, %i.aif                ; 2 uses
  store i32 %.0270.i.i268, ptr %.0272.i.in.i264, align 4, !tbaa !25
  %i.aje = sub i32 %.reass.i272.reass.reass.reass, %i.n
  %9 = icmp ugt i32 %i.aje, -4
  br i1 %9, label %bb.el, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ajf = icmp ult i32 %.reass.i272.reass.reass.reass, %i.n ; 2 uses
  %i.ajg = sub i32 %.reass.i272.reass.reass.reass, %i.ai
  %i.ajh = zext i32 %i.ajg to i64
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ajh
  %i.ajj = zext i32 %.reass.i272.reass.reass.reass to i64
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ajj
  %i.ajl = select i1 %i.ajf, ptr %i.aji, ptr %i.ajk ; 2 uses
  %.val6.i274 = load i32, ptr %i.ajl, align 1, !tbaa !25
  %i.ajm = getelementptr inbounds nuw i8, ptr %.1312.i.i256, i64 1
  %.val5.i275 = load i32, ptr %i.ajm, align 1, !tbaa !25
  %i.ajn = icmp eq i32 %.val6.i274, %.val5.i275
  br i1 %i.ajn, label %bb.ea, label %bb.el

bb.ea:                                            ; preds = %bb.dz
  %.1312.i.i256.lcssa20312035 = ptrtoaddr ptr %.1312.i.i256 to i64 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.1312.i.i256, i64 1 ; 5 uses
  %i.ajp = select i1 %i.ajf, ptr %i.af, ptr %i.q
  %i.ajq = getelementptr inbounds nuw i8, ptr %.1312.i.i256, i64 5
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajl, i64 4
  %i.ajs = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ajq, ptr noundef nonnull %i.ajr, ptr noundef %i.q, ptr noundef %i.ajp, ptr noundef %i.p) ; 2 uses
  %i.ajt = add i64 %i.ajs, 4                      ; 2 uses
  %i.aju = ptrtoint ptr %i.ajo to i64
  %i.ajv = ptrtoint ptr %.0301.i199.i253 to i64   ; 2 uses
  %i.ajw = sub i64 %i.aju, %i.ajv                 ; 7 uses
  %.not.i357.i.i433 = icmp ugt ptr %i.ajo, %i.aig
  %i.ajx = load ptr, ptr %i.aih, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i357.i.i433, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.0301.i.val.i434 = load <2 x i64>, ptr %.0301.i199.i253, align 1, !tbaa !33
  store <2 x i64> %.0301.i.val.i434, ptr %i.ajx, align 1, !tbaa !33
  %i.ajy = icmp ugt i64 %i.ajw, 16
  %i.ajz = load ptr, ptr %i.aih, align 8, !tbaa !38 ; 4 uses
  br i1 %i.ajy, label %bb.ec, label %ZSTD_storeSeq.exit358.i.thread.i435

ZSTD_storeSeq.exit358.i.thread.i435:              ; preds = %bb.eb
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.ajw
  store ptr %i.aka, ptr %i.aih, align 8, !tbaa !38
  %.pre.i436 = load ptr, ptr %i.aik, align 8, !tbaa !39
  br label %bb.ek

bb.ec:                                            ; preds = %bb.eb
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akc = getelementptr inbounds nuw i8, ptr %.0301.i199.i253, i64 16 ; 2 uses
  %i.akd = getelementptr i8, ptr %i.ajz, i64 %i.ajw
  %.val13.i437 = load <2 x i64>, ptr %i.akc, align 1, !tbaa !33
  store <2 x i64> %.val13.i437, ptr %i.akb, align 1, !tbaa !33
  %i.ake = icmp slt i64 %i.ajw, 33
  br i1 %i.ake, label %ZSTD_storeSeq.exit358.i.i443, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajz, i64 32
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %bb.ed
  %.pn.i.i.i438 = phi ptr [ %i.akc, %bb.ed ], [ %i.akh, %bb.ee ] ; 2 uses
  %.1.i.i.i439 = phi ptr [ %i.akf, %bb.ed ], [ %i.aki, %bb.ee ] ; 3 uses
  %.130.i.i.i440 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i438, i64 16
  %.130.i.i.val.i441 = load <2 x i64>, ptr %.130.i.i.i440, align 1, !tbaa !33
  store <2 x i64> %.130.i.i.val.i441, ptr %.1.i.i.i439, align 1, !tbaa !33
  %i.akg = getelementptr inbounds nuw i8, ptr %.1.i.i.i439, i64 16
  %i.akh = getelementptr inbounds nuw i8, ptr %.pn.i.i.i438, i64 32 ; 2 uses
  %.val12.i442 = load <2 x i64>, ptr %i.akh, align 1, !tbaa !33
  store <2 x i64> %.val12.i442, ptr %i.akg, align 1, !tbaa !33
  %i.aki = getelementptr inbounds nuw i8, ptr %.1.i.i.i439, i64 32 ; 2 uses
  %i.akj = icmp ult ptr %i.aki, %i.akd
  br i1 %i.akj, label %bb.ee, label %ZSTD_storeSeq.exit358.i.i443, !llvm.loop !0

bb.ef:                                            ; preds = %bb.ea
  %.not.i20.i445 = icmp ugt ptr %.0301.i199.i253, %i.aig
  br i1 %.not.i20.i445, label %ZSTD_wildcopy.exit.i24.i452, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.akk = sub i64 %i.aii, %i.ajv                 ; 2 uses
  %i.akl = getelementptr inbounds i8, ptr %i.ajx, i64 %i.akk ; 3 uses
  %.val19.i.i446 = load <2 x i64>, ptr %.0301.i199.i253, align 1, !tbaa !33
  store <2 x i64> %.val19.i.i446, ptr %i.ajx, align 1, !tbaa !33
  %i.akm = icmp slt i64 %i.akk, 17
  br i1 %i.akm, label %ZSTD_wildcopy.exit.i24.i452, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ajx, i64 16
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ei, %bb.eh
  %.pn.i.i21.i447 = phi ptr [ %.0301.i199.i253, %bb.eh ], [ %i.akp, %bb.ei ] ; 2 uses
  %.1.i.i22.i448 = phi ptr [ %i.akn, %bb.eh ], [ %i.akq, %bb.ei ] ; 3 uses
  %.130.i.i23.i449 = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i447, i64 16
  %.130.i.val.i.i450 = load <2 x i64>, ptr %.130.i.i23.i449, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i.i450, ptr %.1.i.i22.i448, align 1, !tbaa !33
  %i.ako = getelementptr inbounds nuw i8, ptr %.1.i.i22.i448, i64 16
  %i.akp = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i447, i64 32 ; 2 uses
  %.val.i.i451 = load <2 x i64>, ptr %i.akp, align 1, !tbaa !33
  store <2 x i64> %.val.i.i451, ptr %i.ako, align 1, !tbaa !33
  %i.akq = getelementptr inbounds nuw i8, ptr %.1.i.i22.i448, i64 32 ; 2 uses
  %i.akr = icmp ult ptr %i.akq, %i.akl
  br i1 %i.akr, label %bb.ei, label %ZSTD_wildcopy.exit.i24.i452, !llvm.loop !0

ZSTD_wildcopy.exit.i24.i452:                      ; preds = %bb.ei, %bb.eg, %bb.ef
  %.014.i.i453 = phi ptr [ %.0301.i199.i253, %bb.ef ], [ %i.aig, %bb.eg ], [ %i.aig, %bb.ei ] ; 7 uses
  %.0.i25.i454 = phi ptr [ %i.ajx, %bb.ef ], [ %i.akl, %bb.eg ], [ %i.akl, %bb.ei ] ; 6 uses
  %i.aks = icmp ult ptr %.014.i.i453, %i.ajo
  br i1 %i.aks, label %iter.check1511, label %ZSTD_storeSeq.exit358.i.i443

iter.check1511:                                   ; preds = %ZSTD_wildcopy.exit.i24.i452
  %.014.i.i4531493 = ptrtoaddr ptr %.014.i.i453 to i64 ; 2 uses
  %.0.i25.i4541492 = ptrtoaddr ptr %.0.i25.i454 to i64
  %reass.sub1869 = sub i64 %.pn.i266, %.014.i.i4531493
  %i.akt = add i64 %reass.sub1869, 1              ; 7 uses
  %min.iters.check1495 = icmp ult i64 %i.akt, 8
  %i.aku = sub i64 %.014.i.i4531493, %.0.i25.i4541492
  %diff.check1494.a = icmp ugt i64 %i.aku, -32
  %or.cond1878 = select i1 %min.iters.check1495, i1 true, i1 %diff.check1494.a
  br i1 %or.cond1878, label %.lr.ph.i.i455.preheader, label %vector.main.loop.iter.check1496

vector.main.loop.iter.check1496:                  ; preds = %iter.check1511
  %min.iters.check1497 = icmp ult i64 %i.akt, 32
  br i1 %min.iters.check1497, label %vec.epilog.ph1515, label %vector.ph1498

vector.ph1498:                                    ; preds = %vector.main.loop.iter.check1496
  %i.akv = and i64 %i.akt, 24
  %n.vec1499 = and i64 %i.akt, -32                ; 5 uses
  %i.akw = getelementptr i8, ptr %.0.i25.i454, i64 %n.vec1499
  %i.akx = getelementptr i8, ptr %.014.i.i453, i64 %n.vec1499
  br label %vector.body1500

vector.body1500:                                  ; preds = %vector.ph1498, %vector.body1500
  %index1501 = phi i64 [ 0, %vector.ph1498 ], [ %index.next1506, %vector.body1500 ] ; 3 uses
  %next.gep1502 = getelementptr i8, ptr %.0.i25.i454, i64 %index1501 ; 2 uses
  %next.gep1503.a = getelementptr i8, ptr %.014.i.i453, i64 %index1501 ; 2 uses
  %i.aky = getelementptr i8, ptr %next.gep1503.a, i64 16
  %wide.load1504 = load <16 x i8>, ptr %next.gep1503.a, align 1, !tbaa !33
  %wide.load1505.a = load <16 x i8>, ptr %i.aky, align 1, !tbaa !33
  %i.akz = getelementptr i8, ptr %next.gep1502, i64 16
  store <16 x i8> %wide.load1504, ptr %next.gep1502, align 1, !tbaa !33
  store <16 x i8> %wide.load1505.a, ptr %i.akz, align 1, !tbaa !33
  %index.next1506 = add nuw i64 %index1501, 32    ; 2 uses
  %i.ala = icmp eq i64 %index.next1506, %n.vec1499
  br i1 %i.ala, label %middle.block1507, label %vector.body1500, !llvm.loop !119

middle.block1507:                                 ; preds = %vector.body1500
  %cmp.n1508 = icmp eq i64 %i.akt, %n.vec1499
  br i1 %cmp.n1508, label %ZSTD_storeSeq.exit358.i.i443, label %vec.epilog.iter.check1513

vec.epilog.iter.check1513:                        ; preds = %middle.block1507
  %min.epilog.iters.check1514 = icmp eq i64 %i.akv, 0
  br i1 %min.epilog.iters.check1514, label %.lr.ph.i.i455.preheader, label %vec.epilog.ph1515, !prof !42

vec.epilog.ph1515:                                ; preds = %vector.main.loop.iter.check1496, %vec.epilog.iter.check1513
  %vec.epilog.resume.val1509 = phi i64 [ %n.vec1499, %vec.epilog.iter.check1513 ], [ 0, %vector.main.loop.iter.check1496 ]
  %n.vec1516 = and i64 %i.akt, -8                 ; 4 uses
  %i.alb = getelementptr i8, ptr %.0.i25.i454, i64 %n.vec1516
  %i.alc = getelementptr i8, ptr %.014.i.i453, i64 %n.vec1516
  br label %vec.epilog.vector.body1517

vec.epilog.vector.body1517:                       ; preds = %vec.epilog.vector.body1517, %vec.epilog.ph1515
  %index1518 = phi i64 [ %vec.epilog.resume.val1509, %vec.epilog.ph1515 ], [ %index.next1522, %vec.epilog.vector.body1517 ] ; 3 uses
  %next.gep1519 = getelementptr i8, ptr %.0.i25.i454, i64 %index1518
  %next.gep1520.a = getelementptr i8, ptr %.014.i.i453, i64 %index1518
  %wide.load1521 = load <8 x i8>, ptr %next.gep1520.a, align 1, !tbaa !33
  store <8 x i8> %wide.load1521, ptr %next.gep1519, align 1, !tbaa !33
  %index.next1522 = add nuw i64 %index1518, 8     ; 2 uses
  %i.ald = icmp eq i64 %index.next1522, %n.vec1516
  br i1 %i.ald, label %vec.epilog.middle.block1523, label %vec.epilog.vector.body1517, !llvm.loop !120

vec.epilog.middle.block1523:                      ; preds = %vec.epilog.vector.body1517
  %cmp.n1524 = icmp eq i64 %i.akt, %n.vec1516
  br i1 %cmp.n1524, label %ZSTD_storeSeq.exit358.i.i443, label %.lr.ph.i.i455.preheader

.lr.ph.i.i455.preheader:                          ; preds = %iter.check1511, %vec.epilog.iter.check1513, %vec.epilog.middle.block1523
  %.121.i.i456.ph = phi ptr [ %.0.i25.i454, %iter.check1511 ], [ %i.akw, %vec.epilog.iter.check1513 ], [ %i.alb, %vec.epilog.middle.block1523 ] ; 2 uses
  %.11520.i.i457.ph = phi ptr [ %.014.i.i453, %iter.check1511 ], [ %i.akx, %vec.epilog.iter.check1513 ], [ %i.alc, %vec.epilog.middle.block1523 ] ; 3 uses
  %.11520.i.i457.ph2030 = ptrtoaddr ptr %.11520.i.i457.ph to i64 ; 2 uses
  %reass.sub2095 = sub i64 %.1312.i.i256.lcssa20312035, %.11520.i.i457.ph2030
  %i.ale = add i64 %reass.sub2095, 1
  %i.alf = sub i64 %.1312.i.i256.lcssa20312035, %.11520.i.i457.ph2030
  %xtraiter.a = and i64 %i.ale, 7                 ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph.i.i455.prol.loopexit, label %.lr.ph.i.i455.prol

.lr.ph.i.i455.prol:                               ; preds = %.lr.ph.i.i455.preheader, %.lr.ph.i.i455.prol
  %.121.i.i456.prol = phi ptr [ %i.ali, %.lr.ph.i.i455.prol ], [ %.121.i.i456.ph, %.lr.ph.i.i455.preheader ] ; 2 uses
  %.11520.i.i457.prol = phi ptr [ %i.alg, %.lr.ph.i.i455.prol ], [ %.11520.i.i457.ph, %.lr.ph.i.i455.preheader ] ; 2 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.lr.ph.i.i455.prol ], [ 0, %.lr.ph.i.i455.preheader ]
  %i.alg = getelementptr inbounds nuw i8, ptr %.11520.i.i457.prol, i64 1 ; 2 uses
  %i.alh = load i8, ptr %.11520.i.i457.prol, align 1, !tbaa !33
  %i.ali = getelementptr inbounds nuw i8, ptr %.121.i.i456.prol, i64 1 ; 2 uses
  store i8 %i.alh, ptr %.121.i.i456.prol, align 1, !tbaa !33
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph.i.i455.prol.loopexit, label %.lr.ph.i.i455.prol, !llvm.loop !121

.lr.ph.i.i455.prol.loopexit:                      ; preds = %.lr.ph.i.i455.prol, %.lr.ph.i.i455.preheader
  %.121.i.i456.unr = phi ptr [ %.121.i.i456.ph, %.lr.ph.i.i455.preheader ], [ %i.ali, %.lr.ph.i.i455.prol ]
  %.11520.i.i457.unr = phi ptr [ %.11520.i.i457.ph, %.lr.ph.i.i455.preheader ], [ %i.alg, %.lr.ph.i.i455.prol ]
  %i.alj = icmp ult i64 %i.alf, 7
  br i1 %i.alj, label %ZSTD_storeSeq.exit358.i.i443, label %.lr.ph.i.i455

.lr.ph.i.i455:                                    ; preds = %.lr.ph.i.i455.prol.loopexit, %.lr.ph.i.i455
  %.121.i.i456 = phi ptr [ %i.amh, %.lr.ph.i.i455 ], [ %.121.i.i456.unr, %.lr.ph.i.i455.prol.loopexit ] ; 9 uses
  %.11520.i.i457 = phi ptr [ %i.amf, %.lr.ph.i.i455 ], [ %.11520.i.i457.unr, %.lr.ph.i.i455.prol.loopexit ] ; 9 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 1
  %i.all = load i8, ptr %.11520.i.i457, align 1, !tbaa !33
  %i.alm = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 1
  store i8 %i.all, ptr %.121.i.i456, align 1, !tbaa !33
  %i.aln = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 2
  %i.alo = load i8, ptr %i.alk, align 1, !tbaa !33
  %i.alp = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 2
  store i8 %i.alo, ptr %i.alm, align 1, !tbaa !33
  %i.alq = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 3
  %i.alr = load i8, ptr %i.aln, align 1, !tbaa !33
  %i.als = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 3
  store i8 %i.alr, ptr %i.alp, align 1, !tbaa !33
  %i.alt = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 4
  %i.alu = load i8, ptr %i.alq, align 1, !tbaa !33
  %i.alv = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 4
  store i8 %i.alu, ptr %i.als, align 1, !tbaa !33
  %i.alw = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 5
  %i.alx = load i8, ptr %i.alt, align 1, !tbaa !33
  %i.aly = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 5
  store i8 %i.alx, ptr %i.alv, align 1, !tbaa !33
  %i.alz = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 6
  %i.ama = load i8, ptr %i.alw, align 1, !tbaa !33
  %i.amb = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 6
  store i8 %i.ama, ptr %i.aly, align 1, !tbaa !33
  %i.amc = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 7 ; 2 uses
  %i.amd = load i8, ptr %i.alz, align 1, !tbaa !33
  %i.ame = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 7
  store i8 %i.amd, ptr %i.amb, align 1, !tbaa !33
  %i.amf = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 8
  %i.amg = load i8, ptr %i.amc, align 1, !tbaa !33
  %i.amh = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 8
  store i8 %i.amg, ptr %i.ame, align 1, !tbaa !33
  %exitcond.not.i.i458.7 = icmp eq ptr %i.amc, %.1312.i.i256
  br i1 %exitcond.not.i.i458.7, label %ZSTD_storeSeq.exit358.i.i443, label %.lr.ph.i.i455, !llvm.loop !122

ZSTD_storeSeq.exit358.i.i443:                     ; preds = %bb.ee, %.lr.ph.i.i455.prol.loopexit, %.lr.ph.i.i455, %middle.block1507, %vec.epilog.middle.block1523, %ZSTD_wildcopy.exit.i24.i452, %bb.ec
  %i.ami = load ptr, ptr %i.aih, align 8, !tbaa !38
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.ajw
  store ptr %i.amj, ptr %i.aih, align 8, !tbaa !38
  %i.amk = icmp ugt i64 %i.ajw, 65535
  %.pre240.i444 = load ptr, ptr %i.aik, align 8, !tbaa !39 ; 3 uses
  br i1 %i.amk, label %bb.ej, label %bb.ek, !prof !44

bb.ej:                                            ; preds = %ZSTD_storeSeq.exit358.i.i443
  store i32 1, ptr %i.aij, align 8, !tbaa !45
  %i.aml = load ptr, ptr %1, align 8, !tbaa !46
  %i.amm = ptrtoint ptr %.pre240.i444 to i64
  %i.amn = ptrtoint ptr %i.aml to i64
  %i.amo = sub i64 %i.amm, %i.amn
  %i.amp = lshr exact i64 %i.amo, 3
  %i.amq = trunc i64 %i.amp to i32
  store i32 %i.amq, ptr %i.ail, align 4, !tbaa !47
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %ZSTD_storeSeq.exit358.i.i443, %ZSTD_storeSeq.exit358.i.thread.i435
  %i.amr = phi ptr [ %.pre.i436, %ZSTD_storeSeq.exit358.i.thread.i435 ], [ %.pre240.i444, %bb.ej ], [ %.pre240.i444, %ZSTD_storeSeq.exit358.i.i443 ] ; 4 uses
  %i.ams = trunc i64 %i.ajw to i16
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amr, i64 4
  store i16 %i.ams, ptr %i.amt, align 4, !tbaa !49
  store i32 1, ptr %i.amr, align 4, !tbaa !50
  %i.amu = add i64 %i.ajs, 1                      ; 3 uses
  %i.amv = icmp ugt i64 %i.amu, 65535
  br i1 %i.amv, label %ZSTD_storeSeqOnly.exit.i.sink.split.i336, label %ZSTD_storeSeqOnly.exit.i.i308, !prof !51

bb.el:                                            ; preds = %bb.dz, %bb.dy
  br i1 %.0274.i.in.not.i270, label %bb.em, label %.thread.i276

bb.em:                                            ; preds = %bb.el
  %i.amw = lshr i32 %.0276.i.i259, 8              ; 3 uses
  %i.amx = icmp ugt i32 %i.amw, %i.aa
  br i1 %i.amx, label %bb.en, label %.thread.i276

bb.en:                                            ; preds = %bb.em
  %i.amy = zext nneg i32 %i.amw to i64            ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.amy
  %.val.i391 = load i32, ptr %i.amz, align 1, !tbaa !25
  %.1312.i.val.i392 = load i32, ptr %.1312.i.i256, align 1, !tbaa !25
  %i.ana = icmp ne i32 %.val.i391, %.1312.i.val.i392
  %.not335.i.i393 = icmp ugt i32 %.0272.i.i265, %i.n
  %or.cond.i.i394 = select i1 %i.ana, i1 true, i1 %.not335.i.i393
  br i1 %or.cond.i.i394, label %.thread.i276, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.amy ; 2 uses
  %i.anc = add i32 %i.ai, %i.amw
  %i.and = sub i32 %.0270.i.i268, %i.anc          ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.1312.i.i256, i64 4
  %i.anf = getelementptr inbounds nuw i8, ptr %i.anb, i64 4
  %i.ang = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ane, ptr noundef nonnull %i.anf, ptr noundef %i.q, ptr noundef %i.af, ptr noundef %i.p)
  %i.anh = add i64 %i.ang, 4                      ; 2 uses
  %i.ani = icmp ugt ptr %.1312.i.i256, %.0301.i199.i253
  br i1 %i.ani, label %.lr.ph179.i425, label %.critedge.i.i395

.lr.ph179.i425:                                   ; preds = %bb.eo, %bb.ep
  %.0261.i178.i426 = phi ptr [ %i.anl, %bb.ep ], [ %i.anb, %bb.eo ]
  %.1281.i177.i427 = phi i64 [ %i.ano, %bb.ep ], [ %i.anh, %bb.eo ] ; 2 uses
  %.2313.i176.i428 = phi ptr [ %i.anj, %bb.ep ], [ %.1312.i.i256, %bb.eo ] ; 2 uses
  %i.anj = getelementptr inbounds i8, ptr %.2313.i176.i428, i64 -1 ; 4 uses
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !33
  %i.anl = getelementptr inbounds i8, ptr %.0261.i178.i426, i64 -1 ; 3 uses
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !33
  %i.ann = icmp eq i8 %i.ank, %i.anm
  br i1 %i.ann, label %bb.ep, label %.critedge.i.loopexit.i429

bb.ep:                                            ; preds = %.lr.ph179.i425
  %i.ano = add i64 %.1281.i177.i427, 1            ; 2 uses
  %i.anp = icmp ugt ptr %i.anj, %.0301.i199.i253
  %i.anq = icmp ugt ptr %i.anl, %i.ae
  %i.anr = and i1 %i.anq, %i.anp
  br i1 %i.anr, label %.lr.ph179.i425, label %.critedge.i.loopexit.i429, !llvm.loop !97

.critedge.i.loopexit.i429:                        ; preds = %bb.ep, %.lr.ph179.i425
  %.2313.i.lcssa.ph.i430 = phi ptr [ %i.anj, %bb.ep ], [ %.2313.i176.i428, %.lr.ph179.i425 ] ; 2 uses
  %.1281.i.lcssa.ph.i431 = phi i64 [ %i.ano, %bb.ep ], [ %.1281.i177.i427, %.lr.ph179.i425 ]
  %.pre247.i432 = ptrtoint ptr %.2313.i.lcssa.ph.i430 to i64
  br label %.critedge.i.i395

.critedge.i.i395:                                 ; preds = %.critedge.i.loopexit.i429, %bb.eo
  %.pre-phi248.i396 = phi i64 [ %.pre247.i432, %.critedge.i.loopexit.i429 ], [ %.pn.i266, %bb.eo ]
  %.2313.i.lcssa.i397 = phi ptr [ %.2313.i.lcssa.ph.i430, %.critedge.i.loopexit.i429 ], [ %.1312.i.i256, %bb.eo ] ; 6 uses
  %.1281.i.lcssa.i398 = phi i64 [ %.1281.i.lcssa.ph.i431, %.critedge.i.loopexit.i429 ], [ %i.anh, %bb.eo ] ; 3 uses
  %.2313.i.lcssa.i3971458 = ptrtoaddr ptr %.2313.i.lcssa.i397 to i64 ; 3 uses
  %i.ans = ptrtoint ptr %.0301.i199.i253 to i64   ; 2 uses
  %i.ant = sub i64 %.pre-phi248.i396, %i.ans      ; 7 uses
  %i.anu = add i32 %i.and, 3
  %.not.i355.i.i399 = icmp ugt ptr %.2313.i.lcssa.i397, %i.aig
  %i.anv = load ptr, ptr %i.aih, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i355.i.i399, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %.critedge.i.i395
  %.0301.i.val16.i400 = load <2 x i64>, ptr %.0301.i199.i253, align 1, !tbaa !33
  store <2 x i64> %.0301.i.val16.i400, ptr %i.anv, align 1, !tbaa !33
  %i.anw = icmp ugt i64 %i.ant, 16
  %i.anx = load ptr, ptr %i.aih, align 8, !tbaa !38 ; 4 uses
  br i1 %i.anw, label %bb.er, label %ZSTD_storeSeq.exit356.i.thread.i401

ZSTD_storeSeq.exit356.i.thread.i401:              ; preds = %bb.eq
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.ant
  store ptr %i.any, ptr %i.aih, align 8, !tbaa !38
  %.pre241.i402 = load ptr, ptr %i.aik, align 8, !tbaa !39
  br label %bb.ez

bb.er:                                            ; preds = %bb.eq
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anx, i64 16
  %i.aoa = getelementptr inbounds nuw i8, ptr %.0301.i199.i253, i64 16 ; 2 uses
  %i.aob = getelementptr i8, ptr %i.anx, i64 %i.ant
  %.val15.i403 = load <2 x i64>, ptr %i.aoa, align 1, !tbaa !33
  store <2 x i64> %.val15.i403, ptr %i.anz, align 1, !tbaa !33
  %i.aoc = icmp slt i64 %i.ant, 33
  br i1 %i.aoc, label %ZSTD_storeSeq.exit356.i.i409, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  br label %bb.et

bb.et:                                            ; preds = %bb.et, %bb.es
  %.pn.i359.i.i404 = phi ptr [ %i.aoa, %bb.es ], [ %i.aof, %bb.et ] ; 2 uses
  %.1.i360.i.i405 = phi ptr [ %i.aod, %bb.es ], [ %i.aog, %bb.et ] ; 3 uses
  %.130.i361.i.i406 = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i404, i64 16
  %.130.i361.i.val.i407 = load <2 x i64>, ptr %.130.i361.i.i406, align 1, !tbaa !33
  store <2 x i64> %.130.i361.i.val.i407, ptr %.1.i360.i.i405, align 1, !tbaa !33
  %i.aoe = getelementptr inbounds nuw i8, ptr %.1.i360.i.i405, i64 16
  %i.aof = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i404, i64 32 ; 2 uses
  %.val14.i408 = load <2 x i64>, ptr %i.aof, align 1, !tbaa !33
  store <2 x i64> %.val14.i408, ptr %i.aoe, align 1, !tbaa !33
  %i.aog = getelementptr inbounds nuw i8, ptr %.1.i360.i.i405, i64 32 ; 2 uses
  %i.aoh = icmp ult ptr %i.aog, %i.aob
  br i1 %i.aoh, label %bb.et, label %ZSTD_storeSeq.exit356.i.i409, !llvm.loop !0

bb.eu:                                            ; preds = %.critedge.i.i395
  %.not.i26.i411 = icmp ugt ptr %.0301.i199.i253, %i.aig
  br i1 %.not.i26.i411, label %ZSTD_wildcopy.exit.i33.i418, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aoi = sub i64 %i.aii, %i.ans                 ; 2 uses
  %i.aoj = getelementptr inbounds i8, ptr %i.anv, i64 %i.aoi ; 3 uses
  %.val19.i27.i412 = load <2 x i64>, ptr %.0301.i199.i253, align 1, !tbaa !33
  store <2 x i64> %.val19.i27.i412, ptr %i.anv, align 1, !tbaa !33
  %i.aok = icmp slt i64 %i.aoi, 17
  br i1 %i.aok, label %ZSTD_wildcopy.exit.i33.i418, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %bb.ew
  %.pn.i.i28.i413 = phi ptr [ %.0301.i199.i253, %bb.ew ], [ %i.aon, %bb.ex ] ; 2 uses
  %.1.i.i29.i414 = phi ptr [ %i.aol, %bb.ew ], [ %i.aoo, %bb.ex ] ; 3 uses
  %.130.i.i30.i415 = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i413, i64 16
  %.130.i.val.i31.i416 = load <2 x i64>, ptr %.130.i.i30.i415, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i31.i416, ptr %.1.i.i29.i414, align 1, !tbaa !33
  %i.aom = getelementptr inbounds nuw i8, ptr %.1.i.i29.i414, i64 16
  %i.aon = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i413, i64 32 ; 2 uses
  %.val.i32.i417 = load <2 x i64>, ptr %i.aon, align 1, !tbaa !33
  store <2 x i64> %.val.i32.i417, ptr %i.aom, align 1, !tbaa !33
  %i.aoo = getelementptr inbounds nuw i8, ptr %.1.i.i29.i414, i64 32 ; 2 uses
  %i.aop = icmp ult ptr %i.aoo, %i.aoj
  br i1 %i.aop, label %bb.ex, label %ZSTD_wildcopy.exit.i33.i418, !llvm.loop !0

ZSTD_wildcopy.exit.i33.i418:                      ; preds = %bb.ex, %bb.ev, %bb.eu
  %.014.i34.i419 = phi ptr [ %.0301.i199.i253, %bb.eu ], [ %i.aig, %bb.ev ], [ %i.aig, %bb.ex ] ; 7 uses
  %.0.i35.i420 = phi ptr [ %i.anv, %bb.eu ], [ %i.aoj, %bb.ev ], [ %i.aoj, %bb.ex ] ; 6 uses
  %i.aoq = icmp ult ptr %.014.i34.i419, %.2313.i.lcssa.i397
  br i1 %i.aoq, label %iter.check1475.a, label %ZSTD_storeSeq.exit356.i.i409

iter.check1475.a:                                 ; preds = %ZSTD_wildcopy.exit.i33.i418
  %.014.i34.i4191456 = ptrtoaddr ptr %.014.i34.i419 to i64 ; 2 uses
  %.0.i35.i4201455 = ptrtoaddr ptr %.0.i35.i420 to i64
  %i.aor = sub i64 %.2313.i.lcssa.i3971458, %.014.i34.i4191456 ; 7 uses
  %min.iters.check1459.a = icmp ult i64 %i.aor, 8
  %i.aos = sub i64 %.014.i34.i4191456, %.0.i35.i4201455
  %diff.check1457.a = icmp ugt i64 %i.aos, -32
  %or.cond1879 = select i1 %min.iters.check1459.a, i1 true, i1 %diff.check1457.a
  br i1 %or.cond1879, label %.lr.ph.i36.i421.preheader, label %vector.main.loop.iter.check1460.a

vector.main.loop.iter.check1460.a:                ; preds = %iter.check1475.a
  %min.iters.check1461.a = icmp ult i64 %i.aor, 32
  br i1 %min.iters.check1461.a, label %vec.epilog.ph1479.a, label %vector.ph1462.a

vector.ph1462.a:                                  ; preds = %vector.main.loop.iter.check1460.a
  %i.aot = and i64 %i.aor, 24
  %n.vec1463.a = and i64 %i.aor, -32              ; 5 uses
  %i.aou = getelementptr i8, ptr %.0.i35.i420, i64 %n.vec1463.a
  %i.aov = getelementptr i8, ptr %.014.i34.i419, i64 %n.vec1463.a
  br label %vector.body1464.a

vector.body1464.a:                                ; preds = %vector.ph1462.a, %vector.body1464.a
  %index1465.a = phi i64 [ 0, %vector.ph1462.a ], [ %index.next1470.a, %vector.body1464.a ] ; 3 uses
  %next.gep1466.a = getelementptr i8, ptr %.0.i35.i420, i64 %index1465.a ; 2 uses
  %next.gep1467.a = getelementptr i8, ptr %.014.i34.i419, i64 %index1465.a ; 2 uses
  %i.aow = getelementptr i8, ptr %next.gep1467.a, i64 16
  %wide.load1468.a = load <16 x i8>, ptr %next.gep1467.a, align 1, !tbaa !33
  %wide.load1469.a = load <16 x i8>, ptr %i.aow, align 1, !tbaa !33
  %i.aox = getelementptr i8, ptr %next.gep1466.a, i64 16
  store <16 x i8> %wide.load1468.a, ptr %next.gep1466.a, align 1, !tbaa !33
  store <16 x i8> %wide.load1469.a, ptr %i.aox, align 1, !tbaa !33
  %index.next1470.a = add nuw i64 %index1465.a, 32 ; 2 uses
  %i.aoy = icmp eq i64 %index.next1470.a, %n.vec1463.a
  br i1 %i.aoy, label %middle.block1471.a, label %vector.body1464.a, !llvm.loop !123

middle.block1471.a:                               ; preds = %vector.body1464.a
  %cmp.n1472.a = icmp eq i64 %i.aor, %n.vec1463.a
end_hunk_2
begin_hunk_3_@ZSTD_compressBlock_fast_dictMatchState:bb.a
  %n.vec1445 = and i64 %i.atn, -8                 ; 4 uses
  %i.atv = getelementptr i8, ptr %.0.i58.i360, i64 %n.vec1445
  %i.atw = getelementptr i8, ptr %.014.i57.i359, i64 %n.vec1445
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1446 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1450, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1447 = getelementptr i8, ptr %.0.i58.i360, i64 %index1446
  %next.gep1448 = getelementptr i8, ptr %.014.i57.i359, i64 %index1446
  %wide.load1449 = load <8 x i8>, ptr %next.gep1448, align 1, !tbaa !33
  store <8 x i8> %wide.load1449, ptr %next.gep1447, align 1, !tbaa !33
  %index.next1450 = add nuw i64 %index1446, 8     ; 2 uses
  %i.atx = icmp eq i64 %index.next1450, %n.vec1445
  br i1 %i.atx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1451 = icmp eq i64 %i.atn, %n.vec1445
  br i1 %cmp.n1451, label %ZSTD_storeSeq.exit354.i.i349, label %.lr.ph.i59.i361.preheader

.lr.ph.i59.i361.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i60.i362.ph = phi ptr [ %.0.i58.i360, %iter.check ], [ %i.atq, %vec.epilog.iter.check ], [ %i.atv, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i61.i363.ph = phi ptr [ %.014.i57.i359, %iter.check ], [ %i.atr, %vec.epilog.iter.check ], [ %i.atw, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i61.i363.ph2040 = ptrtoaddr ptr %.11520.i61.i363.ph to i64 ; 2 uses
  %i.aty = sub i64 %.5316.i.lcssa.i3021440, %.11520.i61.i363.ph2040
  %xtraiter2041 = and i64 %i.aty, 7               ; 2 uses
  %lcmp.mod2042.not = icmp eq i64 %xtraiter2041, 0
  br i1 %lcmp.mod2042.not, label %.lr.ph.i59.i361.prol.loopexit, label %.lr.ph.i59.i361.prol

.lr.ph.i59.i361.prol:                             ; preds = %.lr.ph.i59.i361.preheader, %.lr.ph.i59.i361.prol
  %.121.i60.i362.prol = phi ptr [ %i.aub, %.lr.ph.i59.i361.prol ], [ %.121.i60.i362.ph, %.lr.ph.i59.i361.preheader ] ; 2 uses
  %.11520.i61.i363.prol = phi ptr [ %i.atz, %.lr.ph.i59.i361.prol ], [ %.11520.i61.i363.ph, %.lr.ph.i59.i361.preheader ] ; 2 uses
  %prol.iter2043 = phi i64 [ %prol.iter2043.next, %.lr.ph.i59.i361.prol ], [ 0, %.lr.ph.i59.i361.preheader ]
  %i.atz = getelementptr inbounds nuw i8, ptr %.11520.i61.i363.prol, i64 1 ; 2 uses
  %i.aua = load i8, ptr %.11520.i61.i363.prol, align 1, !tbaa !33
  %i.aub = getelementptr inbounds nuw i8, ptr %.121.i60.i362.prol, i64 1 ; 2 uses
  store i8 %i.aua, ptr %.121.i60.i362.prol, align 1, !tbaa !33
  %prol.iter2043.next = add i64 %prol.iter2043, 1 ; 2 uses
  %prol.iter2043.cmp.not = icmp eq i64 %prol.iter2043.next, %xtraiter2041
  br i1 %prol.iter2043.cmp.not, label %.lr.ph.i59.i361.prol.loopexit, label %.lr.ph.i59.i361.prol, !llvm.loop !129

.lr.ph.i59.i361.prol.loopexit:                    ; preds = %.lr.ph.i59.i361.prol, %.lr.ph.i59.i361.preheader
  %.121.i60.i362.unr = phi ptr [ %.121.i60.i362.ph, %.lr.ph.i59.i361.preheader ], [ %i.aub, %.lr.ph.i59.i361.prol ]
  %.11520.i61.i363.unr = phi ptr [ %.11520.i61.i363.ph, %.lr.ph.i59.i361.preheader ], [ %i.atz, %.lr.ph.i59.i361.prol ]
  %i.auc = sub i64 %.11520.i61.i363.ph2040, %.5316.i.lcssa.i3021440
  %i.aud = icmp ugt i64 %i.auc, -8
  br i1 %i.aud, label %ZSTD_storeSeq.exit354.i.i349, label %.lr.ph.i59.i361

.lr.ph.i59.i361:                                  ; preds = %.lr.ph.i59.i361.prol.loopexit, %.lr.ph.i59.i361
  %.121.i60.i362 = phi ptr [ %i.avb, %.lr.ph.i59.i361 ], [ %.121.i60.i362.unr, %.lr.ph.i59.i361.prol.loopexit ] ; 9 uses
  %.11520.i61.i363 = phi ptr [ %i.auz, %.lr.ph.i59.i361 ], [ %.11520.i61.i363.unr, %.lr.ph.i59.i361.prol.loopexit ] ; 9 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 1
  %i.auf = load i8, ptr %.11520.i61.i363, align 1, !tbaa !33
  %i.aug = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 1
  store i8 %i.auf, ptr %.121.i60.i362, align 1, !tbaa !33
  %i.auh = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 2
  %i.aui = load i8, ptr %i.aue, align 1, !tbaa !33
  %i.auj = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 2
  store i8 %i.aui, ptr %i.aug, align 1, !tbaa !33
  %i.auk = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 3
  %i.aul = load i8, ptr %i.auh, align 1, !tbaa !33
  %i.aum = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 3
  store i8 %i.aul, ptr %i.auj, align 1, !tbaa !33
  %i.aun = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 4
  %i.auo = load i8, ptr %i.auk, align 1, !tbaa !33
  %i.aup = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 4
  store i8 %i.auo, ptr %i.aum, align 1, !tbaa !33
  %i.auq = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 5
  %i.aur = load i8, ptr %i.aun, align 1, !tbaa !33
  %i.aus = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 5
  store i8 %i.aur, ptr %i.aup, align 1, !tbaa !33
  %i.aut = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 6
  %i.auu = load i8, ptr %i.auq, align 1, !tbaa !33
  %i.auv = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 6
  store i8 %i.auu, ptr %i.aus, align 1, !tbaa !33
  %i.auw = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 7
  %i.aux = load i8, ptr %i.aut, align 1, !tbaa !33
  %i.auy = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 7
  store i8 %i.aux, ptr %i.auv, align 1, !tbaa !33
  %i.auz = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 8 ; 2 uses
  %i.ava = load i8, ptr %i.auw, align 1, !tbaa !33
  %i.avb = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 8
  store i8 %i.ava, ptr %i.auy, align 1, !tbaa !33
  %exitcond.not.i62.i364.7 = icmp eq ptr %i.auz, %.5316.i.lcssa.i302
  br i1 %exitcond.not.i62.i364.7, label %ZSTD_storeSeq.exit354.i.i349, label %.lr.ph.i59.i361, !llvm.loop !130

ZSTD_storeSeq.exit354.i.i349:                     ; preds = %bb.fq, %.lr.ph.i59.i361.prol.loopexit, %.lr.ph.i59.i361, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i56.i358, %bb.fo
  %i.avc = load ptr, ptr %i.aih, align 8, !tbaa !38
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 %i.asp
  store ptr %i.avd, ptr %i.aih, align 8, !tbaa !38
  %i.ave = icmp ugt i64 %i.asp, 65535
  %.pre244.i350 = load ptr, ptr %i.aik, align 8, !tbaa !39 ; 3 uses
  br i1 %i.ave, label %bb.fv, label %bb.fw, !prof !44

bb.fv:                                            ; preds = %ZSTD_storeSeq.exit354.i.i349
  store i32 1, ptr %i.aij, align 8, !tbaa !45
  %i.avf = load ptr, ptr %1, align 8, !tbaa !46
  %i.avg = ptrtoint ptr %.pre244.i350 to i64
  %i.avh = ptrtoint ptr %i.avf to i64
  %i.avi = sub i64 %i.avg, %i.avh
  %i.avj = lshr exact i64 %i.avi, 3
  %i.avk = trunc i64 %i.avj to i32
  store i32 %i.avk, ptr %i.ail, align 4, !tbaa !47
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %ZSTD_storeSeq.exit354.i.i349, %ZSTD_storeSeq.exit354.i.thread.i306
  %i.avl = phi ptr [ %.pre243.i307, %ZSTD_storeSeq.exit354.i.thread.i306 ], [ %.pre244.i350, %bb.fv ], [ %.pre244.i350, %ZSTD_storeSeq.exit354.i.i349 ] ; 4 uses
  %i.avm = trunc i64 %i.asp to i16
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avl, i64 4
  store i16 %i.avm, ptr %i.avn, align 4, !tbaa !49
  store i32 %i.asq, ptr %i.avl, align 4, !tbaa !50
  %i.avo = add i64 %.4.i.lcssa.i303, -3           ; 3 uses
  %i.avp = icmp ugt i64 %i.avo, 65535
  br i1 %i.avp, label %ZSTD_storeSeqOnly.exit.i.sink.split.i336, label %ZSTD_storeSeqOnly.exit.i.i308, !prof !51

ZSTD_match4Found_cmov.exit.thread.i280:           ; preds = %ZSTD_match4Found_cmov.exit.i288, %.thread.i276
  %.not337.i.i281 = icmp uge ptr %.1308.i.i257, %.0264.i.i262 ; 2 uses
  %i.avq = zext i1 %.not337.i.i281 to i64
  %.1268.i.i282 = add i64 %.0267.i.i261, %i.avq   ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %.1308.i.i257, i64 %.1268.i.i282 ; 2 uses
  %i.avs = icmp ugt ptr %i.avr, %i.r
  br i1 %i.avs, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.fx

bb.fx:                                            ; preds = %ZSTD_match4Found_cmov.exit.thread.i280
  %.1265.i.idx.i283 = select i1 %.not337.i.i281, i64 256, i64 0
  %.1265.i.i284 = getelementptr inbounds nuw i8, ptr %.0264.i.i262, i64 %.1265.i.idx.i283
  %i.avt = lshr i64 %i.ajd, 8
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.avt
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !25 ; 2 uses
  %i.avw = zext i32 %i.avv to i64
  %i.avx = xor i64 %i.ajd, %i.avw
  br label %bb.dy

ZSTD_storeSeqOnly.exit.i.sink.split.i336:         ; preds = %bb.fw, %bb.ez, %bb.ek
  %.sink317.i337 = phi ptr [ %i.aqp, %bb.ez ], [ %i.amr, %bb.ek ], [ %i.avl, %bb.fw ] ; 2 uses
  %.sink313.ph.i338 = phi i64 [ %i.aqs, %bb.ez ], [ %i.amu, %bb.ek ], [ %i.avo, %bb.fw ]
  %.6317.i.ph.ph.i339 = phi ptr [ %.2313.i.lcssa.i397, %bb.ez ], [ %i.ajo, %bb.ek ], [ %.5316.i.lcssa.i302, %bb.fw ]
  %.4295.i.ph.ph.i340 = phi i32 [ %i.and, %bb.ez ], [ %.0291.i200.i252, %bb.ek ], [ %i.aqx, %bb.fw ]
  %.4289.i.ph.ph.i341 = phi i32 [ %.0291.i200.i252, %bb.ez ], [ %.0285.i201.i251, %bb.ek ], [ %.0291.i200.i252, %bb.fw ]
  %.5.i.ph.ph.i342 = phi i64 [ %.1281.i.lcssa.i398, %bb.ez ], [ %i.ajt, %bb.ek ], [ %.4.i.lcssa.i303, %bb.fw ]
  store i32 2, ptr %i.aij, align 8, !tbaa !45
  %i.avy = load ptr, ptr %1, align 8, !tbaa !46
  %i.avz = ptrtoint ptr %.sink317.i337 to i64
  %i.awa = ptrtoint ptr %i.avy to i64
  %i.awb = sub i64 %i.avz, %i.awa
  %i.awc = lshr exact i64 %i.awb, 3
  %i.awd = trunc i64 %i.awc to i32
  store i32 %i.awd, ptr %i.ail, align 4, !tbaa !47
  br label %ZSTD_storeSeqOnly.exit.i.i308

ZSTD_storeSeqOnly.exit.i.i308:                    ; preds = %ZSTD_storeSeqOnly.exit.i.sink.split.i336, %bb.fw, %bb.ez, %bb.ek
  %.sink313.i309 = phi i64 [ %i.amu, %bb.ek ], [ %i.aqs, %bb.ez ], [ %i.avo, %bb.fw ], [ %.sink313.ph.i338, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ]
  %.sink312.i310 = phi ptr [ %i.amr, %bb.ek ], [ %i.aqp, %bb.ez ], [ %i.avl, %bb.fw ], [ %.sink317.i337, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ] ; 2 uses
  %.6317.i.ph.i311 = phi ptr [ %i.ajo, %bb.ek ], [ %.2313.i.lcssa.i397, %bb.ez ], [ %.5316.i.lcssa.i302, %bb.fw ], [ %.6317.i.ph.ph.i339, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ]
  %.4295.i.ph.i312 = phi i32 [ %.0291.i200.i252, %bb.ek ], [ %i.and, %bb.ez ], [ %i.aqx, %bb.fw ], [ %.4295.i.ph.ph.i340, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ] ; 2 uses
  %.4289.i.ph.i313 = phi i32 [ %.0285.i201.i251, %bb.ek ], [ %.0291.i200.i252, %bb.ez ], [ %.0291.i200.i252, %bb.fw ], [ %.4289.i.ph.ph.i341, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ] ; 2 uses
  %.5.i.ph.i314 = phi i64 [ %i.ajt, %bb.ek ], [ %.1281.i.lcssa.i398, %bb.ez ], [ %.4.i.lcssa.i303, %bb.fw ], [ %.5.i.ph.ph.i342, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ]
  %i.awe = trunc i64 %.sink313.i309 to i16
  %i.awf = getelementptr inbounds nuw i8, ptr %.sink312.i310, i64 6
  store i16 %i.awe, ptr %i.awf, align 2, !tbaa !52
  %i.awg = getelementptr inbounds nuw i8, ptr %.sink312.i310, i64 8 ; 2 uses
  store ptr %i.awg, ptr %i.aik, align 8, !tbaa !39
  %i.awh = getelementptr inbounds nuw i8, ptr %.6317.i.ph.i311, i64 %.5.i.ph.i314 ; 4 uses
  %.not338.i.i315 = icmp ugt ptr %i.awh, %i.r
  br i1 %.not338.i.i315, label %.thread122.i324, label %bb.fy

bb.fy:                                            ; preds = %ZSTD_storeSeqOnly.exit.i.i308
  %i.awi = add i32 %.0270.i.i268, 2
  %i.awj = and i64 %.0270.i.in.i267, 4294967295
  %i.awk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 2
  %.val9.i316 = load i64, ptr %i.awl, align 1, !tbaa !24
  %i.awm = mul i64 %.val9.i316, -3523014627193847808
  %i.awn = lshr i64 %i.awm, %i.aid
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.awn
  store i32 %i.awi, ptr %i.awo, align 4, !tbaa !25
  %i.awp = getelementptr inbounds i8, ptr %i.awh, i64 -2 ; 2 uses
  %i.awq = ptrtoint ptr %i.awp to i64
  %i.awr = sub i64 %i.awq, %i.as
  %i.aws = trunc i64 %i.awr to i32
  %.val8.i317 = load i64, ptr %i.awp, align 1, !tbaa !24
  %i.awt = mul i64 %.val8.i317, -3523014627193847808
  %i.awu = lshr i64 %i.awt, %i.aid
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.awu
  store i32 %i.aws, ptr %i.awv, align 4, !tbaa !25
  br label %bb.fz

bb.fz:                                            ; preds = %bb.ge, %bb.fy
  %i.aww = phi ptr [ %i.awg, %bb.fy ], [ %i.axx, %bb.ge ]
  %.5290.i195.i318 = phi i32 [ %.4289.i.ph.i313, %bb.fy ], [ %.5296.i194.i319, %bb.ge ] ; 5 uses
  %.5296.i194.i319 = phi i32 [ %.4295.i.ph.i312, %bb.fy ], [ %.5290.i195.i318, %bb.ge ] ; 4 uses
  %.7318.i193.i320 = phi ptr [ %i.awh, %bb.fy ], [ %i.ayc, %bb.ge ] ; 9 uses
  %i.awx = ptrtoint ptr %.7318.i193.i320 to i64
  %i.awy = sub i64 %i.awx, %i.as
  %i.awz = trunc i64 %i.awy to i32                ; 2 uses
  %i.axa = sub i32 %i.awz, %.5290.i195.i318       ; 3 uses
  %i.axb = icmp ult i32 %i.axa, %i.n              ; 2 uses
  %i.axc = zext i32 %i.axa to i64
  %.v.i321 = select i1 %i.axb, ptr %i.air, ptr %i.k
  %i.axd = getelementptr inbounds nuw i8, ptr %.v.i321, i64 %i.axc ; 2 uses
  %i.axe = sub i32 %i.axa, %i.n
  %10 = icmp ugt i32 %i.axe, -4
  br i1 %10, label %.thread122.i324, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %.val4.i322 = load i32, ptr %i.axd, align 1, !tbaa !25
  %.7318.i.val.i323 = load i32, ptr %.7318.i193.i320, align 1, !tbaa !25
  %i.axf = icmp eq i32 %.val4.i322, %.7318.i.val.i323
  br i1 %i.axf, label %bb.gb, label %.thread122.i324

bb.gb:                                            ; preds = %bb.ga
  %i.axg = select i1 %i.axb, ptr %i.af, ptr %i.q
  %i.axh = getelementptr inbounds nuw i8, ptr %.7318.i193.i320, i64 4
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axd, i64 4
  %i.axj = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.axh, ptr noundef nonnull %i.axi, ptr noundef %i.q, ptr noundef %i.axg, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i330 = icmp ugt ptr %.7318.i193.i320, %i.aig
  br i1 %.not.i.i.i330, label %ZSTD_storeSeq.exit.i.i333, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.axk = load ptr, ptr %i.aih, align 8, !tbaa !38
  %.1302.i.val.i331 = load <2 x i64>, ptr %.7318.i193.i320, align 1, !tbaa !33
  store <2 x i64> %.1302.i.val.i331, ptr %i.axk, align 1, !tbaa !33
  %.pre245.i332 = load ptr, ptr %i.aik, align 8, !tbaa !39
  br label %ZSTD_storeSeq.exit.i.i333

ZSTD_storeSeq.exit.i.i333:                        ; preds = %bb.gc, %bb.gb
  %i.axl = phi ptr [ %i.aww, %bb.gb ], [ %.pre245.i332, %bb.gc ] ; 5 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 4
  store i16 0, ptr %i.axm, align 4, !tbaa !49
  store i32 1, ptr %i.axl, align 4, !tbaa !50
  %i.axn = add i64 %i.axj, 1                      ; 2 uses
  %i.axo = icmp ugt i64 %i.axn, 65535
  br i1 %i.axo, label %bb.gd, label %bb.ge, !prof !51

bb.gd:                                            ; preds = %ZSTD_storeSeq.exit.i.i333
  store i32 2, ptr %i.aij, align 8, !tbaa !45
  %i.axp = load ptr, ptr %1, align 8, !tbaa !46
  %i.axq = ptrtoint ptr %i.axl to i64
  %i.axr = ptrtoint ptr %i.axp to i64
  %i.axs = sub i64 %i.axq, %i.axr
  %i.axt = lshr exact i64 %i.axs, 3
  %i.axu = trunc i64 %i.axt to i32
  store i32 %i.axu, ptr %i.ail, align 4, !tbaa !47
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %ZSTD_storeSeq.exit.i.i333
  %i.axv = trunc i64 %i.axn to i16
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axl, i64 6
  store i16 %i.axv, ptr %i.axw, align 2, !tbaa !52
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axl, i64 8 ; 2 uses
  store ptr %i.axx, ptr %i.aik, align 8, !tbaa !39
  %.7318.i.val7.i334 = load i64, ptr %.7318.i193.i320, align 1, !tbaa !24
  %i.axy = mul i64 %.7318.i.val7.i334, -3523014627193847808
  %i.axz = lshr i64 %i.axy, %i.aid
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.axz
  store i32 %i.awz, ptr %i.aya, align 4, !tbaa !25
  %i.ayb = getelementptr i8, ptr %.7318.i193.i320, i64 %i.axj
  %i.ayc = getelementptr i8, ptr %i.ayb, i64 4    ; 3 uses
  %.not339.i.i335 = icmp ugt ptr %i.ayc, %i.r
  br i1 %.not339.i.i335, label %.thread122.i324, label %bb.fz

.thread122.i324:                                  ; preds = %bb.ge, %bb.ga, %bb.fz, %ZSTD_storeSeqOnly.exit.i.i308
  %.9320.i.i325 = phi ptr [ %i.awh, %ZSTD_storeSeqOnly.exit.i.i308 ], [ %.7318.i193.i320, %bb.fz ], [ %.7318.i193.i320, %bb.ga ], [ %i.ayc, %bb.ge ] ; 4 uses
  %.7298.i.i326 = phi i32 [ %.4295.i.ph.i312, %ZSTD_storeSeqOnly.exit.i.i308 ], [ %.5296.i194.i319, %bb.fz ], [ %.5296.i194.i319, %bb.ga ], [ %.5290.i195.i318, %bb.ge ] ; 2 uses
  %.7.i.i327 = phi i32 [ %.4289.i.ph.i313, %ZSTD_storeSeqOnly.exit.i.i308 ], [ %.5290.i195.i318, %bb.fz ], [ %.5290.i195.i318, %bb.ga ], [ %.5296.i194.i319, %bb.ge ] ; 2 uses
  %.0307.i.i328 = getelementptr inbounds nuw i8, ptr %.9320.i.i325, i64 %i.l ; 2 uses
  %.not332.i.i329 = icmp ugt ptr %.0307.i.i328, %i.r
  br i1 %.not332.i.i329, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.dx

bb.gf:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i465, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ayd = zext nneg i32 %i.ar to i64
  %i.aye = shl nuw i64 4, %i.ayd
  %.not207.i462 = icmp ugt i32 %i.ar, 61
  br i1 %.not207.i462, label %.loopexit.i465, label %.lr.ph.i463

.lr.ph.i463:                                      ; preds = %bb.gg, %.lr.ph.i463
  %.0284.i174.i464 = phi i64 [ %i.ayg, %.lr.ph.i463 ], [ 0, %bb.gg ] ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0284.i174.i464
  tail call void @llvm.prefetch.p0(ptr %i.ayf, i32 0, i32 2, i32 1)
  %i.ayg = add nuw i64 %.0284.i174.i464, 64       ; 2 uses
  %i.ayh = icmp ult i64 %i.ayg, %i.aye
  br i1 %i.ayh, label %.lr.ph.i463, label %.loopexit.i465, !llvm.loop !92

.loopexit.i465:                                   ; preds = %.lr.ph.i463, %bb.gg, %bb.gf
  %i.ayi = add nsw i64 %4, -8
  %.not332.i197.i466 = icmp slt i64 %i.ayi, %i.l
  br i1 %.not332.i197.i466, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %.lr.ph203.i467

.lr.ph203.i467:                                   ; preds = %.loopexit.i465
  %.0307.i196.i468 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.ayj = and i64 %i.ap, 4294967295
  %i.ayk = icmp eq i64 %i.ayj, 0
  %i.ayl = zext i1 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw i8, ptr %3, i64 %i.ayl
  %i.ayn = sub i32 64, %i.f
  %i.ayo = zext nneg i32 %i.ayn to i64            ; 4 uses
  %i.ayp = sub i32 56, %i.ar
  %i.ayq = zext nneg i32 %i.ayp to i64            ; 2 uses
  %i.ayr = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.ayt = ptrtoint ptr %i.ayr to i64             ; 3 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.ayx = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 2 uses
  %i.ayy = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.ayz = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.aza = zext i32 %i.ai to i64
  %i.azb = sub nsw i64 0, %i.aza
  %i.azc = getelementptr inbounds i8, ptr %i.ac, i64 %i.azb
  br label %bb.gh

bb.gh:                                            ; preds = %.thread122.i543, %.lr.ph203.i467
  %.0307.i202.i469 = phi ptr [ %.0307.i196.i468, %.lr.ph203.i467 ], [ %.0307.i.i547, %.thread122.i543 ]
  %.0285.i201.i470 = phi i32 [ %i.u, %.lr.ph203.i467 ], [ %.7.i.i546, %.thread122.i543 ] ; 3 uses
  %.0291.i200.i471 = phi i32 [ %i.s, %.lr.ph203.i467 ], [ %.7298.i.i545, %.thread122.i543 ] ; 8 uses
  %.0301.i199.i472 = phi ptr [ %3, %.lr.ph203.i467 ], [ %.9320.i.i544, %.thread122.i543 ] ; 26 uses
  %.0311.i198.i473 = phi ptr [ %i.aym, %.lr.ph203.i467 ], [ %.9320.i.i544, %.thread122.i543 ] ; 3 uses
  %.0311.i.val11.i474 = load i64, ptr %.0311.i198.i473, align 1, !tbaa !24
  %i.azd = mul i64 %.0311.i.val11.i474, -3523014627193167104 ; 2 uses
  %i.aze = lshr i64 %i.azd, %i.ayq                ; 2 uses
  %i.azf = lshr i64 %i.aze, 8
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.azf
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !25 ; 2 uses
  %i.azi = zext i32 %i.azh to i64
  %i.azj = xor i64 %i.aze, %i.azi
  %i.azk = getelementptr inbounds nuw i8, ptr %.0311.i198.i473, i64 256
  %invariant.op2251 = sub i32 1, %.0291.i200.i471
  br label %bb.gi

bb.gi:                                            ; preds = %bb.ih, %bb.gh
  %.1312.i.i475 = phi ptr [ %.0311.i198.i473, %bb.gh ], [ %.1308.i.i476, %bb.ih ] ; 16 uses
  %.1308.i.i476 = phi ptr [ %.0307.i202.i469, %bb.gh ], [ %i.bmc, %bb.ih ] ; 4 uses
  %.pn209.i477 = phi i64 [ %i.azd, %bb.gh ], [ %i.azn, %bb.ih ]
  %.0276.i.i478 = phi i32 [ %i.azh, %bb.gh ], [ %i.bmg, %bb.ih ]
  %.0274.i.in.in.in.i479 = phi i64 [ %i.azj, %bb.gh ], [ %i.bmi, %bb.ih ]
  %.0267.i.i480 = phi i64 [ %i.l, %bb.gh ], [ %.1268.i.i501, %bb.ih ]
  %.0264.i.i481 = phi ptr [ %i.azk, %bb.gh ], [ %.1265.i.i503, %bb.ih ] ; 2 uses
  %.0278.i.i482 = lshr i64 %.pn209.i477, %i.ayo
  %.0272.i.in.i483 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0278.i.i482 ; 2 uses
  %.0272.i.i484 = load i32, ptr %.0272.i.in.i483, align 4, !tbaa !25 ; 5 uses
  %.pn.i485 = ptrtoint ptr %.1312.i.i475 to i64   ; 5 uses
  %.0270.i.in.i486 = sub i64 %.pn.i485, %i.as     ; 2 uses
  %.0270.i.i487 = trunc i64 %.0270.i.in.i486 to i32 ; 4 uses
  %.0274.i.in.in.i488 = and i64 %.0274.i.in.in.in.i479, 255
  %.0274.i.in.not.i489 = icmp eq i64 %.0274.i.in.in.i488, 0
  %i.azl = zext i32 %.0272.i.i484 to i64
  %i.azm = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.azl ; 4 uses
  %.reass.i491.reass.reass.reass = add i32 %.0270.i.i487, %invariant.op2251 ; 4 uses
  %.1308.i.val10.i492 = load i64, ptr %.1308.i.i476, align 1, !tbaa !24
  %i.azn = mul i64 %.1308.i.val10.i492, -3523014627193167104 ; 2 uses
  %i.azo = lshr i64 %i.azn, %i.ayq                ; 2 uses
  store i32 %.0270.i.i487, ptr %.0272.i.in.i483, align 4, !tbaa !25
  %i.azp = sub i32 %.reass.i491.reass.reass.reass, %i.n
  %11 = icmp ugt i32 %i.azp, -4
  br i1 %11, label %bb.gv, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.azq = icmp ult i32 %.reass.i491.reass.reass.reass, %i.n ; 2 uses
  %i.azr = sub i32 %.reass.i491.reass.reass.reass, %i.ai
  %i.azs = zext i32 %i.azr to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.azs
  %i.azu = zext i32 %.reass.i491.reass.reass.reass to i64
  %i.azv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.azu
  %i.azw = select i1 %i.azq, ptr %i.azt, ptr %i.azv ; 2 uses
  %.val6.i493 = load i32, ptr %i.azw, align 1, !tbaa !25
  %i.azx = getelementptr inbounds nuw i8, ptr %.1312.i.i475, i64 1
  %.val5.i494 = load i32, ptr %i.azx, align 1, !tbaa !25
  %i.azy = icmp eq i32 %.val6.i493, %.val5.i494
  br i1 %i.azy, label %bb.gk, label %bb.gv

bb.gk:                                            ; preds = %bb.gj
  %.1312.i.i475.lcssa20622066 = ptrtoaddr ptr %.1312.i.i475 to i64 ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.1312.i.i475, i64 1 ; 5 uses
  %i.baa = select i1 %i.azq, ptr %i.af, ptr %i.q
  %i.bab = getelementptr inbounds nuw i8, ptr %.1312.i.i475, i64 5
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azw, i64 4
  %i.bad = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.bab, ptr noundef nonnull %i.bac, ptr noundef %i.q, ptr noundef %i.baa, ptr noundef %i.p) ; 2 uses
  %i.bae = add i64 %i.bad, 4                      ; 2 uses
  %i.baf = ptrtoint ptr %i.azz to i64
  %i.bag = ptrtoint ptr %.0301.i199.i472 to i64   ; 2 uses
  %i.bah = sub i64 %i.baf, %i.bag                 ; 7 uses
  %.not.i357.i.i652 = icmp ugt ptr %i.azz, %i.ayr
  %i.bai = load ptr, ptr %i.ays, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i357.i.i652, label %bb.gp, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %.0301.i.val.i653 = load <2 x i64>, ptr %.0301.i199.i472, align 1, !tbaa !33
  store <2 x i64> %.0301.i.val.i653, ptr %i.bai, align 1, !tbaa !33
  %i.baj = icmp ugt i64 %i.bah, 16
  %i.bak = load ptr, ptr %i.ays, align 8, !tbaa !38 ; 4 uses
  br i1 %i.baj, label %bb.gm, label %ZSTD_storeSeq.exit358.i.thread.i654

ZSTD_storeSeq.exit358.i.thread.i654:              ; preds = %bb.gl
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 %i.bah
  store ptr %i.bal, ptr %i.ays, align 8, !tbaa !38
  %.pre.i655 = load ptr, ptr %i.ayv, align 8, !tbaa !39
  br label %bb.gu

bb.gm:                                            ; preds = %bb.gl
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bak, i64 16
  %i.ban = getelementptr inbounds nuw i8, ptr %.0301.i199.i472, i64 16 ; 2 uses
  %i.bao = getelementptr i8, ptr %i.bak, i64 %i.bah
  %.val13.i656 = load <2 x i64>, ptr %i.ban, align 1, !tbaa !33
  store <2 x i64> %.val13.i656, ptr %i.bam, align 1, !tbaa !33
  %i.bap = icmp slt i64 %i.bah, 33
  br i1 %i.bap, label %ZSTD_storeSeq.exit358.i.i662, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bak, i64 32
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %bb.gn
  %.pn.i.i.i657 = phi ptr [ %i.ban, %bb.gn ], [ %i.bas, %bb.go ] ; 2 uses
  %.1.i.i.i658 = phi ptr [ %i.baq, %bb.gn ], [ %i.bat, %bb.go ] ; 3 uses
  %.130.i.i.i659 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i657, i64 16
  %.130.i.i.val.i660 = load <2 x i64>, ptr %.130.i.i.i659, align 1, !tbaa !33
  store <2 x i64> %.130.i.i.val.i660, ptr %.1.i.i.i658, align 1, !tbaa !33
  %i.bar = getelementptr inbounds nuw i8, ptr %.1.i.i.i658, i64 16
  %i.bas = getelementptr inbounds nuw i8, ptr %.pn.i.i.i657, i64 32 ; 2 uses
  %.val12.i661 = load <2 x i64>, ptr %i.bas, align 1, !tbaa !33
  store <2 x i64> %.val12.i661, ptr %i.bar, align 1, !tbaa !33
  %i.bat = getelementptr inbounds nuw i8, ptr %.1.i.i.i658, i64 32 ; 2 uses
  %i.bau = icmp ult ptr %i.bat, %i.bao
  br i1 %i.bau, label %bb.go, label %ZSTD_storeSeq.exit358.i.i662, !llvm.loop !0

bb.gp:                                            ; preds = %bb.gk
  %.not.i20.i664 = icmp ugt ptr %.0301.i199.i472, %i.ayr
  br i1 %.not.i20.i664, label %ZSTD_wildcopy.exit.i24.i671, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.bav = sub i64 %i.ayt, %i.bag                 ; 2 uses
  %i.baw = getelementptr inbounds i8, ptr %i.bai, i64 %i.bav ; 3 uses
  %.val19.i.i665 = load <2 x i64>, ptr %.0301.i199.i472, align 1, !tbaa !33
  store <2 x i64> %.val19.i.i665, ptr %i.bai, align 1, !tbaa !33
  %i.bax = icmp slt i64 %i.bav, 17
  br i1 %i.bax, label %ZSTD_wildcopy.exit.i24.i671, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bai, i64 16
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %bb.gr
  %.pn.i.i21.i666 = phi ptr [ %.0301.i199.i472, %bb.gr ], [ %i.bba, %bb.gs ] ; 2 uses
  %.1.i.i22.i667 = phi ptr [ %i.bay, %bb.gr ], [ %i.bbb, %bb.gs ] ; 3 uses
  %.130.i.i23.i668 = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i666, i64 16
  %.130.i.val.i.i669 = load <2 x i64>, ptr %.130.i.i23.i668, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i.i669, ptr %.1.i.i22.i667, align 1, !tbaa !33
  %i.baz = getelementptr inbounds nuw i8, ptr %.1.i.i22.i667, i64 16
  %i.bba = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i666, i64 32 ; 2 uses
  %.val.i.i670 = load <2 x i64>, ptr %i.bba, align 1, !tbaa !33
  store <2 x i64> %.val.i.i670, ptr %i.baz, align 1, !tbaa !33
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1.i.i22.i667, i64 32 ; 2 uses
  %i.bbc = icmp ult ptr %i.bbb, %i.baw
  br i1 %i.bbc, label %bb.gs, label %ZSTD_wildcopy.exit.i24.i671, !llvm.loop !0

ZSTD_wildcopy.exit.i24.i671:                      ; preds = %bb.gs, %bb.gq, %bb.gp
  %.014.i.i672 = phi ptr [ %.0301.i199.i472, %bb.gp ], [ %i.ayr, %bb.gq ], [ %i.ayr, %bb.gs ] ; 7 uses
  %.0.i25.i673 = phi ptr [ %i.bai, %bb.gp ], [ %i.baw, %bb.gq ], [ %i.baw, %bb.gs ] ; 6 uses
  %i.bbd = icmp ult ptr %.014.i.i672, %i.azz
  br i1 %i.bbd, label %iter.check1737, label %ZSTD_storeSeq.exit358.i.i662

iter.check1737:                                   ; preds = %ZSTD_wildcopy.exit.i24.i671
  %.014.i.i6721719 = ptrtoaddr ptr %.014.i.i672 to i64 ; 2 uses
  %.0.i25.i6731718 = ptrtoaddr ptr %.0.i25.i673 to i64
  %reass.sub1871 = sub i64 %.pn.i485, %.014.i.i6721719
  %i.bbe = add i64 %reass.sub1871, 1              ; 7 uses
  %min.iters.check1721 = icmp ult i64 %i.bbe, 8
  %i.bbf = sub i64 %.014.i.i6721719, %.0.i25.i6731718
  %diff.check1720.a = icmp ugt i64 %i.bbf, -32
  %or.cond1881 = select i1 %min.iters.check1721, i1 true, i1 %diff.check1720.a
  br i1 %or.cond1881, label %.lr.ph.i.i674.preheader, label %vector.main.loop.iter.check1722

vector.main.loop.iter.check1722:                  ; preds = %iter.check1737
  %min.iters.check1723 = icmp ult i64 %i.bbe, 32
  br i1 %min.iters.check1723, label %vec.epilog.ph1741, label %vector.ph1724

vector.ph1724:                                    ; preds = %vector.main.loop.iter.check1722
  %i.bbg = and i64 %i.bbe, 24
  %n.vec1725 = and i64 %i.bbe, -32                ; 5 uses
  %i.bbh = getelementptr i8, ptr %.0.i25.i673, i64 %n.vec1725
  %i.bbi = getelementptr i8, ptr %.014.i.i672, i64 %n.vec1725
  br label %vector.body1726

vector.body1726:                                  ; preds = %vector.ph1724, %vector.body1726
  %index1727 = phi i64 [ 0, %vector.ph1724 ], [ %index.next1732, %vector.body1726 ] ; 3 uses
  %next.gep1728 = getelementptr i8, ptr %.0.i25.i673, i64 %index1727 ; 2 uses
  %next.gep1729.a = getelementptr i8, ptr %.014.i.i672, i64 %index1727 ; 2 uses
  %i.bbj = getelementptr i8, ptr %next.gep1729.a, i64 16
  %wide.load1730 = load <16 x i8>, ptr %next.gep1729.a, align 1, !tbaa !33
  %wide.load1731.a = load <16 x i8>, ptr %i.bbj, align 1, !tbaa !33
  %i.bbk = getelementptr i8, ptr %next.gep1728, i64 16
  store <16 x i8> %wide.load1730, ptr %next.gep1728, align 1, !tbaa !33
  store <16 x i8> %wide.load1731.a, ptr %i.bbk, align 1, !tbaa !33
  %index.next1732 = add nuw i64 %index1727, 32    ; 2 uses
  %i.bbl = icmp eq i64 %index.next1732, %n.vec1725
  br i1 %i.bbl, label %middle.block1733, label %vector.body1726, !llvm.loop !131

middle.block1733:                                 ; preds = %vector.body1726
  %cmp.n1734 = icmp eq i64 %i.bbe, %n.vec1725
  br i1 %cmp.n1734, label %ZSTD_storeSeq.exit358.i.i662, label %vec.epilog.iter.check1739

vec.epilog.iter.check1739:                        ; preds = %middle.block1733
  %min.epilog.iters.check1740 = icmp eq i64 %i.bbg, 0
  br i1 %min.epilog.iters.check1740, label %.lr.ph.i.i674.preheader, label %vec.epilog.ph1741, !prof !42

vec.epilog.ph1741:                                ; preds = %vector.main.loop.iter.check1722, %vec.epilog.iter.check1739
  %vec.epilog.resume.val1735 = phi i64 [ %n.vec1725, %vec.epilog.iter.check1739 ], [ 0, %vector.main.loop.iter.check1722 ]
  %n.vec1742 = and i64 %i.bbe, -8                 ; 4 uses
  %i.bbm = getelementptr i8, ptr %.0.i25.i673, i64 %n.vec1742
  %i.bbn = getelementptr i8, ptr %.014.i.i672, i64 %n.vec1742
  br label %vec.epilog.vector.body1743

vec.epilog.vector.body1743:                       ; preds = %vec.epilog.vector.body1743, %vec.epilog.ph1741
  %index1744 = phi i64 [ %vec.epilog.resume.val1735, %vec.epilog.ph1741 ], [ %index.next1748, %vec.epilog.vector.body1743 ] ; 3 uses
  %next.gep1745 = getelementptr i8, ptr %.0.i25.i673, i64 %index1744
  %next.gep1746.a = getelementptr i8, ptr %.014.i.i672, i64 %index1744
  %wide.load1747 = load <8 x i8>, ptr %next.gep1746.a, align 1, !tbaa !33
  store <8 x i8> %wide.load1747, ptr %next.gep1745, align 1, !tbaa !33
  %index.next1748 = add nuw i64 %index1744, 8     ; 2 uses
  %i.bbo = icmp eq i64 %index.next1748, %n.vec1742
  br i1 %i.bbo, label %vec.epilog.middle.block1749, label %vec.epilog.vector.body1743, !llvm.loop !132

vec.epilog.middle.block1749:                      ; preds = %vec.epilog.vector.body1743
  %cmp.n1750 = icmp eq i64 %i.bbe, %n.vec1742
  br i1 %cmp.n1750, label %ZSTD_storeSeq.exit358.i.i662, label %.lr.ph.i.i674.preheader

.lr.ph.i.i674.preheader:                          ; preds = %iter.check1737, %vec.epilog.iter.check1739, %vec.epilog.middle.block1749
  %.121.i.i675.ph = phi ptr [ %.0.i25.i673, %iter.check1737 ], [ %i.bbh, %vec.epilog.iter.check1739 ], [ %i.bbm, %vec.epilog.middle.block1749 ] ; 2 uses
  %.11520.i.i676.ph = phi ptr [ %.014.i.i672, %iter.check1737 ], [ %i.bbi, %vec.epilog.iter.check1739 ], [ %i.bbn, %vec.epilog.middle.block1749 ] ; 3 uses
  %.11520.i.i676.ph2061 = ptrtoaddr ptr %.11520.i.i676.ph to i64 ; 2 uses
  %reass.sub2097 = sub i64 %.1312.i.i475.lcssa20622066, %.11520.i.i676.ph2061
  %i.bbp = add i64 %reass.sub2097, 1
  %i.bbq = sub i64 %.1312.i.i475.lcssa20622066, %.11520.i.i676.ph2061
  %xtraiter2067.a = and i64 %i.bbp, 7             ; 2 uses
  %lcmp.mod2068.not.a = icmp eq i64 %xtraiter2067.a, 0
  br i1 %lcmp.mod2068.not.a, label %.lr.ph.i.i674.prol.loopexit, label %.lr.ph.i.i674.prol

.lr.ph.i.i674.prol:                               ; preds = %.lr.ph.i.i674.preheader, %.lr.ph.i.i674.prol
  %.121.i.i675.prol = phi ptr [ %i.bbt, %.lr.ph.i.i674.prol ], [ %.121.i.i675.ph, %.lr.ph.i.i674.preheader ] ; 2 uses
  %.11520.i.i676.prol = phi ptr [ %i.bbr, %.lr.ph.i.i674.prol ], [ %.11520.i.i676.ph, %.lr.ph.i.i674.preheader ] ; 2 uses
  %prol.iter2069.a = phi i64 [ %prol.iter2069.next.a, %.lr.ph.i.i674.prol ], [ 0, %.lr.ph.i.i674.preheader ]
  %i.bbr = getelementptr inbounds nuw i8, ptr %.11520.i.i676.prol, i64 1 ; 2 uses
  %i.bbs = load i8, ptr %.11520.i.i676.prol, align 1, !tbaa !33
  %i.bbt = getelementptr inbounds nuw i8, ptr %.121.i.i675.prol, i64 1 ; 2 uses
  store i8 %i.bbs, ptr %.121.i.i675.prol, align 1, !tbaa !33
  %prol.iter2069.next.a = add i64 %prol.iter2069.a, 1 ; 2 uses
  %prol.iter2069.cmp.not.a = icmp eq i64 %prol.iter2069.next.a, %xtraiter2067.a
  br i1 %prol.iter2069.cmp.not.a, label %.lr.ph.i.i674.prol.loopexit, label %.lr.ph.i.i674.prol, !llvm.loop !133

.lr.ph.i.i674.prol.loopexit:                      ; preds = %.lr.ph.i.i674.prol, %.lr.ph.i.i674.preheader
  %.121.i.i675.unr = phi ptr [ %.121.i.i675.ph, %.lr.ph.i.i674.preheader ], [ %i.bbt, %.lr.ph.i.i674.prol ]
  %.11520.i.i676.unr = phi ptr [ %.11520.i.i676.ph, %.lr.ph.i.i674.preheader ], [ %i.bbr, %.lr.ph.i.i674.prol ]
  %i.bbu = icmp ult i64 %i.bbq, 7
  br i1 %i.bbu, label %ZSTD_storeSeq.exit358.i.i662, label %.lr.ph.i.i674

.lr.ph.i.i674:                                    ; preds = %.lr.ph.i.i674.prol.loopexit, %.lr.ph.i.i674
  %.121.i.i675 = phi ptr [ %i.bcs, %.lr.ph.i.i674 ], [ %.121.i.i675.unr, %.lr.ph.i.i674.prol.loopexit ] ; 9 uses
  %.11520.i.i676 = phi ptr [ %i.bcq, %.lr.ph.i.i674 ], [ %.11520.i.i676.unr, %.lr.ph.i.i674.prol.loopexit ] ; 9 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 1
  %i.bbw = load i8, ptr %.11520.i.i676, align 1, !tbaa !33
  %i.bbx = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 1
  store i8 %i.bbw, ptr %.121.i.i675, align 1, !tbaa !33
  %i.bby = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 2
  %i.bbz = load i8, ptr %i.bbv, align 1, !tbaa !33
  %i.bca = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 2
  store i8 %i.bbz, ptr %i.bbx, align 1, !tbaa !33
  %i.bcb = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 3
  %i.bcc = load i8, ptr %i.bby, align 1, !tbaa !33
  %i.bcd = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 3
  store i8 %i.bcc, ptr %i.bca, align 1, !tbaa !33
  %i.bce = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 4
  %i.bcf = load i8, ptr %i.bcb, align 1, !tbaa !33
  %i.bcg = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 4
  store i8 %i.bcf, ptr %i.bcd, align 1, !tbaa !33
  %i.bch = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 5
  %i.bci = load i8, ptr %i.bce, align 1, !tbaa !33
  %i.bcj = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 5
  store i8 %i.bci, ptr %i.bcg, align 1, !tbaa !33
  %i.bck = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 6
  %i.bcl = load i8, ptr %i.bch, align 1, !tbaa !33
  %i.bcm = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 6
  store i8 %i.bcl, ptr %i.bcj, align 1, !tbaa !33
  %i.bcn = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 7 ; 2 uses
  %i.bco = load i8, ptr %i.bck, align 1, !tbaa !33
  %i.bcp = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 7
  store i8 %i.bco, ptr %i.bcm, align 1, !tbaa !33
  %i.bcq = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 8
  %i.bcr = load i8, ptr %i.bcn, align 1, !tbaa !33
  %i.bcs = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 8
  store i8 %i.bcr, ptr %i.bcp, align 1, !tbaa !33
  %exitcond.not.i.i677.7 = icmp eq ptr %i.bcn, %.1312.i.i475
  br i1 %exitcond.not.i.i677.7, label %ZSTD_storeSeq.exit358.i.i662, label %.lr.ph.i.i674, !llvm.loop !134

ZSTD_storeSeq.exit358.i.i662:                     ; preds = %bb.go, %.lr.ph.i.i674.prol.loopexit, %.lr.ph.i.i674, %middle.block1733, %vec.epilog.middle.block1749, %ZSTD_wildcopy.exit.i24.i671, %bb.gm
  %i.bct = load ptr, ptr %i.ays, align 8, !tbaa !38
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bah
  store ptr %i.bcu, ptr %i.ays, align 8, !tbaa !38
  %i.bcv = icmp ugt i64 %i.bah, 65535
  %.pre240.i663 = load ptr, ptr %i.ayv, align 8, !tbaa !39 ; 3 uses
  br i1 %i.bcv, label %bb.gt, label %bb.gu, !prof !44

bb.gt:                                            ; preds = %ZSTD_storeSeq.exit358.i.i662
  store i32 1, ptr %i.ayu, align 8, !tbaa !45
  %i.bcw = load ptr, ptr %1, align 8, !tbaa !46
  %i.bcx = ptrtoint ptr %.pre240.i663 to i64
  %i.bcy = ptrtoint ptr %i.bcw to i64
  %i.bcz = sub i64 %i.bcx, %i.bcy
  %i.bda = lshr exact i64 %i.bcz, 3
  %i.bdb = trunc i64 %i.bda to i32
  store i32 %i.bdb, ptr %i.ayw, align 4, !tbaa !47
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %ZSTD_storeSeq.exit358.i.i662, %ZSTD_storeSeq.exit358.i.thread.i654
  %i.bdc = phi ptr [ %.pre.i655, %ZSTD_storeSeq.exit358.i.thread.i654 ], [ %.pre240.i663, %bb.gt ], [ %.pre240.i663, %ZSTD_storeSeq.exit358.i.i662 ] ; 4 uses
  %i.bdd = trunc i64 %i.bah to i16
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdc, i64 4
  store i16 %i.bdd, ptr %i.bde, align 4, !tbaa !49
  store i32 1, ptr %i.bdc, align 4, !tbaa !50
  %i.bdf = add i64 %i.bad, 1                      ; 3 uses
  %i.bdg = icmp ugt i64 %i.bdf, 65535
  br i1 %i.bdg, label %ZSTD_storeSeqOnly.exit.i.sink.split.i555, label %ZSTD_storeSeqOnly.exit.i.i527, !prof !51

bb.gv:                                            ; preds = %bb.gj, %bb.gi
  br i1 %.0274.i.in.not.i489, label %bb.gw, label %.thread.i495

bb.gw:                                            ; preds = %bb.gv
  %i.bdh = lshr i32 %.0276.i.i478, 8              ; 3 uses
  %i.bdi = icmp ugt i32 %i.bdh, %i.aa
  br i1 %i.bdi, label %bb.gx, label %.thread.i495

bb.gx:                                            ; preds = %bb.gw
  %i.bdj = zext nneg i32 %i.bdh to i64            ; 2 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bdj
  %.val.i610 = load i32, ptr %i.bdk, align 1, !tbaa !25
  %.1312.i.val.i611 = load i32, ptr %.1312.i.i475, align 1, !tbaa !25
  %i.bdl = icmp ne i32 %.val.i610, %.1312.i.val.i611
  %.not335.i.i612 = icmp ugt i32 %.0272.i.i484, %i.n
  %or.cond.i.i613 = select i1 %i.bdl, i1 true, i1 %.not335.i.i612
  br i1 %or.cond.i.i613, label %.thread.i495, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bdj ; 2 uses
  %i.bdn = add i32 %i.ai, %i.bdh
  %i.bdo = sub i32 %.0270.i.i487, %i.bdn          ; 3 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %.1312.i.i475, i64 4
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdm, i64 4
  %i.bdr = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.bdp, ptr noundef nonnull %i.bdq, ptr noundef %i.q, ptr noundef %i.af, ptr noundef %i.p)
  %i.bds = add i64 %i.bdr, 4                      ; 2 uses
  %i.bdt = icmp ugt ptr %.1312.i.i475, %.0301.i199.i472
  br i1 %i.bdt, label %.lr.ph179.i644, label %.critedge.i.i614

.lr.ph179.i644:                                   ; preds = %bb.gy, %bb.gz
  %.0261.i178.i645 = phi ptr [ %i.bdw, %bb.gz ], [ %i.bdm, %bb.gy ]
  %.1281.i177.i646 = phi i64 [ %i.bdz, %bb.gz ], [ %i.bds, %bb.gy ] ; 2 uses
  %.2313.i176.i647 = phi ptr [ %i.bdu, %bb.gz ], [ %.1312.i.i475, %bb.gy ] ; 2 uses
  %i.bdu = getelementptr inbounds i8, ptr %.2313.i176.i647, i64 -1 ; 4 uses
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !33
  %i.bdw = getelementptr inbounds i8, ptr %.0261.i178.i645, i64 -1 ; 3 uses
  %i.bdx = load i8, ptr %i.bdw, align 1, !tbaa !33
  %i.bdy = icmp eq i8 %i.bdv, %i.bdx
  br i1 %i.bdy, label %bb.gz, label %.critedge.i.loopexit.i648

bb.gz:                                            ; preds = %.lr.ph179.i644
  %i.bdz = add i64 %.1281.i177.i646, 1            ; 2 uses
  %i.bea = icmp ugt ptr %i.bdu, %.0301.i199.i472
  %i.beb = icmp ugt ptr %i.bdw, %i.ae
  %i.bec = and i1 %i.beb, %i.bea
  br i1 %i.bec, label %.lr.ph179.i644, label %.critedge.i.loopexit.i648, !llvm.loop !97

.critedge.i.loopexit.i648:                        ; preds = %bb.gz, %.lr.ph179.i644
  %.2313.i.lcssa.ph.i649 = phi ptr [ %i.bdu, %bb.gz ], [ %.2313.i176.i647, %.lr.ph179.i644 ] ; 2 uses
  %.1281.i.lcssa.ph.i650 = phi i64 [ %i.bdz, %bb.gz ], [ %.1281.i177.i646, %.lr.ph179.i644 ]
  %.pre247.i651 = ptrtoint ptr %.2313.i.lcssa.ph.i649 to i64
  br label %.critedge.i.i614

.critedge.i.i614:                                 ; preds = %.critedge.i.loopexit.i648, %bb.gy
  %.pre-phi248.i615 = phi i64 [ %.pre247.i651, %.critedge.i.loopexit.i648 ], [ %.pn.i485, %bb.gy ]
  %.2313.i.lcssa.i616 = phi ptr [ %.2313.i.lcssa.ph.i649, %.critedge.i.loopexit.i648 ], [ %.1312.i.i475, %bb.gy ] ; 6 uses
  %.1281.i.lcssa.i617 = phi i64 [ %.1281.i.lcssa.ph.i650, %.critedge.i.loopexit.i648 ], [ %i.bds, %bb.gy ] ; 3 uses
  %.2313.i.lcssa.i6161684 = ptrtoaddr ptr %.2313.i.lcssa.i616 to i64 ; 3 uses
  %i.bed = ptrtoint ptr %.0301.i199.i472 to i64   ; 2 uses
  %i.bee = sub i64 %.pre-phi248.i615, %i.bed      ; 7 uses
  %i.bef = add i32 %i.bdo, 3
  %.not.i355.i.i618 = icmp ugt ptr %.2313.i.lcssa.i616, %i.ayr
  %i.beg = load ptr, ptr %i.ays, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i355.i.i618, label %bb.he, label %bb.ha

bb.ha:                                            ; preds = %.critedge.i.i614
  %.0301.i.val16.i619 = load <2 x i64>, ptr %.0301.i199.i472, align 1, !tbaa !33
  store <2 x i64> %.0301.i.val16.i619, ptr %i.beg, align 1, !tbaa !33
  %i.beh = icmp ugt i64 %i.bee, 16
  %i.bei = load ptr, ptr %i.ays, align 8, !tbaa !38 ; 4 uses
  br i1 %i.beh, label %bb.hb, label %ZSTD_storeSeq.exit356.i.thread.i620

ZSTD_storeSeq.exit356.i.thread.i620:              ; preds = %bb.ha
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bee
  store ptr %i.bej, ptr %i.ays, align 8, !tbaa !38
  %.pre241.i621 = load ptr, ptr %i.ayv, align 8, !tbaa !39
  br label %bb.hj

bb.hb:                                            ; preds = %bb.ha
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bei, i64 16
  %i.bel = getelementptr inbounds nuw i8, ptr %.0301.i199.i472, i64 16 ; 2 uses
  %i.bem = getelementptr i8, ptr %i.bei, i64 %i.bee
  %.val15.i622 = load <2 x i64>, ptr %i.bel, align 1, !tbaa !33
  store <2 x i64> %.val15.i622, ptr %i.bek, align 1, !tbaa !33
  %i.ben = icmp slt i64 %i.bee, 33
  br i1 %i.ben, label %ZSTD_storeSeq.exit356.i.i628, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bei, i64 32
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %bb.hc
  %.pn.i359.i.i623 = phi ptr [ %i.bel, %bb.hc ], [ %i.beq, %bb.hd ] ; 2 uses
  %.1.i360.i.i624 = phi ptr [ %i.beo, %bb.hc ], [ %i.ber, %bb.hd ] ; 3 uses
  %.130.i361.i.i625 = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i623, i64 16
  %.130.i361.i.val.i626 = load <2 x i64>, ptr %.130.i361.i.i625, align 1, !tbaa !33
  store <2 x i64> %.130.i361.i.val.i626, ptr %.1.i360.i.i624, align 1, !tbaa !33
  %i.bep = getelementptr inbounds nuw i8, ptr %.1.i360.i.i624, i64 16
  %i.beq = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i623, i64 32 ; 2 uses
  %.val14.i627 = load <2 x i64>, ptr %i.beq, align 1, !tbaa !33
  store <2 x i64> %.val14.i627, ptr %i.bep, align 1, !tbaa !33
  %i.ber = getelementptr inbounds nuw i8, ptr %.1.i360.i.i624, i64 32 ; 2 uses
  %i.bes = icmp ult ptr %i.ber, %i.bem
  br i1 %i.bes, label %bb.hd, label %ZSTD_storeSeq.exit356.i.i628, !llvm.loop !0

bb.he:                                            ; preds = %.critedge.i.i614
  %.not.i26.i630 = icmp ugt ptr %.0301.i199.i472, %i.ayr
  br i1 %.not.i26.i630, label %ZSTD_wildcopy.exit.i33.i637, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bet = sub i64 %i.ayt, %i.bed                 ; 2 uses
  %i.beu = getelementptr inbounds i8, ptr %i.beg, i64 %i.bet ; 3 uses
  %.val19.i27.i631 = load <2 x i64>, ptr %.0301.i199.i472, align 1, !tbaa !33
  store <2 x i64> %.val19.i27.i631, ptr %i.beg, align 1, !tbaa !33
  %i.bev = icmp slt i64 %i.bet, 17
  br i1 %i.bev, label %ZSTD_wildcopy.exit.i33.i637, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bew = getelementptr inbounds nuw i8, ptr %i.beg, i64 16
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %bb.hg
  %.pn.i.i28.i632 = phi ptr [ %.0301.i199.i472, %bb.hg ], [ %i.bey, %bb.hh ] ; 2 uses
  %.1.i.i29.i633 = phi ptr [ %i.bew, %bb.hg ], [ %i.bez, %bb.hh ] ; 3 uses
  %.130.i.i30.i634 = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i632, i64 16
  %.130.i.val.i31.i635 = load <2 x i64>, ptr %.130.i.i30.i634, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i31.i635, ptr %.1.i.i29.i633, align 1, !tbaa !33
  %i.bex = getelementptr inbounds nuw i8, ptr %.1.i.i29.i633, i64 16
  %i.bey = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i632, i64 32 ; 2 uses
  %.val.i32.i636 = load <2 x i64>, ptr %i.bey, align 1, !tbaa !33
  store <2 x i64> %.val.i32.i636, ptr %i.bex, align 1, !tbaa !33
  %i.bez = getelementptr inbounds nuw i8, ptr %.1.i.i29.i633, i64 32 ; 2 uses
  %i.bfa = icmp ult ptr %i.bez, %i.beu
  br i1 %i.bfa, label %bb.hh, label %ZSTD_wildcopy.exit.i33.i637, !llvm.loop !0

ZSTD_wildcopy.exit.i33.i637:                      ; preds = %bb.hh, %bb.hf, %bb.he
  %.014.i34.i638 = phi ptr [ %.0301.i199.i472, %bb.he ], [ %i.ayr, %bb.hf ], [ %i.ayr, %bb.hh ] ; 7 uses
  %.0.i35.i639 = phi ptr [ %i.beg, %bb.he ], [ %i.beu, %bb.hf ], [ %i.beu, %bb.hh ] ; 6 uses
  %i.bfb = icmp ult ptr %.014.i34.i638, %.2313.i.lcssa.i616
  br i1 %i.bfb, label %iter.check1701.a, label %ZSTD_storeSeq.exit356.i.i628

iter.check1701.a:                                 ; preds = %ZSTD_wildcopy.exit.i33.i637
  %.014.i34.i6381682 = ptrtoaddr ptr %.014.i34.i638 to i64 ; 2 uses
  %.0.i35.i6391681 = ptrtoaddr ptr %.0.i35.i639 to i64
  %i.bfc = sub i64 %.2313.i.lcssa.i6161684, %.014.i34.i6381682 ; 7 uses
  %min.iters.check1685.a = icmp ult i64 %i.bfc, 8
  %i.bfd = sub i64 %.014.i34.i6381682, %.0.i35.i6391681
  %diff.check1683.a = icmp ugt i64 %i.bfd, -32
  %or.cond1882 = select i1 %min.iters.check1685.a, i1 true, i1 %diff.check1683.a
  br i1 %or.cond1882, label %.lr.ph.i36.i640.preheader, label %vector.main.loop.iter.check1686.a

vector.main.loop.iter.check1686.a:                ; preds = %iter.check1701.a
  %min.iters.check1687.a = icmp ult i64 %i.bfc, 32
  br i1 %min.iters.check1687.a, label %vec.epilog.ph1705.a, label %vector.ph1688.a

vector.ph1688.a:                                  ; preds = %vector.main.loop.iter.check1686.a
  %i.bfe = and i64 %i.bfc, 24
  %n.vec1689.a = and i64 %i.bfc, -32              ; 5 uses
  %i.bff = getelementptr i8, ptr %.0.i35.i639, i64 %n.vec1689.a
  %i.bfg = getelementptr i8, ptr %.014.i34.i638, i64 %n.vec1689.a
  br label %vector.body1690.a

vector.body1690.a:                                ; preds = %vector.ph1688.a, %vector.body1690.a
  %index1691.a = phi i64 [ 0, %vector.ph1688.a ], [ %index.next1696.a, %vector.body1690.a ] ; 3 uses
  %next.gep1692.a = getelementptr i8, ptr %.0.i35.i639, i64 %index1691.a ; 2 uses
  %next.gep1693.a = getelementptr i8, ptr %.014.i34.i638, i64 %index1691.a ; 2 uses
  %i.bfh = getelementptr i8, ptr %next.gep1693.a, i64 16
  %wide.load1694.a = load <16 x i8>, ptr %next.gep1693.a, align 1, !tbaa !33
  %wide.load1695.a = load <16 x i8>, ptr %i.bfh, align 1, !tbaa !33
  %i.bfi = getelementptr i8, ptr %next.gep1692.a, i64 16
  store <16 x i8> %wide.load1694.a, ptr %next.gep1692.a, align 1, !tbaa !33
  store <16 x i8> %wide.load1695.a, ptr %i.bfi, align 1, !tbaa !33
  %index.next1696.a = add nuw i64 %index1691.a, 32 ; 2 uses
  %i.bfj = icmp eq i64 %index.next1696.a, %n.vec1689.a
  br i1 %i.bfj, label %middle.block1697.a, label %vector.body1690.a, !llvm.loop !135

middle.block1697.a:                               ; preds = %vector.body1690.a
  %cmp.n1698.a = icmp eq i64 %i.bfc, %n.vec1689.a
end_hunk_3
begin_hunk_4_@ZSTD_compressBlock_fast_dictMatchState:bb.a
  %n.vec1669 = and i64 %i.bjy, -8                 ; 4 uses
  %i.bkg = getelementptr i8, ptr %.0.i58.i579, i64 %n.vec1669
  %i.bkh = getelementptr i8, ptr %.014.i57.i578, i64 %n.vec1669
  br label %vec.epilog.vector.body1670

vec.epilog.vector.body1670:                       ; preds = %vec.epilog.vector.body1670, %vec.epilog.ph1668
  %index1671 = phi i64 [ %vec.epilog.resume.val1662, %vec.epilog.ph1668 ], [ %index.next1675, %vec.epilog.vector.body1670 ] ; 3 uses
  %next.gep1672 = getelementptr i8, ptr %.0.i58.i579, i64 %index1671
  %next.gep1673 = getelementptr i8, ptr %.014.i57.i578, i64 %index1671
  %wide.load1674 = load <8 x i8>, ptr %next.gep1673, align 1, !tbaa !33
  store <8 x i8> %wide.load1674, ptr %next.gep1672, align 1, !tbaa !33
  %index.next1675 = add nuw i64 %index1671, 8     ; 2 uses
  %i.bki = icmp eq i64 %index.next1675, %n.vec1669
  br i1 %i.bki, label %vec.epilog.middle.block1676, label %vec.epilog.vector.body1670, !llvm.loop !140

vec.epilog.middle.block1676:                      ; preds = %vec.epilog.vector.body1670
  %cmp.n1677 = icmp eq i64 %i.bjy, %n.vec1669
  br i1 %cmp.n1677, label %ZSTD_storeSeq.exit354.i.i568, label %.lr.ph.i59.i580.preheader

.lr.ph.i59.i580.preheader:                        ; preds = %iter.check1664, %vec.epilog.iter.check1666, %vec.epilog.middle.block1676
  %.121.i60.i581.ph = phi ptr [ %.0.i58.i579, %iter.check1664 ], [ %i.bkb, %vec.epilog.iter.check1666 ], [ %i.bkg, %vec.epilog.middle.block1676 ] ; 2 uses
  %.11520.i61.i582.ph = phi ptr [ %.014.i57.i578, %iter.check1664 ], [ %i.bkc, %vec.epilog.iter.check1666 ], [ %i.bkh, %vec.epilog.middle.block1676 ] ; 3 uses
  %.11520.i61.i582.ph2074 = ptrtoaddr ptr %.11520.i61.i582.ph to i64 ; 2 uses
  %i.bkj = sub i64 %.5316.i.lcssa.i5211647, %.11520.i61.i582.ph2074
  %xtraiter2075 = and i64 %i.bkj, 7               ; 2 uses
  %lcmp.mod2076.not = icmp eq i64 %xtraiter2075, 0
  br i1 %lcmp.mod2076.not, label %.lr.ph.i59.i580.prol.loopexit, label %.lr.ph.i59.i580.prol

.lr.ph.i59.i580.prol:                             ; preds = %.lr.ph.i59.i580.preheader, %.lr.ph.i59.i580.prol
  %.121.i60.i581.prol = phi ptr [ %i.bkm, %.lr.ph.i59.i580.prol ], [ %.121.i60.i581.ph, %.lr.ph.i59.i580.preheader ] ; 2 uses
  %.11520.i61.i582.prol = phi ptr [ %i.bkk, %.lr.ph.i59.i580.prol ], [ %.11520.i61.i582.ph, %.lr.ph.i59.i580.preheader ] ; 2 uses
  %prol.iter2077 = phi i64 [ %prol.iter2077.next, %.lr.ph.i59.i580.prol ], [ 0, %.lr.ph.i59.i580.preheader ]
  %i.bkk = getelementptr inbounds nuw i8, ptr %.11520.i61.i582.prol, i64 1 ; 2 uses
  %i.bkl = load i8, ptr %.11520.i61.i582.prol, align 1, !tbaa !33
  %i.bkm = getelementptr inbounds nuw i8, ptr %.121.i60.i581.prol, i64 1 ; 2 uses
  store i8 %i.bkl, ptr %.121.i60.i581.prol, align 1, !tbaa !33
  %prol.iter2077.next = add i64 %prol.iter2077, 1 ; 2 uses
  %prol.iter2077.cmp.not = icmp eq i64 %prol.iter2077.next, %xtraiter2075
  br i1 %prol.iter2077.cmp.not, label %.lr.ph.i59.i580.prol.loopexit, label %.lr.ph.i59.i580.prol, !llvm.loop !141

.lr.ph.i59.i580.prol.loopexit:                    ; preds = %.lr.ph.i59.i580.prol, %.lr.ph.i59.i580.preheader
  %.121.i60.i581.unr = phi ptr [ %.121.i60.i581.ph, %.lr.ph.i59.i580.preheader ], [ %i.bkm, %.lr.ph.i59.i580.prol ]
  %.11520.i61.i582.unr = phi ptr [ %.11520.i61.i582.ph, %.lr.ph.i59.i580.preheader ], [ %i.bkk, %.lr.ph.i59.i580.prol ]
  %i.bkn = sub i64 %.11520.i61.i582.ph2074, %.5316.i.lcssa.i5211647
  %i.bko = icmp ugt i64 %i.bkn, -8
  br i1 %i.bko, label %ZSTD_storeSeq.exit354.i.i568, label %.lr.ph.i59.i580

.lr.ph.i59.i580:                                  ; preds = %.lr.ph.i59.i580.prol.loopexit, %.lr.ph.i59.i580
  %.121.i60.i581 = phi ptr [ %i.blm, %.lr.ph.i59.i580 ], [ %.121.i60.i581.unr, %.lr.ph.i59.i580.prol.loopexit ] ; 9 uses
  %.11520.i61.i582 = phi ptr [ %i.blk, %.lr.ph.i59.i580 ], [ %.11520.i61.i582.unr, %.lr.ph.i59.i580.prol.loopexit ] ; 9 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 1
  %i.bkq = load i8, ptr %.11520.i61.i582, align 1, !tbaa !33
  %i.bkr = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 1
  store i8 %i.bkq, ptr %.121.i60.i581, align 1, !tbaa !33
  %i.bks = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 2
  %i.bkt = load i8, ptr %i.bkp, align 1, !tbaa !33
  %i.bku = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 2
  store i8 %i.bkt, ptr %i.bkr, align 1, !tbaa !33
  %i.bkv = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 3
  %i.bkw = load i8, ptr %i.bks, align 1, !tbaa !33
  %i.bkx = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 3
  store i8 %i.bkw, ptr %i.bku, align 1, !tbaa !33
  %i.bky = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 4
  %i.bkz = load i8, ptr %i.bkv, align 1, !tbaa !33
  %i.bla = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 4
  store i8 %i.bkz, ptr %i.bkx, align 1, !tbaa !33
  %i.blb = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 5
  %i.blc = load i8, ptr %i.bky, align 1, !tbaa !33
  %i.bld = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 5
  store i8 %i.blc, ptr %i.bla, align 1, !tbaa !33
  %i.ble = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 6
  %i.blf = load i8, ptr %i.blb, align 1, !tbaa !33
  %i.blg = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 6
  store i8 %i.blf, ptr %i.bld, align 1, !tbaa !33
  %i.blh = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 7
  %i.bli = load i8, ptr %i.ble, align 1, !tbaa !33
  %i.blj = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 7
  store i8 %i.bli, ptr %i.blg, align 1, !tbaa !33
  %i.blk = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 8 ; 2 uses
  %i.bll = load i8, ptr %i.blh, align 1, !tbaa !33
  %i.blm = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 8
  store i8 %i.bll, ptr %i.blj, align 1, !tbaa !33
  %exitcond.not.i62.i583.7 = icmp eq ptr %i.blk, %.5316.i.lcssa.i521
  br i1 %exitcond.not.i62.i583.7, label %ZSTD_storeSeq.exit354.i.i568, label %.lr.ph.i59.i580, !llvm.loop !142

ZSTD_storeSeq.exit354.i.i568:                     ; preds = %bb.ia, %.lr.ph.i59.i580.prol.loopexit, %.lr.ph.i59.i580, %middle.block1660, %vec.epilog.middle.block1676, %ZSTD_wildcopy.exit.i56.i577, %bb.hy
  %i.bln = load ptr, ptr %i.ays, align 8, !tbaa !38
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 %i.bja
  store ptr %i.blo, ptr %i.ays, align 8, !tbaa !38
  %i.blp = icmp ugt i64 %i.bja, 65535
  %.pre244.i569 = load ptr, ptr %i.ayv, align 8, !tbaa !39 ; 3 uses
  br i1 %i.blp, label %bb.if, label %bb.ig, !prof !44

bb.if:                                            ; preds = %ZSTD_storeSeq.exit354.i.i568
  store i32 1, ptr %i.ayu, align 8, !tbaa !45
  %i.blq = load ptr, ptr %1, align 8, !tbaa !46
  %i.blr = ptrtoint ptr %.pre244.i569 to i64
  %i.bls = ptrtoint ptr %i.blq to i64
  %i.blt = sub i64 %i.blr, %i.bls
  %i.blu = lshr exact i64 %i.blt, 3
  %i.blv = trunc i64 %i.blu to i32
  store i32 %i.blv, ptr %i.ayw, align 4, !tbaa !47
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %ZSTD_storeSeq.exit354.i.i568, %ZSTD_storeSeq.exit354.i.thread.i525
  %i.blw = phi ptr [ %.pre243.i526, %ZSTD_storeSeq.exit354.i.thread.i525 ], [ %.pre244.i569, %bb.if ], [ %.pre244.i569, %ZSTD_storeSeq.exit354.i.i568 ] ; 4 uses
  %i.blx = trunc i64 %i.bja to i16
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blw, i64 4
  store i16 %i.blx, ptr %i.bly, align 4, !tbaa !49
  store i32 %i.bjb, ptr %i.blw, align 4, !tbaa !50
  %i.blz = add i64 %.4.i.lcssa.i522, -3           ; 3 uses
  %i.bma = icmp ugt i64 %i.blz, 65535
  br i1 %i.bma, label %ZSTD_storeSeqOnly.exit.i.sink.split.i555, label %ZSTD_storeSeqOnly.exit.i.i527, !prof !51

ZSTD_match4Found_cmov.exit.thread.i499:           ; preds = %ZSTD_match4Found_cmov.exit.i507, %.thread.i495
  %.not337.i.i500 = icmp uge ptr %.1308.i.i476, %.0264.i.i481 ; 2 uses
  %i.bmb = zext i1 %.not337.i.i500 to i64
  %.1268.i.i501 = add i64 %.0267.i.i480, %i.bmb   ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %.1308.i.i476, i64 %.1268.i.i501 ; 2 uses
  %i.bmd = icmp ugt ptr %i.bmc, %i.r
  br i1 %i.bmd, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.ih

bb.ih:                                            ; preds = %ZSTD_match4Found_cmov.exit.thread.i499
  %.1265.i.idx.i502 = select i1 %.not337.i.i500, i64 256, i64 0
  %.1265.i.i503 = getelementptr inbounds nuw i8, ptr %.0264.i.i481, i64 %.1265.i.idx.i502
  %i.bme = lshr i64 %i.azo, 8
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bme
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !25 ; 2 uses
  %i.bmh = zext i32 %i.bmg to i64
  %i.bmi = xor i64 %i.azo, %i.bmh
  br label %bb.gi

ZSTD_storeSeqOnly.exit.i.sink.split.i555:         ; preds = %bb.ig, %bb.hj, %bb.gu
  %.sink317.i556 = phi ptr [ %i.bha, %bb.hj ], [ %i.bdc, %bb.gu ], [ %i.blw, %bb.ig ] ; 2 uses
  %.sink313.ph.i557 = phi i64 [ %i.bhd, %bb.hj ], [ %i.bdf, %bb.gu ], [ %i.blz, %bb.ig ]
  %.6317.i.ph.ph.i558 = phi ptr [ %.2313.i.lcssa.i616, %bb.hj ], [ %i.azz, %bb.gu ], [ %.5316.i.lcssa.i521, %bb.ig ]
  %.4295.i.ph.ph.i559 = phi i32 [ %i.bdo, %bb.hj ], [ %.0291.i200.i471, %bb.gu ], [ %i.bhi, %bb.ig ]
  %.4289.i.ph.ph.i560 = phi i32 [ %.0291.i200.i471, %bb.hj ], [ %.0285.i201.i470, %bb.gu ], [ %.0291.i200.i471, %bb.ig ]
  %.5.i.ph.ph.i561 = phi i64 [ %.1281.i.lcssa.i617, %bb.hj ], [ %i.bae, %bb.gu ], [ %.4.i.lcssa.i522, %bb.ig ]
  store i32 2, ptr %i.ayu, align 8, !tbaa !45
  %i.bmj = load ptr, ptr %1, align 8, !tbaa !46
  %i.bmk = ptrtoint ptr %.sink317.i556 to i64
  %i.bml = ptrtoint ptr %i.bmj to i64
  %i.bmm = sub i64 %i.bmk, %i.bml
  %i.bmn = lshr exact i64 %i.bmm, 3
  %i.bmo = trunc i64 %i.bmn to i32
  store i32 %i.bmo, ptr %i.ayw, align 4, !tbaa !47
  br label %ZSTD_storeSeqOnly.exit.i.i527

ZSTD_storeSeqOnly.exit.i.i527:                    ; preds = %ZSTD_storeSeqOnly.exit.i.sink.split.i555, %bb.ig, %bb.hj, %bb.gu
  %.sink313.i528 = phi i64 [ %i.bdf, %bb.gu ], [ %i.bhd, %bb.hj ], [ %i.blz, %bb.ig ], [ %.sink313.ph.i557, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ]
  %.sink312.i529 = phi ptr [ %i.bdc, %bb.gu ], [ %i.bha, %bb.hj ], [ %i.blw, %bb.ig ], [ %.sink317.i556, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ] ; 2 uses
  %.6317.i.ph.i530 = phi ptr [ %i.azz, %bb.gu ], [ %.2313.i.lcssa.i616, %bb.hj ], [ %.5316.i.lcssa.i521, %bb.ig ], [ %.6317.i.ph.ph.i558, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ]
  %.4295.i.ph.i531 = phi i32 [ %.0291.i200.i471, %bb.gu ], [ %i.bdo, %bb.hj ], [ %i.bhi, %bb.ig ], [ %.4295.i.ph.ph.i559, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ] ; 2 uses
  %.4289.i.ph.i532 = phi i32 [ %.0285.i201.i470, %bb.gu ], [ %.0291.i200.i471, %bb.hj ], [ %.0291.i200.i471, %bb.ig ], [ %.4289.i.ph.ph.i560, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ] ; 2 uses
  %.5.i.ph.i533 = phi i64 [ %i.bae, %bb.gu ], [ %.1281.i.lcssa.i617, %bb.hj ], [ %.4.i.lcssa.i522, %bb.ig ], [ %.5.i.ph.ph.i561, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ]
  %i.bmp = trunc i64 %.sink313.i528 to i16
  %i.bmq = getelementptr inbounds nuw i8, ptr %.sink312.i529, i64 6
  store i16 %i.bmp, ptr %i.bmq, align 2, !tbaa !52
  %i.bmr = getelementptr inbounds nuw i8, ptr %.sink312.i529, i64 8 ; 2 uses
  store ptr %i.bmr, ptr %i.ayv, align 8, !tbaa !39
  %i.bms = getelementptr inbounds nuw i8, ptr %.6317.i.ph.i530, i64 %.5.i.ph.i533 ; 4 uses
  %.not338.i.i534 = icmp ugt ptr %i.bms, %i.r
  br i1 %.not338.i.i534, label %.thread122.i543, label %bb.ii

bb.ii:                                            ; preds = %ZSTD_storeSeqOnly.exit.i.i527
  %i.bmt = add i32 %.0270.i.i487, 2
  %i.bmu = and i64 %.0270.i.in.i486, 4294967295
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bmu
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 2
  %.val9.i535 = load i64, ptr %i.bmw, align 1, !tbaa !24
  %i.bmx = mul i64 %.val9.i535, -3523014627193167104
  %i.bmy = lshr i64 %i.bmx, %i.ayo
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bmy
  store i32 %i.bmt, ptr %i.bmz, align 4, !tbaa !25
  %i.bna = getelementptr inbounds i8, ptr %i.bms, i64 -2 ; 2 uses
  %i.bnb = ptrtoint ptr %i.bna to i64
  %i.bnc = sub i64 %i.bnb, %i.as
  %i.bnd = trunc i64 %i.bnc to i32
  %.val8.i536 = load i64, ptr %i.bna, align 1, !tbaa !24
  %i.bne = mul i64 %.val8.i536, -3523014627193167104
  %i.bnf = lshr i64 %i.bne, %i.ayo
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bnf
  store i32 %i.bnd, ptr %i.bng, align 4, !tbaa !25
  br label %bb.ij

bb.ij:                                            ; preds = %bb.io, %bb.ii
  %i.bnh = phi ptr [ %i.bmr, %bb.ii ], [ %i.boi, %bb.io ]
  %.5290.i195.i537 = phi i32 [ %.4289.i.ph.i532, %bb.ii ], [ %.5296.i194.i538, %bb.io ] ; 5 uses
  %.5296.i194.i538 = phi i32 [ %.4295.i.ph.i531, %bb.ii ], [ %.5290.i195.i537, %bb.io ] ; 4 uses
  %.7318.i193.i539 = phi ptr [ %i.bms, %bb.ii ], [ %i.bon, %bb.io ] ; 9 uses
  %i.bni = ptrtoint ptr %.7318.i193.i539 to i64
  %i.bnj = sub i64 %i.bni, %i.as
  %i.bnk = trunc i64 %i.bnj to i32                ; 2 uses
  %i.bnl = sub i32 %i.bnk, %.5290.i195.i537       ; 3 uses
  %i.bnm = icmp ult i32 %i.bnl, %i.n              ; 2 uses
  %i.bnn = zext i32 %i.bnl to i64
  %.v.i540 = select i1 %i.bnm, ptr %i.azc, ptr %i.k
  %i.bno = getelementptr inbounds nuw i8, ptr %.v.i540, i64 %i.bnn ; 2 uses
  %i.bnp = sub i32 %i.bnl, %i.n
  %12 = icmp ugt i32 %i.bnp, -4
  br i1 %12, label %.thread122.i543, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %.val4.i541 = load i32, ptr %i.bno, align 1, !tbaa !25
  %.7318.i.val.i542 = load i32, ptr %.7318.i193.i539, align 1, !tbaa !25
  %i.bnq = icmp eq i32 %.val4.i541, %.7318.i.val.i542
  br i1 %i.bnq, label %bb.il, label %.thread122.i543

bb.il:                                            ; preds = %bb.ik
  %i.bnr = select i1 %i.bnm, ptr %i.af, ptr %i.q
  %i.bns = getelementptr inbounds nuw i8, ptr %.7318.i193.i539, i64 4
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bno, i64 4
  %i.bnu = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.bns, ptr noundef nonnull %i.bnt, ptr noundef %i.q, ptr noundef %i.bnr, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i549 = icmp ugt ptr %.7318.i193.i539, %i.ayr
  br i1 %.not.i.i.i549, label %ZSTD_storeSeq.exit.i.i552, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bnv = load ptr, ptr %i.ays, align 8, !tbaa !38
  %.1302.i.val.i550 = load <2 x i64>, ptr %.7318.i193.i539, align 1, !tbaa !33
  store <2 x i64> %.1302.i.val.i550, ptr %i.bnv, align 1, !tbaa !33
  %.pre245.i551 = load ptr, ptr %i.ayv, align 8, !tbaa !39
  br label %ZSTD_storeSeq.exit.i.i552

ZSTD_storeSeq.exit.i.i552:                        ; preds = %bb.im, %bb.il
  %i.bnw = phi ptr [ %i.bnh, %bb.il ], [ %.pre245.i551, %bb.im ] ; 5 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 4
  store i16 0, ptr %i.bnx, align 4, !tbaa !49
  store i32 1, ptr %i.bnw, align 4, !tbaa !50
  %i.bny = add i64 %i.bnu, 1                      ; 2 uses
  %i.bnz = icmp ugt i64 %i.bny, 65535
  br i1 %i.bnz, label %bb.in, label %bb.io, !prof !51

bb.in:                                            ; preds = %ZSTD_storeSeq.exit.i.i552
  store i32 2, ptr %i.ayu, align 8, !tbaa !45
  %i.boa = load ptr, ptr %1, align 8, !tbaa !46
  %i.bob = ptrtoint ptr %i.bnw to i64
  %i.boc = ptrtoint ptr %i.boa to i64
  %i.bod = sub i64 %i.bob, %i.boc
  %i.boe = lshr exact i64 %i.bod, 3
  %i.bof = trunc i64 %i.boe to i32
  store i32 %i.bof, ptr %i.ayw, align 4, !tbaa !47
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %ZSTD_storeSeq.exit.i.i552
  %i.bog = trunc i64 %i.bny to i16
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bnw, i64 6
  store i16 %i.bog, ptr %i.boh, align 2, !tbaa !52
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bnw, i64 8 ; 2 uses
  store ptr %i.boi, ptr %i.ayv, align 8, !tbaa !39
  %.7318.i.val7.i553 = load i64, ptr %.7318.i193.i539, align 1, !tbaa !24
  %i.boj = mul i64 %.7318.i.val7.i553, -3523014627193167104
  %i.bok = lshr i64 %i.boj, %i.ayo
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bok
  store i32 %i.bnk, ptr %i.bol, align 4, !tbaa !25
  %i.bom = getelementptr i8, ptr %.7318.i193.i539, i64 %i.bnu
  %i.bon = getelementptr i8, ptr %i.bom, i64 4    ; 3 uses
  %.not339.i.i554 = icmp ugt ptr %i.bon, %i.r
  br i1 %.not339.i.i554, label %.thread122.i543, label %bb.ij

.thread122.i543:                                  ; preds = %bb.io, %bb.ik, %bb.ij, %ZSTD_storeSeqOnly.exit.i.i527
  %.9320.i.i544 = phi ptr [ %i.bms, %ZSTD_storeSeqOnly.exit.i.i527 ], [ %.7318.i193.i539, %bb.ij ], [ %.7318.i193.i539, %bb.ik ], [ %i.bon, %bb.io ] ; 4 uses
  %.7298.i.i545 = phi i32 [ %.4295.i.ph.i531, %ZSTD_storeSeqOnly.exit.i.i527 ], [ %.5296.i194.i538, %bb.ij ], [ %.5296.i194.i538, %bb.ik ], [ %.5290.i195.i537, %bb.io ] ; 2 uses
  %.7.i.i546 = phi i32 [ %.4289.i.ph.i532, %ZSTD_storeSeqOnly.exit.i.i527 ], [ %.5290.i195.i537, %bb.ij ], [ %.5290.i195.i537, %bb.ik ], [ %.5296.i194.i538, %bb.io ] ; 2 uses
  %.0307.i.i547 = getelementptr inbounds nuw i8, ptr %.9320.i.i544, i64 %i.l ; 2 uses
  %.not332.i.i548 = icmp ugt ptr %.0307.i.i547, %i.r
  br i1 %.not332.i.i548, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.gh

ZSTD_compressBlock_fast_dictMatchState_4_0.exit:  ; preds = %.thread122.i324, %ZSTD_match4Found_cmov.exit.thread.i280, %.thread122.i105, %ZSTD_match4Found_cmov.exit.thread.i61, %.thread122.i543, %ZSTD_match4Found_cmov.exit.thread.i499, %.thread122.i, %ZSTD_match4Found_cmov.exit.thread.i, %.loopexit.i465, %.loopexit.i246, %.loopexit.i28, %.loopexit.i
  %.0291.i171.i505.sink = phi i32 [ %.7298.i.i545, %.thread122.i543 ], [ %.7298.i.i, %.thread122.i ], [ %.0291.i200.i34, %ZSTD_match4Found_cmov.exit.thread.i61 ], [ %.0291.i200.i252, %ZSTD_match4Found_cmov.exit.thread.i280 ], [ %i.s, %.loopexit.i ], [ %.0291.i200.i, %ZSTD_match4Found_cmov.exit.thread.i ], [ %i.s, %.loopexit.i28 ], [ %.0291.i200.i471, %ZSTD_match4Found_cmov.exit.thread.i499 ], [ %i.s, %.loopexit.i246 ], [ %.7298.i.i107, %.thread122.i105 ], [ %i.s, %.loopexit.i465 ], [ %.7298.i.i326, %.thread122.i324 ]
  %.0285.i169.i506.sink = phi i32 [ %.7.i.i546, %.thread122.i543 ], [ %.7.i.i, %.thread122.i ], [ %.0285.i201.i33, %ZSTD_match4Found_cmov.exit.thread.i61 ], [ %.0285.i201.i251, %ZSTD_match4Found_cmov.exit.thread.i280 ], [ %i.u, %.loopexit.i ], [ %.0285.i201.i, %ZSTD_match4Found_cmov.exit.thread.i ], [ %i.u, %.loopexit.i28 ], [ %.0285.i201.i470, %ZSTD_match4Found_cmov.exit.thread.i499 ], [ %i.u, %.loopexit.i246 ], [ %.7.i.i108, %.thread122.i105 ], [ %i.u, %.loopexit.i465 ], [ %.7.i.i327, %.thread122.i324 ]
  %.0301.i173.i504.sink = phi ptr [ %.9320.i.i544, %.thread122.i543 ], [ %.9320.i.i, %.thread122.i ], [ %.0301.i199.i35, %ZSTD_match4Found_cmov.exit.thread.i61 ], [ %.0301.i199.i253, %ZSTD_match4Found_cmov.exit.thread.i280 ], [ %3, %.loopexit.i ], [ %.0301.i199.i, %ZSTD_match4Found_cmov.exit.thread.i ], [ %3, %.loopexit.i28 ], [ %.0301.i199.i472, %ZSTD_match4Found_cmov.exit.thread.i499 ], [ %3, %.loopexit.i246 ], [ %.9320.i.i106, %.thread122.i105 ], [ %3, %.loopexit.i465 ], [ %.9320.i.i325, %.thread122.i324 ]
  store i32 %.0291.i171.i505.sink, ptr %2, align 4, !tbaa !25
  store i32 %.0285.i169.i506.sink, ptr %i.t, align 4, !tbaa !25
  %i.boo = ptrtoint ptr %i.q to i64
  %i.bop = ptrtoint ptr %.0301.i173.i504.sink to i64
  %i.boq = sub i64 %i.boo, %i.bop
  ret i64 %i.boq
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_fast_extDict(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %switch.tableidx = add i32 %i.b, -5
  %i.c = icmp ult i32 %switch.tableidx, 3
  %.sink = select i1 %i.c, i32 %i.b, i32 4
  %i.d = tail call fastcc i64 @ZSTD_compressBlock_fast_extDict_generic(ptr noundef nonnull readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %.sink)
  ret i64 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @ZSTD_count_2segments(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = icmp ult ptr %i.d, %2
  %. = select i1 %i.e, ptr %i.d, ptr %2           ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %., i64 -7 ; 2 uses
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %bb.a
  %.val60.i = load i64, ptr %1, align 1, !tbaa !24 ; 2 uses
  %.val.i = load i64, ptr %0, align 1, !tbaa !24  ; 2 uses
  %.not.i = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = xor i64 %.val.i, %.val60.i
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.h, i1 true)
  %i.j = lshr i64 %i.i, 3
  br label %ZSTD_count.exit

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.pn.i = phi ptr [ %.049.i, %bb.d ], [ %0, %bb.b ]
  %.pn67.i = phi ptr [ %.045.i, %bb.d ], [ %1, %bb.b ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.k = icmp ult ptr %.049.i, %i.f
  br i1 %i.k, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !24 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !24 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.d
  %i.l = xor i64 %.049.val.i, %.045.val.i
  %i.m = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.l, i1 true)
  %i.n = lshr i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.n
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %0 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %ZSTD_count.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.a
  %.251.i = phi ptr [ %0, %bb.a ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %1, %bb.a ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %., i64 -3
  %i.t = icmp ult ptr %.251.i, %i.s
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !25
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !25
  %i.u = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit.i
  %.352.i = phi ptr [ %i.v, %bb.f ], [ %.251.i, %bb.e ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.w, %bb.f ], [ %.247.i, %bb.e ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %., i64 -1
  %i.y = icmp ult ptr %.352.i, %i.x
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !35
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !35
  %i.z = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.453.i = phi ptr [ %i.aa, %bb.i ], [ %.352.i, %bb.h ], [ %.352.i, %bb.g ] ; 4 uses
  %.4.i = phi ptr [ %i.ab, %bb.i ], [ %.348.i, %bb.h ], [ %.348.i, %bb.g ]
  %i.ac = icmp ult ptr %.453.i, %.
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %.4.i, align 1, !tbaa !33
  %i.ae = load i8, ptr %.453.i, align 1, !tbaa !33
  %i.af = icmp eq i8 %i.ad, %i.ae
  %spec.select.idx.i = zext i1 %i.af to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i = phi ptr [ %.453.i, %bb.j ], [ %spec.select.i, %bb.k ]
  %i.ag = ptrtoint ptr %.5.i to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.c, %.thread63.i, %bb.l
  %.3.i = phi i64 [ %i.r, %.thread63.i ], [ %i.ai, %bb.l ], [ %i.j, %bb.c ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.3.i
  %.not = icmp eq ptr %i.aj, %3
  br i1 %.not, label %bb.m, label %bb.y

bb.m:                                             ; preds = %ZSTD_count.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.3.i ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  br i1 %i.am, label %bb.n, label %.loopexit.i22

bb.n:                                             ; preds = %bb.m
  %.val60.i37 = load i64, ptr %4, align 1, !tbaa !24 ; 2 uses
  %.val.i38 = load i64, ptr %i.ak, align 1, !tbaa !24 ; 2 uses
  %.not.i39 = icmp eq i64 %.val60.i37, %.val.i38
  br i1 %.not.i39, label %.preheader.i40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = xor i64 %.val.i38, %.val60.i37
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.an, i1 true)
  %i.ap = lshr i64 %i.ao, 3
  br label %ZSTD_count.exit49

.preheader.i40:                                   ; preds = %bb.n, %bb.p
  %.pn.i41 = phi ptr [ %.049.i44, %bb.p ], [ %i.ak, %bb.n ]
  %.pn67.i42 = phi ptr [ %.045.i43, %bb.p ], [ %4, %bb.n ]
  %.045.i43 = getelementptr inbounds nuw i8, ptr %.pn67.i42, i64 8 ; 3 uses
  %.049.i44 = getelementptr inbounds nuw i8, ptr %.pn.i41, i64 8 ; 5 uses
  %i.aq = icmp ult ptr %.049.i44, %i.al
  br i1 %i.aq, label %bb.p, label %.loopexit.i22

bb.p:                                             ; preds = %.preheader.i40
  %.045.val.i45 = load i64, ptr %.045.i43, align 1, !tbaa !24 ; 2 uses
  %.049.val.i46 = load i64, ptr %.049.i44, align 1, !tbaa !24 ; 2 uses
  %.not59.i47 = icmp eq i64 %.045.val.i45, %.049.val.i46
  br i1 %.not59.i47, label %.preheader.i40, label %.thread63.i48

.thread63.i48:                                    ; preds = %bb.p
  %i.ar = xor i64 %.049.val.i46, %.045.val.i45
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ar, i1 true)
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %.049.i44, i64 %i.at
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.ak to i64
  %i.ax = sub i64 %i.av, %i.aw
  br label %ZSTD_count.exit49

.loopexit.i22:                                    ; preds = %.preheader.i40, %bb.m
  %.251.i23 = phi ptr [ %i.ak, %bb.m ], [ %.049.i44, %.preheader.i40 ] ; 5 uses
  %.247.i24 = phi ptr [ %4, %bb.m ], [ %.045.i43, %.preheader.i40 ] ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %2, i64 -3
  %i.az = icmp ult ptr %.251.i23, %i.ay
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i22
  %.247.val.i35 = load i32, ptr %.247.i24, align 1, !tbaa !25
  %.251.val.i36 = load i32, ptr %.251.i23, align 1, !tbaa !25
  %i.ba = icmp eq i32 %.247.val.i35, %.251.val.i36
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.251.i23, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.247.i24, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i22
  %.352.i25 = phi ptr [ %i.bb, %bb.r ], [ %.251.i23, %bb.q ], [ %.251.i23, %.loopexit.i22 ] ; 5 uses
  %.348.i26 = phi ptr [ %i.bc, %bb.r ], [ %.247.i24, %bb.q ], [ %.247.i24, %.loopexit.i22 ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %2, i64 -1
  %i.be = icmp ult ptr %.352.i25, %i.bd
  br i1 %i.be, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i33 = load i16, ptr %.348.i26, align 1, !tbaa !35
  %.352.val.i34 = load i16, ptr %.352.i25, align 1, !tbaa !35
  %i.bf = icmp eq i16 %.348.val.i33, %.352.val.i34
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %.352.i25, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.348.i26, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i27 = phi ptr [ %i.bg, %bb.u ], [ %.352.i25, %bb.t ], [ %.352.i25, %bb.s ] ; 4 uses
  %.4.i28 = phi ptr [ %i.bh, %bb.u ], [ %.348.i26, %bb.t ], [ %.348.i26, %bb.s ]
  %i.bi = icmp ult ptr %.453.i27, %2
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = load i8, ptr %.4.i28, align 1, !tbaa !33
  %i.bk = load i8, ptr %.453.i27, align 1, !tbaa !33
  %i.bl = icmp eq i8 %i.bj, %i.bk
  %spec.select.idx.i31 = zext i1 %i.bl to i64
  %spec.select.i32 = getelementptr inbounds nuw i8, ptr %.453.i27, i64 %spec.select.idx.i31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i29 = phi ptr [ %.453.i27, %bb.v ], [ %spec.select.i32, %bb.w ]
  %i.bm = ptrtoint ptr %.5.i29 to i64
  %i.bn = ptrtoint ptr %i.ak to i64
  %i.bo = sub i64 %i.bm, %i.bn
  br label %ZSTD_count.exit49

ZSTD_count.exit49:                                ; preds = %bb.o, %.thread63.i48, %bb.x
  %.3.i30 = phi i64 [ %i.ax, %.thread63.i48 ], [ %i.bo, %bb.x ], [ %i.ap, %bb.o ]
  %i.bp = add i64 %.3.i30, %.3.i
  br label %bb.y

bb.y:                                             ; preds = %ZSTD_count.exit, %ZSTD_count.exit49
  %.0 = phi i64 [ %i.bp, %ZSTD_count.exit49 ], [ %.3.i, %ZSTD_count.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_fast_extDict_generic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4, 8) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.i = add i32 %i.h, 1
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !152  ; 7 uses
  %i.o = ptrtoint ptr %3 to i64
  %i.p = ptrtoint ptr %i.l to i64                 ; 7 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, %4
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !153
  %i.u = getelementptr i8, ptr %0, i64 28
  %.val426.a = load i32, ptr %i.u, align 4, !tbaa !154 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 40
  %.val427 = load i32, ptr %i.v, align 8, !tbaa !30
  %i.w = shl nuw i32 1, %i.t                      ; 2 uses
  %i.x = sub i32 %i.s, %.val426.a
  %i.y = icmp ugt i32 %i.x, %i.w
  %i.z = sub i32 %i.s, %i.w
  %.not.i428.a = icmp eq i32 %.val427, 0
  %i.aa = select i1 %.not.i428.a, i1 %i.y, i1 false
  %i.ab = select i1 %i.aa, i32 %i.z, i32 %.val426.a ; 6 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !29 ; 3 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.af, i32 %i.ab) ; 8 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ah ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 8 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not = icmp ult i32 %i.ab, %i.af
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = tail call i64 @ZSTD_compressBlock_fast(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !25 ; 3 uses
  %i.ap = load i32, ptr %2, align 4, !tbaa !25    ; 3 uses
  %i.aq = trunc i64 %i.q to i32
  %i.ar = sub i32 %i.aq, %i.ab                    ; 2 uses
  %.not356 = icmp ult i32 %i.ao, %i.ar            ; 2 uses
  %spec.select = select i1 %.not356, i32 %i.ao, i32 0 ; 2 uses
  %spec.select368 = select i1 %.not356, i32 0, i32 %i.ao
  %.not357 = icmp ult i32 %i.ap, %i.ar            ; 2 uses
  %.0334 = select i1 %.not357, i32 %i.ap, i32 0   ; 2 uses
  %.0327 = select i1 %.not357, i32 0, i32 %i.ap   ; 3 uses
  %i.as = add nuw nsw i64 %i.j, 1
  %i.at = add nsw i64 %4, -8
  %.not358567 = icmp slt i64 %i.as, %i.at
  br i1 %.not358567, label %.lr.ph571, label %.loopexit

.lr.ph571:                                        ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %i.j ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = sub i32 32, %i.e                        ; 7 uses
  %i.ax = sub i32 64, %i.e
  %i.ay = zext nneg i32 %i.ax to i64              ; 21 uses
  %i.az = getelementptr inbounds i8, ptr %i.ak, i64 -32 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph571, %.thread
  %i.bf = phi ptr [ %i.av, %.lr.ph571 ], [ %i.mp, %.thread ]
  %i.bg = phi ptr [ %i.au, %.lr.ph571 ], [ %i.mo, %.thread ]
  %.1329570 = phi i32 [ %spec.select, %.lr.ph571 ], [ %.5333, %.thread ] ; 2 uses
  %.1335569 = phi i32 [ %.0334, %.lr.ph571 ], [ %.5339, %.thread ] ; 7 uses
  %.0340568 = phi ptr [ %3, %.lr.ph571 ], [ %.3343, %.thread ] ; 17 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0340568, i64 1 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0340568, i64 128
  switch i32 %5, label %.unreachabledefault [
    i32 7, label %ZSTD_hashPtr.exit381.thread455
    i32 5, label %ZSTD_hashPtr.exit381.thread449
    i32 6, label %ZSTD_hashPtr.exit381.thread452
    i32 4, label %ZSTD_hashPtr.exit381
  ]

ZSTD_hashPtr.exit381.thread449:                   ; preds = %bb.d
  %.0321.val396 = load i64, ptr %.0340568, align 1, !tbaa !24
  %i.bj = mul i64 %.0321.val396, -3523014627271114752
  %i.bk = lshr i64 %i.bj, %i.ay
  %.val397 = load i64, ptr %i.bh, align 1, !tbaa !24
  %i.bl = mul i64 %.val397, -3523014627271114752
  %i.bm = lshr i64 %i.bl, %i.ay
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit381.thread452:                   ; preds = %bb.d
  %.0321.val403 = load i64, ptr %.0340568, align 1, !tbaa !24
  %i.bn = mul i64 %.0321.val403, -3523014627193847808
  %i.bo = lshr i64 %i.bn, %i.ay
  %.val404 = load i64, ptr %i.bh, align 1, !tbaa !24
  %i.bp = mul i64 %.val404, -3523014627193847808
  %i.bq = lshr i64 %i.bp, %i.ay
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit381.thread455:                   ; preds = %bb.d
  %.0321.val410 = load i64, ptr %.0340568, align 1, !tbaa !24
  %i.br = mul i64 %.0321.val410, -3523014627193167104
  %i.bs = lshr i64 %i.br, %i.ay
  %.val411 = load i64, ptr %i.bh, align 1, !tbaa !24
  %i.bt = mul i64 %.val411, -3523014627193167104
  %i.bu = lshr i64 %i.bt, %i.ay
  br label %ZSTD_hashPtr.exit379

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.al, %.thread648, %.thread646, %ZSTD_storeSeqOnly.exit384
  unreachable

ZSTD_hashPtr.exit381:                             ; preds = %bb.d
  %.0321.val = load i32, ptr %.0340568, align 1, !tbaa !25
  %i.bv = mul i32 %.0321.val, -1640531535
  %i.bw = lshr i32 %i.bv, %i.aw
  %i.bx = zext i32 %i.bw to i64
  %.val391 = load i32, ptr %i.bh, align 1, !tbaa !25
  %i.by = mul i32 %.val391, -1640531535
  %i.bz = lshr i32 %i.by, %i.aw
  %i.ca = zext i32 %i.bz to i64
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit379:                             ; preds = %ZSTD_hashPtr.exit381, %ZSTD_hashPtr.exit381.thread449, %ZSTD_hashPtr.exit381.thread452, %ZSTD_hashPtr.exit381.thread455
  %.0.i380447 = phi i64 [ %i.bx, %ZSTD_hashPtr.exit381 ], [ %i.bs, %ZSTD_hashPtr.exit381.thread455 ], [ %i.bk, %ZSTD_hashPtr.exit381.thread449 ], [ %i.bo, %ZSTD_hashPtr.exit381.thread452 ] ; 2 uses
  %.0.i378 = phi i64 [ %i.ca, %ZSTD_hashPtr.exit381 ], [ %i.bu, %ZSTD_hashPtr.exit381.thread455 ], [ %i.bm, %ZSTD_hashPtr.exit381.thread449 ], [ %i.bq, %ZSTD_hashPtr.exit381.thread452 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i380447
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25 ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %i.ag
  %i.ce = select i1 %i.cd, ptr %i.n, ptr %i.l
  %i.cf = icmp ne i32 %.1335569, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.v, %ZSTD_hashPtr.exit379
  %.1322 = phi ptr [ %.0340568, %ZSTD_hashPtr.exit379 ], [ %.0317, %bb.v ] ; 3 uses
  %.0318 = phi ptr [ %i.bh, %ZSTD_hashPtr.exit379 ], [ %.0316, %bb.v ] ; 5 uses
  %.0317 = phi ptr [ %i.bg, %ZSTD_hashPtr.exit379 ], [ %i.er, %bb.v ] ; 11 uses
  %.0316 = phi ptr [ %i.bf, %ZSTD_hashPtr.exit379 ], [ %i.es, %bb.v ] ; 8 uses
  %.0313 = phi i64 [ %.0.i380447, %ZSTD_hashPtr.exit379 ], [ %.0.i376, %bb.v ]
  %.0310 = phi i64 [ %.0.i378, %ZSTD_hashPtr.exit379 ], [ %.0.i374, %bb.v ] ; 3 uses
  %.0308 = phi i32 [ %i.cc, %ZSTD_hashPtr.exit379 ], [ %i.ef, %bb.v ] ; 3 uses
  %.0306 = phi ptr [ %i.ce, %ZSTD_hashPtr.exit379 ], [ %i.eh, %bb.v ] ; 2 uses
  %.0287 = phi i64 [ %i.j, %ZSTD_hashPtr.exit379 ], [ %.1288, %bb.v ] ; 4 uses
  %.0285 = phi ptr [ %i.bi, %ZSTD_hashPtr.exit379 ], [ %.1286, %bb.v ] ; 3 uses
  %i.cg = ptrtoint ptr %.0317 to i64
  %i.ch = sub i64 %i.cg, %i.p
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = sub i32 %i.ci, %.1335569                ; 4 uses
  %i.ck = icmp ult i32 %i.cj, %i.ag               ; 2 uses
  %i.cl = select i1 %i.ck, ptr %i.n, ptr %i.l     ; 2 uses
  %i.cm = sub i32 %i.ag, %i.cj
  %i.cn = icmp ugt i32 %i.cm, 3
  %i.co = and i1 %i.cf, %i.cn
  br i1 %i.co, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cp = zext i32 %i.cj to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cp
  %.val390 = load i32, ptr %i.cq, align 1, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.0317.val389 = load i32, ptr %.0317, align 1, !tbaa !25
  %i.cr = xor i32 %.0317.val389, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0283 = phi i32 [ %.val390, %bb.f ], [ %i.cr, %bb.g ]
  %i.cs = ptrtoint ptr %.1322 to i64
  %i.ct = sub i64 %i.cs, %i.p
  %i.cu = trunc i64 %i.ct to i32                  ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0313
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !25
  %.0317.val = load i32, ptr %.0317, align 1, !tbaa !25 ; 2 uses
  %i.cw = icmp eq i32 %.0317.val, %.0283
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = zext i32 %i.cj to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx ; 2 uses
  %i.cz = select i1 %i.ck, ptr %i.aj, ptr %i.ak
  %i.da = getelementptr inbounds i8, ptr %.0317, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !33
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !33
  %i.de = icmp eq i8 %i.db, %i.dd                 ; 2 uses
  %.neg = sext i1 %i.de to i64                    ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.0317, i64 %.neg
  %i.dg = getelementptr inbounds i8, ptr %i.cy, i64 %.neg
  %i.dh = select i1 %i.de, i64 5, i64 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %.not359 = icmp ult i32 %.0308, %i.ab
  br i1 %.not359, label %.thread646, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.di = zext i32 %.0308 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0306, i64 %i.di
  %.val388 = load i32, ptr %i.dj, align 1, !tbaa !25
  %.2323.val.pre = load i32, ptr %.1322, align 1, !tbaa !25
  %i.dk = icmp eq i32 %.2323.val.pre, %.val388
  br i1 %i.dk, label %bb.w, label %.thread646

.thread646:                                       ; preds = %bb.j, %bb.k
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0310 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !25 ; 4 uses
  %i.dn = icmp ult i32 %i.dm, %i.ag
  %i.do = select i1 %i.dn, ptr %i.n, ptr %i.l     ; 2 uses
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.o
    i32 5, label %bb.m
    i32 6, label %bb.n
    i32 4, label %bb.l
  ]

bb.l:                                             ; preds = %.thread646
  %i.dp = mul i32 %.0317.val, -1640531535
  %i.dq = lshr i32 %i.dp, %i.aw
  %i.dr = zext i32 %i.dq to i64
  br label %ZSTD_hashPtr.exit377

bb.m:                                             ; preds = %.thread646
  %.0317.val398 = load i64, ptr %.0317, align 1, !tbaa !24
  %i.ds = mul i64 %.0317.val398, -3523014627271114752
  %i.dt = lshr i64 %i.ds, %i.ay
  br label %ZSTD_hashPtr.exit377

bb.n:                                             ; preds = %.thread646
  %.0317.val405 = load i64, ptr %.0317, align 1, !tbaa !24
  %i.du = mul i64 %.0317.val405, -3523014627193847808
  %i.dv = lshr i64 %i.du, %i.ay
  br label %ZSTD_hashPtr.exit377

bb.o:                                             ; preds = %.thread646
  %.0317.val412 = load i64, ptr %.0317, align 1, !tbaa !24
  %i.dw = mul i64 %.0317.val412, -3523014627193167104
  %i.dx = lshr i64 %i.dw, %i.ay
  br label %ZSTD_hashPtr.exit377

ZSTD_hashPtr.exit377:                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i376 = phi i64 [ %i.dr, %bb.l ], [ %i.dx, %bb.o ], [ %i.dt, %bb.m ], [ %i.dv, %bb.n ] ; 3 uses
  %i.dy = ptrtoint ptr %.0318 to i64
  %i.dz = sub i64 %i.dy, %i.p
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  store i32 %i.ea, ptr %i.dl, align 4, !tbaa !25
  %.not360 = icmp ult i32 %i.dm, %i.ab
  br i1 %.not360, label %.thread648, label %bb.p

bb.p:                                             ; preds = %ZSTD_hashPtr.exit377
  %i.eb = zext i32 %i.dm to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eb
  %.val386 = load i32, ptr %i.ec, align 1, !tbaa !25
  %.0318.val.pre = load i32, ptr %.0318, align 1, !tbaa !25
  %i.ed = icmp eq i32 %.0318.val.pre, %.val386
  br i1 %i.ed, label %bb.w, label %.thread648

.thread648:                                       ; preds = %ZSTD_hashPtr.exit377, %bb.p
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i376
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !25 ; 2 uses
  %i.eg = icmp ult i32 %i.ef, %i.ag
  %i.eh = select i1 %i.eg, ptr %i.n, ptr %i.l
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.t
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 4, label %bb.q
  ]

bb.q:                                             ; preds = %.thread648
  %.0316.val = load i32, ptr %.0316, align 1, !tbaa !25
  %i.ei = mul i32 %.0316.val, -1640531535
  %i.ej = lshr i32 %i.ei, %i.aw
  %i.ek = zext i32 %i.ej to i64
  br label %ZSTD_hashPtr.exit375

bb.r:                                             ; preds = %.thread648
  %.0316.val399 = load i64, ptr %.0316, align 1, !tbaa !24
  %i.el = mul i64 %.0316.val399, -3523014627271114752
  %i.em = lshr i64 %i.el, %i.ay
  br label %ZSTD_hashPtr.exit375

bb.s:                                             ; preds = %.thread648
  %.0316.val406 = load i64, ptr %.0316, align 1, !tbaa !24
  %i.en = mul i64 %.0316.val406, -3523014627193847808
  %i.eo = lshr i64 %i.en, %i.ay
  br label %ZSTD_hashPtr.exit375

bb.t:                                             ; preds = %.thread648
  %.0316.val413 = load i64, ptr %.0316, align 1, !tbaa !24
  %i.ep = mul i64 %.0316.val413, -3523014627193167104
  %i.eq = lshr i64 %i.ep, %i.ay
  br label %ZSTD_hashPtr.exit375

ZSTD_hashPtr.exit375:                             ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i374 = phi i64 [ %i.ek, %bb.q ], [ %i.eq, %bb.t ], [ %i.em, %bb.r ], [ %i.eo, %bb.s ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0317, i64 %.0287 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0316, i64 %.0287 ; 2 uses
  %.not366.a = icmp ult ptr %i.er, %.0285
  br i1 %.not366.a, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ZSTD_hashPtr.exit375
  %i.et = add i64 %.0287, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.0316, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %.0316, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %.0285, i64 128
  br label %bb.v

bb.v:                                             ; preds = %ZSTD_hashPtr.exit375, %bb.u
  %.1288 = phi i64 [ %i.et, %bb.u ], [ %.0287, %ZSTD_hashPtr.exit375 ]
  %.1286 = phi ptr [ %i.ew, %bb.u ], [ %.0285, %ZSTD_hashPtr.exit375 ]
  %i.ex = icmp ult ptr %i.es, %i.al
  br i1 %i.ex, label %bb.e, label %.loopexit, !llvm.loop !146

.loopexit:                                        ; preds = %.thread, %bb.v, %bb.c
  %.0340541 = phi ptr [ %.0340568, %bb.v ], [ %3, %bb.c ], [ %.3343, %.thread ]
  %.1335534 = phi i32 [ %.1335569, %bb.v ], [ %.0334, %bb.c ], [ %.5339, %.thread ] ; 2 uses
  %.1329527 = phi i32 [ %.1329570, %bb.v ], [ %spec.select, %bb.c ], [ %.5333, %.thread ] ; 2 uses
  %i.ey = icmp ne i32 %.0327, 0
  %i.ez = icmp ne i32 %.1335534, 0                ; 2 uses
  %or.cond = select i1 %i.ey, i1 %i.ez, i1 false
  %i.fa = select i1 %or.cond, i32 %.0327, i32 %spec.select368
  %i.fb = select i1 %i.ez, i32 %.1335534, i32 %.0327
  store i32 %i.fb, ptr %2, align 4, !tbaa !25
  %.not367 = icmp eq i32 %.1329527, 0
  %i.fc = select i1 %.not367, i32 %i.fa, i32 %.1329527
  store i32 %i.fc, ptr %i.am, align 4, !tbaa !25
  %i.fd = ptrtoint ptr %i.ak to i64
  %i.fe = ptrtoint ptr %.0340541 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  br label %bb.av

bb.w:                                             ; preds = %bb.p, %bb.k
  %.3324 = phi ptr [ %.0318, %bb.p ], [ %.1322, %bb.k ] ; 3 uses
  %.1319 = phi ptr [ %.0317, %bb.p ], [ %.0318, %bb.k ] ; 3 uses
  %.0314 = phi i32 [ %i.ea, %bb.p ], [ %i.cu, %bb.k ] ; 4 uses
  %.1311 = phi i64 [ %.0.i376, %bb.p ], [ %.0310, %bb.k ] ; 3 uses
  %.1309 = phi i32 [ %i.dm, %bb.p ], [ %.0308, %bb.k ] ; 3 uses
  %.1307 = phi ptr [ %i.do, %bb.p ], [ %.0306, %bb.k ]
  %i.fg = sub i32 %.0314, %.1309                  ; 4 uses
  %i.fh = icmp ugt i32 %i.af, %.1309              ; 2 uses
  %i.fi = select i1 %i.fh, ptr %i.ad, ptr %i.ai   ; 2 uses
  %i.fj = select i1 %i.fh, ptr %i.aj, ptr %i.ak   ; 3 uses
  %i.fk = zext i32 %.1309 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.1307, i64 %i.fk ; 3 uses
  %i.fm = add i32 %i.fg, 3                        ; 3 uses
  %i.fn = icmp ugt ptr %.3324, %.0340568
  %i.fo = icmp ugt ptr %i.fl, %i.fi
  %i.fp = and i1 %i.fn, %i.fo
  br i1 %i.fp, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %.3296544 = phi i64 [ %i.fv, %bb.x ], [ 4, %bb.w ] ; 2 uses
  %.3300543 = phi ptr [ %i.fs, %bb.x ], [ %i.fl, %bb.w ] ; 2 uses
  %.4325542 = phi ptr [ %i.fq, %bb.x ], [ %.3324, %bb.w ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.4325542, i64 -1 ; 4 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !33
  %i.fs = getelementptr inbounds i8, ptr %.3300543, i64 -1 ; 4 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !33
  %i.fu = icmp eq i8 %i.fr, %i.ft
  br i1 %i.fu, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.lr.ph
  %i.fv = add i64 %.3296544, 1                    ; 2 uses
  %i.fw = icmp ugt ptr %i.fq, %.0340568
  %i.fx = icmp ugt ptr %i.fs, %i.fi
  %i.fy = and i1 %i.fw, %i.fx
  br i1 %i.fy, label %.lr.ph, label %.critedge, !llvm.loop !147

.critedge:                                        ; preds = %bb.x, %.lr.ph, %bb.w, %bb.i
  %.2336 = phi i32 [ %.1335569, %bb.i ], [ %i.fg, %bb.w ], [ %i.fg, %.lr.ph ], [ %i.fg, %bb.x ] ; 2 uses
  %.2330 = phi i32 [ %.1329570, %bb.i ], [ %.1335569, %bb.w ], [ %.1335569, %.lr.ph ], [ %.1335569, %bb.x ] ; 2 uses
  %.5 = phi ptr [ %i.df, %bb.i ], [ %.3324, %bb.w ], [ %i.fq, %bb.x ], [ %.4325542, %.lr.ph ] ; 6 uses
  %.2320 = phi ptr [ %.0318, %bb.i ], [ %.1319, %bb.w ], [ %.1319, %.lr.ph ], [ %.1319, %bb.x ] ; 2 uses
  %.1315 = phi i32 [ %i.cu, %bb.i ], [ %.0314, %bb.w ], [ %.0314, %.lr.ph ], [ %.0314, %bb.x ] ; 2 uses
  %.2312 = phi i64 [ %.0310, %bb.i ], [ %.1311, %bb.w ], [ %.1311, %.lr.ph ], [ %.1311, %bb.x ]
  %.3305 = phi i32 [ 1, %bb.i ], [ %i.fm, %bb.w ], [ %i.fm, %.lr.ph ], [ %i.fm, %bb.x ]
  %.4301 = phi ptr [ %i.dg, %bb.i ], [ %i.fl, %bb.w ], [ %i.fs, %bb.x ], [ %.3300543, %.lr.ph ]
  %.4 = phi i64 [ %i.dh, %bb.i ], [ 4, %bb.w ], [ %i.fv, %bb.x ], [ %.3296544, %.lr.ph ] ; 3 uses
  %.3292 = phi ptr [ %i.cz, %bb.i ], [ %i.fj, %bb.w ], [ %i.fj, %.lr.ph ], [ %i.fj, %bb.x ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.5, i64 %.4
  %i.ga = getelementptr inbounds nuw i8, ptr %.4301, i64 %.4
  %i.gb = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef %i.fz, ptr noundef %i.ga, ptr noundef %i.ak, ptr noundef %.3292, ptr noundef nonnull %i.ai)
  %i.gc = add i64 %i.gb, %.4                      ; 2 uses
  %i.gd = ptrtoint ptr %.5 to i64                 ; 4 uses
  %i.ge = ptrtoint ptr %.0340568 to i64           ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 7 uses
  %.not.i382 = icmp ugt ptr %.5, %i.az
  %i.gg = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i382, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.critedge
  %.0340.val = load <2 x i64>, ptr %.0340568, align 1, !tbaa !33
  store <2 x i64> %.0340.val, ptr %i.gg, align 1, !tbaa !33
  %i.gh = icmp ugt i64 %i.gf, 16
  %i.gi = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 4 uses
  br i1 %i.gh, label %bb.z, label %ZSTD_storeSeq.exit383.thread

ZSTD_storeSeq.exit383.thread:                     ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gf
  store ptr %i.gj, ptr %i.ba, align 8, !tbaa !38
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !39
  br label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %.0340568, i64 16 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gi, i64 %i.gf
  %.val425 = load <2 x i64>, ptr %i.gl, align 1, !tbaa !33
  store <2 x i64> %.val425, ptr %i.gk, align 1, !tbaa !33
  %i.gn = icmp slt i64 %i.gf, 33
  br i1 %i.gn, label %ZSTD_storeSeq.exit383, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i = phi ptr [ %i.gl, %bb.aa ], [ %i.gq, %bb.ab ] ; 2 uses
  %.1.i = phi ptr [ %i.go, %bb.aa ], [ %i.gr, %bb.ab ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !33
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !33
  %i.gp = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val424 = load <2 x i64>, ptr %i.gq, align 1, !tbaa !33
  store <2 x i64> %.val424, ptr %i.gp, align 1, !tbaa !33
  %i.gr = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.gs = icmp ult ptr %i.gr, %i.gm
  br i1 %i.gs, label %bb.ab, label %ZSTD_storeSeq.exit383, !llvm.loop !0

bb.ac:                                            ; preds = %.critedge
  %.not.i429 = icmp ugt ptr %.0340568, %i.az
  br i1 %.not.i429, label %ZSTD_wildcopy.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gt = sub i64 %i.bb, %i.ge                    ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gg, i64 %i.gt ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0340568, align 1, !tbaa !33
  store <2 x i64> %.val19.i, ptr %i.gg, align 1, !tbaa !33
  %i.gv = icmp slt i64 %i.gt, 17
  br i1 %i.gv, label %ZSTD_wildcopy.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i = phi ptr [ %.0340568, %bb.ae ], [ %i.gy, %bb.af ] ; 2 uses
  %.1.i.i = phi ptr [ %i.gw, %bb.ae ], [ %i.gz, %bb.af ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !33
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.gy, align 1, !tbaa !33
  store <2 x i64> %.val.i, ptr %i.gx, align 1, !tbaa !33
  %i.gz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.ha = icmp ult ptr %i.gz, %i.gu
  br i1 %i.ha, label %bb.af, label %ZSTD_wildcopy.exit.i, !llvm.loop !0

ZSTD_wildcopy.exit.i:                             ; preds = %bb.af, %bb.ad, %bb.ac
  %.014.i = phi ptr [ %.0340568, %bb.ac ], [ %i.az, %bb.ad ], [ %i.az, %bb.af ] ; 7 uses
  %.0.i430 = phi ptr [ %i.gg, %bb.ac ], [ %i.gu, %bb.ad ], [ %i.gu, %bb.af ] ; 6 uses
  %i.hb = icmp ult ptr %.014.i, %.5
  br i1 %i.hb, label %iter.check, label %ZSTD_storeSeq.exit383

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i45 = ptrtoaddr ptr %.014.i to i64        ; 2 uses
  %.0.i43044 = ptrtoaddr ptr %.0.i430 to i64
  %i.hc = sub i64 %i.gd, %.014.i45                ; 7 uses
  %min.iters.check = icmp ult i64 %i.hc, 8
  %i.hd = sub i64 %.014.i45, %.0.i43044
  %diff.check = icmp ugt i64 %i.hd, -32
  %or.cond59 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond59, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.hc, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.he = and i64 %i.hc, 24
  %n.vec = and i64 %i.hc, -32                     ; 5 uses
  %i.hf = getelementptr i8, ptr %.0.i430, i64 %n.vec
  %i.hg = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i430, i64 %index ; 2 uses
  %next.gep47 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.hh = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep47, align 1, !tbaa !33
  %wide.load48 = load <16 x i8>, ptr %i.hh, align 1, !tbaa !33
  %i.hi = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !33
  store <16 x i8> %wide.load48, ptr %i.hi, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hc, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit383, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.he, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.hc, -8                    ; 4 uses
  %i.hk = getelementptr i8, ptr %.0.i430, i64 %n.vec50
  %i.hl = getelementptr i8, ptr %.014.i, i64 %n.vec50
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %next.gep52 = getelementptr i8, ptr %.0.i430, i64 %index51
  %next.gep53 = getelementptr i8, ptr %.014.i, i64 %index51
  %wide.load54 = load <8 x i8>, ptr %next.gep53, align 1, !tbaa !33
  store <8 x i8> %wide.load54, ptr %next.gep52, align 1, !tbaa !33
  %index.next55 = add nuw i64 %index51, 8         ; 2 uses
  %i.hm = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.hm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !149

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.hc, %n.vec50
  br i1 %cmp.n56, label %ZSTD_storeSeq.exit383, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i430, %iter.check ], [ %i.hf, %vec.epilog.iter.check ], [ %i.hk, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.hg, %vec.epilog.iter.check ], [ %i.hl, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i.ph103 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.hn = sub i64 %i.gd, %.11520.i.ph103
  %xtraiter = and i64 %i.hn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.hq, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ho, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.hp = load i8, ptr %.11520.i.prol, align 1, !tbaa !33
  %i.hq = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.hp, ptr %.121.i.prol, align 1, !tbaa !33
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !150

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.hq, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.ho, %.lr.ph.i.prol ]
  %i.hr = sub i64 %.11520.i.ph103, %i.gd
  %i.hs = icmp ugt i64 %i.hr, -8
  br i1 %i.hs, label %ZSTD_storeSeq.exit383, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.iq, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.io, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.hu = load i8, ptr %.11520.i, align 1, !tbaa !33
  %i.hv = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.hu, ptr %.121.i, align 1, !tbaa !33
  %i.hw = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !33
  %i.hy = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !33
  %i.hz = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.ia = load i8, ptr %i.hw, align 1, !tbaa !33
  %i.ib = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !33
  %i.ic = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.id = load i8, ptr %i.hz, align 1, !tbaa !33
  %i.ie = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !33
  %i.if = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.ig = load i8, ptr %i.ic, align 1, !tbaa !33
  %i.ih = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !33
  %i.ii = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !33
  %i.ik = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !33
  %i.il = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !33
  %i.in = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !33
  %i.io = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.ip = load i8, ptr %i.il, align 1, !tbaa !33
  %i.iq = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !33
  %exitcond.not.i.7 = icmp eq ptr %i.io, %.5
  br i1 %exitcond.not.i.7, label %ZSTD_storeSeq.exit383, label %.lr.ph.i, !llvm.loop !151

ZSTD_storeSeq.exit383:                            ; preds = %bb.ab, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i, %bb.z
  %i.ir = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.gf
  store ptr %i.is, ptr %i.ba, align 8, !tbaa !38
  %i.it = icmp ugt i64 %i.gf, 65535
  %.pre628.a = load ptr, ptr %i.bd, align 8, !tbaa !39 ; 3 uses
  br i1 %i.it, label %bb.ag, label %bb.ah, !prof !44

bb.ag:                                            ; preds = %ZSTD_storeSeq.exit383
  store i32 1, ptr %i.bc, align 8, !tbaa !45
  %i.iu = load ptr, ptr %1, align 8, !tbaa !46
  %i.iv = ptrtoint ptr %.pre628.a to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = lshr exact i64 %i.ix, 3
  %i.iz = trunc i64 %i.iy to i32
  store i32 %i.iz, ptr %i.be, align 4, !tbaa !47
  br label %bb.ah

bb.ah:                                            ; preds = %ZSTD_storeSeq.exit383.thread, %bb.ag, %ZSTD_storeSeq.exit383
  %i.ja = phi ptr [ %.pre, %ZSTD_storeSeq.exit383.thread ], [ %.pre628.a, %bb.ag ], [ %.pre628.a, %ZSTD_storeSeq.exit383 ] ; 5 uses
  %i.jb = trunc i64 %i.gf to i16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store i16 %i.jb, ptr %i.jc, align 4, !tbaa !49
  store i32 %.3305, ptr %i.ja, align 4, !tbaa !50
  %i.jd = add i64 %i.gc, -3                       ; 2 uses
  %i.je = icmp ugt i64 %i.jd, 65535
  br i1 %i.je, label %bb.ai, label %ZSTD_storeSeqOnly.exit, !prof !51

bb.ai:                                            ; preds = %bb.ah
  store i32 2, ptr %i.bc, align 8, !tbaa !45
  %i.jf = load ptr, ptr %1, align 8, !tbaa !46
  %i.jg = ptrtoint ptr %i.ja to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = lshr exact i64 %i.ji, 3
  %i.jk = trunc i64 %i.jj to i32
  store i32 %i.jk, ptr %i.be, align 4, !tbaa !47
  br label %ZSTD_storeSeqOnly.exit

ZSTD_storeSeqOnly.exit:                           ; preds = %bb.ah, %bb.ai
  %i.jl = trunc i64 %i.jd to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 6
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !52
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  store ptr %i.jn, ptr %i.bd, align 8, !tbaa !39
  %i.jo = getelementptr inbounds nuw i8, ptr %.5, i64 %i.gc ; 8 uses
  %i.jp = icmp ult ptr %.2320, %i.jo
  br i1 %i.jp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %ZSTD_storeSeqOnly.exit
  %i.jq = ptrtoint ptr %.2320 to i64
  %i.jr = sub i64 %i.jq, %i.p
  %i.js = trunc i64 %i.jr to i32
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.2312
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %ZSTD_storeSeqOnly.exit
  %.not361 = icmp ugt ptr %i.jo, %i.al
  br i1 %.not361, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ju = add i32 %.1315, 2                       ; 4 uses
  %i.jv = zext i32 %.1315 to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 4 uses
  switch i32 %5, label %default.unreachable [
    i32 7, label %ZSTD_hashPtr.exit373.thread474
    i32 5, label %ZSTD_hashPtr.exit373.thread470
    i32 6, label %ZSTD_hashPtr.exit373.thread472
    i32 4, label %ZSTD_hashPtr.exit373
  ]

ZSTD_hashPtr.exit373.thread470:                   ; preds = %bb.al
  %.val400.a = load i64, ptr %i.jx, align 1, !tbaa !24
  %i.jy = mul i64 %.val400.a, -3523014627271114752
  %i.jz = lshr i64 %i.jy, %i.ay
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jz
  store i32 %i.ju, ptr %i.ka, align 4, !tbaa !25
  %i.kb = getelementptr inbounds i8, ptr %i.jo, i64 -2 ; 2 uses
  %.val401 = load i64, ptr %i.kb, align 1, !tbaa !24
  %i.kc = mul i64 %.val401, -3523014627271114752
  %i.kd = lshr i64 %i.kc, %i.ay
  br label %.lr.ph555.preheader

ZSTD_hashPtr.exit373.thread472:                   ; preds = %bb.al
  %.val407.a = load i64, ptr %i.jx, align 1, !tbaa !24
  %i.ke = mul i64 %.val407.a, -3523014627193847808
  %i.kf = lshr i64 %i.ke, %i.ay
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kf
  store i32 %i.ju, ptr %i.kg, align 4, !tbaa !25
  %i.kh = getelementptr inbounds i8, ptr %i.jo, i64 -2 ; 2 uses
  %.val408 = load i64, ptr %i.kh, align 1, !tbaa !24
  %i.ki = mul i64 %.val408, -3523014627193847808
  %i.kj = lshr i64 %i.ki, %i.ay
  br label %.lr.ph555.preheader

ZSTD_hashPtr.exit373.thread474:                   ; preds = %bb.al
  %.val414.a = load i64, ptr %i.jx, align 1, !tbaa !24
  %i.kk = mul i64 %.val414.a, -3523014627193167104
  %i.kl = lshr i64 %i.kk, %i.ay
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kl
  store i32 %i.ju, ptr %i.km, align 4, !tbaa !25
  %i.kn = getelementptr inbounds i8, ptr %i.jo, i64 -2 ; 2 uses
  %.val415 = load i64, ptr %i.kn, align 1, !tbaa !24
  %i.ko = mul i64 %.val415, -3523014627193167104
  %i.kp = lshr i64 %i.ko, %i.ay
  br label %.lr.ph555.preheader

ZSTD_hashPtr.exit373:                             ; preds = %bb.al
  %.val393.a = load i32, ptr %i.jx, align 1, !tbaa !25
  %i.kq = mul i32 %.val393.a, -1640531535
  %i.kr = lshr i32 %i.kq, %i.aw
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks
  store i32 %i.ju, ptr %i.kt, align 4, !tbaa !25
  %i.ku = getelementptr inbounds i8, ptr %i.jo, i64 -2 ; 2 uses
  %.val394 = load i32, ptr %i.ku, align 1, !tbaa !25
  %i.kv = mul i32 %.val394, -1640531535
  %i.kw = lshr i32 %i.kv, %i.aw
  %i.kx = zext i32 %i.kw to i64
  br label %.lr.ph555.preheader

.lr.ph555.preheader:                              ; preds = %ZSTD_hashPtr.exit373.thread474, %ZSTD_hashPtr.exit373.thread472, %ZSTD_hashPtr.exit373.thread470, %ZSTD_hashPtr.exit373
  %.pn.in = phi ptr [ %i.ku, %ZSTD_hashPtr.exit373 ], [ %i.kn, %ZSTD_hashPtr.exit373.thread474 ], [ %i.kb, %ZSTD_hashPtr.exit373.thread470 ], [ %i.kh, %ZSTD_hashPtr.exit373.thread472 ]
  %.0.i370 = phi i64 [ %i.kx, %ZSTD_hashPtr.exit373 ], [ %i.kp, %ZSTD_hashPtr.exit373.thread474 ], [ %i.kd, %ZSTD_hashPtr.exit373.thread470 ], [ %i.kj, %ZSTD_hashPtr.exit373.thread472 ]
  %.pn = ptrtoint ptr %.pn.in to i64
  %.in = sub i64 %.pn, %i.p
  %i.ky = trunc i64 %.in to i32
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i370
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !25
  br label %.lr.ph555

.lr.ph555:                                        ; preds = %.lr.ph555.preheader, %bb.au
  %i.la = phi ptr [ %i.mb, %bb.au ], [ %i.jn, %.lr.ph555.preheader ]
  %.3331554 = phi i32 [ %.3337553, %bb.au ], [ %.2330, %.lr.ph555.preheader ] ; 6 uses
  %.3337553 = phi i32 [ %.3331554, %bb.au ], [ %.2336, %.lr.ph555.preheader ] ; 4 uses
  %.1341552 = phi ptr [ %i.mn, %bb.au ], [ %i.jo, %.lr.ph555.preheader ] ; 12 uses
  %i.lb = ptrtoint ptr %.1341552 to i64
  %i.lc = sub i64 %i.lb, %i.p
  %i.ld = trunc i64 %i.lc to i32                  ; 2 uses
  %i.le = sub i32 %i.ld, %.3331554                ; 3 uses
  %i.lf = icmp ult i32 %i.le, %i.ag               ; 2 uses
  %i.lg = zext i32 %i.le to i64
  %.v = select i1 %i.lf, ptr %i.n, ptr %i.l
  %i.lh = getelementptr inbounds nuw i8, ptr %.v, i64 %i.lg ; 2 uses
  %i.li = sub i32 %i.le, %i.ag
  %6 = icmp ugt i32 %i.li, -4
  %.not363 = icmp eq i32 %.3331554, 0
  %.not364 = select i1 %.not363, i1 true, i1 %6
  br i1 %.not364, label %.thread, label %bb.am

bb.am:                                            ; preds = %.lr.ph555
  %.val = load i32, ptr %i.lh, align 1, !tbaa !25
  %.6.val = load i32, ptr %.1341552, align 1, !tbaa !25
  %i.lj = icmp eq i32 %.val, %.6.val
  br i1 %i.lj, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.lk = select i1 %i.lf, ptr %i.aj, ptr %i.ak
  %i.ll = getelementptr inbounds nuw i8, ptr %.1341552, i64 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.ln = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ll, ptr noundef nonnull %i.lm, ptr noundef %i.ak, ptr noundef %i.lk, ptr noundef nonnull %i.ai) ; 2 uses
  %.not.i = icmp ugt ptr %.1341552, %i.az
  br i1 %.not.i, label %ZSTD_storeSeq.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lo = load ptr, ptr %i.ba, align 8, !tbaa !38
  %.1341.val = load <2 x i64>, ptr %.1341552, align 1, !tbaa !33
  store <2 x i64> %.1341.val, ptr %i.lo, align 1, !tbaa !33
  %.pre629 = load ptr, ptr %i.bd, align 8, !tbaa !39
  br label %ZSTD_storeSeq.exit

ZSTD_storeSeq.exit:                               ; preds = %bb.an, %bb.ao
  %i.lp = phi ptr [ %i.la, %bb.an ], [ %.pre629, %bb.ao ] ; 5 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store i16 0, ptr %i.lq, align 4, !tbaa !49
  store i32 1, ptr %i.lp, align 4, !tbaa !50
  %i.lr = add i64 %i.ln, 1                        ; 2 uses
  %i.ls = icmp ugt i64 %i.lr, 65535
  br i1 %i.ls, label %bb.ap, label %ZSTD_storeSeqOnly.exit384, !prof !51

bb.ap:                                            ; preds = %ZSTD_storeSeq.exit
  store i32 2, ptr %i.bc, align 8, !tbaa !45
  %i.lt = load ptr, ptr %1, align 8, !tbaa !46
  %i.lu = ptrtoint ptr %i.lp to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = lshr exact i64 %i.lw, 3
  %i.ly = trunc i64 %i.lx to i32
  store i32 %i.ly, ptr %i.be, align 4, !tbaa !47
  br label %ZSTD_storeSeqOnly.exit384

ZSTD_storeSeqOnly.exit384:                        ; preds = %ZSTD_storeSeq.exit, %bb.ap
  %i.lz = trunc i64 %i.lr to i16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 6
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !52
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  store ptr %i.mb, ptr %i.bd, align 8, !tbaa !39
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.at
    i32 5, label %bb.ar
    i32 6, label %bb.as
    i32 4, label %bb.aq
  ]

bb.aq:                                            ; preds = %ZSTD_storeSeqOnly.exit384
  %.6.val395 = load i32, ptr %.1341552, align 1, !tbaa !25
  %i.mc = mul i32 %.6.val395, -1640531535
  %i.md = lshr i32 %i.mc, %i.aw
  %i.me = zext i32 %i.md to i64
  br label %bb.au

bb.ar:                                            ; preds = %ZSTD_storeSeqOnly.exit384
  %.6.val402 = load i64, ptr %.1341552, align 1, !tbaa !24
  %i.mf = mul i64 %.6.val402, -3523014627271114752
  %i.mg = lshr i64 %i.mf, %i.ay
  br label %bb.au

bb.as:                                            ; preds = %ZSTD_storeSeqOnly.exit384
  %.6.val409 = load i64, ptr %.1341552, align 1, !tbaa !24
  %i.mh = mul i64 %.6.val409, -3523014627193847808
  %i.mi = lshr i64 %i.mh, %i.ay
  br label %bb.au

bb.at:                                            ; preds = %ZSTD_storeSeqOnly.exit384
  %.6.val416 = load i64, ptr %.1341552, align 1, !tbaa !24
  %i.mj = mul i64 %.6.val416, -3523014627193167104
  %i.mk = lshr i64 %i.mj, %i.ay
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0.i = phi i64 [ %i.me, %bb.aq ], [ %i.mk, %bb.at ], [ %i.mg, %bb.ar ], [ %i.mi, %bb.as ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i
  store i32 %i.ld, ptr %i.ml, align 4, !tbaa !25
  %i.mm = getelementptr i8, ptr %.1341552, i64 %i.ln
  %i.mn = getelementptr i8, ptr %i.mm, i64 4      ; 3 uses
  %.not362 = icmp ugt ptr %i.mn, %i.al
  br i1 %.not362, label %.thread, label %.lr.ph555

.thread:                                          ; preds = %bb.au, %bb.am, %.lr.ph555, %bb.ak
  %.3343 = phi ptr [ %i.jo, %bb.ak ], [ %i.mn, %bb.au ], [ %.1341552, %bb.am ], [ %.1341552, %.lr.ph555 ] ; 3 uses
  %.5339 = phi i32 [ %.2336, %bb.ak ], [ %.3331554, %bb.au ], [ %.3337553, %bb.am ], [ %.3337553, %.lr.ph555 ] ; 2 uses
  %.5333 = phi i32 [ %.2330, %bb.ak ], [ %.3337553, %bb.au ], [ %.3331554, %bb.am ], [ %.3331554, %.lr.ph555 ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.3343, i64 %i.j ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 1 ; 2 uses
  %.not358 = icmp ult ptr %i.mp, %i.al
  br i1 %.not358, label %bb.d, label %.loopexit

bb.av:                                            ; preds = %.loopexit, %bb.b
  %.0 = phi i64 [ %i.an, %bb.b ], [ %i.ff, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !26}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"long", !8, i64 0}
!16 = !{!"p1 int", !12, i64 0}
!17 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !12, i64 32, !12, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !12, i64 88, !9, i64 96}
!18 = !{!"p1 _ZTS17ZSTD_MatchState_t", !12, i64 0}
!19 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!20 = !{!"ZSTD_MatchState_t", !14, i64 0, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !13, i64 56, !8, i64 64, !15, i64 96, !9, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !9, i64 136, !9, i64 140, !17, i64 144, !18, i64 248, !19, i64 256, !12, i64 288, !9, i64 296, !9, i64 300}
!21 = !{!20, !16, i64 112}
!22 = !{!20, !13, i64 8}
!23 = !{!19, !9, i64 8}
!24 = !{!15, !15, i64 0}
!25 = !{!9, !9, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!20, !9, i64 272}
!28 = !{!19, !9, i64 20}
!29 = !{!20, !9, i64 24}
!30 = !{!20, !9, i64 40}
!31 = !{i64 82450, i64 82474}
!32 = !{i64 5222}
!33 = !{!8, !8, i64 0}
!34 = !{!"short", !8, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"p1 _ZTS8SeqDef_s", !12, i64 0}
!37 = !{!"", !36, i64 0, !36, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !15, i64 56, !15, i64 64, !9, i64 72, !9, i64 76}
!38 = !{!37, !13, i64 24}
!39 = !{!37, !36, i64 8}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"branch_weights", i32 8, i32 24}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!45 = !{!37, !9, i64 72}
!46 = !{!37, !36, i64 0}
!47 = !{!37, !9, i64 76}
!48 = !{!"SeqDef_s", !9, i64 0, !34, i64 4, !34, i64 6}
!49 = !{!48, !34, i64 4}
!50 = !{!48, !9, i64 0}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!48, !34, i64 6}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !26}
!55 = !{!19, !9, i64 16}
!56 = !{!20, !9, i64 44}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !26}
!59 = distinct !{!59, !26, !40, !41}
!60 = distinct !{!60, !26, !40, !41}
!61 = distinct !{!61, !43}
!62 = distinct !{!62, !26, !40}
!63 = distinct !{!63, !26, !40, !41}
!64 = distinct !{!64, !26, !40, !41}
!65 = distinct !{!65, !43}
!66 = distinct !{!66, !26, !40}
!67 = distinct !{!67, !26, !40, !41}
!68 = distinct !{!68, !26, !40, !41}
!69 = distinct !{!69, !43}
!70 = distinct !{!70, !26, !40}
!71 = distinct !{!71, !26, !40, !41}
!72 = distinct !{!72, !26, !40, !41}
!73 = distinct !{!73, !43}
!74 = distinct !{!74, !26, !40}
!75 = distinct !{!75, !26, !40, !41}
!76 = distinct !{!76, !26, !40, !41}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !26, !40}
!79 = distinct !{!79, !26, !40, !41}
!80 = distinct !{!80, !26, !40, !41}
!81 = distinct !{!81, !43}
!82 = distinct !{!82, !26, !40}
!83 = distinct !{!83, !26, !40, !41}
!84 = distinct !{!84, !26, !40, !41}
!85 = distinct !{!85, !43}
!86 = distinct !{!86, !26, !40}
!87 = distinct !{!87, !26, !40, !41}
!88 = distinct !{!88, !26, !40, !41}
!89 = distinct !{!89, !43}
!90 = distinct !{!90, !26, !40}
!91 = !{!20, !9, i64 256}
!92 = distinct !{!92, !26}
!93 = distinct !{!93, !26, !40, !41}
!94 = distinct !{!94, !26, !40, !41}
!95 = distinct !{!95, !43}
!96 = distinct !{!96, !26, !40}
!97 = distinct !{!97, !26}
!98 = distinct !{!98, !26, !40, !41}
!99 = distinct !{!99, !26, !40, !41}
!100 = distinct !{!100, !43}
!101 = distinct !{!101, !26, !40}
!102 = distinct !{!102, !26}
!103 = distinct !{!103, !26, !40, !41}
!104 = distinct !{!104, !26, !40, !41}
!105 = distinct !{!105, !43}
!106 = distinct !{!106, !26, !40}
!107 = distinct !{!107, !26, !40, !41}
!108 = distinct !{!108, !26, !40, !41}
!109 = distinct !{!109, !43}
!110 = distinct !{!110, !26, !40}
!111 = distinct !{!111, !26, !40, !41}
!112 = distinct !{!112, !26, !40, !41}
!113 = distinct !{!113, !43}
!114 = distinct !{!114, !26, !40}
!115 = distinct !{!115, !26, !40, !41}
!116 = distinct !{!116, !26, !40, !41}
!117 = distinct !{!117, !43}
!118 = distinct !{!118, !26, !40}
!119 = distinct !{!119, !26, !40, !41}
!120 = distinct !{!120, !26, !40, !41}
!121 = distinct !{!121, !43}
!122 = distinct !{!122, !26, !40}
!123 = distinct !{!123, !26, !40, !41}
!124 = distinct !{!124, !26, !40, !41}
!125 = distinct !{!125, !43}
!126 = distinct !{!126, !26, !40}
!127 = distinct !{!127, !26, !40, !41}
!128 = distinct !{!128, !26, !40, !41}
!129 = distinct !{!129, !43}
!130 = distinct !{!130, !26, !40}
!131 = distinct !{!131, !26, !40, !41}
!132 = distinct !{!132, !26, !40, !41}
!133 = distinct !{!133, !43}
!134 = distinct !{!134, !26, !40}
!135 = distinct !{!135, !26, !40, !41}
!136 = distinct !{!136, !26, !40, !41}
!137 = distinct !{!137, !43}
!138 = distinct !{!138, !26, !40}
!139 = distinct !{!139, !26, !40, !41}
!140 = distinct !{!140, !26, !40, !41}
!141 = distinct !{!141, !43}
!142 = distinct !{!142, !26, !40}
!143 = !{!20, !18, i64 248}
!144 = !{!20, !13, i64 0}
!145 = !{!20, !9, i64 296}
!146 = distinct !{!146, !26}
!147 = distinct !{!147, !26}
!148 = distinct !{!148, !26, !40, !41}
!149 = distinct !{!149, !26, !40, !41}
!150 = distinct !{!150, !43}
!151 = distinct !{!151, !26, !40}
!152 = !{!20, !13, i64 16}
!153 = !{!19, !9, i64 0}
!154 = !{!20, !9, i64 28}
end_hunk_4
