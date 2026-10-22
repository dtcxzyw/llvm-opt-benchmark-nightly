Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_fast?download=true
inline.NumInlined: 470
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ZSTD_compressBlock_fast:bb.a
  store i32 1, ptr %i.cmo, align 4, !tbaa !47
  %i.cmq = add i64 %.3.i45.i1239, 1               ; 2 uses
  %i.cmr = icmp ugt i64 %i.cmq, 65535
  br i1 %i.cmr, label %bb.no, label %ZSTD_storeSeqOnly.exit6.i1245, !prof !48

bb.no:                                            ; preds = %ZSTD_storeSeq.exit.i1244
  store i32 2, ptr %i.cbw, align 8, !tbaa !42
  %i.cms = load ptr, ptr %1, align 8, !tbaa !43
  %i.cmt = ptrtoint ptr %i.cmo to i64
  %i.cmu = ptrtoint ptr %i.cms to i64
  %i.cmv = sub i64 %i.cmt, %i.cmu
  %i.cmw = lshr exact i64 %i.cmv, 3
  %i.cmx = trunc i64 %i.cmw to i32
  store i32 %i.cmx, ptr %i.cby, align 4, !tbaa !44
  br label %ZSTD_storeSeqOnly.exit6.i1245

ZSTD_storeSeqOnly.exit6.i1245:                    ; preds = %bb.no, %ZSTD_storeSeq.exit.i1244
  %i.cmy = trunc i64 %i.cmq to i16
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmo, i64 6
  store i16 %i.cmy, ptr %i.cmz, align 2, !tbaa !49
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmo, i64 8 ; 2 uses
  store ptr %i.cna, ptr %i.cbx, align 8, !tbaa !40
  %.not287.i.i1246 = icmp ugt ptr %i.cmm, %i.ae
  br i1 %.not287.i.i1246, label %.critedge3.i.i1225, label %.lr.ph206.i1219

.critedge3.i.i1225:                               ; preds = %ZSTD_storeSeqOnly.exit6.i1245, %.lr.ph206.i1219, %bb.na, %ZSTD_storeSeqOnly.exit.i1214
  %.6.i.i1226 = phi ptr [ %i.cki, %bb.na ], [ %i.cki, %ZSTD_storeSeqOnly.exit.i1214 ], [ %.5.i203.i1222, %.lr.ph206.i1219 ], [ %i.cmm, %ZSTD_storeSeqOnly.exit6.i1245 ] ; 4 uses
  %.4257.i.i1227 = phi i32 [ %.2255.i.i1195, %bb.na ], [ %.2255.i.i1195, %ZSTD_storeSeqOnly.exit.i1214 ], [ %.3256.i204.i1221, %.lr.ph206.i1219 ], [ %.3251.i205.i1220, %ZSTD_storeSeqOnly.exit6.i1245 ] ; 2 uses
  %.4252.i.i1228 = phi i32 [ 0, %bb.na ], [ %.2250.i.i1196, %ZSTD_storeSeqOnly.exit.i1214 ], [ %.3251.i205.i1220, %.lr.ph206.i1219 ], [ %.3256.i204.i1221, %ZSTD_storeSeqOnly.exit6.i1245 ] ; 2 uses
  %i.cnb = getelementptr inbounds nuw i8, ptr %.6.i.i1226, i64 %i.l ; 2 uses
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cnb, i64 1 ; 2 uses
  %.not281.i.i1229 = icmp ult ptr %i.cnc, %i.ae
  br i1 %.not281.i.i1229, label %bb.lv, label %ZSTD_compressBlock_fast_noDict_4_1.exit

ZSTD_compressBlock_fast_noDict_4_1.exit:          ; preds = %.critedge3.i.i1009, %bb.kg, %bb.kc, %.critedge3.i.i794, %bb.il, %bb.ih, %.critedge3.i.i1225, %bb.mb, %bb.lx, %.critedge3.i.i644, %bb.gq, %bb.gm, %.critedge3.i.i306, %bb.cz, %.critedge3.i.i130, %bb.be, %.critedge3.i.i487, %bb.eu, %.critedge3.i.i, %bb.j, %bb.lu, %bb.jz, %bb.ie, %bb.gj, %bb.en, %bb.cs, %bb.ax, %bb.c
  %.1254.i171.i1136.sink2947 = phi i32 [ %.1254.i217.fr.i716, %bb.il ], [ %.1254.i217.fr.i1147, %bb.mb ], [ %.1254.i201.i235, %bb.cz ], [ %.1254.i217.fr.i931, %bb.kg ], [ %.4257.i.i489, %.critedge3.i.i487 ], [ %.4257.i.i, %.critedge3.i.i ], [ %.4257.i.i796, %.critedge3.i.i794 ], [ %.1254.i217.fr.i, %bb.gq ], [ %.0253.i.i, %bb.c ], [ %.1254.i201.i, %bb.j ], [ %.0253.i.i, %bb.ax ], [ %.1254.i201.i416, %bb.eu ], [ %.0253.i.i, %bb.cs ], [ 0, %bb.kc ], [ %.0253.i.i, %bb.en ], [ %.4257.i.i132, %.critedge3.i.i130 ], [ %.1254.i201.i60, %bb.be ], [ %.0253.i.i, %bb.gj ], [ 0, %bb.lx ], [ %.4257.i.i646, %.critedge3.i.i644 ], [ %.0253.i.i, %bb.ie ], [ 0, %bb.ih ], [ %.4257.i.i1227, %.critedge3.i.i1225 ], [ %.0253.i.i, %bb.jz ], [ 0, %bb.gm ], [ %.4257.i.i308, %.critedge3.i.i306 ], [ %.0253.i.i, %bb.lu ], [ %.4257.i.i1011, %.critedge3.i.i1009 ] ; 2 uses
  %.1249.i169.i1137.sink2945 = phi i32 [ %.1249.i219.i712, %bb.il ], [ %.1249.i219.i1143, %bb.mb ], [ %.1249.i202.i234, %bb.cz ], [ %.1249.i219.i927, %bb.kg ], [ %.4252.i.i490, %.critedge3.i.i487 ], [ %.4252.i.i, %.critedge3.i.i ], [ %.4252.i.i797, %.critedge3.i.i794 ], [ %.1249.i219.i, %bb.gq ], [ %spec.select.i.i, %bb.c ], [ %.1249.i202.i, %bb.j ], [ %spec.select.i.i, %bb.ax ], [ %.1249.i202.i415, %bb.eu ], [ %spec.select.i.i, %bb.cs ], [ %.1249.i219.i927, %bb.kc ], [ %spec.select.i.i, %bb.en ], [ %.4252.i.i133, %.critedge3.i.i130 ], [ %.1249.i202.i59, %bb.be ], [ %spec.select.i.i, %bb.gj ], [ %.1249.i219.i1143, %bb.lx ], [ %.4252.i.i647, %.critedge3.i.i644 ], [ %spec.select.i.i, %bb.ie ], [ %.1249.i219.i712, %bb.ih ], [ %.4252.i.i1228, %.critedge3.i.i1225 ], [ %spec.select.i.i, %bb.jz ], [ %.1249.i219.i, %bb.gm ], [ %.4252.i.i309, %.critedge3.i.i306 ], [ %spec.select.i.i, %bb.lu ], [ %.4252.i.i1012, %.critedge3.i.i1009 ] ; 2 uses
  %.0270.i173.i1135.sink = phi ptr [ %.0270.i215.i715, %bb.il ], [ %.0270.i215.i1146, %bb.mb ], [ %.0270.i199.i237, %bb.cz ], [ %.0270.i215.i930, %bb.kg ], [ %.6.i.i488, %.critedge3.i.i487 ], [ %.6.i.i, %.critedge3.i.i ], [ %.6.i.i795, %.critedge3.i.i794 ], [ %.0270.i215.i, %bb.gq ], [ %3, %bb.c ], [ %.0270.i199.i, %bb.j ], [ %3, %bb.ax ], [ %.0270.i199.i418, %bb.eu ], [ %3, %bb.cs ], [ %.0270.i215.i930, %bb.kc ], [ %3, %bb.en ], [ %.6.i.i131, %.critedge3.i.i130 ], [ %.0270.i199.i62, %bb.be ], [ %3, %bb.gj ], [ %.0270.i215.i1146, %bb.lx ], [ %.6.i.i645, %.critedge3.i.i644 ], [ %3, %bb.ie ], [ %.0270.i215.i715, %bb.ih ], [ %.6.i.i1226, %.critedge3.i.i1225 ], [ %3, %bb.jz ], [ %.0270.i215.i, %bb.gm ], [ %.6.i.i307, %.critedge3.i.i306 ], [ %3, %bb.lu ], [ %.6.i.i1010, %.critedge3.i.i1009 ]
  %.0247.i.i1138 = select i1 %i.av, i32 %i.af, i32 0
  %spec.select289.i.i1139 = select i1 %i.au, i32 %i.ah, i32 0
  %i.cnd = icmp ne i32 %.1254.i171.i1136.sink2947, 0 ; 2 uses
  %or.cond.i.i1140 = select i1 %i.av, i1 %i.cnd, i1 false
  %i.cne = select i1 %or.cond.i.i1140, i32 %i.af, i32 %spec.select289.i.i1139
  %i.cnf = select i1 %i.cnd, i32 %.1254.i171.i1136.sink2947, i32 %.0247.i.i1138
  store i32 %i.cnf, ptr %2, align 4, !tbaa !22
  %.not288.i.i1141 = icmp eq i32 %.1249.i169.i1137.sink2945, 0
  %i.cng = select i1 %.not288.i.i1141, i32 %i.cne, i32 %.1249.i169.i1137.sink2945
  store i32 %i.cng, ptr %i.ag, align 4, !tbaa !22
  %i.cnh = ptrtoint ptr %i.ad to i64
  %i.cni = ptrtoint ptr %.0270.i173.i1135.sink to i64
  %i.cnj = sub i64 %i.cnh, %i.cni
  ret i64 %i.cnj
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_fast_dictMatchState(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 18 uses
  %i.l = zext i32 %i.i to i64                     ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26   ; 34 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 42 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 16 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !22     ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !22   ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !140  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !26  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 18 uses
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad ; 5 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !141 ; 14 uses
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
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !20 ; 12 uses
  %i.as = ptrtoint ptr %i.k to i64                ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.au = load i32, ptr %i.at, align 8, !tbaa !142
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
  br i1 %i.az, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !89

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
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 19 uses
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
  %.0311.i.val11.i = load i32, ptr %.0311.i198.i, align 1, !tbaa !22
  %i.bt = mul i32 %.0311.i.val11.i, -1640531535   ; 2 uses
  %i.bu = lshr i32 %i.bt, %i.bg                   ; 2 uses
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !22 ; 2 uses
  %i.bz = xor i32 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.0311.i198.i, i64 256
  %invariant.op2240.a = sub i32 1, %.0291.i200.i
  br label %bb.e

bb.e:                                             ; preds = %bb.bd, %bb.d
  %.1312.i.i = phi ptr [ %.0311.i198.i, %bb.d ], [ %.1308.i.i, %bb.bd ] ; 16 uses
  %.1308.i.i = phi ptr [ %.0307.i202.i, %bb.d ], [ %i.ov, %bb.bd ] ; 4 uses
  %.pn209.i = phi i32 [ %i.bt, %bb.d ], [ %i.cd, %bb.bd ]
  %.0276.i.i = phi i32 [ %i.by, %bb.d ], [ %i.pa, %bb.bd ]
  %.0274.i.in.in.in.i = phi i32 [ %i.bz, %bb.d ], [ %i.pb, %bb.bd ]
  %.0267.i.i = phi i64 [ %i.l, %bb.d ], [ %.1268.i.i, %bb.bd ]
  %.0264.i.i = phi ptr [ %i.ca, %bb.d ], [ %.1265.i.i, %bb.bd ] ; 2 uses
  %.0278.i.in.i = lshr i32 %.pn209.i, %i.bf
  %.0278.i.i = zext i32 %.0278.i.in.i to i64
  %.0272.i.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0278.i.i ; 2 uses
  %.0272.i.i = load i32, ptr %.0272.i.in.i, align 4, !tbaa !22 ; 5 uses
  %.0274.i.in.in.i = and i32 %.0274.i.in.in.in.i, 255
  %.0274.i.in.i = icmp eq i32 %.0274.i.in.in.i, 0
  %.pn.i = ptrtoint ptr %.1312.i.i to i64         ; 5 uses
  %.0270.i.in.i = sub i64 %.pn.i, %i.as           ; 2 uses
  %.0270.i.i = trunc i64 %.0270.i.in.i to i32     ; 4 uses
  %i.cb = zext i32 %.0272.i.i to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cb ; 4 uses
  %.reass.i.reass.reass.reass = add i32 %.0270.i.i, %invariant.op2240.a ; 4 uses
  %.1308.i.val10.i = load i32, ptr %.1308.i.i, align 1, !tbaa !22
  %i.cd = mul i32 %.1308.i.val10.i, -1640531535   ; 2 uses
  %i.ce = lshr i32 %i.cd, %i.bg                   ; 2 uses
  store i32 %.0270.i.i, ptr %.0272.i.in.i, align 4, !tbaa !22
  %i.cf = sub i32 %.reass.i.reass.reass.reass, %i.n
  %5 = icmp ult i32 %i.cf, -3
  br i1 %5, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.cg = icmp ult i32 %.reass.i.reass.reass.reass, %i.n ; 2 uses
  %i.ch = sub i32 %.reass.i.reass.reass.reass, %i.ai
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ci
  %i.ck = zext i32 %.reass.i.reass.reass.reass to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ck
  %i.cm = select i1 %i.cg, ptr %i.cj, ptr %i.cl   ; 2 uses
  %.val6.i.a = load i32, ptr %i.cm, align 1, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %.1312.i.i, i64 1
  %.val5.i.a = load i32, ptr %i.cn, align 1, !tbaa !22
  %i.co = icmp eq i32 %.val6.i.a, %.val5.i.a
  br i1 %i.co, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %.1312.i.i.lcssa20672071 = ptrtoaddr ptr %.1312.i.i to i64 ; 2 uses
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
  %i.cy = load ptr, ptr %i.bi, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i357.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0301.i.val.i = load <2 x i64>, ptr %.0301.i199.i, align 1, !tbaa !30
  store <2 x i64> %.0301.i.val.i, ptr %i.cy, align 1, !tbaa !30
  %i.cz = icmp ugt i64 %i.cx, 16
  br i1 %i.cz, label %bb.i, label %ZSTD_storeSeq.exit358.i.thread.i

bb.i:                                             ; preds = %bb.h
  %i.da = load ptr, ptr %i.bi, align 8, !tbaa !35 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.0301.i199.i, i64 16 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.da, i64 %i.cx
  %.val13.i = load <2 x i64>, ptr %i.dc, align 1, !tbaa !30
  store <2 x i64> %.val13.i, ptr %i.db, align 1, !tbaa !30
  %i.de = icmp ult i64 %i.cx, 33
  br i1 %i.de, label %ZSTD_storeSeq.exit358.i.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.pn.i.i.i = phi ptr [ %i.dc, %bb.j ], [ %i.dh, %bb.k ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.df, %bb.j ], [ %i.di, %bb.k ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.i.val.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !30
  store <2 x i64> %.130.i.i.val.i, ptr %.1.i.i.i, align 1, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val12.i = load <2 x i64>, ptr %i.dh, align 1, !tbaa !30
  store <2 x i64> %.val12.i, ptr %i.dg, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.dd
  br i1 %i.dj, label %bb.k, label %ZSTD_storeSeq.exit358.i.i, !llvm.loop !0

bb.l:                                             ; preds = %bb.g
  %.not.i20.i = icmp ugt ptr %.0301.i199.i, %i.bh
  br i1 %.not.i20.i, label %ZSTD_wildcopy.exit.i24.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = sub i64 %i.bj, %i.cw                    ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.cy, i64 %i.dk ; 3 uses
  %.val19.i.i = load <2 x i64>, ptr %.0301.i199.i, align 1, !tbaa !30
  store <2 x i64> %.val19.i.i, ptr %i.cy, align 1, !tbaa !30
  %i.dm = icmp ult i64 %i.dk, 17
  br i1 %i.dm, label %ZSTD_wildcopy.exit.i24.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.pn.i.i21.i = phi ptr [ %.0301.i199.i, %bb.n ], [ %i.dp, %bb.o ] ; 2 uses
  %.1.i.i22.i = phi ptr [ %i.dn, %bb.n ], [ %i.dq, %bb.o ] ; 3 uses
  %.130.i.i23.i = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i, i64 16
  %.130.i.val.i.i = load <2 x i64>, ptr %.130.i.i23.i, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i.i, ptr %.1.i.i22.i, align 1, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i22.i, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i, i64 32 ; 2 uses
  %.val.i.i = load <2 x i64>, ptr %i.dp, align 1, !tbaa !30
  store <2 x i64> %.val.i.i, ptr %i.do, align 1, !tbaa !30
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i.i22.i, i64 32 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dl
  br i1 %i.dr, label %bb.o, label %ZSTD_wildcopy.exit.i24.i, !llvm.loop !0

ZSTD_wildcopy.exit.i24.i:                         ; preds = %bb.o, %bb.m, %bb.l
  %.014.i.i = phi ptr [ %.0301.i199.i, %bb.l ], [ %i.bh, %bb.m ], [ %i.bh, %bb.o ] ; 7 uses
  %.0.i25.i = phi ptr [ %i.cy, %bb.l ], [ %i.dl, %bb.m ], [ %i.dl, %bb.o ] ; 6 uses
  %i.ds = icmp ult ptr %.014.i.i, %i.cp
  br i1 %i.ds, label %iter.check1838, label %ZSTD_storeSeq.exit358.i.i

iter.check1838:                                   ; preds = %ZSTD_wildcopy.exit.i24.i
  %.014.i.i1820 = ptrtoaddr ptr %.014.i.i to i64  ; 2 uses
  %.0.i25.i1819 = ptrtoaddr ptr %.0.i25.i to i64
  %reass.sub1860.a = sub i64 %.pn.i, %.014.i.i1820
  %i.dt = add i64 %reass.sub1860.a, 1             ; 7 uses
  %min.iters.check1822 = icmp ult i64 %i.dt, 8
  %i.du = sub i64 %.014.i.i1820, %.0.i25.i1819
  %diff.check1821.a = icmp ugt i64 %i.du, -32
  %or.cond = select i1 %min.iters.check1822, i1 true, i1 %diff.check1821.a
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1823

vector.main.loop.iter.check1823:                  ; preds = %iter.check1838
  %min.iters.check1824 = icmp ult i64 %i.dt, 32
  br i1 %min.iters.check1824, label %vec.epilog.ph1842, label %vector.ph1825

vector.ph1825:                                    ; preds = %vector.main.loop.iter.check1823
  %i.dv = and i64 %i.dt, 24
  %n.vec1826 = and i64 %i.dt, -32                 ; 5 uses
  %i.dw = getelementptr i8, ptr %.0.i25.i, i64 %n.vec1826
  %i.dx = getelementptr i8, ptr %.014.i.i, i64 %n.vec1826
  br label %vector.body1827

vector.body1827:                                  ; preds = %vector.ph1825, %vector.body1827
  %index1828 = phi i64 [ 0, %vector.ph1825 ], [ %index.next1833, %vector.body1827 ] ; 3 uses
  %next.gep1829 = getelementptr i8, ptr %.0.i25.i, i64 %index1828 ; 2 uses
  %next.gep1830.a = getelementptr i8, ptr %.014.i.i, i64 %index1828 ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep1830.a, i64 16
  %wide.load1831 = load <16 x i8>, ptr %next.gep1830.a, align 1, !tbaa !30
  %wide.load1832.a = load <16 x i8>, ptr %i.dy, align 1, !tbaa !30
  %i.dz = getelementptr i8, ptr %next.gep1829, i64 16
  store <16 x i8> %wide.load1831, ptr %next.gep1829, align 1, !tbaa !30
  store <16 x i8> %wide.load1832.a, ptr %i.dz, align 1, !tbaa !30
  %index.next1833 = add nuw i64 %index1828, 32    ; 2 uses
  %i.ea = icmp eq i64 %index.next1833, %n.vec1826
  br i1 %i.ea, label %middle.block1834, label %vector.body1827, !llvm.loop !90

middle.block1834:                                 ; preds = %vector.body1827
  %cmp.n1835 = icmp eq i64 %i.dt, %n.vec1826
  br i1 %cmp.n1835, label %ZSTD_storeSeq.exit358.i.i, label %vec.epilog.iter.check1840

vec.epilog.iter.check1840:                        ; preds = %middle.block1834
  %min.epilog.iters.check1841 = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check1841, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1842, !prof !38

vec.epilog.ph1842:                                ; preds = %vector.main.loop.iter.check1823, %vec.epilog.iter.check1840
  %vec.epilog.resume.val1836 = phi i64 [ %n.vec1826, %vec.epilog.iter.check1840 ], [ 0, %vector.main.loop.iter.check1823 ]
  %n.vec1843 = and i64 %i.dt, -8                  ; 4 uses
  %i.eb = getelementptr i8, ptr %.0.i25.i, i64 %n.vec1843
  %i.ec = getelementptr i8, ptr %.014.i.i, i64 %n.vec1843
  br label %vec.epilog.vector.body1844

vec.epilog.vector.body1844:                       ; preds = %vec.epilog.vector.body1844, %vec.epilog.ph1842
  %index1845 = phi i64 [ %vec.epilog.resume.val1836, %vec.epilog.ph1842 ], [ %index.next1849, %vec.epilog.vector.body1844 ] ; 3 uses
  %next.gep1846 = getelementptr i8, ptr %.0.i25.i, i64 %index1845
  %next.gep1847.a = getelementptr i8, ptr %.014.i.i, i64 %index1845
  %wide.load1848 = load <8 x i8>, ptr %next.gep1847.a, align 1, !tbaa !30
  store <8 x i8> %wide.load1848, ptr %next.gep1846, align 1, !tbaa !30
  %index.next1849 = add nuw i64 %index1845, 8     ; 2 uses
  %i.ed = icmp eq i64 %index.next1849, %n.vec1843
  br i1 %i.ed, label %vec.epilog.middle.block1850, label %vec.epilog.vector.body1844, !llvm.loop !91

vec.epilog.middle.block1850:                      ; preds = %vec.epilog.vector.body1844
  %cmp.n1851 = icmp eq i64 %i.dt, %n.vec1843
  br i1 %cmp.n1851, label %ZSTD_storeSeq.exit358.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1838, %vec.epilog.iter.check1840, %vec.epilog.middle.block1850
  %.121.i.i.ph = phi ptr [ %.0.i25.i, %iter.check1838 ], [ %i.dw, %vec.epilog.iter.check1840 ], [ %i.eb, %vec.epilog.middle.block1850 ] ; 2 uses
  %.11520.i.i.ph = phi ptr [ %.014.i.i, %iter.check1838 ], [ %i.dx, %vec.epilog.iter.check1840 ], [ %i.ec, %vec.epilog.middle.block1850 ] ; 3 uses
  %.11520.i.i.ph2066 = ptrtoaddr ptr %.11520.i.i.ph to i64 ; 2 uses
  %reass.sub2086.a = sub i64 %.1312.i.i.lcssa20672071, %.11520.i.i.ph2066
  %i.ee = add i64 %reass.sub2086.a, 1
  %i.ef = sub i64 %.1312.i.i.lcssa20672071, %.11520.i.i.ph2066
  %xtraiter2072.a = and i64 %i.ee, 7              ; 2 uses
  %lcmp.mod2073.not.a = icmp eq i64 %xtraiter2072.a, 0
  br i1 %lcmp.mod2073.not.a, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.121.i.i.prol = phi ptr [ %i.ei, %.lr.ph.i.i.prol ], [ %.121.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.11520.i.i.prol = phi ptr [ %i.eg, %.lr.ph.i.i.prol ], [ %.11520.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter2074.a = phi i64 [ %prol.iter2074.next.a, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.11520.i.i.prol, i64 1 ; 2 uses
  %i.eh = load i8, ptr %.11520.i.i.prol, align 1, !tbaa !30
  %i.ei = getelementptr inbounds nuw i8, ptr %.121.i.i.prol, i64 1 ; 2 uses
  store i8 %i.eh, ptr %.121.i.i.prol, align 1, !tbaa !30
  %prol.iter2074.next.a = add i64 %prol.iter2074.a, 1 ; 2 uses
  %prol.iter2074.cmp.not.a = icmp eq i64 %prol.iter2074.next.a, %xtraiter2072.a
  br i1 %prol.iter2074.cmp.not.a, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !92

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.121.i.i.unr = phi ptr [ %.121.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.prol ]
  %.11520.i.i.unr = phi ptr [ %.11520.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.eg, %.lr.ph.i.i.prol ]
  %i.ej = icmp ult i64 %i.ef, 7
  br i1 %i.ej, label %ZSTD_storeSeq.exit358.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.121.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %.121.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.11520.i.i = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %.11520.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 1
  %i.el = load i8, ptr %.11520.i.i, align 1, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 1
  store i8 %i.el, ptr %.121.i.i, align 1, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 2
  %i.eo = load i8, ptr %i.ek, align 1, !tbaa !30
  %i.ep = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 2
  store i8 %i.eo, ptr %i.em, align 1, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 3
  %i.er = load i8, ptr %i.en, align 1, !tbaa !30
  %i.es = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 3
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 4
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 4
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 5
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !30
  %i.ey = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 5
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 6
  %i.fa = load i8, ptr %i.ew, align 1, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 6
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 7 ; 2 uses
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !30
  %i.fe = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 7
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !30
  %i.ff = getelementptr inbounds nuw i8, ptr %.11520.i.i, i64 8
  %i.fg = load i8, ptr %i.fc, align 1, !tbaa !30
  %i.fh = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 8
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !30
  %exitcond.not.i.i.7 = icmp eq ptr %i.fc, %.1312.i.i
  br i1 %exitcond.not.i.i.7, label %ZSTD_storeSeq.exit358.i.i, label %.lr.ph.i.i, !llvm.loop !93

ZSTD_storeSeq.exit358.i.thread.i:                 ; preds = %bb.i, %bb.h
  %i.fi = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.cx
  store ptr %i.fj, ptr %i.bi, align 8, !tbaa !35
  %.pre.i.a = load ptr, ptr %i.bl, align 8, !tbaa !40
  br label %bb.q

ZSTD_storeSeq.exit358.i.i:                        ; preds = %bb.k, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block1834, %vec.epilog.middle.block1850, %ZSTD_wildcopy.exit.i24.i
  %i.fk = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.cx
  store ptr %i.fl, ptr %i.bi, align 8, !tbaa !35
  %i.fm = icmp ugt i64 %i.cx, 65535
  %.pre240.i.a = load ptr, ptr %i.bl, align 8, !tbaa !40 ; 3 uses
  br i1 %i.fm, label %bb.p, label %bb.q, !prof !143

bb.p:                                             ; preds = %ZSTD_storeSeq.exit358.i.i
  store i32 1, ptr %i.bk, align 8, !tbaa !42
  %i.fn = load ptr, ptr %1, align 8, !tbaa !43
  %i.fo = ptrtoint ptr %.pre240.i.a to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = lshr exact i64 %i.fq, 3
  %i.fs = trunc i64 %i.fr to i32
  store i32 %i.fs, ptr %i.bm, align 4, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ZSTD_storeSeq.exit358.i.i, %ZSTD_storeSeq.exit358.i.thread.i
  %i.ft = phi ptr [ %.pre.i.a, %ZSTD_storeSeq.exit358.i.thread.i ], [ %.pre240.i.a, %bb.p ], [ %.pre240.i.a, %ZSTD_storeSeq.exit358.i.i ] ; 4 uses
  %i.fu = trunc i64 %i.cx to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i16 %i.fu, ptr %i.fv, align 4, !tbaa !46
  store i32 1, ptr %i.ft, align 4, !tbaa !47
  %i.fw = add i64 %i.ct, 1                        ; 3 uses
  %i.fx = icmp ugt i64 %i.fw, 65535
  br i1 %i.fx, label %ZSTD_storeSeqOnly.exit.i.sink.split.i, label %ZSTD_storeSeqOnly.exit.i.i, !prof !48

bb.r:                                             ; preds = %bb.f, %bb.e
  br i1 %.0274.i.in.i, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.fy = lshr i32 %.0276.i.i, 8                  ; 3 uses
  %i.fz = icmp ugt i32 %i.fy, %i.aa
  br i1 %i.fz, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ga = zext nneg i32 %i.fy to i64              ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ga
  %.val.i = load i32, ptr %i.gb, align 1, !tbaa !22
  %.1312.i.val.i = load i32, ptr %.1312.i.i, align 1, !tbaa !22
  %i.gc = icmp ne i32 %.val.i, %.1312.i.val.i
  %.not335.i.i = icmp ugt i32 %.0272.i.i, %i.n
  %or.cond.i.i = select i1 %i.gc, i1 true, i1 %.not335.i.i
  br i1 %or.cond.i.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ga ; 2 uses
  %i.ge = add i32 %i.ai, %i.fy
  %i.gf = sub i32 %.0270.i.i, %i.ge               ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.1312.i.i, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gi = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gh, ptr noundef %i.q, ptr noundef %i.af, ptr noundef %i.p)
  %i.gj = add i64 %i.gi, 4                        ; 2 uses
  %i.gk = icmp ugt ptr %.1312.i.i, %.0301.i199.i
  br i1 %i.gk, label %.lr.ph179.i, label %.critedge.i.i

.lr.ph179.i:                                      ; preds = %bb.u, %bb.v
  %.0261.i178.i = phi ptr [ %i.gn, %bb.v ], [ %i.gd, %bb.u ]
  %.1281.i177.i = phi i64 [ %i.gq, %bb.v ], [ %i.gj, %bb.u ] ; 2 uses
  %.2313.i176.i = phi ptr [ %i.gl, %bb.v ], [ %.1312.i.i, %bb.u ] ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.2313.i176.i, i64 -1 ; 4 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !30
  %i.gn = getelementptr inbounds i8, ptr %.0261.i178.i, i64 -1 ; 3 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = icmp eq i8 %i.gm, %i.go
  br i1 %i.gp, label %bb.v, label %.critedge.i.loopexit.i

bb.v:                                             ; preds = %.lr.ph179.i
  %i.gq = add i64 %.1281.i177.i, 1                ; 2 uses
  %i.gr = icmp ugt ptr %i.gl, %.0301.i199.i
  %i.gs = icmp ugt ptr %i.gn, %i.ae
  %i.gt = and i1 %i.gs, %i.gr
  br i1 %i.gt, label %.lr.ph179.i, label %.critedge.i.loopexit.i, !llvm.loop !94

.critedge.i.loopexit.i:                           ; preds = %bb.v, %.lr.ph179.i
  %.2313.i.lcssa.ph.i = phi ptr [ %i.gl, %bb.v ], [ %.2313.i176.i, %.lr.ph179.i ] ; 2 uses
  %.1281.i.lcssa.ph.i = phi i64 [ %i.gq, %bb.v ], [ %.1281.i177.i, %.lr.ph179.i ]
  %.pre247.i = ptrtoint ptr %.2313.i.lcssa.ph.i to i64
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.loopexit.i, %bb.u
  %.pre-phi248.i = phi i64 [ %.pre247.i, %.critedge.i.loopexit.i ], [ %.pn.i, %bb.u ]
  %.2313.i.lcssa.i = phi ptr [ %.2313.i.lcssa.ph.i, %.critedge.i.loopexit.i ], [ %.1312.i.i, %bb.u ] ; 6 uses
  %.1281.i.lcssa.i = phi i64 [ %.1281.i.lcssa.ph.i, %.critedge.i.loopexit.i ], [ %i.gj, %bb.u ] ; 3 uses
  %.2313.i.lcssa.i1785 = ptrtoaddr ptr %.2313.i.lcssa.i to i64 ; 3 uses
  %i.gu = ptrtoint ptr %.0301.i199.i to i64       ; 2 uses
  %i.gv = sub i64 %.pre-phi248.i, %i.gu           ; 7 uses
  %i.gw = add i32 %i.gf, 3
  %.not.i355.i.i = icmp ugt ptr %.2313.i.lcssa.i, %i.bh
  %i.gx = load ptr, ptr %i.bi, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i355.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i
  %.0301.i.val16.i = load <2 x i64>, ptr %.0301.i199.i, align 1, !tbaa !30
  store <2 x i64> %.0301.i.val16.i, ptr %i.gx, align 1, !tbaa !30
  %i.gy = icmp ugt i64 %i.gv, 16
  br i1 %i.gy, label %bb.x, label %ZSTD_storeSeq.exit356.i.thread.i

bb.x:                                             ; preds = %bb.w
  %i.gz = load ptr, ptr %i.bi, align 8, !tbaa !35 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %.0301.i199.i, i64 16 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gz, i64 %i.gv
  %.val15.i = load <2 x i64>, ptr %i.hb, align 1, !tbaa !30
  store <2 x i64> %.val15.i, ptr %i.ha, align 1, !tbaa !30
  %i.hd = icmp ult i64 %i.gv, 33
  br i1 %i.hd, label %ZSTD_storeSeq.exit356.i.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.pn.i359.i.i = phi ptr [ %i.hb, %bb.y ], [ %i.hg, %bb.z ] ; 2 uses
  %.1.i360.i.i = phi ptr [ %i.he, %bb.y ], [ %i.hh, %bb.z ] ; 3 uses
  %.130.i361.i.i = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i, i64 16
  %.130.i361.i.val.i = load <2 x i64>, ptr %.130.i361.i.i, align 1, !tbaa !30
  store <2 x i64> %.130.i361.i.val.i, ptr %.1.i360.i.i, align 1, !tbaa !30
  %i.hf = getelementptr inbounds nuw i8, ptr %.1.i360.i.i, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i, i64 32 ; 2 uses
  %.val14.i = load <2 x i64>, ptr %i.hg, align 1, !tbaa !30
  store <2 x i64> %.val14.i, ptr %i.hf, align 1, !tbaa !30
  %i.hh = getelementptr inbounds nuw i8, ptr %.1.i360.i.i, i64 32 ; 2 uses
  %i.hi = icmp ult ptr %i.hh, %i.hc
  br i1 %i.hi, label %bb.z, label %ZSTD_storeSeq.exit356.i.i, !llvm.loop !0

bb.aa:                                            ; preds = %.critedge.i.i
  %.not.i26.i = icmp ugt ptr %.0301.i199.i, %i.bh
  br i1 %.not.i26.i, label %ZSTD_wildcopy.exit.i33.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = sub i64 %i.bj, %i.gu                    ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.gx, i64 %i.hj ; 3 uses
  %.val19.i27.i = load <2 x i64>, ptr %.0301.i199.i, align 1, !tbaa !30
  store <2 x i64> %.val19.i27.i, ptr %i.gx, align 1, !tbaa !30
  %i.hl = icmp ult i64 %i.hj, 17
  br i1 %i.hl, label %ZSTD_wildcopy.exit.i33.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i.i28.i = phi ptr [ %.0301.i199.i, %bb.ac ], [ %i.ho, %bb.ad ] ; 2 uses
  %.1.i.i29.i = phi ptr [ %i.hm, %bb.ac ], [ %i.hp, %bb.ad ] ; 3 uses
  %.130.i.i30.i = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i, i64 16
  %.130.i.val.i31.i = load <2 x i64>, ptr %.130.i.i30.i, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i31.i, ptr %.1.i.i29.i, align 1, !tbaa !30
  %i.hn = getelementptr inbounds nuw i8, ptr %.1.i.i29.i, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i, i64 32 ; 2 uses
  %.val.i32.i = load <2 x i64>, ptr %i.ho, align 1, !tbaa !30
  store <2 x i64> %.val.i32.i, ptr %i.hn, align 1, !tbaa !30
  %i.hp = getelementptr inbounds nuw i8, ptr %.1.i.i29.i, i64 32 ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %i.hk
  br i1 %i.hq, label %bb.ad, label %ZSTD_wildcopy.exit.i33.i, !llvm.loop !0

ZSTD_wildcopy.exit.i33.i:                         ; preds = %bb.ad, %bb.ab, %bb.aa
  %.014.i34.i = phi ptr [ %.0301.i199.i, %bb.aa ], [ %i.bh, %bb.ab ], [ %i.bh, %bb.ad ] ; 7 uses
  %.0.i35.i = phi ptr [ %i.gx, %bb.aa ], [ %i.hk, %bb.ab ], [ %i.hk, %bb.ad ] ; 6 uses
  %i.hr = icmp ult ptr %.014.i34.i, %.2313.i.lcssa.i
  br i1 %i.hr, label %iter.check1802.a, label %ZSTD_storeSeq.exit356.i.i

iter.check1802.a:                                 ; preds = %ZSTD_wildcopy.exit.i33.i
  %.014.i34.i1783 = ptrtoaddr ptr %.014.i34.i to i64 ; 2 uses
  %.0.i35.i1782 = ptrtoaddr ptr %.0.i35.i to i64
  %i.hs = sub i64 %.2313.i.lcssa.i1785, %.014.i34.i1783 ; 7 uses
  %min.iters.check1786.a = icmp ult i64 %i.hs, 8
  %i.ht = sub i64 %.014.i34.i1783, %.0.i35.i1782
  %diff.check1784.a = icmp ugt i64 %i.ht, -32
  %or.cond1861 = select i1 %min.iters.check1786.a, i1 true, i1 %diff.check1784.a
  br i1 %or.cond1861, label %.lr.ph.i36.i.preheader, label %vector.main.loop.iter.check1787.a

vector.main.loop.iter.check1787.a:                ; preds = %iter.check1802.a
  %min.iters.check1788.a = icmp ult i64 %i.hs, 32
  br i1 %min.iters.check1788.a, label %vec.epilog.ph1806.a, label %vector.ph1789.a

vector.ph1789.a:                                  ; preds = %vector.main.loop.iter.check1787.a
  %i.hu = and i64 %i.hs, 24
  %n.vec1790.a = and i64 %i.hs, -32               ; 5 uses
  %i.hv = getelementptr i8, ptr %.0.i35.i, i64 %n.vec1790.a
  %i.hw = getelementptr i8, ptr %.014.i34.i, i64 %n.vec1790.a
  br label %vector.body1791.a

vector.body1791.a:                                ; preds = %vector.ph1789.a, %vector.body1791.a
  %index1792.a = phi i64 [ 0, %vector.ph1789.a ], [ %index.next1797.a, %vector.body1791.a ] ; 3 uses
  %next.gep1793.a = getelementptr i8, ptr %.0.i35.i, i64 %index1792.a ; 2 uses
  %next.gep1794.a = getelementptr i8, ptr %.014.i34.i, i64 %index1792.a ; 2 uses
  %i.hx = getelementptr i8, ptr %next.gep1794.a, i64 16
  %wide.load1795.a = load <16 x i8>, ptr %next.gep1794.a, align 1, !tbaa !30
  %wide.load1796.a = load <16 x i8>, ptr %i.hx, align 1, !tbaa !30
  %i.hy = getelementptr i8, ptr %next.gep1793.a, i64 16
  store <16 x i8> %wide.load1795.a, ptr %next.gep1793.a, align 1, !tbaa !30
  store <16 x i8> %wide.load1796.a, ptr %i.hy, align 1, !tbaa !30
  %index.next1797.a = add nuw i64 %index1792.a, 32 ; 2 uses
  %i.hz = icmp eq i64 %index.next1797.a, %n.vec1790.a
  br i1 %i.hz, label %middle.block1798.a, label %vector.body1791.a, !llvm.loop !95

middle.block1798.a:                               ; preds = %vector.body1791.a
  %cmp.n1799.a = icmp eq i64 %i.hs, %n.vec1790.a
  br i1 %cmp.n1799.a, label %ZSTD_storeSeq.exit356.i.i, label %vec.epilog.iter.check1804.a

vec.epilog.iter.check1804.a:                      ; preds = %middle.block1798.a
  %min.epilog.iters.check1805.a = icmp eq i64 %i.hu, 0
  br i1 %min.epilog.iters.check1805.a, label %.lr.ph.i36.i.preheader, label %vec.epilog.ph1806.a, !prof !38

end_hunk_0
begin_hunk_1_@ZSTD_compressBlock_fast_dictMatchState:bb.a
  %wide.load1775 = load <8 x i8>, ptr %next.gep1774, align 1, !tbaa !30
  store <8 x i8> %wide.load1775, ptr %next.gep1773, align 1, !tbaa !30
  %index.next1776 = add nuw i64 %index1772, 8     ; 2 uses
  %i.mz = icmp eq i64 %index.next1776, %n.vec1770
  br i1 %i.mz, label %vec.epilog.middle.block1777, label %vec.epilog.vector.body1771, !llvm.loop !101

vec.epilog.middle.block1777:                      ; preds = %vec.epilog.vector.body1771
  %cmp.n1778 = icmp eq i64 %i.mp, %n.vec1770
  br i1 %cmp.n1778, label %ZSTD_storeSeq.exit354.i.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %iter.check1765, %vec.epilog.iter.check1767, %vec.epilog.middle.block1777
  %.121.i60.i.ph = phi ptr [ %.0.i58.i, %iter.check1765 ], [ %i.ms, %vec.epilog.iter.check1767 ], [ %i.mx, %vec.epilog.middle.block1777 ] ; 2 uses
  %.11520.i61.i.ph = phi ptr [ %.014.i57.i, %iter.check1765 ], [ %i.mt, %vec.epilog.iter.check1767 ], [ %i.my, %vec.epilog.middle.block1777 ] ; 3 uses
  %.11520.i61.i.ph2079 = ptrtoaddr ptr %.11520.i61.i.ph to i64 ; 2 uses
  %i.na = sub i64 %.5316.i.lcssa.i1748, %.11520.i61.i.ph2079
  %xtraiter2080 = and i64 %i.na, 7                ; 2 uses
  %lcmp.mod2081.not = icmp eq i64 %xtraiter2080, 0
  br i1 %lcmp.mod2081.not, label %.lr.ph.i59.i.prol.loopexit, label %.lr.ph.i59.i.prol

.lr.ph.i59.i.prol:                                ; preds = %.lr.ph.i59.i.preheader, %.lr.ph.i59.i.prol
  %.121.i60.i.prol = phi ptr [ %i.nd, %.lr.ph.i59.i.prol ], [ %.121.i60.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %.11520.i61.i.prol = phi ptr [ %i.nb, %.lr.ph.i59.i.prol ], [ %.11520.i61.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %prol.iter2082 = phi i64 [ %prol.iter2082.next, %.lr.ph.i59.i.prol ], [ 0, %.lr.ph.i59.i.preheader ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.11520.i61.i.prol, i64 1 ; 2 uses
  %i.nc = load i8, ptr %.11520.i61.i.prol, align 1, !tbaa !30
  %i.nd = getelementptr inbounds nuw i8, ptr %.121.i60.i.prol, i64 1 ; 2 uses
  store i8 %i.nc, ptr %.121.i60.i.prol, align 1, !tbaa !30
  %prol.iter2082.next = add i64 %prol.iter2082, 1 ; 2 uses
  %prol.iter2082.cmp.not = icmp eq i64 %prol.iter2082.next, %xtraiter2080
  br i1 %prol.iter2082.cmp.not, label %.lr.ph.i59.i.prol.loopexit, label %.lr.ph.i59.i.prol, !llvm.loop !102

.lr.ph.i59.i.prol.loopexit:                       ; preds = %.lr.ph.i59.i.prol, %.lr.ph.i59.i.preheader
  %.121.i60.i.unr = phi ptr [ %.121.i60.i.ph, %.lr.ph.i59.i.preheader ], [ %i.nd, %.lr.ph.i59.i.prol ]
  %.11520.i61.i.unr = phi ptr [ %.11520.i61.i.ph, %.lr.ph.i59.i.preheader ], [ %i.nb, %.lr.ph.i59.i.prol ]
  %i.ne = sub i64 %.11520.i61.i.ph2079, %.5316.i.lcssa.i1748
  %i.nf = icmp ugt i64 %i.ne, -8
  br i1 %i.nf, label %ZSTD_storeSeq.exit354.i.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.prol.loopexit, %.lr.ph.i59.i
  %.121.i60.i = phi ptr [ %i.od, %.lr.ph.i59.i ], [ %.121.i60.i.unr, %.lr.ph.i59.i.prol.loopexit ] ; 9 uses
  %.11520.i61.i = phi ptr [ %i.ob, %.lr.ph.i59.i ], [ %.11520.i61.i.unr, %.lr.ph.i59.i.prol.loopexit ] ; 9 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 1
  %i.nh = load i8, ptr %.11520.i61.i, align 1, !tbaa !30
  %i.ni = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 1
  store i8 %i.nh, ptr %.121.i60.i, align 1, !tbaa !30
  %i.nj = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 2
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !30
  %i.nl = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 2
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !30
  %i.nm = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 3
  %i.nn = load i8, ptr %i.nj, align 1, !tbaa !30
  %i.no = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 3
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !30
  %i.np = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 4
  %i.nq = load i8, ptr %i.nm, align 1, !tbaa !30
  %i.nr = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 4
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !30
  %i.ns = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 5
  %i.nt = load i8, ptr %i.np, align 1, !tbaa !30
  %i.nu = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 5
  store i8 %i.nt, ptr %i.nr, align 1, !tbaa !30
  %i.nv = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 6
  %i.nw = load i8, ptr %i.ns, align 1, !tbaa !30
  %i.nx = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 6
  store i8 %i.nw, ptr %i.nu, align 1, !tbaa !30
  %i.ny = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 7
  %i.nz = load i8, ptr %i.nv, align 1, !tbaa !30
  %i.oa = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 7
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !30
  %i.ob = getelementptr inbounds nuw i8, ptr %.11520.i61.i, i64 8 ; 2 uses
  %i.oc = load i8, ptr %i.ny, align 1, !tbaa !30
  %i.od = getelementptr inbounds nuw i8, ptr %.121.i60.i, i64 8
  store i8 %i.oc, ptr %i.oa, align 1, !tbaa !30
  %exitcond.not.i62.i.7 = icmp eq ptr %i.ob, %.5316.i.lcssa.i
  br i1 %exitcond.not.i62.i.7, label %ZSTD_storeSeq.exit354.i.i, label %.lr.ph.i59.i, !llvm.loop !103

ZSTD_storeSeq.exit354.i.thread.i:                 ; preds = %bb.au, %bb.at
  %i.oe = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ls
  store ptr %i.of, ptr %i.bi, align 8, !tbaa !35
  %.pre243.i = load ptr, ptr %i.bl, align 8, !tbaa !40
  br label %bb.bc

ZSTD_storeSeq.exit354.i.i:                        ; preds = %bb.aw, %.lr.ph.i59.i.prol.loopexit, %.lr.ph.i59.i, %middle.block1761, %vec.epilog.middle.block1777, %ZSTD_wildcopy.exit.i56.i
  %i.og = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ls
  store ptr %i.oh, ptr %i.bi, align 8, !tbaa !35
  %i.oi = icmp ugt i64 %i.ls, 65535
  %.pre244.i = load ptr, ptr %i.bl, align 8, !tbaa !40 ; 3 uses
  br i1 %i.oi, label %bb.bb, label %bb.bc, !prof !41

bb.bb:                                            ; preds = %ZSTD_storeSeq.exit354.i.i
  store i32 1, ptr %i.bk, align 8, !tbaa !42
  %i.oj = load ptr, ptr %1, align 8, !tbaa !43
  %i.ok = ptrtoint ptr %.pre244.i to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = lshr exact i64 %i.om, 3
  %i.oo = trunc i64 %i.on to i32
  store i32 %i.oo, ptr %i.bm, align 4, !tbaa !44
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %ZSTD_storeSeq.exit354.i.i, %ZSTD_storeSeq.exit354.i.thread.i
  %i.op = phi ptr [ %.pre243.i, %ZSTD_storeSeq.exit354.i.thread.i ], [ %.pre244.i, %bb.bb ], [ %.pre244.i, %ZSTD_storeSeq.exit354.i.i ] ; 4 uses
  %i.oq = trunc i64 %i.ls to i16
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  store i16 %i.oq, ptr %i.or, align 4, !tbaa !46
  store i32 %i.lt, ptr %i.op, align 4, !tbaa !47
  %i.os = add i64 %.4.i.lcssa.i, -3               ; 3 uses
  %i.ot = icmp ugt i64 %i.os, 65535
  br i1 %i.ot, label %ZSTD_storeSeqOnly.exit.i.sink.split.i, label %ZSTD_storeSeqOnly.exit.i.i, !prof !48

ZSTD_match4Found_cmov.exit.thread.i:              ; preds = %ZSTD_match4Found_cmov.exit.i, %.thread.i
  %.not337.i.i = icmp uge ptr %.1308.i.i, %.0264.i.i ; 2 uses
  %i.ou = zext i1 %.not337.i.i to i64
  %.1268.i.i = add i64 %.0267.i.i, %i.ou          ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.1308.i.i, i64 %.1268.i.i ; 2 uses
  %i.ow = icmp ugt ptr %i.ov, %i.r
  br i1 %i.ow, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.bd

bb.bd:                                            ; preds = %ZSTD_match4Found_cmov.exit.thread.i
  %.1265.i.idx.i = select i1 %.not337.i.i, i64 256, i64 0
  %.1265.i.i = getelementptr inbounds nuw i8, ptr %.0264.i.i, i64 %.1265.i.idx.i
  %i.ox = lshr i32 %i.ce, 8
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !22 ; 2 uses
  %i.pb = xor i32 %i.pa, %i.ce
  br label %bb.e

ZSTD_storeSeqOnly.exit.i.sink.split.i:            ; preds = %bb.bc, %bb.af, %bb.q
  %.sink314.i = phi ptr [ %i.js, %bb.af ], [ %i.ft, %bb.q ], [ %i.op, %bb.bc ] ; 2 uses
  %.sink310.ph.i = phi i64 [ %i.jv, %bb.af ], [ %i.fw, %bb.q ], [ %i.os, %bb.bc ]
  %.6317.i.ph.ph.i = phi ptr [ %.2313.i.lcssa.i, %bb.af ], [ %i.cp, %bb.q ], [ %.5316.i.lcssa.i, %bb.bc ]
  %.4295.i.ph.ph.i = phi i32 [ %i.gf, %bb.af ], [ %.0291.i200.i, %bb.q ], [ %i.ka, %bb.bc ]
  %.4289.i.ph.ph.i = phi i32 [ %.0291.i200.i, %bb.af ], [ %.0285.i201.i, %bb.q ], [ %.0291.i200.i, %bb.bc ]
  %.5.i.ph.ph.i = phi i64 [ %.1281.i.lcssa.i, %bb.af ], [ %i.cu, %bb.q ], [ %.4.i.lcssa.i, %bb.bc ]
  store i32 2, ptr %i.bk, align 8, !tbaa !42
  %i.pc = load ptr, ptr %1, align 8, !tbaa !43
  %i.pd = ptrtoint ptr %.sink314.i to i64
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = lshr exact i64 %i.pf, 3
  %i.ph = trunc i64 %i.pg to i32
  store i32 %i.ph, ptr %i.bm, align 4, !tbaa !44
  br label %ZSTD_storeSeqOnly.exit.i.i

ZSTD_storeSeqOnly.exit.i.i:                       ; preds = %ZSTD_storeSeqOnly.exit.i.sink.split.i, %bb.bc, %bb.af, %bb.q
  %.sink310.i = phi i64 [ %i.fw, %bb.q ], [ %i.jv, %bb.af ], [ %i.os, %bb.bc ], [ %.sink310.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ]
  %.sink309.i = phi ptr [ %i.ft, %bb.q ], [ %i.js, %bb.af ], [ %i.op, %bb.bc ], [ %.sink314.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ] ; 2 uses
  %.6317.i.ph.i = phi ptr [ %i.cp, %bb.q ], [ %.2313.i.lcssa.i, %bb.af ], [ %.5316.i.lcssa.i, %bb.bc ], [ %.6317.i.ph.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ]
  %.4295.i.ph.i = phi i32 [ %.0291.i200.i, %bb.q ], [ %i.gf, %bb.af ], [ %i.ka, %bb.bc ], [ %.4295.i.ph.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ] ; 2 uses
  %.4289.i.ph.i = phi i32 [ %.0285.i201.i, %bb.q ], [ %.0291.i200.i, %bb.af ], [ %.0291.i200.i, %bb.bc ], [ %.4289.i.ph.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ] ; 2 uses
  %.5.i.ph.i = phi i64 [ %i.cu, %bb.q ], [ %.1281.i.lcssa.i, %bb.af ], [ %.4.i.lcssa.i, %bb.bc ], [ %.5.i.ph.ph.i, %ZSTD_storeSeqOnly.exit.i.sink.split.i ]
  %i.pi = trunc i64 %.sink310.i to i16
  %i.pj = getelementptr inbounds nuw i8, ptr %.sink309.i, i64 6
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !49
  %i.pk = getelementptr inbounds nuw i8, ptr %.sink309.i, i64 8 ; 2 uses
  store ptr %i.pk, ptr %i.bl, align 8, !tbaa !40
  %i.pl = getelementptr inbounds nuw i8, ptr %.6317.i.ph.i, i64 %.5.i.ph.i ; 4 uses
  %.not338.i.i = icmp ugt ptr %i.pl, %i.r
  br i1 %.not338.i.i, label %.thread122.i, label %bb.be

bb.be:                                            ; preds = %ZSTD_storeSeqOnly.exit.i.i
  %i.pm = add i32 %.0270.i.i, 2
  %i.pn = and i64 %.0270.i.in.i, 4294967295
  %i.po = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  %.val9.i = load i32, ptr %i.pp, align 1, !tbaa !22
  %i.pq = mul i32 %.val9.i, -1640531535
  %i.pr = lshr i32 %i.pq, %i.bf
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ps
  store i32 %i.pm, ptr %i.pt, align 4, !tbaa !22
  %i.pu = getelementptr inbounds i8, ptr %i.pl, i64 -2 ; 2 uses
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = sub i64 %i.pv, %i.as
  %i.px = trunc i64 %i.pw to i32
  %.val8.i = load i32, ptr %i.pu, align 1, !tbaa !22
  %i.py = mul i32 %.val8.i, -1640531535
  %i.pz = lshr i32 %i.py, %i.bf
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qa
  store i32 %i.px, ptr %i.qb, align 4, !tbaa !22
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bk, %bb.be
  %i.qc = phi ptr [ %i.pk, %bb.be ], [ %i.rd, %bb.bk ]
  %.5290.i195.i = phi i32 [ %.4289.i.ph.i, %bb.be ], [ %.5296.i194.i, %bb.bk ] ; 5 uses
  %.5296.i194.i = phi i32 [ %.4295.i.ph.i, %bb.be ], [ %.5290.i195.i, %bb.bk ] ; 4 uses
  %.7318.i193.i = phi ptr [ %i.pl, %bb.be ], [ %i.rj, %bb.bk ] ; 9 uses
  %i.qd = ptrtoint ptr %.7318.i193.i to i64
  %i.qe = sub i64 %i.qd, %i.as
  %i.qf = trunc i64 %i.qe to i32                  ; 2 uses
  %i.qg = sub i32 %i.qf, %.5290.i195.i            ; 3 uses
  %i.qh = icmp ult i32 %i.qg, %i.n                ; 2 uses
  %i.qi = zext i32 %i.qg to i64
  %.v.i = select i1 %i.qh, ptr %i.bs, ptr %i.k
  %i.qj = getelementptr inbounds nuw i8, ptr %.v.i, i64 %i.qi ; 2 uses
  %i.qk = sub i32 %i.qg, %i.n
  %6 = icmp ult i32 %i.qk, -3
  br i1 %6, label %bb.bg, label %.thread122.i

bb.bg:                                            ; preds = %bb.bf
  %.val4.i = load i32, ptr %i.qj, align 1, !tbaa !22
  %.7318.i.val.i = load i32, ptr %.7318.i193.i, align 1, !tbaa !22
  %i.ql = icmp eq i32 %.val4.i, %.7318.i.val.i
  br i1 %i.ql, label %bb.bh, label %.thread122.i

bb.bh:                                            ; preds = %bb.bg
  %i.qm = select i1 %i.qh, ptr %i.af, ptr %i.q
  %i.qn = getelementptr inbounds nuw i8, ptr %.7318.i193.i, i64 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.qp = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.qn, ptr noundef nonnull %i.qo, ptr noundef %i.q, ptr noundef %i.qm, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i = icmp ugt ptr %.7318.i193.i, %i.bh
  br i1 %.not.i.i.i, label %ZSTD_storeSeq.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qq = load ptr, ptr %i.bi, align 8, !tbaa !35
  %.1302.i.val.i = load <2 x i64>, ptr %.7318.i193.i, align 1, !tbaa !30
  store <2 x i64> %.1302.i.val.i, ptr %i.qq, align 1, !tbaa !30
  %.pre245.i = load ptr, ptr %i.bl, align 8, !tbaa !40
  br label %ZSTD_storeSeq.exit.i.i

ZSTD_storeSeq.exit.i.i:                           ; preds = %bb.bi, %bb.bh
  %i.qr = phi ptr [ %i.qc, %bb.bh ], [ %.pre245.i, %bb.bi ] ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  store i16 0, ptr %i.qs, align 4, !tbaa !46
  store i32 1, ptr %i.qr, align 4, !tbaa !47
  %i.qt = add i64 %i.qp, 1                        ; 2 uses
  %i.qu = icmp ugt i64 %i.qt, 65535
  br i1 %i.qu, label %bb.bj, label %bb.bk, !prof !48

bb.bj:                                            ; preds = %ZSTD_storeSeq.exit.i.i
  store i32 2, ptr %i.bk, align 8, !tbaa !42
  %i.qv = load ptr, ptr %1, align 8, !tbaa !43
  %i.qw = ptrtoint ptr %i.qr to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = lshr exact i64 %i.qy, 3
  %i.ra = trunc i64 %i.qz to i32
  store i32 %i.ra, ptr %i.bm, align 4, !tbaa !44
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %ZSTD_storeSeq.exit.i.i
  %i.rb = trunc i64 %i.qt to i16
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qr, i64 6
  store i16 %i.rb, ptr %i.rc, align 2, !tbaa !49
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 2 uses
  store ptr %i.rd, ptr %i.bl, align 8, !tbaa !40
  %.7318.i.val7.i = load i32, ptr %.7318.i193.i, align 1, !tbaa !22
  %i.re = mul i32 %.7318.i.val7.i, -1640531535
  %i.rf = lshr i32 %i.re, %i.bf
  %i.rg = zext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rg
  store i32 %i.qf, ptr %i.rh, align 4, !tbaa !22
  %i.ri = getelementptr i8, ptr %.7318.i193.i, i64 %i.qp
  %i.rj = getelementptr i8, ptr %i.ri, i64 4      ; 3 uses
  %.not339.i.i = icmp ugt ptr %i.rj, %i.r
  br i1 %.not339.i.i, label %.thread122.i, label %bb.bf

.thread122.i:                                     ; preds = %bb.bk, %bb.bg, %bb.bf, %ZSTD_storeSeqOnly.exit.i.i
  %.9320.i.i = phi ptr [ %i.pl, %ZSTD_storeSeqOnly.exit.i.i ], [ %.7318.i193.i, %bb.bf ], [ %.7318.i193.i, %bb.bg ], [ %i.rj, %bb.bk ] ; 4 uses
  %.7298.i.i = phi i32 [ %.4295.i.ph.i, %ZSTD_storeSeqOnly.exit.i.i ], [ %.5296.i194.i, %bb.bf ], [ %.5296.i194.i, %bb.bg ], [ %.5290.i195.i, %bb.bk ] ; 2 uses
  %.7.i.i = phi i32 [ %.4289.i.ph.i, %ZSTD_storeSeqOnly.exit.i.i ], [ %.5290.i195.i, %bb.bf ], [ %.5290.i195.i, %bb.bg ], [ %.5296.i194.i, %bb.bk ] ; 2 uses
  %.0307.i.i = getelementptr inbounds nuw i8, ptr %.9320.i.i, i64 %i.l ; 2 uses
  %.not332.i.i = icmp ugt ptr %.0307.i.i, %i.r
  br i1 %.not332.i.i, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.d

bb.bl:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i28, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.rk = zext nneg i32 %i.ar to i64
  %i.rl = shl nuw i64 4, %i.rk
  %.not207.i25 = icmp ugt i32 %i.ar, 61
  br i1 %.not207.i25, label %.loopexit.i28, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.bm, %.lr.ph.i26
  %.0284.i174.i27 = phi i64 [ %i.rn, %.lr.ph.i26 ], [ 0, %bb.bm ] ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0284.i174.i27
  tail call void @llvm.prefetch.p0(ptr %i.rm, i32 0, i32 2, i32 1)
  %i.rn = add nuw i64 %.0284.i174.i27, 64         ; 2 uses
  %i.ro = icmp ult i64 %i.rn, %i.rl
  br i1 %i.ro, label %.lr.ph.i26, label %.loopexit.i28, !llvm.loop !89

.loopexit.i28:                                    ; preds = %.lr.ph.i26, %bb.bm, %bb.bl
  %i.rp = add nsw i64 %4, -8
  %.not332.i197.i29 = icmp slt i64 %i.rp, %i.l
  br i1 %.not332.i197.i29, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %.lr.ph203.i30

.lr.ph203.i30:                                    ; preds = %.loopexit.i28
  %.0307.i196.i31 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.rq = and i64 %i.ap, 4294967295
  %i.rr = icmp eq i64 %i.rq, 0
  %i.rs = zext i1 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %3, i64 %i.rs
  %i.ru = sub i32 64, %i.f
  %i.rv = zext nneg i32 %i.ru to i64              ; 4 uses
  %i.rw = sub i32 56, %i.ar
  %i.rx = zext nneg i32 %i.rw to i64              ; 2 uses
  %i.ry = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 19 uses
  %i.sa = ptrtoint ptr %i.ry to i64               ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.se = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 2 uses
  %i.sf = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.sg = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.sh = zext i32 %i.ai to i64
  %i.si = sub nsw i64 0, %i.sh
  %i.sj = getelementptr inbounds i8, ptr %i.ac, i64 %i.si
  br label %bb.bn

bb.bn:                                            ; preds = %.thread122.i105, %.lr.ph203.i30
  %.0307.i202.i32 = phi ptr [ %.0307.i196.i31, %.lr.ph203.i30 ], [ %.0307.i.i109, %.thread122.i105 ]
  %.0285.i201.i33 = phi i32 [ %i.u, %.lr.ph203.i30 ], [ %.7.i.i108, %.thread122.i105 ] ; 3 uses
  %.0291.i200.i34 = phi i32 [ %i.s, %.lr.ph203.i30 ], [ %.7298.i.i107, %.thread122.i105 ] ; 8 uses
  %.0301.i199.i35 = phi ptr [ %3, %.lr.ph203.i30 ], [ %.9320.i.i106, %.thread122.i105 ] ; 26 uses
  %.0311.i198.i36 = phi ptr [ %i.rt, %.lr.ph203.i30 ], [ %.9320.i.i106, %.thread122.i105 ] ; 3 uses
  %.0311.i.val11.i37 = load i64, ptr %.0311.i198.i36, align 1, !tbaa !21
  %i.sk = mul i64 %.0311.i.val11.i37, -3523014627271114752 ; 2 uses
  %i.sl = lshr i64 %i.sk, %i.rx                   ; 2 uses
  %i.sm = lshr i64 %i.sl, 8
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !22 ; 2 uses
  %i.sp = zext i32 %i.so to i64
  %i.sq = xor i64 %i.sl, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %.0311.i198.i36, i64 256
  %invariant.op2238 = sub i32 1, %.0291.i200.i34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.dn, %bb.bn
  %.1312.i.i38 = phi ptr [ %.0311.i198.i36, %bb.bn ], [ %.1308.i.i39, %bb.dn ] ; 16 uses
  %.1308.i.i39 = phi ptr [ %.0307.i202.i32, %bb.bn ], [ %i.afm, %bb.dn ] ; 4 uses
  %.pn209.i40 = phi i64 [ %i.sk, %bb.bn ], [ %i.su, %bb.dn ]
  %.0276.i.i41 = phi i32 [ %i.so, %bb.bn ], [ %i.afq, %bb.dn ]
  %.0274.i.in.in.in.i42 = phi i64 [ %i.sq, %bb.bn ], [ %i.afs, %bb.dn ]
  %.0267.i.i43 = phi i64 [ %i.l, %bb.bn ], [ %.1268.i.i63, %bb.dn ]
  %.0264.i.i44 = phi ptr [ %i.sr, %bb.bn ], [ %.1265.i.i65, %bb.dn ] ; 2 uses
  %.0278.i.i45 = lshr i64 %.pn209.i40, %i.rv
  %.0272.i.in.i46 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0278.i.i45 ; 2 uses
  %.0272.i.i47 = load i32, ptr %.0272.i.in.i46, align 4, !tbaa !22 ; 5 uses
  %.pn.i48 = ptrtoint ptr %.1312.i.i38 to i64     ; 5 uses
  %.0270.i.in.i49 = sub i64 %.pn.i48, %i.as       ; 2 uses
  %.0270.i.i50 = trunc i64 %.0270.i.in.i49 to i32 ; 4 uses
  %.0274.i.in.in.i51 = and i64 %.0274.i.in.in.in.i42, 255
  %.0274.i.in.not.i = icmp eq i64 %.0274.i.in.in.i51, 0
  %i.ss = zext i32 %.0272.i.i47 to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ss ; 4 uses
  %.reass.i53.reass.reass.reass = add i32 %.0270.i.i50, %invariant.op2238 ; 4 uses
  %.1308.i.val10.i54 = load i64, ptr %.1308.i.i39, align 1, !tbaa !21
  %i.su = mul i64 %.1308.i.val10.i54, -3523014627271114752 ; 2 uses
  %i.sv = lshr i64 %i.su, %i.rx                   ; 2 uses
  store i32 %.0270.i.i50, ptr %.0272.i.in.i46, align 4, !tbaa !22
  %i.sw = sub i32 %.reass.i53.reass.reass.reass, %i.n
  %7 = icmp ult i32 %i.sw, -3
  br i1 %7, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %bb.bo
  %i.sx = icmp ult i32 %.reass.i53.reass.reass.reass, %i.n ; 2 uses
  %i.sy = sub i32 %.reass.i53.reass.reass.reass, %i.ai
  %i.sz = zext i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.sz
  %i.tb = zext i32 %.reass.i53.reass.reass.reass to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.tb
  %i.td = select i1 %i.sx, ptr %i.ta, ptr %i.tc   ; 2 uses
  %.val6.i55 = load i32, ptr %i.td, align 1, !tbaa !22
  %i.te = getelementptr inbounds nuw i8, ptr %.1312.i.i38, i64 1
  %.val5.i56 = load i32, ptr %i.te, align 1, !tbaa !22
  %i.tf = icmp eq i32 %.val6.i55, %.val5.i56
  br i1 %i.tf, label %bb.bq, label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  %.1312.i.i38.lcssa20332037 = ptrtoaddr ptr %.1312.i.i38 to i64 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.1312.i.i38, i64 1 ; 5 uses
  %i.th = select i1 %i.sx, ptr %i.af, ptr %i.q
  %i.ti = getelementptr inbounds nuw i8, ptr %.1312.i.i38, i64 5
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.tk = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ti, ptr noundef nonnull %i.tj, ptr noundef %i.q, ptr noundef %i.th, ptr noundef %i.p) ; 2 uses
  %i.tl = add i64 %i.tk, 4                        ; 2 uses
  %i.tm = ptrtoint ptr %i.tg to i64
  %i.tn = ptrtoint ptr %.0301.i199.i35 to i64     ; 2 uses
  %i.to = sub i64 %i.tm, %i.tn                    ; 7 uses
  %.not.i357.i.i214 = icmp ugt ptr %i.tg, %i.ry
  %i.tp = load ptr, ptr %i.rz, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i357.i.i214, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.0301.i.val.i215 = load <2 x i64>, ptr %.0301.i199.i35, align 1, !tbaa !30
  store <2 x i64> %.0301.i.val.i215, ptr %i.tp, align 1, !tbaa !30
  %i.tq = icmp ugt i64 %i.to, 16
  br i1 %i.tq, label %bb.bs, label %ZSTD_storeSeq.exit358.i.thread.i216

bb.bs:                                            ; preds = %bb.br
  %i.tr = load ptr, ptr %i.rz, align 8, !tbaa !35 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %.0301.i199.i35, i64 16 ; 2 uses
  %i.tu = getelementptr i8, ptr %i.tr, i64 %i.to
  %.val13.i218 = load <2 x i64>, ptr %i.tt, align 1, !tbaa !30
  store <2 x i64> %.val13.i218, ptr %i.ts, align 1, !tbaa !30
  %i.tv = icmp ult i64 %i.to, 33
  br i1 %i.tv, label %ZSTD_storeSeq.exit358.i.thread.i216, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %bb.bt
  %.pn.i.i.i219 = phi ptr [ %i.tt, %bb.bt ], [ %i.ty, %bb.bu ] ; 2 uses
  %.1.i.i.i220 = phi ptr [ %i.tw, %bb.bt ], [ %i.tz, %bb.bu ] ; 3 uses
  %.130.i.i.i221 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i219, i64 16
  %.130.i.i.val.i222 = load <2 x i64>, ptr %.130.i.i.i221, align 1, !tbaa !30
  store <2 x i64> %.130.i.i.val.i222, ptr %.1.i.i.i220, align 1, !tbaa !30
  %i.tx = getelementptr inbounds nuw i8, ptr %.1.i.i.i220, i64 16
  %i.ty = getelementptr inbounds nuw i8, ptr %.pn.i.i.i219, i64 32 ; 2 uses
  %.val12.i223 = load <2 x i64>, ptr %i.ty, align 1, !tbaa !30
  store <2 x i64> %.val12.i223, ptr %i.tx, align 1, !tbaa !30
  %i.tz = getelementptr inbounds nuw i8, ptr %.1.i.i.i220, i64 32 ; 2 uses
  %i.ua = icmp ult ptr %i.tz, %i.tu
  br i1 %i.ua, label %bb.bu, label %ZSTD_storeSeq.exit358.i.i224, !llvm.loop !0

bb.bv:                                            ; preds = %bb.bq
  %.not.i20.i226 = icmp ugt ptr %.0301.i199.i35, %i.ry
  br i1 %.not.i20.i226, label %ZSTD_wildcopy.exit.i24.i233, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ub = sub i64 %i.sa, %i.tn                    ; 2 uses
  %i.uc = getelementptr inbounds i8, ptr %i.tp, i64 %i.ub ; 3 uses
  %.val19.i.i227 = load <2 x i64>, ptr %.0301.i199.i35, align 1, !tbaa !30
  store <2 x i64> %.val19.i.i227, ptr %i.tp, align 1, !tbaa !30
  %i.ud = icmp ult i64 %i.ub, 17
  br i1 %i.ud, label %ZSTD_wildcopy.exit.i24.i233, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %bb.bx
  %.pn.i.i21.i228 = phi ptr [ %.0301.i199.i35, %bb.bx ], [ %i.ug, %bb.by ] ; 2 uses
  %.1.i.i22.i229 = phi ptr [ %i.ue, %bb.bx ], [ %i.uh, %bb.by ] ; 3 uses
  %.130.i.i23.i230 = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i228, i64 16
  %.130.i.val.i.i231 = load <2 x i64>, ptr %.130.i.i23.i230, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i.i231, ptr %.1.i.i22.i229, align 1, !tbaa !30
  %i.uf = getelementptr inbounds nuw i8, ptr %.1.i.i22.i229, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i228, i64 32 ; 2 uses
  %.val.i.i232 = load <2 x i64>, ptr %i.ug, align 1, !tbaa !30
  store <2 x i64> %.val.i.i232, ptr %i.uf, align 1, !tbaa !30
  %i.uh = getelementptr inbounds nuw i8, ptr %.1.i.i22.i229, i64 32 ; 2 uses
  %i.ui = icmp ult ptr %i.uh, %i.uc
  br i1 %i.ui, label %bb.by, label %ZSTD_wildcopy.exit.i24.i233, !llvm.loop !0

ZSTD_wildcopy.exit.i24.i233:                      ; preds = %bb.by, %bb.bw, %bb.bv
  %.014.i.i234 = phi ptr [ %.0301.i199.i35, %bb.bv ], [ %i.ry, %bb.bw ], [ %i.ry, %bb.by ] ; 7 uses
  %.0.i25.i235 = phi ptr [ %i.tp, %bb.bv ], [ %i.uc, %bb.bw ], [ %i.uc, %bb.by ] ; 6 uses
  %i.uj = icmp ult ptr %.014.i.i234, %i.tg
  br i1 %i.uj, label %iter.check1612, label %ZSTD_storeSeq.exit358.i.i224

iter.check1612:                                   ; preds = %ZSTD_wildcopy.exit.i24.i233
  %.014.i.i2341594 = ptrtoaddr ptr %.014.i.i234 to i64 ; 2 uses
  %.0.i25.i2351593 = ptrtoaddr ptr %.0.i25.i235 to i64
  %reass.sub1858.a = sub i64 %.pn.i48, %.014.i.i2341594
  %i.uk = add i64 %reass.sub1858.a, 1             ; 7 uses
  %min.iters.check1596 = icmp ult i64 %i.uk, 8
  %i.ul = sub i64 %.014.i.i2341594, %.0.i25.i2351593
  %diff.check1595.a = icmp ugt i64 %i.ul, -32
  %or.cond1863 = select i1 %min.iters.check1596, i1 true, i1 %diff.check1595.a
  br i1 %or.cond1863, label %.lr.ph.i.i236.preheader, label %vector.main.loop.iter.check1597

vector.main.loop.iter.check1597:                  ; preds = %iter.check1612
  %min.iters.check1598 = icmp ult i64 %i.uk, 32
  br i1 %min.iters.check1598, label %vec.epilog.ph1616, label %vector.ph1599

vector.ph1599:                                    ; preds = %vector.main.loop.iter.check1597
  %i.um = and i64 %i.uk, 24
  %n.vec1600 = and i64 %i.uk, -32                 ; 5 uses
  %i.un = getelementptr i8, ptr %.0.i25.i235, i64 %n.vec1600
  %i.uo = getelementptr i8, ptr %.014.i.i234, i64 %n.vec1600
  br label %vector.body1601

vector.body1601:                                  ; preds = %vector.ph1599, %vector.body1601
  %index1602 = phi i64 [ 0, %vector.ph1599 ], [ %index.next1607, %vector.body1601 ] ; 3 uses
  %next.gep1603 = getelementptr i8, ptr %.0.i25.i235, i64 %index1602 ; 2 uses
  %next.gep1604.a = getelementptr i8, ptr %.014.i.i234, i64 %index1602 ; 2 uses
  %i.up = getelementptr i8, ptr %next.gep1604.a, i64 16
  %wide.load1605 = load <16 x i8>, ptr %next.gep1604.a, align 1, !tbaa !30
  %wide.load1606.a = load <16 x i8>, ptr %i.up, align 1, !tbaa !30
  %i.uq = getelementptr i8, ptr %next.gep1603, i64 16
  store <16 x i8> %wide.load1605, ptr %next.gep1603, align 1, !tbaa !30
  store <16 x i8> %wide.load1606.a, ptr %i.uq, align 1, !tbaa !30
  %index.next1607 = add nuw i64 %index1602, 32    ; 2 uses
  %i.ur = icmp eq i64 %index.next1607, %n.vec1600
  br i1 %i.ur, label %middle.block1608, label %vector.body1601, !llvm.loop !104

middle.block1608:                                 ; preds = %vector.body1601
  %cmp.n1609 = icmp eq i64 %i.uk, %n.vec1600
  br i1 %cmp.n1609, label %ZSTD_storeSeq.exit358.i.i224, label %vec.epilog.iter.check1614

vec.epilog.iter.check1614:                        ; preds = %middle.block1608
  %min.epilog.iters.check1615 = icmp eq i64 %i.um, 0
  br i1 %min.epilog.iters.check1615, label %.lr.ph.i.i236.preheader, label %vec.epilog.ph1616, !prof !38

vec.epilog.ph1616:                                ; preds = %vector.main.loop.iter.check1597, %vec.epilog.iter.check1614
  %vec.epilog.resume.val1610 = phi i64 [ %n.vec1600, %vec.epilog.iter.check1614 ], [ 0, %vector.main.loop.iter.check1597 ]
  %n.vec1617 = and i64 %i.uk, -8                  ; 4 uses
  %i.us = getelementptr i8, ptr %.0.i25.i235, i64 %n.vec1617
  %i.ut = getelementptr i8, ptr %.014.i.i234, i64 %n.vec1617
  br label %vec.epilog.vector.body1618

vec.epilog.vector.body1618:                       ; preds = %vec.epilog.vector.body1618, %vec.epilog.ph1616
  %index1619 = phi i64 [ %vec.epilog.resume.val1610, %vec.epilog.ph1616 ], [ %index.next1623, %vec.epilog.vector.body1618 ] ; 3 uses
  %next.gep1620 = getelementptr i8, ptr %.0.i25.i235, i64 %index1619
  %next.gep1621.a = getelementptr i8, ptr %.014.i.i234, i64 %index1619
  %wide.load1622 = load <8 x i8>, ptr %next.gep1621.a, align 1, !tbaa !30
  store <8 x i8> %wide.load1622, ptr %next.gep1620, align 1, !tbaa !30
  %index.next1623 = add nuw i64 %index1619, 8     ; 2 uses
  %i.uu = icmp eq i64 %index.next1623, %n.vec1617
  br i1 %i.uu, label %vec.epilog.middle.block1624, label %vec.epilog.vector.body1618, !llvm.loop !105

vec.epilog.middle.block1624:                      ; preds = %vec.epilog.vector.body1618
  %cmp.n1625 = icmp eq i64 %i.uk, %n.vec1617
  br i1 %cmp.n1625, label %ZSTD_storeSeq.exit358.i.i224, label %.lr.ph.i.i236.preheader

.lr.ph.i.i236.preheader:                          ; preds = %iter.check1612, %vec.epilog.iter.check1614, %vec.epilog.middle.block1624
  %.121.i.i237.ph = phi ptr [ %.0.i25.i235, %iter.check1612 ], [ %i.un, %vec.epilog.iter.check1614 ], [ %i.us, %vec.epilog.middle.block1624 ] ; 2 uses
  %.11520.i.i238.ph = phi ptr [ %.014.i.i234, %iter.check1612 ], [ %i.uo, %vec.epilog.iter.check1614 ], [ %i.ut, %vec.epilog.middle.block1624 ] ; 3 uses
  %.11520.i.i238.ph2032 = ptrtoaddr ptr %.11520.i.i238.ph to i64 ; 2 uses
  %reass.sub2084.a = sub i64 %.1312.i.i38.lcssa20332037, %.11520.i.i238.ph2032
  %i.uv = add i64 %reass.sub2084.a, 1
  %i.uw = sub i64 %.1312.i.i38.lcssa20332037, %.11520.i.i238.ph2032
  %xtraiter2038.a = and i64 %i.uv, 7              ; 2 uses
  %lcmp.mod2039.not.a = icmp eq i64 %xtraiter2038.a, 0
  br i1 %lcmp.mod2039.not.a, label %.lr.ph.i.i236.prol.loopexit, label %.lr.ph.i.i236.prol

.lr.ph.i.i236.prol:                               ; preds = %.lr.ph.i.i236.preheader, %.lr.ph.i.i236.prol
  %.121.i.i237.prol = phi ptr [ %i.uz, %.lr.ph.i.i236.prol ], [ %.121.i.i237.ph, %.lr.ph.i.i236.preheader ] ; 2 uses
  %.11520.i.i238.prol = phi ptr [ %i.ux, %.lr.ph.i.i236.prol ], [ %.11520.i.i238.ph, %.lr.ph.i.i236.preheader ] ; 2 uses
  %prol.iter2040.a = phi i64 [ %prol.iter2040.next.a, %.lr.ph.i.i236.prol ], [ 0, %.lr.ph.i.i236.preheader ]
  %i.ux = getelementptr inbounds nuw i8, ptr %.11520.i.i238.prol, i64 1 ; 2 uses
  %i.uy = load i8, ptr %.11520.i.i238.prol, align 1, !tbaa !30
  %i.uz = getelementptr inbounds nuw i8, ptr %.121.i.i237.prol, i64 1 ; 2 uses
  store i8 %i.uy, ptr %.121.i.i237.prol, align 1, !tbaa !30
  %prol.iter2040.next.a = add i64 %prol.iter2040.a, 1 ; 2 uses
  %prol.iter2040.cmp.not.a = icmp eq i64 %prol.iter2040.next.a, %xtraiter2038.a
  br i1 %prol.iter2040.cmp.not.a, label %.lr.ph.i.i236.prol.loopexit, label %.lr.ph.i.i236.prol, !llvm.loop !106

.lr.ph.i.i236.prol.loopexit:                      ; preds = %.lr.ph.i.i236.prol, %.lr.ph.i.i236.preheader
  %.121.i.i237.unr = phi ptr [ %.121.i.i237.ph, %.lr.ph.i.i236.preheader ], [ %i.uz, %.lr.ph.i.i236.prol ]
  %.11520.i.i238.unr = phi ptr [ %.11520.i.i238.ph, %.lr.ph.i.i236.preheader ], [ %i.ux, %.lr.ph.i.i236.prol ]
  %i.va = icmp ult i64 %i.uw, 7
  br i1 %i.va, label %ZSTD_storeSeq.exit358.i.i224, label %.lr.ph.i.i236

.lr.ph.i.i236:                                    ; preds = %.lr.ph.i.i236.prol.loopexit, %.lr.ph.i.i236
  %.121.i.i237 = phi ptr [ %i.vy, %.lr.ph.i.i236 ], [ %.121.i.i237.unr, %.lr.ph.i.i236.prol.loopexit ] ; 9 uses
  %.11520.i.i238 = phi ptr [ %i.vw, %.lr.ph.i.i236 ], [ %.11520.i.i238.unr, %.lr.ph.i.i236.prol.loopexit ] ; 9 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 1
  %i.vc = load i8, ptr %.11520.i.i238, align 1, !tbaa !30
  %i.vd = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 1
  store i8 %i.vc, ptr %.121.i.i237, align 1, !tbaa !30
  %i.ve = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 2
  %i.vf = load i8, ptr %i.vb, align 1, !tbaa !30
  %i.vg = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 2
  store i8 %i.vf, ptr %i.vd, align 1, !tbaa !30
  %i.vh = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 3
  %i.vi = load i8, ptr %i.ve, align 1, !tbaa !30
  %i.vj = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 3
  store i8 %i.vi, ptr %i.vg, align 1, !tbaa !30
  %i.vk = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 4
  %i.vl = load i8, ptr %i.vh, align 1, !tbaa !30
  %i.vm = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 4
  store i8 %i.vl, ptr %i.vj, align 1, !tbaa !30
  %i.vn = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 5
  %i.vo = load i8, ptr %i.vk, align 1, !tbaa !30
  %i.vp = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 5
  store i8 %i.vo, ptr %i.vm, align 1, !tbaa !30
  %i.vq = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 6
  %i.vr = load i8, ptr %i.vn, align 1, !tbaa !30
  %i.vs = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 6
  store i8 %i.vr, ptr %i.vp, align 1, !tbaa !30
  %i.vt = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 7 ; 2 uses
  %i.vu = load i8, ptr %i.vq, align 1, !tbaa !30
  %i.vv = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 7
  store i8 %i.vu, ptr %i.vs, align 1, !tbaa !30
  %i.vw = getelementptr inbounds nuw i8, ptr %.11520.i.i238, i64 8
  %i.vx = load i8, ptr %i.vt, align 1, !tbaa !30
  %i.vy = getelementptr inbounds nuw i8, ptr %.121.i.i237, i64 8
  store i8 %i.vx, ptr %i.vv, align 1, !tbaa !30
  %exitcond.not.i.i239.7 = icmp eq ptr %i.vt, %.1312.i.i38
  br i1 %exitcond.not.i.i239.7, label %ZSTD_storeSeq.exit358.i.i224, label %.lr.ph.i.i236, !llvm.loop !107

ZSTD_storeSeq.exit358.i.thread.i216:              ; preds = %bb.bs, %bb.br
  %i.vz = load ptr, ptr %i.rz, align 8, !tbaa !35
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.to
  store ptr %i.wa, ptr %i.rz, align 8, !tbaa !35
  %.pre.i217 = load ptr, ptr %i.sc, align 8, !tbaa !40
  br label %bb.ca

ZSTD_storeSeq.exit358.i.i224:                     ; preds = %bb.bu, %.lr.ph.i.i236.prol.loopexit, %.lr.ph.i.i236, %middle.block1608, %vec.epilog.middle.block1624, %ZSTD_wildcopy.exit.i24.i233
  %i.wb = load ptr, ptr %i.rz, align 8, !tbaa !35
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.to
  store ptr %i.wc, ptr %i.rz, align 8, !tbaa !35
  %i.wd = icmp ugt i64 %i.to, 65535
  %.pre240.i225 = load ptr, ptr %i.sc, align 8, !tbaa !40 ; 3 uses
  br i1 %i.wd, label %bb.bz, label %bb.ca, !prof !143

bb.bz:                                            ; preds = %ZSTD_storeSeq.exit358.i.i224
  store i32 1, ptr %i.sb, align 8, !tbaa !42
  %i.we = load ptr, ptr %1, align 8, !tbaa !43
  %i.wf = ptrtoint ptr %.pre240.i225 to i64
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = lshr exact i64 %i.wh, 3
  %i.wj = trunc i64 %i.wi to i32
  store i32 %i.wj, ptr %i.sd, align 4, !tbaa !44
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %ZSTD_storeSeq.exit358.i.i224, %ZSTD_storeSeq.exit358.i.thread.i216
  %i.wk = phi ptr [ %.pre.i217, %ZSTD_storeSeq.exit358.i.thread.i216 ], [ %.pre240.i225, %bb.bz ], [ %.pre240.i225, %ZSTD_storeSeq.exit358.i.i224 ] ; 4 uses
  %i.wl = trunc i64 %i.to to i16
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 4
  store i16 %i.wl, ptr %i.wm, align 4, !tbaa !46
  store i32 1, ptr %i.wk, align 4, !tbaa !47
  %i.wn = add i64 %i.tk, 1                        ; 3 uses
  %i.wo = icmp ugt i64 %i.wn, 65535
  br i1 %i.wo, label %ZSTD_storeSeqOnly.exit.i.sink.split.i117, label %ZSTD_storeSeqOnly.exit.i.i89, !prof !48

bb.cb:                                            ; preds = %bb.bp, %bb.bo
  br i1 %.0274.i.in.not.i, label %bb.cc, label %.thread.i57

bb.cc:                                            ; preds = %bb.cb
  %i.wp = lshr i32 %.0276.i.i41, 8                ; 3 uses
  %i.wq = icmp ugt i32 %i.wp, %i.aa
  br i1 %i.wq, label %bb.cd, label %.thread.i57

bb.cd:                                            ; preds = %bb.cc
  %i.wr = zext nneg i32 %i.wp to i64              ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.wr
  %.val.i172 = load i32, ptr %i.ws, align 1, !tbaa !22
  %.1312.i.val.i173 = load i32, ptr %.1312.i.i38, align 1, !tbaa !22
  %i.wt = icmp ne i32 %.val.i172, %.1312.i.val.i173
  %.not335.i.i174 = icmp ugt i32 %.0272.i.i47, %i.n
  %or.cond.i.i175 = select i1 %i.wt, i1 true, i1 %.not335.i.i174
  br i1 %or.cond.i.i175, label %.thread.i57, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.wr ; 2 uses
  %i.wv = add i32 %i.ai, %i.wp
  %i.ww = sub i32 %.0270.i.i50, %i.wv             ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.1312.i.i38, i64 4
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.wz = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.wx, ptr noundef nonnull %i.wy, ptr noundef %i.q, ptr noundef %i.af, ptr noundef %i.p)
  %i.xa = add i64 %i.wz, 4                        ; 2 uses
  %i.xb = icmp ugt ptr %.1312.i.i38, %.0301.i199.i35
  br i1 %i.xb, label %.lr.ph179.i206, label %.critedge.i.i176

.lr.ph179.i206:                                   ; preds = %bb.ce, %bb.cf
  %.0261.i178.i207 = phi ptr [ %i.xe, %bb.cf ], [ %i.wu, %bb.ce ]
  %.1281.i177.i208 = phi i64 [ %i.xh, %bb.cf ], [ %i.xa, %bb.ce ] ; 2 uses
  %.2313.i176.i209 = phi ptr [ %i.xc, %bb.cf ], [ %.1312.i.i38, %bb.ce ] ; 2 uses
  %i.xc = getelementptr inbounds i8, ptr %.2313.i176.i209, i64 -1 ; 4 uses
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !30
  %i.xe = getelementptr inbounds i8, ptr %.0261.i178.i207, i64 -1 ; 3 uses
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !30
  %i.xg = icmp eq i8 %i.xd, %i.xf
  br i1 %i.xg, label %bb.cf, label %.critedge.i.loopexit.i210

bb.cf:                                            ; preds = %.lr.ph179.i206
  %i.xh = add i64 %.1281.i177.i208, 1             ; 2 uses
  %i.xi = icmp ugt ptr %i.xc, %.0301.i199.i35
  %i.xj = icmp ugt ptr %i.xe, %i.ae
  %i.xk = and i1 %i.xj, %i.xi
  br i1 %i.xk, label %.lr.ph179.i206, label %.critedge.i.loopexit.i210, !llvm.loop !94

.critedge.i.loopexit.i210:                        ; preds = %bb.cf, %.lr.ph179.i206
  %.2313.i.lcssa.ph.i211 = phi ptr [ %i.xc, %bb.cf ], [ %.2313.i176.i209, %.lr.ph179.i206 ] ; 2 uses
  %.1281.i.lcssa.ph.i212 = phi i64 [ %i.xh, %bb.cf ], [ %.1281.i177.i208, %.lr.ph179.i206 ]
  %.pre247.i213 = ptrtoint ptr %.2313.i.lcssa.ph.i211 to i64
  br label %.critedge.i.i176

.critedge.i.i176:                                 ; preds = %.critedge.i.loopexit.i210, %bb.ce
  %.pre-phi248.i177 = phi i64 [ %.pre247.i213, %.critedge.i.loopexit.i210 ], [ %.pn.i48, %bb.ce ]
  %.2313.i.lcssa.i178 = phi ptr [ %.2313.i.lcssa.ph.i211, %.critedge.i.loopexit.i210 ], [ %.1312.i.i38, %bb.ce ] ; 6 uses
  %.1281.i.lcssa.i179 = phi i64 [ %.1281.i.lcssa.ph.i212, %.critedge.i.loopexit.i210 ], [ %i.xa, %bb.ce ] ; 3 uses
  %.2313.i.lcssa.i1781559 = ptrtoaddr ptr %.2313.i.lcssa.i178 to i64 ; 3 uses
  %i.xl = ptrtoint ptr %.0301.i199.i35 to i64     ; 2 uses
  %i.xm = sub i64 %.pre-phi248.i177, %i.xl        ; 7 uses
  %i.xn = add i32 %i.ww, 3
  %.not.i355.i.i180 = icmp ugt ptr %.2313.i.lcssa.i178, %i.ry
  %i.xo = load ptr, ptr %i.rz, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i355.i.i180, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %.critedge.i.i176
  %.0301.i.val16.i181 = load <2 x i64>, ptr %.0301.i199.i35, align 1, !tbaa !30
  store <2 x i64> %.0301.i.val16.i181, ptr %i.xo, align 1, !tbaa !30
  %i.xp = icmp ugt i64 %i.xm, 16
  br i1 %i.xp, label %bb.ch, label %ZSTD_storeSeq.exit356.i.thread.i182

bb.ch:                                            ; preds = %bb.cg
  %i.xq = load ptr, ptr %i.rz, align 8, !tbaa !35 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %i.xs = getelementptr inbounds nuw i8, ptr %.0301.i199.i35, i64 16 ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xq, i64 %i.xm
  %.val15.i184 = load <2 x i64>, ptr %i.xs, align 1, !tbaa !30
  store <2 x i64> %.val15.i184, ptr %i.xr, align 1, !tbaa !30
  %i.xu = icmp ult i64 %i.xm, 33
  br i1 %i.xu, label %ZSTD_storeSeq.exit356.i.thread.i182, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 32
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %bb.ci
  %.pn.i359.i.i185 = phi ptr [ %i.xs, %bb.ci ], [ %i.xx, %bb.cj ] ; 2 uses
  %.1.i360.i.i186 = phi ptr [ %i.xv, %bb.ci ], [ %i.xy, %bb.cj ] ; 3 uses
  %.130.i361.i.i187 = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i185, i64 16
  %.130.i361.i.val.i188 = load <2 x i64>, ptr %.130.i361.i.i187, align 1, !tbaa !30
  store <2 x i64> %.130.i361.i.val.i188, ptr %.1.i360.i.i186, align 1, !tbaa !30
  %i.xw = getelementptr inbounds nuw i8, ptr %.1.i360.i.i186, i64 16
  %i.xx = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i185, i64 32 ; 2 uses
  %.val14.i189 = load <2 x i64>, ptr %i.xx, align 1, !tbaa !30
  store <2 x i64> %.val14.i189, ptr %i.xw, align 1, !tbaa !30
  %i.xy = getelementptr inbounds nuw i8, ptr %.1.i360.i.i186, i64 32 ; 2 uses
  %i.xz = icmp ult ptr %i.xy, %i.xt
  br i1 %i.xz, label %bb.cj, label %ZSTD_storeSeq.exit356.i.i190, !llvm.loop !0

bb.ck:                                            ; preds = %.critedge.i.i176
  %.not.i26.i192 = icmp ugt ptr %.0301.i199.i35, %i.ry
  br i1 %.not.i26.i192, label %ZSTD_wildcopy.exit.i33.i199, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ya = sub i64 %i.sa, %i.xl                    ; 2 uses
  %i.yb = getelementptr inbounds i8, ptr %i.xo, i64 %i.ya ; 3 uses
  %.val19.i27.i193 = load <2 x i64>, ptr %.0301.i199.i35, align 1, !tbaa !30
  store <2 x i64> %.val19.i27.i193, ptr %i.xo, align 1, !tbaa !30
  %i.yc = icmp ult i64 %i.ya, 17
  br i1 %i.yc, label %ZSTD_wildcopy.exit.i33.i199, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %.pn.i.i28.i194 = phi ptr [ %.0301.i199.i35, %bb.cm ], [ %i.yf, %bb.cn ] ; 2 uses
  %.1.i.i29.i195 = phi ptr [ %i.yd, %bb.cm ], [ %i.yg, %bb.cn ] ; 3 uses
  %.130.i.i30.i196 = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i194, i64 16
  %.130.i.val.i31.i197 = load <2 x i64>, ptr %.130.i.i30.i196, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i31.i197, ptr %.1.i.i29.i195, align 1, !tbaa !30
  %i.ye = getelementptr inbounds nuw i8, ptr %.1.i.i29.i195, i64 16
  %i.yf = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i194, i64 32 ; 2 uses
  %.val.i32.i198 = load <2 x i64>, ptr %i.yf, align 1, !tbaa !30
  store <2 x i64> %.val.i32.i198, ptr %i.ye, align 1, !tbaa !30
  %i.yg = getelementptr inbounds nuw i8, ptr %.1.i.i29.i195, i64 32 ; 2 uses
  %i.yh = icmp ult ptr %i.yg, %i.yb
  br i1 %i.yh, label %bb.cn, label %ZSTD_wildcopy.exit.i33.i199, !llvm.loop !0

ZSTD_wildcopy.exit.i33.i199:                      ; preds = %bb.cn, %bb.cl, %bb.ck
  %.014.i34.i200 = phi ptr [ %.0301.i199.i35, %bb.ck ], [ %i.ry, %bb.cl ], [ %i.ry, %bb.cn ] ; 7 uses
  %.0.i35.i201 = phi ptr [ %i.xo, %bb.ck ], [ %i.yb, %bb.cl ], [ %i.yb, %bb.cn ] ; 6 uses
  %i.yi = icmp ult ptr %.014.i34.i200, %.2313.i.lcssa.i178
  br i1 %i.yi, label %iter.check1576.a, label %ZSTD_storeSeq.exit356.i.i190

iter.check1576.a:                                 ; preds = %ZSTD_wildcopy.exit.i33.i199
  %.014.i34.i2001557 = ptrtoaddr ptr %.014.i34.i200 to i64 ; 2 uses
  %.0.i35.i2011556 = ptrtoaddr ptr %.0.i35.i201 to i64
  %i.yj = sub i64 %.2313.i.lcssa.i1781559, %.014.i34.i2001557 ; 7 uses
  %min.iters.check1560.a = icmp ult i64 %i.yj, 8
  %i.yk = sub i64 %.014.i34.i2001557, %.0.i35.i2011556
  %diff.check1558.a = icmp ugt i64 %i.yk, -32
  %or.cond1864 = select i1 %min.iters.check1560.a, i1 true, i1 %diff.check1558.a
  br i1 %or.cond1864, label %.lr.ph.i36.i202.preheader, label %vector.main.loop.iter.check1561.a

vector.main.loop.iter.check1561.a:                ; preds = %iter.check1576.a
  %min.iters.check1562.a = icmp ult i64 %i.yj, 32
  br i1 %min.iters.check1562.a, label %vec.epilog.ph1580.a, label %vector.ph1563.a

vector.ph1563.a:                                  ; preds = %vector.main.loop.iter.check1561.a
  %i.yl = and i64 %i.yj, 24
  %n.vec1564.a = and i64 %i.yj, -32               ; 5 uses
  %i.ym = getelementptr i8, ptr %.0.i35.i201, i64 %n.vec1564.a
  %i.yn = getelementptr i8, ptr %.014.i34.i200, i64 %n.vec1564.a
  br label %vector.body1565.a

vector.body1565.a:                                ; preds = %vector.ph1563.a, %vector.body1565.a
  %index1566.a = phi i64 [ 0, %vector.ph1563.a ], [ %index.next1571.a, %vector.body1565.a ] ; 3 uses
  %next.gep1567.a = getelementptr i8, ptr %.0.i35.i201, i64 %index1566.a ; 2 uses
  %next.gep1568.a = getelementptr i8, ptr %.014.i34.i200, i64 %index1566.a ; 2 uses
  %i.yo = getelementptr i8, ptr %next.gep1568.a, i64 16
  %wide.load1569.a = load <16 x i8>, ptr %next.gep1568.a, align 1, !tbaa !30
  %wide.load1570.a = load <16 x i8>, ptr %i.yo, align 1, !tbaa !30
  %i.yp = getelementptr i8, ptr %next.gep1567.a, i64 16
  store <16 x i8> %wide.load1569.a, ptr %next.gep1567.a, align 1, !tbaa !30
  store <16 x i8> %wide.load1570.a, ptr %i.yp, align 1, !tbaa !30
  %index.next1571.a = add nuw i64 %index1566.a, 32 ; 2 uses
  %i.yq = icmp eq i64 %index.next1571.a, %n.vec1564.a
  br i1 %i.yq, label %middle.block1572.a, label %vector.body1565.a, !llvm.loop !108

middle.block1572.a:                               ; preds = %vector.body1565.a
  %cmp.n1573.a = icmp eq i64 %i.yj, %n.vec1564.a
  br i1 %cmp.n1573.a, label %ZSTD_storeSeq.exit356.i.i190, label %vec.epilog.iter.check1578.a

vec.epilog.iter.check1578.a:                      ; preds = %middle.block1572.a
  %min.epilog.iters.check1579.a = icmp eq i64 %i.yl, 0
  br i1 %min.epilog.iters.check1579.a, label %.lr.ph.i36.i202.preheader, label %vec.epilog.ph1580.a, !prof !38

end_hunk_1
begin_hunk_2_@ZSTD_compressBlock_fast_dictMatchState:bb.a
  %next.gep1547 = getelementptr i8, ptr %.0.i58.i141, i64 %index1546
  %next.gep1548 = getelementptr i8, ptr %.014.i57.i140, i64 %index1546
  %wide.load1549 = load <8 x i8>, ptr %next.gep1548, align 1, !tbaa !30
  store <8 x i8> %wide.load1549, ptr %next.gep1547, align 1, !tbaa !30
  %index.next1550 = add nuw i64 %index1546, 8     ; 2 uses
  %i.adq = icmp eq i64 %index.next1550, %n.vec1544
  br i1 %i.adq, label %vec.epilog.middle.block1551, label %vec.epilog.vector.body1545, !llvm.loop !113

vec.epilog.middle.block1551:                      ; preds = %vec.epilog.vector.body1545
  %cmp.n1552 = icmp eq i64 %i.adg, %n.vec1544
  br i1 %cmp.n1552, label %ZSTD_storeSeq.exit354.i.i130, label %.lr.ph.i59.i142.preheader

.lr.ph.i59.i142.preheader:                        ; preds = %iter.check1539, %vec.epilog.iter.check1541, %vec.epilog.middle.block1551
  %.121.i60.i143.ph = phi ptr [ %.0.i58.i141, %iter.check1539 ], [ %i.adj, %vec.epilog.iter.check1541 ], [ %i.ado, %vec.epilog.middle.block1551 ] ; 2 uses
  %.11520.i61.i144.ph = phi ptr [ %.014.i57.i140, %iter.check1539 ], [ %i.adk, %vec.epilog.iter.check1541 ], [ %i.adp, %vec.epilog.middle.block1551 ] ; 3 uses
  %.11520.i61.i144.ph2045 = ptrtoaddr ptr %.11520.i61.i144.ph to i64 ; 2 uses
  %i.adr = sub i64 %.5316.i.lcssa.i831522, %.11520.i61.i144.ph2045
  %xtraiter2046 = and i64 %i.adr, 7               ; 2 uses
  %lcmp.mod2047.not = icmp eq i64 %xtraiter2046, 0
  br i1 %lcmp.mod2047.not, label %.lr.ph.i59.i142.prol.loopexit, label %.lr.ph.i59.i142.prol

.lr.ph.i59.i142.prol:                             ; preds = %.lr.ph.i59.i142.preheader, %.lr.ph.i59.i142.prol
  %.121.i60.i143.prol = phi ptr [ %i.adu, %.lr.ph.i59.i142.prol ], [ %.121.i60.i143.ph, %.lr.ph.i59.i142.preheader ] ; 2 uses
  %.11520.i61.i144.prol = phi ptr [ %i.ads, %.lr.ph.i59.i142.prol ], [ %.11520.i61.i144.ph, %.lr.ph.i59.i142.preheader ] ; 2 uses
  %prol.iter2048 = phi i64 [ %prol.iter2048.next, %.lr.ph.i59.i142.prol ], [ 0, %.lr.ph.i59.i142.preheader ]
  %i.ads = getelementptr inbounds nuw i8, ptr %.11520.i61.i144.prol, i64 1 ; 2 uses
  %i.adt = load i8, ptr %.11520.i61.i144.prol, align 1, !tbaa !30
  %i.adu = getelementptr inbounds nuw i8, ptr %.121.i60.i143.prol, i64 1 ; 2 uses
  store i8 %i.adt, ptr %.121.i60.i143.prol, align 1, !tbaa !30
  %prol.iter2048.next = add i64 %prol.iter2048, 1 ; 2 uses
  %prol.iter2048.cmp.not = icmp eq i64 %prol.iter2048.next, %xtraiter2046
  br i1 %prol.iter2048.cmp.not, label %.lr.ph.i59.i142.prol.loopexit, label %.lr.ph.i59.i142.prol, !llvm.loop !114

.lr.ph.i59.i142.prol.loopexit:                    ; preds = %.lr.ph.i59.i142.prol, %.lr.ph.i59.i142.preheader
  %.121.i60.i143.unr = phi ptr [ %.121.i60.i143.ph, %.lr.ph.i59.i142.preheader ], [ %i.adu, %.lr.ph.i59.i142.prol ]
  %.11520.i61.i144.unr = phi ptr [ %.11520.i61.i144.ph, %.lr.ph.i59.i142.preheader ], [ %i.ads, %.lr.ph.i59.i142.prol ]
  %i.adv = sub i64 %.11520.i61.i144.ph2045, %.5316.i.lcssa.i831522
  %i.adw = icmp ugt i64 %i.adv, -8
  br i1 %i.adw, label %ZSTD_storeSeq.exit354.i.i130, label %.lr.ph.i59.i142

.lr.ph.i59.i142:                                  ; preds = %.lr.ph.i59.i142.prol.loopexit, %.lr.ph.i59.i142
  %.121.i60.i143 = phi ptr [ %i.aeu, %.lr.ph.i59.i142 ], [ %.121.i60.i143.unr, %.lr.ph.i59.i142.prol.loopexit ] ; 9 uses
  %.11520.i61.i144 = phi ptr [ %i.aes, %.lr.ph.i59.i142 ], [ %.11520.i61.i144.unr, %.lr.ph.i59.i142.prol.loopexit ] ; 9 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 1
  %i.ady = load i8, ptr %.11520.i61.i144, align 1, !tbaa !30
  %i.adz = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 1
  store i8 %i.ady, ptr %.121.i60.i143, align 1, !tbaa !30
  %i.aea = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 2
  %i.aeb = load i8, ptr %i.adx, align 1, !tbaa !30
  %i.aec = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 2
  store i8 %i.aeb, ptr %i.adz, align 1, !tbaa !30
  %i.aed = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 3
  %i.aee = load i8, ptr %i.aea, align 1, !tbaa !30
  %i.aef = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 3
  store i8 %i.aee, ptr %i.aec, align 1, !tbaa !30
  %i.aeg = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 4
  %i.aeh = load i8, ptr %i.aed, align 1, !tbaa !30
  %i.aei = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 4
  store i8 %i.aeh, ptr %i.aef, align 1, !tbaa !30
  %i.aej = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 5
  %i.aek = load i8, ptr %i.aeg, align 1, !tbaa !30
  %i.ael = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 5
  store i8 %i.aek, ptr %i.aei, align 1, !tbaa !30
  %i.aem = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 6
  %i.aen = load i8, ptr %i.aej, align 1, !tbaa !30
  %i.aeo = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 6
  store i8 %i.aen, ptr %i.ael, align 1, !tbaa !30
  %i.aep = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 7
  %i.aeq = load i8, ptr %i.aem, align 1, !tbaa !30
  %i.aer = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 7
  store i8 %i.aeq, ptr %i.aeo, align 1, !tbaa !30
  %i.aes = getelementptr inbounds nuw i8, ptr %.11520.i61.i144, i64 8 ; 2 uses
  %i.aet = load i8, ptr %i.aep, align 1, !tbaa !30
  %i.aeu = getelementptr inbounds nuw i8, ptr %.121.i60.i143, i64 8
  store i8 %i.aet, ptr %i.aer, align 1, !tbaa !30
  %exitcond.not.i62.i145.7 = icmp eq ptr %i.aes, %.5316.i.lcssa.i83
  br i1 %exitcond.not.i62.i145.7, label %ZSTD_storeSeq.exit354.i.i130, label %.lr.ph.i59.i142, !llvm.loop !115

ZSTD_storeSeq.exit354.i.thread.i87:               ; preds = %bb.de, %bb.dd
  %i.aev = load ptr, ptr %i.rz, align 8, !tbaa !35
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.acj
  store ptr %i.aew, ptr %i.rz, align 8, !tbaa !35
  %.pre243.i88 = load ptr, ptr %i.sc, align 8, !tbaa !40
  br label %bb.dm

ZSTD_storeSeq.exit354.i.i130:                     ; preds = %bb.dg, %.lr.ph.i59.i142.prol.loopexit, %.lr.ph.i59.i142, %middle.block1535, %vec.epilog.middle.block1551, %ZSTD_wildcopy.exit.i56.i139
  %i.aex = load ptr, ptr %i.rz, align 8, !tbaa !35
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.acj
  store ptr %i.aey, ptr %i.rz, align 8, !tbaa !35
  %i.aez = icmp ugt i64 %i.acj, 65535
  %.pre244.i131 = load ptr, ptr %i.sc, align 8, !tbaa !40 ; 3 uses
  br i1 %i.aez, label %bb.dl, label %bb.dm, !prof !41

bb.dl:                                            ; preds = %ZSTD_storeSeq.exit354.i.i130
  store i32 1, ptr %i.sb, align 8, !tbaa !42
  %i.afa = load ptr, ptr %1, align 8, !tbaa !43
  %i.afb = ptrtoint ptr %.pre244.i131 to i64
  %i.afc = ptrtoint ptr %i.afa to i64
  %i.afd = sub i64 %i.afb, %i.afc
  %i.afe = lshr exact i64 %i.afd, 3
  %i.aff = trunc i64 %i.afe to i32
  store i32 %i.aff, ptr %i.sd, align 4, !tbaa !44
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %ZSTD_storeSeq.exit354.i.i130, %ZSTD_storeSeq.exit354.i.thread.i87
  %i.afg = phi ptr [ %.pre243.i88, %ZSTD_storeSeq.exit354.i.thread.i87 ], [ %.pre244.i131, %bb.dl ], [ %.pre244.i131, %ZSTD_storeSeq.exit354.i.i130 ] ; 4 uses
  %i.afh = trunc i64 %i.acj to i16
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  store i16 %i.afh, ptr %i.afi, align 4, !tbaa !46
  store i32 %i.ack, ptr %i.afg, align 4, !tbaa !47
  %i.afj = add i64 %.4.i.lcssa.i84, -3            ; 3 uses
  %i.afk = icmp ugt i64 %i.afj, 65535
  br i1 %i.afk, label %ZSTD_storeSeqOnly.exit.i.sink.split.i117, label %ZSTD_storeSeqOnly.exit.i.i89, !prof !48

ZSTD_match4Found_cmov.exit.thread.i61:            ; preds = %ZSTD_match4Found_cmov.exit.i69, %.thread.i57
  %.not337.i.i62 = icmp uge ptr %.1308.i.i39, %.0264.i.i44 ; 2 uses
  %i.afl = zext i1 %.not337.i.i62 to i64
  %.1268.i.i63 = add i64 %.0267.i.i43, %i.afl     ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.1308.i.i39, i64 %.1268.i.i63 ; 2 uses
  %i.afn = icmp ugt ptr %i.afm, %i.r
  br i1 %i.afn, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.dn

bb.dn:                                            ; preds = %ZSTD_match4Found_cmov.exit.thread.i61
  %.1265.i.idx.i64 = select i1 %.not337.i.i62, i64 256, i64 0
  %.1265.i.i65 = getelementptr inbounds nuw i8, ptr %.0264.i.i44, i64 %.1265.i.idx.i64
  %i.afo = lshr i64 %i.sv, 8
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.afo
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !22 ; 2 uses
  %i.afr = zext i32 %i.afq to i64
  %i.afs = xor i64 %i.sv, %i.afr
  br label %bb.bo

ZSTD_storeSeqOnly.exit.i.sink.split.i117:         ; preds = %bb.dm, %bb.cp, %bb.ca
  %.sink314.i118 = phi ptr [ %i.aaj, %bb.cp ], [ %i.wk, %bb.ca ], [ %i.afg, %bb.dm ] ; 2 uses
  %.sink310.ph.i119 = phi i64 [ %i.aam, %bb.cp ], [ %i.wn, %bb.ca ], [ %i.afj, %bb.dm ]
  %.6317.i.ph.ph.i120 = phi ptr [ %.2313.i.lcssa.i178, %bb.cp ], [ %i.tg, %bb.ca ], [ %.5316.i.lcssa.i83, %bb.dm ]
  %.4295.i.ph.ph.i121 = phi i32 [ %i.ww, %bb.cp ], [ %.0291.i200.i34, %bb.ca ], [ %i.aar, %bb.dm ]
  %.4289.i.ph.ph.i122 = phi i32 [ %.0291.i200.i34, %bb.cp ], [ %.0285.i201.i33, %bb.ca ], [ %.0291.i200.i34, %bb.dm ]
  %.5.i.ph.ph.i123 = phi i64 [ %.1281.i.lcssa.i179, %bb.cp ], [ %i.tl, %bb.ca ], [ %.4.i.lcssa.i84, %bb.dm ]
  store i32 2, ptr %i.sb, align 8, !tbaa !42
  %i.aft = load ptr, ptr %1, align 8, !tbaa !43
  %i.afu = ptrtoint ptr %.sink314.i118 to i64
  %i.afv = ptrtoint ptr %i.aft to i64
  %i.afw = sub i64 %i.afu, %i.afv
  %i.afx = lshr exact i64 %i.afw, 3
  %i.afy = trunc i64 %i.afx to i32
  store i32 %i.afy, ptr %i.sd, align 4, !tbaa !44
  br label %ZSTD_storeSeqOnly.exit.i.i89

ZSTD_storeSeqOnly.exit.i.i89:                     ; preds = %ZSTD_storeSeqOnly.exit.i.sink.split.i117, %bb.dm, %bb.cp, %bb.ca
  %.sink310.i90 = phi i64 [ %i.wn, %bb.ca ], [ %i.aam, %bb.cp ], [ %i.afj, %bb.dm ], [ %.sink310.ph.i119, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ]
  %.sink309.i91 = phi ptr [ %i.wk, %bb.ca ], [ %i.aaj, %bb.cp ], [ %i.afg, %bb.dm ], [ %.sink314.i118, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ] ; 2 uses
  %.6317.i.ph.i92 = phi ptr [ %i.tg, %bb.ca ], [ %.2313.i.lcssa.i178, %bb.cp ], [ %.5316.i.lcssa.i83, %bb.dm ], [ %.6317.i.ph.ph.i120, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ]
  %.4295.i.ph.i93 = phi i32 [ %.0291.i200.i34, %bb.ca ], [ %i.ww, %bb.cp ], [ %i.aar, %bb.dm ], [ %.4295.i.ph.ph.i121, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ] ; 2 uses
  %.4289.i.ph.i94 = phi i32 [ %.0285.i201.i33, %bb.ca ], [ %.0291.i200.i34, %bb.cp ], [ %.0291.i200.i34, %bb.dm ], [ %.4289.i.ph.ph.i122, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ] ; 2 uses
  %.5.i.ph.i95 = phi i64 [ %i.tl, %bb.ca ], [ %.1281.i.lcssa.i179, %bb.cp ], [ %.4.i.lcssa.i84, %bb.dm ], [ %.5.i.ph.ph.i123, %ZSTD_storeSeqOnly.exit.i.sink.split.i117 ]
  %i.afz = trunc i64 %.sink310.i90 to i16
  %i.aga = getelementptr inbounds nuw i8, ptr %.sink309.i91, i64 6
  store i16 %i.afz, ptr %i.aga, align 2, !tbaa !49
  %i.agb = getelementptr inbounds nuw i8, ptr %.sink309.i91, i64 8 ; 2 uses
  store ptr %i.agb, ptr %i.sc, align 8, !tbaa !40
  %i.agc = getelementptr inbounds nuw i8, ptr %.6317.i.ph.i92, i64 %.5.i.ph.i95 ; 4 uses
  %.not338.i.i96 = icmp ugt ptr %i.agc, %i.r
  br i1 %.not338.i.i96, label %.thread122.i105, label %bb.do

bb.do:                                            ; preds = %ZSTD_storeSeqOnly.exit.i.i89
  %i.agd = add i32 %.0270.i.i50, 2
  %i.age = and i64 %.0270.i.in.i49, 4294967295
  %i.agf = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.age
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 2
  %.val9.i97 = load i64, ptr %i.agg, align 1, !tbaa !21
  %i.agh = mul i64 %.val9.i97, -3523014627271114752
  %i.agi = lshr i64 %i.agh, %i.rv
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.agi
  store i32 %i.agd, ptr %i.agj, align 4, !tbaa !22
  %i.agk = getelementptr inbounds i8, ptr %i.agc, i64 -2 ; 2 uses
  %i.agl = ptrtoint ptr %i.agk to i64
  %i.agm = sub i64 %i.agl, %i.as
  %i.agn = trunc i64 %i.agm to i32
  %.val8.i98 = load i64, ptr %i.agk, align 1, !tbaa !21
  %i.ago = mul i64 %.val8.i98, -3523014627271114752
  %i.agp = lshr i64 %i.ago, %i.rv
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.agp
  store i32 %i.agn, ptr %i.agq, align 4, !tbaa !22
  br label %bb.dp

bb.dp:                                            ; preds = %bb.du, %bb.do
  %i.agr = phi ptr [ %i.agb, %bb.do ], [ %i.ahs, %bb.du ]
  %.5290.i195.i99 = phi i32 [ %.4289.i.ph.i94, %bb.do ], [ %.5296.i194.i100, %bb.du ] ; 5 uses
  %.5296.i194.i100 = phi i32 [ %.4295.i.ph.i93, %bb.do ], [ %.5290.i195.i99, %bb.du ] ; 4 uses
  %.7318.i193.i101 = phi ptr [ %i.agc, %bb.do ], [ %i.ahx, %bb.du ] ; 9 uses
  %i.ags = ptrtoint ptr %.7318.i193.i101 to i64
  %i.agt = sub i64 %i.ags, %i.as
  %i.agu = trunc i64 %i.agt to i32                ; 2 uses
  %i.agv = sub i32 %i.agu, %.5290.i195.i99        ; 3 uses
  %i.agw = icmp ult i32 %i.agv, %i.n              ; 2 uses
  %i.agx = zext i32 %i.agv to i64
  %.v.i102 = select i1 %i.agw, ptr %i.sj, ptr %i.k
  %i.agy = getelementptr inbounds nuw i8, ptr %.v.i102, i64 %i.agx ; 2 uses
  %i.agz = sub i32 %i.agv, %i.n
  %8 = icmp ult i32 %i.agz, -3
  br i1 %8, label %bb.dq, label %.thread122.i105

bb.dq:                                            ; preds = %bb.dp
  %.val4.i103 = load i32, ptr %i.agy, align 1, !tbaa !22
  %.7318.i.val.i104 = load i32, ptr %.7318.i193.i101, align 1, !tbaa !22
  %i.aha = icmp eq i32 %.val4.i103, %.7318.i.val.i104
  br i1 %i.aha, label %bb.dr, label %.thread122.i105

bb.dr:                                            ; preds = %bb.dq
  %i.ahb = select i1 %i.agw, ptr %i.af, ptr %i.q
  %i.ahc = getelementptr inbounds nuw i8, ptr %.7318.i193.i101, i64 4
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agy, i64 4
  %i.ahe = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ahc, ptr noundef nonnull %i.ahd, ptr noundef %i.q, ptr noundef %i.ahb, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i111 = icmp ugt ptr %.7318.i193.i101, %i.ry
  br i1 %.not.i.i.i111, label %ZSTD_storeSeq.exit.i.i114, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ahf = load ptr, ptr %i.rz, align 8, !tbaa !35
  %.1302.i.val.i112 = load <2 x i64>, ptr %.7318.i193.i101, align 1, !tbaa !30
  store <2 x i64> %.1302.i.val.i112, ptr %i.ahf, align 1, !tbaa !30
  %.pre245.i113 = load ptr, ptr %i.sc, align 8, !tbaa !40
  br label %ZSTD_storeSeq.exit.i.i114

ZSTD_storeSeq.exit.i.i114:                        ; preds = %bb.ds, %bb.dr
  %i.ahg = phi ptr [ %i.agr, %bb.dr ], [ %.pre245.i113, %bb.ds ] ; 5 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 4
  store i16 0, ptr %i.ahh, align 4, !tbaa !46
  store i32 1, ptr %i.ahg, align 4, !tbaa !47
  %i.ahi = add i64 %i.ahe, 1                      ; 2 uses
  %i.ahj = icmp ugt i64 %i.ahi, 65535
  br i1 %i.ahj, label %bb.dt, label %bb.du, !prof !48

bb.dt:                                            ; preds = %ZSTD_storeSeq.exit.i.i114
  store i32 2, ptr %i.sb, align 8, !tbaa !42
  %i.ahk = load ptr, ptr %1, align 8, !tbaa !43
  %i.ahl = ptrtoint ptr %i.ahg to i64
  %i.ahm = ptrtoint ptr %i.ahk to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  %i.aho = lshr exact i64 %i.ahn, 3
  %i.ahp = trunc i64 %i.aho to i32
  store i32 %i.ahp, ptr %i.sd, align 4, !tbaa !44
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %ZSTD_storeSeq.exit.i.i114
  %i.ahq = trunc i64 %i.ahi to i16
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahg, i64 6
  store i16 %i.ahq, ptr %i.ahr, align 2, !tbaa !49
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8 ; 2 uses
  store ptr %i.ahs, ptr %i.sc, align 8, !tbaa !40
  %.7318.i.val7.i115 = load i64, ptr %.7318.i193.i101, align 1, !tbaa !21
  %i.aht = mul i64 %.7318.i.val7.i115, -3523014627271114752
  %i.ahu = lshr i64 %i.aht, %i.rv
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ahu
  store i32 %i.agu, ptr %i.ahv, align 4, !tbaa !22
  %i.ahw = getelementptr i8, ptr %.7318.i193.i101, i64 %i.ahe
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 4    ; 3 uses
  %.not339.i.i116 = icmp ugt ptr %i.ahx, %i.r
  br i1 %.not339.i.i116, label %.thread122.i105, label %bb.dp

.thread122.i105:                                  ; preds = %bb.du, %bb.dq, %bb.dp, %ZSTD_storeSeqOnly.exit.i.i89
  %.9320.i.i106 = phi ptr [ %i.agc, %ZSTD_storeSeqOnly.exit.i.i89 ], [ %.7318.i193.i101, %bb.dp ], [ %.7318.i193.i101, %bb.dq ], [ %i.ahx, %bb.du ] ; 4 uses
  %.7298.i.i107 = phi i32 [ %.4295.i.ph.i93, %ZSTD_storeSeqOnly.exit.i.i89 ], [ %.5296.i194.i100, %bb.dp ], [ %.5296.i194.i100, %bb.dq ], [ %.5290.i195.i99, %bb.du ] ; 2 uses
  %.7.i.i108 = phi i32 [ %.4289.i.ph.i94, %ZSTD_storeSeqOnly.exit.i.i89 ], [ %.5290.i195.i99, %bb.dp ], [ %.5290.i195.i99, %bb.dq ], [ %.5296.i194.i100, %bb.du ] ; 2 uses
  %.0307.i.i109 = getelementptr inbounds nuw i8, ptr %.9320.i.i106, i64 %i.l ; 2 uses
  %.not332.i.i110 = icmp ugt ptr %.0307.i.i109, %i.r
  br i1 %.not332.i.i110, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.bn

bb.dv:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i246, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ahy = zext nneg i32 %i.ar to i64
  %i.ahz = shl nuw i64 4, %i.ahy
  %.not207.i243 = icmp ugt i32 %i.ar, 61
  br i1 %.not207.i243, label %.loopexit.i246, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %bb.dw, %.lr.ph.i244
  %.0284.i174.i245 = phi i64 [ %i.aib, %.lr.ph.i244 ], [ 0, %bb.dw ] ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0284.i174.i245
  tail call void @llvm.prefetch.p0(ptr %i.aia, i32 0, i32 2, i32 1)
  %i.aib = add nuw i64 %.0284.i174.i245, 64       ; 2 uses
  %i.aic = icmp ult i64 %i.aib, %i.ahz
  br i1 %i.aic, label %.lr.ph.i244, label %.loopexit.i246, !llvm.loop !89

.loopexit.i246:                                   ; preds = %.lr.ph.i244, %bb.dw, %bb.dv
  %i.aid = add nsw i64 %4, -8
  %.not332.i197.i247 = icmp slt i64 %i.aid, %i.l
  br i1 %.not332.i197.i247, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %.lr.ph203.i248

.lr.ph203.i248:                                   ; preds = %.loopexit.i246
  %.0307.i196.i249 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.aie = and i64 %i.ap, 4294967295
  %i.aif = icmp eq i64 %i.aie, 0
  %i.aig = zext i1 %i.aif to i64
  %i.aih = getelementptr inbounds nuw i8, ptr %3, i64 %i.aig
  %i.aii = sub i32 64, %i.f
  %i.aij = zext nneg i32 %i.aii to i64            ; 4 uses
  %i.aik = sub i32 56, %i.ar
  %i.ail = zext nneg i32 %i.aik to i64            ; 2 uses
  %i.aim = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 19 uses
  %i.aio = ptrtoint ptr %i.aim to i64             ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.air = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.ais = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 2 uses
  %i.ait = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.aiu = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.aiv = zext i32 %i.ai to i64
  %i.aiw = sub nsw i64 0, %i.aiv
  %i.aix = getelementptr inbounds i8, ptr %i.ac, i64 %i.aiw
  br label %bb.dx

bb.dx:                                            ; preds = %.thread122.i324, %.lr.ph203.i248
  %.0307.i202.i250 = phi ptr [ %.0307.i196.i249, %.lr.ph203.i248 ], [ %.0307.i.i328, %.thread122.i324 ]
  %.0285.i201.i251 = phi i32 [ %i.u, %.lr.ph203.i248 ], [ %.7.i.i327, %.thread122.i324 ] ; 3 uses
  %.0291.i200.i252 = phi i32 [ %i.s, %.lr.ph203.i248 ], [ %.7298.i.i326, %.thread122.i324 ] ; 8 uses
  %.0301.i199.i253 = phi ptr [ %3, %.lr.ph203.i248 ], [ %.9320.i.i325, %.thread122.i324 ] ; 26 uses
  %.0311.i198.i254 = phi ptr [ %i.aih, %.lr.ph203.i248 ], [ %.9320.i.i325, %.thread122.i324 ] ; 3 uses
  %.0311.i.val11.i255 = load i64, ptr %.0311.i198.i254, align 1, !tbaa !21
  %i.aiy = mul i64 %.0311.i.val11.i255, -3523014627193847808 ; 2 uses
  %i.aiz = lshr i64 %i.aiy, %i.ail                ; 2 uses
  %i.aja = lshr i64 %i.aiz, 8
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aja
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !22 ; 2 uses
  %i.ajd = zext i32 %i.ajc to i64
  %i.aje = xor i64 %i.aiz, %i.ajd
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0311.i198.i254, i64 256
  %invariant.op = sub i32 1, %.0291.i200.i252
  br label %bb.dy

bb.dy:                                            ; preds = %bb.fx, %bb.dx
  %.1312.i.i256 = phi ptr [ %.0311.i198.i254, %bb.dx ], [ %.1308.i.i257, %bb.fx ] ; 16 uses
  %.1308.i.i257 = phi ptr [ %.0307.i202.i250, %bb.dx ], [ %i.awa, %bb.fx ] ; 4 uses
  %.pn209.i258 = phi i64 [ %i.aiy, %bb.dx ], [ %i.aji, %bb.fx ]
  %.0276.i.i259 = phi i32 [ %i.ajc, %bb.dx ], [ %i.awe, %bb.fx ]
  %.0274.i.in.in.in.i260 = phi i64 [ %i.aje, %bb.dx ], [ %i.awg, %bb.fx ]
  %.0267.i.i261 = phi i64 [ %i.l, %bb.dx ], [ %.1268.i.i282, %bb.fx ]
  %.0264.i.i262 = phi ptr [ %i.ajf, %bb.dx ], [ %.1265.i.i284, %bb.fx ] ; 2 uses
  %.0278.i.i263 = lshr i64 %.pn209.i258, %i.aij
  %.0272.i.in.i264 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0278.i.i263 ; 2 uses
  %.0272.i.i265 = load i32, ptr %.0272.i.in.i264, align 4, !tbaa !22 ; 5 uses
  %.pn.i266 = ptrtoint ptr %.1312.i.i256 to i64   ; 5 uses
  %.0270.i.in.i267 = sub i64 %.pn.i266, %i.as     ; 2 uses
  %.0270.i.i268 = trunc i64 %.0270.i.in.i267 to i32 ; 4 uses
  %.0274.i.in.in.i269 = and i64 %.0274.i.in.in.in.i260, 255
  %.0274.i.in.not.i270 = icmp eq i64 %.0274.i.in.in.i269, 0
  %i.ajg = zext i32 %.0272.i.i265 to i64
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ajg ; 4 uses
  %.reass.i272.reass.reass.reass = add i32 %.0270.i.i268, %invariant.op ; 4 uses
  %.1308.i.val10.i273 = load i64, ptr %.1308.i.i257, align 1, !tbaa !21
  %i.aji = mul i64 %.1308.i.val10.i273, -3523014627193847808 ; 2 uses
  %i.ajj = lshr i64 %i.aji, %i.ail                ; 2 uses
  store i32 %.0270.i.i268, ptr %.0272.i.in.i264, align 4, !tbaa !22
  %i.ajk = sub i32 %.reass.i272.reass.reass.reass, %i.n
  %9 = icmp ult i32 %i.ajk, -3
  br i1 %9, label %bb.dz, label %bb.el

bb.dz:                                            ; preds = %bb.dy
  %i.ajl = icmp ult i32 %.reass.i272.reass.reass.reass, %i.n ; 2 uses
  %i.ajm = sub i32 %.reass.i272.reass.reass.reass, %i.ai
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ajn
  %i.ajp = zext i32 %.reass.i272.reass.reass.reass to i64
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ajp
  %i.ajr = select i1 %i.ajl, ptr %i.ajo, ptr %i.ajq ; 2 uses
  %.val6.i274 = load i32, ptr %i.ajr, align 1, !tbaa !22
  %i.ajs = getelementptr inbounds nuw i8, ptr %.1312.i.i256, i64 1
  %.val5.i275 = load i32, ptr %i.ajs, align 1, !tbaa !22
  %i.ajt = icmp eq i32 %.val6.i274, %.val5.i275
  br i1 %i.ajt, label %bb.ea, label %bb.el

bb.ea:                                            ; preds = %bb.dz
  %.1312.i.i256.lcssa20192023 = ptrtoaddr ptr %.1312.i.i256 to i64 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.1312.i.i256, i64 1 ; 5 uses
  %i.ajv = select i1 %i.ajl, ptr %i.af, ptr %i.q
  %i.ajw = getelementptr inbounds nuw i8, ptr %.1312.i.i256, i64 5
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajr, i64 4
  %i.ajy = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.ajw, ptr noundef nonnull %i.ajx, ptr noundef %i.q, ptr noundef %i.ajv, ptr noundef %i.p) ; 2 uses
  %i.ajz = add i64 %i.ajy, 4                      ; 2 uses
  %i.aka = ptrtoint ptr %i.aju to i64
  %i.akb = ptrtoint ptr %.0301.i199.i253 to i64   ; 2 uses
  %i.akc = sub i64 %i.aka, %i.akb                 ; 7 uses
  %.not.i357.i.i433 = icmp ugt ptr %i.aju, %i.aim
  %i.akd = load ptr, ptr %i.ain, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i357.i.i433, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.0301.i.val.i434 = load <2 x i64>, ptr %.0301.i199.i253, align 1, !tbaa !30
  store <2 x i64> %.0301.i.val.i434, ptr %i.akd, align 1, !tbaa !30
  %i.ake = icmp ugt i64 %i.akc, 16
  br i1 %i.ake, label %bb.ec, label %ZSTD_storeSeq.exit358.i.thread.i435

bb.ec:                                            ; preds = %bb.eb
  %i.akf = load ptr, ptr %i.ain, align 8, !tbaa !35 ; 3 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akh = getelementptr inbounds nuw i8, ptr %.0301.i199.i253, i64 16 ; 2 uses
  %i.aki = getelementptr i8, ptr %i.akf, i64 %i.akc
  %.val13.i437 = load <2 x i64>, ptr %i.akh, align 1, !tbaa !30
  store <2 x i64> %.val13.i437, ptr %i.akg, align 1, !tbaa !30
  %i.akj = icmp ult i64 %i.akc, 33
  br i1 %i.akj, label %ZSTD_storeSeq.exit358.i.thread.i435, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akf, i64 32
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %bb.ed
  %.pn.i.i.i438 = phi ptr [ %i.akh, %bb.ed ], [ %i.akm, %bb.ee ] ; 2 uses
  %.1.i.i.i439 = phi ptr [ %i.akk, %bb.ed ], [ %i.akn, %bb.ee ] ; 3 uses
  %.130.i.i.i440 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i438, i64 16
  %.130.i.i.val.i441 = load <2 x i64>, ptr %.130.i.i.i440, align 1, !tbaa !30
  store <2 x i64> %.130.i.i.val.i441, ptr %.1.i.i.i439, align 1, !tbaa !30
  %i.akl = getelementptr inbounds nuw i8, ptr %.1.i.i.i439, i64 16
  %i.akm = getelementptr inbounds nuw i8, ptr %.pn.i.i.i438, i64 32 ; 2 uses
  %.val12.i442 = load <2 x i64>, ptr %i.akm, align 1, !tbaa !30
  store <2 x i64> %.val12.i442, ptr %i.akl, align 1, !tbaa !30
  %i.akn = getelementptr inbounds nuw i8, ptr %.1.i.i.i439, i64 32 ; 2 uses
  %i.ako = icmp ult ptr %i.akn, %i.aki
  br i1 %i.ako, label %bb.ee, label %ZSTD_storeSeq.exit358.i.i443, !llvm.loop !0

bb.ef:                                            ; preds = %bb.ea
  %.not.i20.i445 = icmp ugt ptr %.0301.i199.i253, %i.aim
  br i1 %.not.i20.i445, label %ZSTD_wildcopy.exit.i24.i452, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.akp = sub i64 %i.aio, %i.akb                 ; 2 uses
  %i.akq = getelementptr inbounds i8, ptr %i.akd, i64 %i.akp ; 3 uses
  %.val19.i.i446 = load <2 x i64>, ptr %.0301.i199.i253, align 1, !tbaa !30
  store <2 x i64> %.val19.i.i446, ptr %i.akd, align 1, !tbaa !30
  %i.akr = icmp ult i64 %i.akp, 17
  br i1 %i.akr, label %ZSTD_wildcopy.exit.i24.i452, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akd, i64 16
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ei, %bb.eh
  %.pn.i.i21.i447 = phi ptr [ %.0301.i199.i253, %bb.eh ], [ %i.aku, %bb.ei ] ; 2 uses
  %.1.i.i22.i448 = phi ptr [ %i.aks, %bb.eh ], [ %i.akv, %bb.ei ] ; 3 uses
  %.130.i.i23.i449 = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i447, i64 16
  %.130.i.val.i.i450 = load <2 x i64>, ptr %.130.i.i23.i449, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i.i450, ptr %.1.i.i22.i448, align 1, !tbaa !30
  %i.akt = getelementptr inbounds nuw i8, ptr %.1.i.i22.i448, i64 16
  %i.aku = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i447, i64 32 ; 2 uses
  %.val.i.i451 = load <2 x i64>, ptr %i.aku, align 1, !tbaa !30
  store <2 x i64> %.val.i.i451, ptr %i.akt, align 1, !tbaa !30
  %i.akv = getelementptr inbounds nuw i8, ptr %.1.i.i22.i448, i64 32 ; 2 uses
  %i.akw = icmp ult ptr %i.akv, %i.akq
  br i1 %i.akw, label %bb.ei, label %ZSTD_wildcopy.exit.i24.i452, !llvm.loop !0

ZSTD_wildcopy.exit.i24.i452:                      ; preds = %bb.ei, %bb.eg, %bb.ef
  %.014.i.i453 = phi ptr [ %.0301.i199.i253, %bb.ef ], [ %i.aim, %bb.eg ], [ %i.aim, %bb.ei ] ; 7 uses
  %.0.i25.i454 = phi ptr [ %i.akd, %bb.ef ], [ %i.akq, %bb.eg ], [ %i.akq, %bb.ei ] ; 6 uses
  %i.akx = icmp ult ptr %.014.i.i453, %i.aju
  br i1 %i.akx, label %iter.check1499, label %ZSTD_storeSeq.exit358.i.i443

iter.check1499:                                   ; preds = %ZSTD_wildcopy.exit.i24.i452
  %.014.i.i4531481 = ptrtoaddr ptr %.014.i.i453 to i64 ; 2 uses
  %.0.i25.i4541480 = ptrtoaddr ptr %.0.i25.i454 to i64
  %reass.sub1857 = sub i64 %.pn.i266, %.014.i.i4531481
  %i.aky = add i64 %reass.sub1857, 1              ; 7 uses
  %min.iters.check1483 = icmp ult i64 %i.aky, 8
  %i.akz = sub i64 %.014.i.i4531481, %.0.i25.i4541480
  %diff.check1482.a = icmp ugt i64 %i.akz, -32
  %or.cond1866 = select i1 %min.iters.check1483, i1 true, i1 %diff.check1482.a
  br i1 %or.cond1866, label %.lr.ph.i.i455.preheader, label %vector.main.loop.iter.check1484

vector.main.loop.iter.check1484:                  ; preds = %iter.check1499
  %min.iters.check1485 = icmp ult i64 %i.aky, 32
  br i1 %min.iters.check1485, label %vec.epilog.ph1503, label %vector.ph1486

vector.ph1486:                                    ; preds = %vector.main.loop.iter.check1484
  %i.ala = and i64 %i.aky, 24
  %n.vec1487 = and i64 %i.aky, -32                ; 5 uses
  %i.alb = getelementptr i8, ptr %.0.i25.i454, i64 %n.vec1487
  %i.alc = getelementptr i8, ptr %.014.i.i453, i64 %n.vec1487
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.ph1486, %vector.body1488
  %index1489 = phi i64 [ 0, %vector.ph1486 ], [ %index.next1494, %vector.body1488 ] ; 3 uses
  %next.gep1490 = getelementptr i8, ptr %.0.i25.i454, i64 %index1489 ; 2 uses
  %next.gep1491.a = getelementptr i8, ptr %.014.i.i453, i64 %index1489 ; 2 uses
  %i.ald = getelementptr i8, ptr %next.gep1491.a, i64 16
  %wide.load1492 = load <16 x i8>, ptr %next.gep1491.a, align 1, !tbaa !30
  %wide.load1493.a = load <16 x i8>, ptr %i.ald, align 1, !tbaa !30
  %i.ale = getelementptr i8, ptr %next.gep1490, i64 16
  store <16 x i8> %wide.load1492, ptr %next.gep1490, align 1, !tbaa !30
  store <16 x i8> %wide.load1493.a, ptr %i.ale, align 1, !tbaa !30
  %index.next1494 = add nuw i64 %index1489, 32    ; 2 uses
  %i.alf = icmp eq i64 %index.next1494, %n.vec1487
  br i1 %i.alf, label %middle.block1495, label %vector.body1488, !llvm.loop !116

middle.block1495:                                 ; preds = %vector.body1488
  %cmp.n1496 = icmp eq i64 %i.aky, %n.vec1487
  br i1 %cmp.n1496, label %ZSTD_storeSeq.exit358.i.i443, label %vec.epilog.iter.check1501

vec.epilog.iter.check1501:                        ; preds = %middle.block1495
  %min.epilog.iters.check1502 = icmp eq i64 %i.ala, 0
  br i1 %min.epilog.iters.check1502, label %.lr.ph.i.i455.preheader, label %vec.epilog.ph1503, !prof !38

vec.epilog.ph1503:                                ; preds = %vector.main.loop.iter.check1484, %vec.epilog.iter.check1501
  %vec.epilog.resume.val1497 = phi i64 [ %n.vec1487, %vec.epilog.iter.check1501 ], [ 0, %vector.main.loop.iter.check1484 ]
  %n.vec1504 = and i64 %i.aky, -8                 ; 4 uses
  %i.alg = getelementptr i8, ptr %.0.i25.i454, i64 %n.vec1504
  %i.alh = getelementptr i8, ptr %.014.i.i453, i64 %n.vec1504
  br label %vec.epilog.vector.body1505

vec.epilog.vector.body1505:                       ; preds = %vec.epilog.vector.body1505, %vec.epilog.ph1503
  %index1506 = phi i64 [ %vec.epilog.resume.val1497, %vec.epilog.ph1503 ], [ %index.next1510, %vec.epilog.vector.body1505 ] ; 3 uses
  %next.gep1507 = getelementptr i8, ptr %.0.i25.i454, i64 %index1506
  %next.gep1508.a = getelementptr i8, ptr %.014.i.i453, i64 %index1506
  %wide.load1509 = load <8 x i8>, ptr %next.gep1508.a, align 1, !tbaa !30
  store <8 x i8> %wide.load1509, ptr %next.gep1507, align 1, !tbaa !30
  %index.next1510 = add nuw i64 %index1506, 8     ; 2 uses
  %i.ali = icmp eq i64 %index.next1510, %n.vec1504
  br i1 %i.ali, label %vec.epilog.middle.block1511, label %vec.epilog.vector.body1505, !llvm.loop !117

vec.epilog.middle.block1511:                      ; preds = %vec.epilog.vector.body1505
  %cmp.n1512 = icmp eq i64 %i.aky, %n.vec1504
  br i1 %cmp.n1512, label %ZSTD_storeSeq.exit358.i.i443, label %.lr.ph.i.i455.preheader

.lr.ph.i.i455.preheader:                          ; preds = %iter.check1499, %vec.epilog.iter.check1501, %vec.epilog.middle.block1511
  %.121.i.i456.ph = phi ptr [ %.0.i25.i454, %iter.check1499 ], [ %i.alb, %vec.epilog.iter.check1501 ], [ %i.alg, %vec.epilog.middle.block1511 ] ; 2 uses
  %.11520.i.i457.ph = phi ptr [ %.014.i.i453, %iter.check1499 ], [ %i.alc, %vec.epilog.iter.check1501 ], [ %i.alh, %vec.epilog.middle.block1511 ] ; 3 uses
  %.11520.i.i457.ph2018 = ptrtoaddr ptr %.11520.i.i457.ph to i64 ; 2 uses
  %reass.sub2083 = sub i64 %.1312.i.i256.lcssa20192023, %.11520.i.i457.ph2018
  %i.alj = add i64 %reass.sub2083, 1
  %i.alk = sub i64 %.1312.i.i256.lcssa20192023, %.11520.i.i457.ph2018
  %xtraiter.a = and i64 %i.alj, 7                 ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph.i.i455.prol.loopexit, label %.lr.ph.i.i455.prol

.lr.ph.i.i455.prol:                               ; preds = %.lr.ph.i.i455.preheader, %.lr.ph.i.i455.prol
  %.121.i.i456.prol = phi ptr [ %i.aln, %.lr.ph.i.i455.prol ], [ %.121.i.i456.ph, %.lr.ph.i.i455.preheader ] ; 2 uses
  %.11520.i.i457.prol = phi ptr [ %i.all, %.lr.ph.i.i455.prol ], [ %.11520.i.i457.ph, %.lr.ph.i.i455.preheader ] ; 2 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.lr.ph.i.i455.prol ], [ 0, %.lr.ph.i.i455.preheader ]
  %i.all = getelementptr inbounds nuw i8, ptr %.11520.i.i457.prol, i64 1 ; 2 uses
  %i.alm = load i8, ptr %.11520.i.i457.prol, align 1, !tbaa !30
  %i.aln = getelementptr inbounds nuw i8, ptr %.121.i.i456.prol, i64 1 ; 2 uses
  store i8 %i.alm, ptr %.121.i.i456.prol, align 1, !tbaa !30
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph.i.i455.prol.loopexit, label %.lr.ph.i.i455.prol, !llvm.loop !118

.lr.ph.i.i455.prol.loopexit:                      ; preds = %.lr.ph.i.i455.prol, %.lr.ph.i.i455.preheader
  %.121.i.i456.unr = phi ptr [ %.121.i.i456.ph, %.lr.ph.i.i455.preheader ], [ %i.aln, %.lr.ph.i.i455.prol ]
  %.11520.i.i457.unr = phi ptr [ %.11520.i.i457.ph, %.lr.ph.i.i455.preheader ], [ %i.all, %.lr.ph.i.i455.prol ]
  %i.alo = icmp ult i64 %i.alk, 7
  br i1 %i.alo, label %ZSTD_storeSeq.exit358.i.i443, label %.lr.ph.i.i455

.lr.ph.i.i455:                                    ; preds = %.lr.ph.i.i455.prol.loopexit, %.lr.ph.i.i455
  %.121.i.i456 = phi ptr [ %i.amm, %.lr.ph.i.i455 ], [ %.121.i.i456.unr, %.lr.ph.i.i455.prol.loopexit ] ; 9 uses
  %.11520.i.i457 = phi ptr [ %i.amk, %.lr.ph.i.i455 ], [ %.11520.i.i457.unr, %.lr.ph.i.i455.prol.loopexit ] ; 9 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 1
  %i.alq = load i8, ptr %.11520.i.i457, align 1, !tbaa !30
  %i.alr = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 1
  store i8 %i.alq, ptr %.121.i.i456, align 1, !tbaa !30
  %i.als = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 2
  %i.alt = load i8, ptr %i.alp, align 1, !tbaa !30
  %i.alu = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 2
  store i8 %i.alt, ptr %i.alr, align 1, !tbaa !30
  %i.alv = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 3
  %i.alw = load i8, ptr %i.als, align 1, !tbaa !30
  %i.alx = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 3
  store i8 %i.alw, ptr %i.alu, align 1, !tbaa !30
  %i.aly = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 4
  %i.alz = load i8, ptr %i.alv, align 1, !tbaa !30
  %i.ama = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 4
  store i8 %i.alz, ptr %i.alx, align 1, !tbaa !30
  %i.amb = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 5
  %i.amc = load i8, ptr %i.aly, align 1, !tbaa !30
  %i.amd = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 5
  store i8 %i.amc, ptr %i.ama, align 1, !tbaa !30
  %i.ame = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 6
  %i.amf = load i8, ptr %i.amb, align 1, !tbaa !30
  %i.amg = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 6
  store i8 %i.amf, ptr %i.amd, align 1, !tbaa !30
  %i.amh = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 7 ; 2 uses
  %i.ami = load i8, ptr %i.ame, align 1, !tbaa !30
  %i.amj = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 7
  store i8 %i.ami, ptr %i.amg, align 1, !tbaa !30
  %i.amk = getelementptr inbounds nuw i8, ptr %.11520.i.i457, i64 8
  %i.aml = load i8, ptr %i.amh, align 1, !tbaa !30
  %i.amm = getelementptr inbounds nuw i8, ptr %.121.i.i456, i64 8
  store i8 %i.aml, ptr %i.amj, align 1, !tbaa !30
  %exitcond.not.i.i458.7 = icmp eq ptr %i.amh, %.1312.i.i256
  br i1 %exitcond.not.i.i458.7, label %ZSTD_storeSeq.exit358.i.i443, label %.lr.ph.i.i455, !llvm.loop !119

ZSTD_storeSeq.exit358.i.thread.i435:              ; preds = %bb.ec, %bb.eb
  %i.amn = load ptr, ptr %i.ain, align 8, !tbaa !35
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 %i.akc
  store ptr %i.amo, ptr %i.ain, align 8, !tbaa !35
  %.pre.i436 = load ptr, ptr %i.aiq, align 8, !tbaa !40
  br label %bb.ek

ZSTD_storeSeq.exit358.i.i443:                     ; preds = %bb.ee, %.lr.ph.i.i455.prol.loopexit, %.lr.ph.i.i455, %middle.block1495, %vec.epilog.middle.block1511, %ZSTD_wildcopy.exit.i24.i452
  %i.amp = load ptr, ptr %i.ain, align 8, !tbaa !35
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.akc
  store ptr %i.amq, ptr %i.ain, align 8, !tbaa !35
  %i.amr = icmp ugt i64 %i.akc, 65535
  %.pre240.i444 = load ptr, ptr %i.aiq, align 8, !tbaa !40 ; 3 uses
  br i1 %i.amr, label %bb.ej, label %bb.ek, !prof !143

bb.ej:                                            ; preds = %ZSTD_storeSeq.exit358.i.i443
  store i32 1, ptr %i.aip, align 8, !tbaa !42
  %i.ams = load ptr, ptr %1, align 8, !tbaa !43
  %i.amt = ptrtoint ptr %.pre240.i444 to i64
  %i.amu = ptrtoint ptr %i.ams to i64
  %i.amv = sub i64 %i.amt, %i.amu
  %i.amw = lshr exact i64 %i.amv, 3
  %i.amx = trunc i64 %i.amw to i32
  store i32 %i.amx, ptr %i.air, align 4, !tbaa !44
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %ZSTD_storeSeq.exit358.i.i443, %ZSTD_storeSeq.exit358.i.thread.i435
  %i.amy = phi ptr [ %.pre.i436, %ZSTD_storeSeq.exit358.i.thread.i435 ], [ %.pre240.i444, %bb.ej ], [ %.pre240.i444, %ZSTD_storeSeq.exit358.i.i443 ] ; 4 uses
  %i.amz = trunc i64 %i.akc to i16
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  store i16 %i.amz, ptr %i.ana, align 4, !tbaa !46
  store i32 1, ptr %i.amy, align 4, !tbaa !47
  %i.anb = add i64 %i.ajy, 1                      ; 3 uses
  %i.anc = icmp ugt i64 %i.anb, 65535
  br i1 %i.anc, label %ZSTD_storeSeqOnly.exit.i.sink.split.i336, label %ZSTD_storeSeqOnly.exit.i.i308, !prof !48

bb.el:                                            ; preds = %bb.dz, %bb.dy
  br i1 %.0274.i.in.not.i270, label %bb.em, label %.thread.i276

bb.em:                                            ; preds = %bb.el
  %i.and = lshr i32 %.0276.i.i259, 8              ; 3 uses
  %i.ane = icmp ugt i32 %i.and, %i.aa
  br i1 %i.ane, label %bb.en, label %.thread.i276

bb.en:                                            ; preds = %bb.em
  %i.anf = zext nneg i32 %i.and to i64            ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.anf
  %.val.i391 = load i32, ptr %i.ang, align 1, !tbaa !22
  %.1312.i.val.i392 = load i32, ptr %.1312.i.i256, align 1, !tbaa !22
  %i.anh = icmp ne i32 %.val.i391, %.1312.i.val.i392
  %.not335.i.i393 = icmp ugt i32 %.0272.i.i265, %i.n
  %or.cond.i.i394 = select i1 %i.anh, i1 true, i1 %.not335.i.i393
  br i1 %or.cond.i.i394, label %.thread.i276, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.anf ; 2 uses
  %i.anj = add i32 %i.ai, %i.and
  %i.ank = sub i32 %.0270.i.i268, %i.anj          ; 3 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %.1312.i.i256, i64 4
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  %i.ann = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.anl, ptr noundef nonnull %i.anm, ptr noundef %i.q, ptr noundef %i.af, ptr noundef %i.p)
  %i.ano = add i64 %i.ann, 4                      ; 2 uses
  %i.anp = icmp ugt ptr %.1312.i.i256, %.0301.i199.i253
  br i1 %i.anp, label %.lr.ph179.i425, label %.critedge.i.i395

.lr.ph179.i425:                                   ; preds = %bb.eo, %bb.ep
  %.0261.i178.i426 = phi ptr [ %i.ans, %bb.ep ], [ %i.ani, %bb.eo ]
  %.1281.i177.i427 = phi i64 [ %i.anv, %bb.ep ], [ %i.ano, %bb.eo ] ; 2 uses
  %.2313.i176.i428 = phi ptr [ %i.anq, %bb.ep ], [ %.1312.i.i256, %bb.eo ] ; 2 uses
  %i.anq = getelementptr inbounds i8, ptr %.2313.i176.i428, i64 -1 ; 4 uses
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !30
  %i.ans = getelementptr inbounds i8, ptr %.0261.i178.i426, i64 -1 ; 3 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !30
  %i.anu = icmp eq i8 %i.anr, %i.ant
  br i1 %i.anu, label %bb.ep, label %.critedge.i.loopexit.i429

bb.ep:                                            ; preds = %.lr.ph179.i425
  %i.anv = add i64 %.1281.i177.i427, 1            ; 2 uses
  %i.anw = icmp ugt ptr %i.anq, %.0301.i199.i253
  %i.anx = icmp ugt ptr %i.ans, %i.ae
  %i.any = and i1 %i.anx, %i.anw
  br i1 %i.any, label %.lr.ph179.i425, label %.critedge.i.loopexit.i429, !llvm.loop !94

.critedge.i.loopexit.i429:                        ; preds = %bb.ep, %.lr.ph179.i425
  %.2313.i.lcssa.ph.i430 = phi ptr [ %i.anq, %bb.ep ], [ %.2313.i176.i428, %.lr.ph179.i425 ] ; 2 uses
  %.1281.i.lcssa.ph.i431 = phi i64 [ %i.anv, %bb.ep ], [ %.1281.i177.i427, %.lr.ph179.i425 ]
  %.pre247.i432 = ptrtoint ptr %.2313.i.lcssa.ph.i430 to i64
  br label %.critedge.i.i395

.critedge.i.i395:                                 ; preds = %.critedge.i.loopexit.i429, %bb.eo
  %.pre-phi248.i396 = phi i64 [ %.pre247.i432, %.critedge.i.loopexit.i429 ], [ %.pn.i266, %bb.eo ]
  %.2313.i.lcssa.i397 = phi ptr [ %.2313.i.lcssa.ph.i430, %.critedge.i.loopexit.i429 ], [ %.1312.i.i256, %bb.eo ] ; 6 uses
  %.1281.i.lcssa.i398 = phi i64 [ %.1281.i.lcssa.ph.i431, %.critedge.i.loopexit.i429 ], [ %i.ano, %bb.eo ] ; 3 uses
  %.2313.i.lcssa.i3971446 = ptrtoaddr ptr %.2313.i.lcssa.i397 to i64 ; 3 uses
  %i.anz = ptrtoint ptr %.0301.i199.i253 to i64   ; 2 uses
  %i.aoa = sub i64 %.pre-phi248.i396, %i.anz      ; 7 uses
  %i.aob = add i32 %i.ank, 3
  %.not.i355.i.i399 = icmp ugt ptr %.2313.i.lcssa.i397, %i.aim
  %i.aoc = load ptr, ptr %i.ain, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i355.i.i399, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %.critedge.i.i395
  %.0301.i.val16.i400 = load <2 x i64>, ptr %.0301.i199.i253, align 1, !tbaa !30
  store <2 x i64> %.0301.i.val16.i400, ptr %i.aoc, align 1, !tbaa !30
  %i.aod = icmp ugt i64 %i.aoa, 16
  br i1 %i.aod, label %bb.er, label %ZSTD_storeSeq.exit356.i.thread.i401

bb.er:                                            ; preds = %bb.eq
  %i.aoe = load ptr, ptr %i.ain, align 8, !tbaa !35 ; 3 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 16
  %i.aog = getelementptr inbounds nuw i8, ptr %.0301.i199.i253, i64 16 ; 2 uses
  %i.aoh = getelementptr i8, ptr %i.aoe, i64 %i.aoa
  %.val15.i403 = load <2 x i64>, ptr %i.aog, align 1, !tbaa !30
  store <2 x i64> %.val15.i403, ptr %i.aof, align 1, !tbaa !30
  %i.aoi = icmp ult i64 %i.aoa, 33
  br i1 %i.aoi, label %ZSTD_storeSeq.exit356.i.thread.i401, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoe, i64 32
  br label %bb.et

bb.et:                                            ; preds = %bb.et, %bb.es
  %.pn.i359.i.i404 = phi ptr [ %i.aog, %bb.es ], [ %i.aol, %bb.et ] ; 2 uses
  %.1.i360.i.i405 = phi ptr [ %i.aoj, %bb.es ], [ %i.aom, %bb.et ] ; 3 uses
  %.130.i361.i.i406 = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i404, i64 16
  %.130.i361.i.val.i407 = load <2 x i64>, ptr %.130.i361.i.i406, align 1, !tbaa !30
  store <2 x i64> %.130.i361.i.val.i407, ptr %.1.i360.i.i405, align 1, !tbaa !30
  %i.aok = getelementptr inbounds nuw i8, ptr %.1.i360.i.i405, i64 16
  %i.aol = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i404, i64 32 ; 2 uses
  %.val14.i408 = load <2 x i64>, ptr %i.aol, align 1, !tbaa !30
  store <2 x i64> %.val14.i408, ptr %i.aok, align 1, !tbaa !30
  %i.aom = getelementptr inbounds nuw i8, ptr %.1.i360.i.i405, i64 32 ; 2 uses
  %i.aon = icmp ult ptr %i.aom, %i.aoh
  br i1 %i.aon, label %bb.et, label %ZSTD_storeSeq.exit356.i.i409, !llvm.loop !0

bb.eu:                                            ; preds = %.critedge.i.i395
  %.not.i26.i411 = icmp ugt ptr %.0301.i199.i253, %i.aim
  br i1 %.not.i26.i411, label %ZSTD_wildcopy.exit.i33.i418, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aoo = sub i64 %i.aio, %i.anz                 ; 2 uses
  %i.aop = getelementptr inbounds i8, ptr %i.aoc, i64 %i.aoo ; 3 uses
  %.val19.i27.i412 = load <2 x i64>, ptr %.0301.i199.i253, align 1, !tbaa !30
  store <2 x i64> %.val19.i27.i412, ptr %i.aoc, align 1, !tbaa !30
  %i.aoq = icmp ult i64 %i.aoo, 17
  br i1 %i.aoq, label %ZSTD_wildcopy.exit.i33.i418, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %bb.ew
  %.pn.i.i28.i413 = phi ptr [ %.0301.i199.i253, %bb.ew ], [ %i.aot, %bb.ex ] ; 2 uses
  %.1.i.i29.i414 = phi ptr [ %i.aor, %bb.ew ], [ %i.aou, %bb.ex ] ; 3 uses
  %.130.i.i30.i415 = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i413, i64 16
  %.130.i.val.i31.i416 = load <2 x i64>, ptr %.130.i.i30.i415, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i31.i416, ptr %.1.i.i29.i414, align 1, !tbaa !30
  %i.aos = getelementptr inbounds nuw i8, ptr %.1.i.i29.i414, i64 16
  %i.aot = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i413, i64 32 ; 2 uses
  %.val.i32.i417 = load <2 x i64>, ptr %i.aot, align 1, !tbaa !30
  store <2 x i64> %.val.i32.i417, ptr %i.aos, align 1, !tbaa !30
  %i.aou = getelementptr inbounds nuw i8, ptr %.1.i.i29.i414, i64 32 ; 2 uses
  %i.aov = icmp ult ptr %i.aou, %i.aop
  br i1 %i.aov, label %bb.ex, label %ZSTD_wildcopy.exit.i33.i418, !llvm.loop !0

ZSTD_wildcopy.exit.i33.i418:                      ; preds = %bb.ex, %bb.ev, %bb.eu
  %.014.i34.i419 = phi ptr [ %.0301.i199.i253, %bb.eu ], [ %i.aim, %bb.ev ], [ %i.aim, %bb.ex ] ; 7 uses
  %.0.i35.i420 = phi ptr [ %i.aoc, %bb.eu ], [ %i.aop, %bb.ev ], [ %i.aop, %bb.ex ] ; 6 uses
  %i.aow = icmp ult ptr %.014.i34.i419, %.2313.i.lcssa.i397
  br i1 %i.aow, label %iter.check1463.a, label %ZSTD_storeSeq.exit356.i.i409

iter.check1463.a:                                 ; preds = %ZSTD_wildcopy.exit.i33.i418
  %.014.i34.i4191444 = ptrtoaddr ptr %.014.i34.i419 to i64 ; 2 uses
  %.0.i35.i4201443 = ptrtoaddr ptr %.0.i35.i420 to i64
  %i.aox = sub i64 %.2313.i.lcssa.i3971446, %.014.i34.i4191444 ; 7 uses
  %min.iters.check1447.a = icmp ult i64 %i.aox, 8
  %i.aoy = sub i64 %.014.i34.i4191444, %.0.i35.i4201443
  %diff.check1445.a = icmp ugt i64 %i.aoy, -32
  %or.cond1867 = select i1 %min.iters.check1447.a, i1 true, i1 %diff.check1445.a
  br i1 %or.cond1867, label %.lr.ph.i36.i421.preheader, label %vector.main.loop.iter.check1448.a

vector.main.loop.iter.check1448.a:                ; preds = %iter.check1463.a
  %min.iters.check1449.a = icmp ult i64 %i.aox, 32
  br i1 %min.iters.check1449.a, label %vec.epilog.ph1467.a, label %vector.ph1450.a

vector.ph1450.a:                                  ; preds = %vector.main.loop.iter.check1448.a
  %i.aoz = and i64 %i.aox, 24
  %n.vec1451.a = and i64 %i.aox, -32              ; 5 uses
  %i.apa = getelementptr i8, ptr %.0.i35.i420, i64 %n.vec1451.a
  %i.apb = getelementptr i8, ptr %.014.i34.i419, i64 %n.vec1451.a
  br label %vector.body1452.a

vector.body1452.a:                                ; preds = %vector.ph1450.a, %vector.body1452.a
  %index1453.a = phi i64 [ 0, %vector.ph1450.a ], [ %index.next1458.a, %vector.body1452.a ] ; 3 uses
  %next.gep1454.a = getelementptr i8, ptr %.0.i35.i420, i64 %index1453.a ; 2 uses
  %next.gep1455.a = getelementptr i8, ptr %.014.i34.i419, i64 %index1453.a ; 2 uses
  %i.apc = getelementptr i8, ptr %next.gep1455.a, i64 16
  %wide.load1456.a = load <16 x i8>, ptr %next.gep1455.a, align 1, !tbaa !30
  %wide.load1457.a = load <16 x i8>, ptr %i.apc, align 1, !tbaa !30
  %i.apd = getelementptr i8, ptr %next.gep1454.a, i64 16
  store <16 x i8> %wide.load1456.a, ptr %next.gep1454.a, align 1, !tbaa !30
  store <16 x i8> %wide.load1457.a, ptr %i.apd, align 1, !tbaa !30
  %index.next1458.a = add nuw i64 %index1453.a, 32 ; 2 uses
  %i.ape = icmp eq i64 %index.next1458.a, %n.vec1451.a
  br i1 %i.ape, label %middle.block1459.a, label %vector.body1452.a, !llvm.loop !120

middle.block1459.a:                               ; preds = %vector.body1452.a
  %cmp.n1460.a = icmp eq i64 %i.aox, %n.vec1451.a
  br i1 %cmp.n1460.a, label %ZSTD_storeSeq.exit356.i.i409, label %vec.epilog.iter.check1465.a

vec.epilog.iter.check1465.a:                      ; preds = %middle.block1459.a
  %min.epilog.iters.check1466.a = icmp eq i64 %i.aoz, 0
  br i1 %min.epilog.iters.check1466.a, label %.lr.ph.i36.i421.preheader, label %vec.epilog.ph1467.a, !prof !38

end_hunk_2
begin_hunk_3_@ZSTD_compressBlock_fast_dictMatchState:bb.a
  %next.gep1435 = getelementptr i8, ptr %.0.i58.i360, i64 %index1434
  %next.gep1436 = getelementptr i8, ptr %.014.i57.i359, i64 %index1434
  %wide.load1437 = load <8 x i8>, ptr %next.gep1436, align 1, !tbaa !30
  store <8 x i8> %wide.load1437, ptr %next.gep1435, align 1, !tbaa !30
  %index.next1438 = add nuw i64 %index1434, 8     ; 2 uses
  %i.aue = icmp eq i64 %index.next1438, %n.vec1433
  br i1 %i.aue, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1439 = icmp eq i64 %i.atu, %n.vec1433
  br i1 %cmp.n1439, label %ZSTD_storeSeq.exit354.i.i349, label %.lr.ph.i59.i361.preheader

.lr.ph.i59.i361.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i60.i362.ph = phi ptr [ %.0.i58.i360, %iter.check ], [ %i.atx, %vec.epilog.iter.check ], [ %i.auc, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i61.i363.ph = phi ptr [ %.014.i57.i359, %iter.check ], [ %i.aty, %vec.epilog.iter.check ], [ %i.aud, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i61.i363.ph2028 = ptrtoaddr ptr %.11520.i61.i363.ph to i64 ; 2 uses
  %i.auf = sub i64 %.5316.i.lcssa.i3021428, %.11520.i61.i363.ph2028
  %xtraiter2029 = and i64 %i.auf, 7               ; 2 uses
  %lcmp.mod2030.not = icmp eq i64 %xtraiter2029, 0
  br i1 %lcmp.mod2030.not, label %.lr.ph.i59.i361.prol.loopexit, label %.lr.ph.i59.i361.prol

.lr.ph.i59.i361.prol:                             ; preds = %.lr.ph.i59.i361.preheader, %.lr.ph.i59.i361.prol
  %.121.i60.i362.prol = phi ptr [ %i.aui, %.lr.ph.i59.i361.prol ], [ %.121.i60.i362.ph, %.lr.ph.i59.i361.preheader ] ; 2 uses
  %.11520.i61.i363.prol = phi ptr [ %i.aug, %.lr.ph.i59.i361.prol ], [ %.11520.i61.i363.ph, %.lr.ph.i59.i361.preheader ] ; 2 uses
  %prol.iter2031 = phi i64 [ %prol.iter2031.next, %.lr.ph.i59.i361.prol ], [ 0, %.lr.ph.i59.i361.preheader ]
  %i.aug = getelementptr inbounds nuw i8, ptr %.11520.i61.i363.prol, i64 1 ; 2 uses
  %i.auh = load i8, ptr %.11520.i61.i363.prol, align 1, !tbaa !30
  %i.aui = getelementptr inbounds nuw i8, ptr %.121.i60.i362.prol, i64 1 ; 2 uses
  store i8 %i.auh, ptr %.121.i60.i362.prol, align 1, !tbaa !30
  %prol.iter2031.next = add i64 %prol.iter2031, 1 ; 2 uses
  %prol.iter2031.cmp.not = icmp eq i64 %prol.iter2031.next, %xtraiter2029
  br i1 %prol.iter2031.cmp.not, label %.lr.ph.i59.i361.prol.loopexit, label %.lr.ph.i59.i361.prol, !llvm.loop !126

.lr.ph.i59.i361.prol.loopexit:                    ; preds = %.lr.ph.i59.i361.prol, %.lr.ph.i59.i361.preheader
  %.121.i60.i362.unr = phi ptr [ %.121.i60.i362.ph, %.lr.ph.i59.i361.preheader ], [ %i.aui, %.lr.ph.i59.i361.prol ]
  %.11520.i61.i363.unr = phi ptr [ %.11520.i61.i363.ph, %.lr.ph.i59.i361.preheader ], [ %i.aug, %.lr.ph.i59.i361.prol ]
  %i.auj = sub i64 %.11520.i61.i363.ph2028, %.5316.i.lcssa.i3021428
  %i.auk = icmp ugt i64 %i.auj, -8
  br i1 %i.auk, label %ZSTD_storeSeq.exit354.i.i349, label %.lr.ph.i59.i361

.lr.ph.i59.i361:                                  ; preds = %.lr.ph.i59.i361.prol.loopexit, %.lr.ph.i59.i361
  %.121.i60.i362 = phi ptr [ %i.avi, %.lr.ph.i59.i361 ], [ %.121.i60.i362.unr, %.lr.ph.i59.i361.prol.loopexit ] ; 9 uses
  %.11520.i61.i363 = phi ptr [ %i.avg, %.lr.ph.i59.i361 ], [ %.11520.i61.i363.unr, %.lr.ph.i59.i361.prol.loopexit ] ; 9 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 1
  %i.aum = load i8, ptr %.11520.i61.i363, align 1, !tbaa !30
  %i.aun = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 1
  store i8 %i.aum, ptr %.121.i60.i362, align 1, !tbaa !30
  %i.auo = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 2
  %i.aup = load i8, ptr %i.aul, align 1, !tbaa !30
  %i.auq = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 2
  store i8 %i.aup, ptr %i.aun, align 1, !tbaa !30
  %i.aur = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 3
  %i.aus = load i8, ptr %i.auo, align 1, !tbaa !30
  %i.aut = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 3
  store i8 %i.aus, ptr %i.auq, align 1, !tbaa !30
  %i.auu = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 4
  %i.auv = load i8, ptr %i.aur, align 1, !tbaa !30
  %i.auw = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 4
  store i8 %i.auv, ptr %i.aut, align 1, !tbaa !30
  %i.aux = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 5
  %i.auy = load i8, ptr %i.auu, align 1, !tbaa !30
  %i.auz = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 5
  store i8 %i.auy, ptr %i.auw, align 1, !tbaa !30
  %i.ava = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 6
  %i.avb = load i8, ptr %i.aux, align 1, !tbaa !30
  %i.avc = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 6
  store i8 %i.avb, ptr %i.auz, align 1, !tbaa !30
  %i.avd = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 7
  %i.ave = load i8, ptr %i.ava, align 1, !tbaa !30
  %i.avf = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 7
  store i8 %i.ave, ptr %i.avc, align 1, !tbaa !30
  %i.avg = getelementptr inbounds nuw i8, ptr %.11520.i61.i363, i64 8 ; 2 uses
  %i.avh = load i8, ptr %i.avd, align 1, !tbaa !30
  %i.avi = getelementptr inbounds nuw i8, ptr %.121.i60.i362, i64 8
  store i8 %i.avh, ptr %i.avf, align 1, !tbaa !30
  %exitcond.not.i62.i364.7 = icmp eq ptr %i.avg, %.5316.i.lcssa.i302
  br i1 %exitcond.not.i62.i364.7, label %ZSTD_storeSeq.exit354.i.i349, label %.lr.ph.i59.i361, !llvm.loop !127

ZSTD_storeSeq.exit354.i.thread.i306:              ; preds = %bb.fo, %bb.fn
  %i.avj = load ptr, ptr %i.ain, align 8, !tbaa !35
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 %i.asx
  store ptr %i.avk, ptr %i.ain, align 8, !tbaa !35
  %.pre243.i307 = load ptr, ptr %i.aiq, align 8, !tbaa !40
  br label %bb.fw

ZSTD_storeSeq.exit354.i.i349:                     ; preds = %bb.fq, %.lr.ph.i59.i361.prol.loopexit, %.lr.ph.i59.i361, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i56.i358
  %i.avl = load ptr, ptr %i.ain, align 8, !tbaa !35
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 %i.asx
  store ptr %i.avm, ptr %i.ain, align 8, !tbaa !35
  %i.avn = icmp ugt i64 %i.asx, 65535
  %.pre244.i350 = load ptr, ptr %i.aiq, align 8, !tbaa !40 ; 3 uses
  br i1 %i.avn, label %bb.fv, label %bb.fw, !prof !41

bb.fv:                                            ; preds = %ZSTD_storeSeq.exit354.i.i349
  store i32 1, ptr %i.aip, align 8, !tbaa !42
  %i.avo = load ptr, ptr %1, align 8, !tbaa !43
  %i.avp = ptrtoint ptr %.pre244.i350 to i64
  %i.avq = ptrtoint ptr %i.avo to i64
  %i.avr = sub i64 %i.avp, %i.avq
  %i.avs = lshr exact i64 %i.avr, 3
  %i.avt = trunc i64 %i.avs to i32
  store i32 %i.avt, ptr %i.air, align 4, !tbaa !44
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %ZSTD_storeSeq.exit354.i.i349, %ZSTD_storeSeq.exit354.i.thread.i306
  %i.avu = phi ptr [ %.pre243.i307, %ZSTD_storeSeq.exit354.i.thread.i306 ], [ %.pre244.i350, %bb.fv ], [ %.pre244.i350, %ZSTD_storeSeq.exit354.i.i349 ] ; 4 uses
  %i.avv = trunc i64 %i.asx to i16
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avu, i64 4
  store i16 %i.avv, ptr %i.avw, align 4, !tbaa !46
  store i32 %i.asy, ptr %i.avu, align 4, !tbaa !47
  %i.avx = add i64 %.4.i.lcssa.i303, -3           ; 3 uses
  %i.avy = icmp ugt i64 %i.avx, 65535
  br i1 %i.avy, label %ZSTD_storeSeqOnly.exit.i.sink.split.i336, label %ZSTD_storeSeqOnly.exit.i.i308, !prof !48

ZSTD_match4Found_cmov.exit.thread.i280:           ; preds = %ZSTD_match4Found_cmov.exit.i288, %.thread.i276
  %.not337.i.i281 = icmp uge ptr %.1308.i.i257, %.0264.i.i262 ; 2 uses
  %i.avz = zext i1 %.not337.i.i281 to i64
  %.1268.i.i282 = add i64 %.0267.i.i261, %i.avz   ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %.1308.i.i257, i64 %.1268.i.i282 ; 2 uses
  %i.awb = icmp ugt ptr %i.awa, %i.r
  br i1 %i.awb, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.fx

bb.fx:                                            ; preds = %ZSTD_match4Found_cmov.exit.thread.i280
  %.1265.i.idx.i283 = select i1 %.not337.i.i281, i64 256, i64 0
  %.1265.i.i284 = getelementptr inbounds nuw i8, ptr %.0264.i.i262, i64 %.1265.i.idx.i283
  %i.awc = lshr i64 %i.ajj, 8
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.awc
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !22 ; 2 uses
  %i.awf = zext i32 %i.awe to i64
  %i.awg = xor i64 %i.ajj, %i.awf
  br label %bb.dy

ZSTD_storeSeqOnly.exit.i.sink.split.i336:         ; preds = %bb.fw, %bb.ez, %bb.ek
  %.sink314.i337 = phi ptr [ %i.aqx, %bb.ez ], [ %i.amy, %bb.ek ], [ %i.avu, %bb.fw ] ; 2 uses
  %.sink310.ph.i338 = phi i64 [ %i.ara, %bb.ez ], [ %i.anb, %bb.ek ], [ %i.avx, %bb.fw ]
  %.6317.i.ph.ph.i339 = phi ptr [ %.2313.i.lcssa.i397, %bb.ez ], [ %i.aju, %bb.ek ], [ %.5316.i.lcssa.i302, %bb.fw ]
  %.4295.i.ph.ph.i340 = phi i32 [ %i.ank, %bb.ez ], [ %.0291.i200.i252, %bb.ek ], [ %i.arf, %bb.fw ]
  %.4289.i.ph.ph.i341 = phi i32 [ %.0291.i200.i252, %bb.ez ], [ %.0285.i201.i251, %bb.ek ], [ %.0291.i200.i252, %bb.fw ]
  %.5.i.ph.ph.i342 = phi i64 [ %.1281.i.lcssa.i398, %bb.ez ], [ %i.ajz, %bb.ek ], [ %.4.i.lcssa.i303, %bb.fw ]
  store i32 2, ptr %i.aip, align 8, !tbaa !42
  %i.awh = load ptr, ptr %1, align 8, !tbaa !43
  %i.awi = ptrtoint ptr %.sink314.i337 to i64
  %i.awj = ptrtoint ptr %i.awh to i64
  %i.awk = sub i64 %i.awi, %i.awj
  %i.awl = lshr exact i64 %i.awk, 3
  %i.awm = trunc i64 %i.awl to i32
  store i32 %i.awm, ptr %i.air, align 4, !tbaa !44
  br label %ZSTD_storeSeqOnly.exit.i.i308

ZSTD_storeSeqOnly.exit.i.i308:                    ; preds = %ZSTD_storeSeqOnly.exit.i.sink.split.i336, %bb.fw, %bb.ez, %bb.ek
  %.sink310.i309 = phi i64 [ %i.anb, %bb.ek ], [ %i.ara, %bb.ez ], [ %i.avx, %bb.fw ], [ %.sink310.ph.i338, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ]
  %.sink309.i310 = phi ptr [ %i.amy, %bb.ek ], [ %i.aqx, %bb.ez ], [ %i.avu, %bb.fw ], [ %.sink314.i337, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ] ; 2 uses
  %.6317.i.ph.i311 = phi ptr [ %i.aju, %bb.ek ], [ %.2313.i.lcssa.i397, %bb.ez ], [ %.5316.i.lcssa.i302, %bb.fw ], [ %.6317.i.ph.ph.i339, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ]
  %.4295.i.ph.i312 = phi i32 [ %.0291.i200.i252, %bb.ek ], [ %i.ank, %bb.ez ], [ %i.arf, %bb.fw ], [ %.4295.i.ph.ph.i340, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ] ; 2 uses
  %.4289.i.ph.i313 = phi i32 [ %.0285.i201.i251, %bb.ek ], [ %.0291.i200.i252, %bb.ez ], [ %.0291.i200.i252, %bb.fw ], [ %.4289.i.ph.ph.i341, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ] ; 2 uses
  %.5.i.ph.i314 = phi i64 [ %i.ajz, %bb.ek ], [ %.1281.i.lcssa.i398, %bb.ez ], [ %.4.i.lcssa.i303, %bb.fw ], [ %.5.i.ph.ph.i342, %ZSTD_storeSeqOnly.exit.i.sink.split.i336 ]
  %i.awn = trunc i64 %.sink310.i309 to i16
  %i.awo = getelementptr inbounds nuw i8, ptr %.sink309.i310, i64 6
  store i16 %i.awn, ptr %i.awo, align 2, !tbaa !49
  %i.awp = getelementptr inbounds nuw i8, ptr %.sink309.i310, i64 8 ; 2 uses
  store ptr %i.awp, ptr %i.aiq, align 8, !tbaa !40
  %i.awq = getelementptr inbounds nuw i8, ptr %.6317.i.ph.i311, i64 %.5.i.ph.i314 ; 4 uses
  %.not338.i.i315 = icmp ugt ptr %i.awq, %i.r
  br i1 %.not338.i.i315, label %.thread122.i324, label %bb.fy

bb.fy:                                            ; preds = %ZSTD_storeSeqOnly.exit.i.i308
  %i.awr = add i32 %.0270.i.i268, 2
  %i.aws = and i64 %.0270.i.in.i267, 4294967295
  %i.awt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 2
  %.val9.i316 = load i64, ptr %i.awu, align 1, !tbaa !21
  %i.awv = mul i64 %.val9.i316, -3523014627193847808
  %i.aww = lshr i64 %i.awv, %i.aij
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aww
  store i32 %i.awr, ptr %i.awx, align 4, !tbaa !22
  %i.awy = getelementptr inbounds i8, ptr %i.awq, i64 -2 ; 2 uses
  %i.awz = ptrtoint ptr %i.awy to i64
  %i.axa = sub i64 %i.awz, %i.as
  %i.axb = trunc i64 %i.axa to i32
  %.val8.i317 = load i64, ptr %i.awy, align 1, !tbaa !21
  %i.axc = mul i64 %.val8.i317, -3523014627193847808
  %i.axd = lshr i64 %i.axc, %i.aij
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.axd
  store i32 %i.axb, ptr %i.axe, align 4, !tbaa !22
  br label %bb.fz

bb.fz:                                            ; preds = %bb.ge, %bb.fy
  %i.axf = phi ptr [ %i.awp, %bb.fy ], [ %i.ayg, %bb.ge ]
  %.5290.i195.i318 = phi i32 [ %.4289.i.ph.i313, %bb.fy ], [ %.5296.i194.i319, %bb.ge ] ; 5 uses
  %.5296.i194.i319 = phi i32 [ %.4295.i.ph.i312, %bb.fy ], [ %.5290.i195.i318, %bb.ge ] ; 4 uses
  %.7318.i193.i320 = phi ptr [ %i.awq, %bb.fy ], [ %i.ayl, %bb.ge ] ; 9 uses
  %i.axg = ptrtoint ptr %.7318.i193.i320 to i64
  %i.axh = sub i64 %i.axg, %i.as
  %i.axi = trunc i64 %i.axh to i32                ; 2 uses
  %i.axj = sub i32 %i.axi, %.5290.i195.i318       ; 3 uses
  %i.axk = icmp ult i32 %i.axj, %i.n              ; 2 uses
  %i.axl = zext i32 %i.axj to i64
  %.v.i321 = select i1 %i.axk, ptr %i.aix, ptr %i.k
  %i.axm = getelementptr inbounds nuw i8, ptr %.v.i321, i64 %i.axl ; 2 uses
  %i.axn = sub i32 %i.axj, %i.n
  %10 = icmp ult i32 %i.axn, -3
  br i1 %10, label %bb.ga, label %.thread122.i324

bb.ga:                                            ; preds = %bb.fz
  %.val4.i322 = load i32, ptr %i.axm, align 1, !tbaa !22
  %.7318.i.val.i323 = load i32, ptr %.7318.i193.i320, align 1, !tbaa !22
  %i.axo = icmp eq i32 %.val4.i322, %.7318.i.val.i323
  br i1 %i.axo, label %bb.gb, label %.thread122.i324

bb.gb:                                            ; preds = %bb.ga
  %i.axp = select i1 %i.axk, ptr %i.af, ptr %i.q
  %i.axq = getelementptr inbounds nuw i8, ptr %.7318.i193.i320, i64 4
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axm, i64 4
  %i.axs = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.axq, ptr noundef nonnull %i.axr, ptr noundef %i.q, ptr noundef %i.axp, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i330 = icmp ugt ptr %.7318.i193.i320, %i.aim
  br i1 %.not.i.i.i330, label %ZSTD_storeSeq.exit.i.i333, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.axt = load ptr, ptr %i.ain, align 8, !tbaa !35
  %.1302.i.val.i331 = load <2 x i64>, ptr %.7318.i193.i320, align 1, !tbaa !30
  store <2 x i64> %.1302.i.val.i331, ptr %i.axt, align 1, !tbaa !30
  %.pre245.i332 = load ptr, ptr %i.aiq, align 8, !tbaa !40
  br label %ZSTD_storeSeq.exit.i.i333

ZSTD_storeSeq.exit.i.i333:                        ; preds = %bb.gc, %bb.gb
  %i.axu = phi ptr [ %i.axf, %bb.gb ], [ %.pre245.i332, %bb.gc ] ; 5 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 4
  store i16 0, ptr %i.axv, align 4, !tbaa !46
  store i32 1, ptr %i.axu, align 4, !tbaa !47
  %i.axw = add i64 %i.axs, 1                      ; 2 uses
  %i.axx = icmp ugt i64 %i.axw, 65535
  br i1 %i.axx, label %bb.gd, label %bb.ge, !prof !48

bb.gd:                                            ; preds = %ZSTD_storeSeq.exit.i.i333
  store i32 2, ptr %i.aip, align 8, !tbaa !42
  %i.axy = load ptr, ptr %1, align 8, !tbaa !43
  %i.axz = ptrtoint ptr %i.axu to i64
  %i.aya = ptrtoint ptr %i.axy to i64
  %i.ayb = sub i64 %i.axz, %i.aya
  %i.ayc = lshr exact i64 %i.ayb, 3
  %i.ayd = trunc i64 %i.ayc to i32
  store i32 %i.ayd, ptr %i.air, align 4, !tbaa !44
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %ZSTD_storeSeq.exit.i.i333
  %i.aye = trunc i64 %i.axw to i16
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axu, i64 6
  store i16 %i.aye, ptr %i.ayf, align 2, !tbaa !49
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axu, i64 8 ; 2 uses
  store ptr %i.ayg, ptr %i.aiq, align 8, !tbaa !40
  %.7318.i.val7.i334 = load i64, ptr %.7318.i193.i320, align 1, !tbaa !21
  %i.ayh = mul i64 %.7318.i.val7.i334, -3523014627193847808
  %i.ayi = lshr i64 %i.ayh, %i.aij
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ayi
  store i32 %i.axi, ptr %i.ayj, align 4, !tbaa !22
  %i.ayk = getelementptr i8, ptr %.7318.i193.i320, i64 %i.axs
  %i.ayl = getelementptr i8, ptr %i.ayk, i64 4    ; 3 uses
  %.not339.i.i335 = icmp ugt ptr %i.ayl, %i.r
  br i1 %.not339.i.i335, label %.thread122.i324, label %bb.fz

.thread122.i324:                                  ; preds = %bb.ge, %bb.ga, %bb.fz, %ZSTD_storeSeqOnly.exit.i.i308
  %.9320.i.i325 = phi ptr [ %i.awq, %ZSTD_storeSeqOnly.exit.i.i308 ], [ %.7318.i193.i320, %bb.fz ], [ %.7318.i193.i320, %bb.ga ], [ %i.ayl, %bb.ge ] ; 4 uses
  %.7298.i.i326 = phi i32 [ %.4295.i.ph.i312, %ZSTD_storeSeqOnly.exit.i.i308 ], [ %.5296.i194.i319, %bb.fz ], [ %.5296.i194.i319, %bb.ga ], [ %.5290.i195.i318, %bb.ge ] ; 2 uses
  %.7.i.i327 = phi i32 [ %.4289.i.ph.i313, %ZSTD_storeSeqOnly.exit.i.i308 ], [ %.5290.i195.i318, %bb.fz ], [ %.5290.i195.i318, %bb.ga ], [ %.5296.i194.i319, %bb.ge ] ; 2 uses
  %.0307.i.i328 = getelementptr inbounds nuw i8, ptr %.9320.i.i325, i64 %i.l ; 2 uses
  %.not332.i.i329 = icmp ugt ptr %.0307.i.i328, %i.r
  br i1 %.not332.i.i329, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.dx

bb.gf:                                            ; preds = %bb.a
  br i1 %.not.i.i, label %.loopexit.i465, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aym = zext nneg i32 %i.ar to i64
  %i.ayn = shl nuw i64 4, %i.aym
  %.not207.i462 = icmp ugt i32 %i.ar, 61
  br i1 %.not207.i462, label %.loopexit.i465, label %.lr.ph.i463

.lr.ph.i463:                                      ; preds = %bb.gg, %.lr.ph.i463
  %.0284.i174.i464 = phi i64 [ %i.ayp, %.lr.ph.i463 ], [ 0, %bb.gg ] ; 2 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0284.i174.i464
  tail call void @llvm.prefetch.p0(ptr %i.ayo, i32 0, i32 2, i32 1)
  %i.ayp = add nuw i64 %.0284.i174.i464, 64       ; 2 uses
  %i.ayq = icmp ult i64 %i.ayp, %i.ayn
  br i1 %i.ayq, label %.lr.ph.i463, label %.loopexit.i465, !llvm.loop !89

.loopexit.i465:                                   ; preds = %.lr.ph.i463, %bb.gg, %bb.gf
  %i.ayr = add nsw i64 %4, -8
  %.not332.i197.i466 = icmp slt i64 %i.ayr, %i.l
  br i1 %.not332.i197.i466, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %.lr.ph203.i467

.lr.ph203.i467:                                   ; preds = %.loopexit.i465
  %.0307.i196.i468 = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.ays = and i64 %i.ap, 4294967295
  %i.ayt = icmp eq i64 %i.ays, 0
  %i.ayu = zext i1 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw i8, ptr %3, i64 %i.ayu
  %i.ayw = sub i32 64, %i.f
  %i.ayx = zext nneg i32 %i.ayw to i64            ; 4 uses
  %i.ayy = sub i32 56, %i.ar
  %i.ayz = zext nneg i32 %i.ayy to i64            ; 2 uses
  %i.aza = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 14 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 19 uses
  %i.azc = ptrtoint ptr %i.aza to i64             ; 3 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.azg = getelementptr inbounds i8, ptr %i.q, i64 -7 ; 2 uses
  %i.azh = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.azi = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.azj = zext i32 %i.ai to i64
  %i.azk = sub nsw i64 0, %i.azj
  %i.azl = getelementptr inbounds i8, ptr %i.ac, i64 %i.azk
  br label %bb.gh

bb.gh:                                            ; preds = %.thread122.i543, %.lr.ph203.i467
  %.0307.i202.i469 = phi ptr [ %.0307.i196.i468, %.lr.ph203.i467 ], [ %.0307.i.i547, %.thread122.i543 ]
  %.0285.i201.i470 = phi i32 [ %i.u, %.lr.ph203.i467 ], [ %.7.i.i546, %.thread122.i543 ] ; 3 uses
  %.0291.i200.i471 = phi i32 [ %i.s, %.lr.ph203.i467 ], [ %.7298.i.i545, %.thread122.i543 ] ; 8 uses
  %.0301.i199.i472 = phi ptr [ %3, %.lr.ph203.i467 ], [ %.9320.i.i544, %.thread122.i543 ] ; 26 uses
  %.0311.i198.i473 = phi ptr [ %i.ayv, %.lr.ph203.i467 ], [ %.9320.i.i544, %.thread122.i543 ] ; 3 uses
  %.0311.i.val11.i474 = load i64, ptr %.0311.i198.i473, align 1, !tbaa !21
  %i.azm = mul i64 %.0311.i.val11.i474, -3523014627193167104 ; 2 uses
  %i.azn = lshr i64 %i.azm, %i.ayz                ; 2 uses
  %i.azo = lshr i64 %i.azn, 8
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.azo
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !22 ; 2 uses
  %i.azr = zext i32 %i.azq to i64
  %i.azs = xor i64 %i.azn, %i.azr
  %i.azt = getelementptr inbounds nuw i8, ptr %.0311.i198.i473, i64 256
  %invariant.op2239 = sub i32 1, %.0291.i200.i471
  br label %bb.gi

bb.gi:                                            ; preds = %bb.ih, %bb.gh
  %.1312.i.i475 = phi ptr [ %.0311.i198.i473, %bb.gh ], [ %.1308.i.i476, %bb.ih ] ; 16 uses
  %.1308.i.i476 = phi ptr [ %.0307.i202.i469, %bb.gh ], [ %i.bmo, %bb.ih ] ; 4 uses
  %.pn209.i477 = phi i64 [ %i.azm, %bb.gh ], [ %i.azw, %bb.ih ]
  %.0276.i.i478 = phi i32 [ %i.azq, %bb.gh ], [ %i.bms, %bb.ih ]
  %.0274.i.in.in.in.i479 = phi i64 [ %i.azs, %bb.gh ], [ %i.bmu, %bb.ih ]
  %.0267.i.i480 = phi i64 [ %i.l, %bb.gh ], [ %.1268.i.i501, %bb.ih ]
  %.0264.i.i481 = phi ptr [ %i.azt, %bb.gh ], [ %.1265.i.i503, %bb.ih ] ; 2 uses
  %.0278.i.i482 = lshr i64 %.pn209.i477, %i.ayx
  %.0272.i.in.i483 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0278.i.i482 ; 2 uses
  %.0272.i.i484 = load i32, ptr %.0272.i.in.i483, align 4, !tbaa !22 ; 5 uses
  %.pn.i485 = ptrtoint ptr %.1312.i.i475 to i64   ; 5 uses
  %.0270.i.in.i486 = sub i64 %.pn.i485, %i.as     ; 2 uses
  %.0270.i.i487 = trunc i64 %.0270.i.in.i486 to i32 ; 4 uses
  %.0274.i.in.in.i488 = and i64 %.0274.i.in.in.in.i479, 255
  %.0274.i.in.not.i489 = icmp eq i64 %.0274.i.in.in.i488, 0
  %i.azu = zext i32 %.0272.i.i484 to i64
  %i.azv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.azu ; 4 uses
  %.reass.i491.reass.reass.reass = add i32 %.0270.i.i487, %invariant.op2239 ; 4 uses
  %.1308.i.val10.i492 = load i64, ptr %.1308.i.i476, align 1, !tbaa !21
  %i.azw = mul i64 %.1308.i.val10.i492, -3523014627193167104 ; 2 uses
  %i.azx = lshr i64 %i.azw, %i.ayz                ; 2 uses
  store i32 %.0270.i.i487, ptr %.0272.i.in.i483, align 4, !tbaa !22
  %i.azy = sub i32 %.reass.i491.reass.reass.reass, %i.n
  %11 = icmp ult i32 %i.azy, -3
  br i1 %11, label %bb.gj, label %bb.gv

bb.gj:                                            ; preds = %bb.gi
  %i.azz = icmp ult i32 %.reass.i491.reass.reass.reass, %i.n ; 2 uses
  %i.baa = sub i32 %.reass.i491.reass.reass.reass, %i.ai
  %i.bab = zext i32 %i.baa to i64
  %i.bac = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bab
  %i.bad = zext i32 %.reass.i491.reass.reass.reass to i64
  %i.bae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bad
  %i.baf = select i1 %i.azz, ptr %i.bac, ptr %i.bae ; 2 uses
  %.val6.i493 = load i32, ptr %i.baf, align 1, !tbaa !22
  %i.bag = getelementptr inbounds nuw i8, ptr %.1312.i.i475, i64 1
  %.val5.i494 = load i32, ptr %i.bag, align 1, !tbaa !22
  %i.bah = icmp eq i32 %.val6.i493, %.val5.i494
  br i1 %i.bah, label %bb.gk, label %bb.gv

bb.gk:                                            ; preds = %bb.gj
  %.1312.i.i475.lcssa20502054 = ptrtoaddr ptr %.1312.i.i475 to i64 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.1312.i.i475, i64 1 ; 5 uses
  %i.baj = select i1 %i.azz, ptr %i.af, ptr %i.q
  %i.bak = getelementptr inbounds nuw i8, ptr %.1312.i.i475, i64 5
  %i.bal = getelementptr inbounds nuw i8, ptr %i.baf, i64 4
  %i.bam = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.bak, ptr noundef nonnull %i.bal, ptr noundef %i.q, ptr noundef %i.baj, ptr noundef %i.p) ; 2 uses
  %i.ban = add i64 %i.bam, 4                      ; 2 uses
  %i.bao = ptrtoint ptr %i.bai to i64
  %i.bap = ptrtoint ptr %.0301.i199.i472 to i64   ; 2 uses
  %i.baq = sub i64 %i.bao, %i.bap                 ; 7 uses
  %.not.i357.i.i652 = icmp ugt ptr %i.bai, %i.aza
  %i.bar = load ptr, ptr %i.azb, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i357.i.i652, label %bb.gp, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %.0301.i.val.i653 = load <2 x i64>, ptr %.0301.i199.i472, align 1, !tbaa !30
  store <2 x i64> %.0301.i.val.i653, ptr %i.bar, align 1, !tbaa !30
  %i.bas = icmp ugt i64 %i.baq, 16
  br i1 %i.bas, label %bb.gm, label %ZSTD_storeSeq.exit358.i.thread.i654

bb.gm:                                            ; preds = %bb.gl
  %i.bat = load ptr, ptr %i.azb, align 8, !tbaa !35 ; 3 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 16
  %i.bav = getelementptr inbounds nuw i8, ptr %.0301.i199.i472, i64 16 ; 2 uses
  %i.baw = getelementptr i8, ptr %i.bat, i64 %i.baq
  %.val13.i656 = load <2 x i64>, ptr %i.bav, align 1, !tbaa !30
  store <2 x i64> %.val13.i656, ptr %i.bau, align 1, !tbaa !30
  %i.bax = icmp ult i64 %i.baq, 33
  br i1 %i.bax, label %ZSTD_storeSeq.exit358.i.thread.i654, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bat, i64 32
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %bb.gn
  %.pn.i.i.i657 = phi ptr [ %i.bav, %bb.gn ], [ %i.bba, %bb.go ] ; 2 uses
  %.1.i.i.i658 = phi ptr [ %i.bay, %bb.gn ], [ %i.bbb, %bb.go ] ; 3 uses
  %.130.i.i.i659 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i657, i64 16
  %.130.i.i.val.i660 = load <2 x i64>, ptr %.130.i.i.i659, align 1, !tbaa !30
  store <2 x i64> %.130.i.i.val.i660, ptr %.1.i.i.i658, align 1, !tbaa !30
  %i.baz = getelementptr inbounds nuw i8, ptr %.1.i.i.i658, i64 16
  %i.bba = getelementptr inbounds nuw i8, ptr %.pn.i.i.i657, i64 32 ; 2 uses
  %.val12.i661 = load <2 x i64>, ptr %i.bba, align 1, !tbaa !30
  store <2 x i64> %.val12.i661, ptr %i.baz, align 1, !tbaa !30
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1.i.i.i658, i64 32 ; 2 uses
  %i.bbc = icmp ult ptr %i.bbb, %i.baw
  br i1 %i.bbc, label %bb.go, label %ZSTD_storeSeq.exit358.i.i662, !llvm.loop !0

bb.gp:                                            ; preds = %bb.gk
  %.not.i20.i664 = icmp ugt ptr %.0301.i199.i472, %i.aza
  br i1 %.not.i20.i664, label %ZSTD_wildcopy.exit.i24.i671, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.bbd = sub i64 %i.azc, %i.bap                 ; 2 uses
  %i.bbe = getelementptr inbounds i8, ptr %i.bar, i64 %i.bbd ; 3 uses
  %.val19.i.i665 = load <2 x i64>, ptr %.0301.i199.i472, align 1, !tbaa !30
  store <2 x i64> %.val19.i.i665, ptr %i.bar, align 1, !tbaa !30
  %i.bbf = icmp ult i64 %i.bbd, 17
  br i1 %i.bbf, label %ZSTD_wildcopy.exit.i24.i671, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bar, i64 16
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %bb.gr
  %.pn.i.i21.i666 = phi ptr [ %.0301.i199.i472, %bb.gr ], [ %i.bbi, %bb.gs ] ; 2 uses
  %.1.i.i22.i667 = phi ptr [ %i.bbg, %bb.gr ], [ %i.bbj, %bb.gs ] ; 3 uses
  %.130.i.i23.i668 = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i666, i64 16
  %.130.i.val.i.i669 = load <2 x i64>, ptr %.130.i.i23.i668, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i.i669, ptr %.1.i.i22.i667, align 1, !tbaa !30
  %i.bbh = getelementptr inbounds nuw i8, ptr %.1.i.i22.i667, i64 16
  %i.bbi = getelementptr inbounds nuw i8, ptr %.pn.i.i21.i666, i64 32 ; 2 uses
  %.val.i.i670 = load <2 x i64>, ptr %i.bbi, align 1, !tbaa !30
  store <2 x i64> %.val.i.i670, ptr %i.bbh, align 1, !tbaa !30
  %i.bbj = getelementptr inbounds nuw i8, ptr %.1.i.i22.i667, i64 32 ; 2 uses
  %i.bbk = icmp ult ptr %i.bbj, %i.bbe
  br i1 %i.bbk, label %bb.gs, label %ZSTD_wildcopy.exit.i24.i671, !llvm.loop !0

ZSTD_wildcopy.exit.i24.i671:                      ; preds = %bb.gs, %bb.gq, %bb.gp
  %.014.i.i672 = phi ptr [ %.0301.i199.i472, %bb.gp ], [ %i.aza, %bb.gq ], [ %i.aza, %bb.gs ] ; 7 uses
  %.0.i25.i673 = phi ptr [ %i.bar, %bb.gp ], [ %i.bbe, %bb.gq ], [ %i.bbe, %bb.gs ] ; 6 uses
  %i.bbl = icmp ult ptr %.014.i.i672, %i.bai
  br i1 %i.bbl, label %iter.check1725, label %ZSTD_storeSeq.exit358.i.i662

iter.check1725:                                   ; preds = %ZSTD_wildcopy.exit.i24.i671
  %.014.i.i6721707 = ptrtoaddr ptr %.014.i.i672 to i64 ; 2 uses
  %.0.i25.i6731706 = ptrtoaddr ptr %.0.i25.i673 to i64
  %reass.sub1859 = sub i64 %.pn.i485, %.014.i.i6721707
  %i.bbm = add i64 %reass.sub1859, 1              ; 7 uses
  %min.iters.check1709 = icmp ult i64 %i.bbm, 8
  %i.bbn = sub i64 %.014.i.i6721707, %.0.i25.i6731706
  %diff.check1708.a = icmp ugt i64 %i.bbn, -32
  %or.cond1869 = select i1 %min.iters.check1709, i1 true, i1 %diff.check1708.a
  br i1 %or.cond1869, label %.lr.ph.i.i674.preheader, label %vector.main.loop.iter.check1710

vector.main.loop.iter.check1710:                  ; preds = %iter.check1725
  %min.iters.check1711 = icmp ult i64 %i.bbm, 32
  br i1 %min.iters.check1711, label %vec.epilog.ph1729, label %vector.ph1712

vector.ph1712:                                    ; preds = %vector.main.loop.iter.check1710
  %i.bbo = and i64 %i.bbm, 24
  %n.vec1713 = and i64 %i.bbm, -32                ; 5 uses
  %i.bbp = getelementptr i8, ptr %.0.i25.i673, i64 %n.vec1713
  %i.bbq = getelementptr i8, ptr %.014.i.i672, i64 %n.vec1713
  br label %vector.body1714

vector.body1714:                                  ; preds = %vector.ph1712, %vector.body1714
  %index1715 = phi i64 [ 0, %vector.ph1712 ], [ %index.next1720, %vector.body1714 ] ; 3 uses
  %next.gep1716 = getelementptr i8, ptr %.0.i25.i673, i64 %index1715 ; 2 uses
  %next.gep1717.a = getelementptr i8, ptr %.014.i.i672, i64 %index1715 ; 2 uses
  %i.bbr = getelementptr i8, ptr %next.gep1717.a, i64 16
  %wide.load1718 = load <16 x i8>, ptr %next.gep1717.a, align 1, !tbaa !30
  %wide.load1719.a = load <16 x i8>, ptr %i.bbr, align 1, !tbaa !30
  %i.bbs = getelementptr i8, ptr %next.gep1716, i64 16
  store <16 x i8> %wide.load1718, ptr %next.gep1716, align 1, !tbaa !30
  store <16 x i8> %wide.load1719.a, ptr %i.bbs, align 1, !tbaa !30
  %index.next1720 = add nuw i64 %index1715, 32    ; 2 uses
  %i.bbt = icmp eq i64 %index.next1720, %n.vec1713
  br i1 %i.bbt, label %middle.block1721, label %vector.body1714, !llvm.loop !128

middle.block1721:                                 ; preds = %vector.body1714
  %cmp.n1722 = icmp eq i64 %i.bbm, %n.vec1713
  br i1 %cmp.n1722, label %ZSTD_storeSeq.exit358.i.i662, label %vec.epilog.iter.check1727

vec.epilog.iter.check1727:                        ; preds = %middle.block1721
  %min.epilog.iters.check1728 = icmp eq i64 %i.bbo, 0
  br i1 %min.epilog.iters.check1728, label %.lr.ph.i.i674.preheader, label %vec.epilog.ph1729, !prof !38

vec.epilog.ph1729:                                ; preds = %vector.main.loop.iter.check1710, %vec.epilog.iter.check1727
  %vec.epilog.resume.val1723 = phi i64 [ %n.vec1713, %vec.epilog.iter.check1727 ], [ 0, %vector.main.loop.iter.check1710 ]
  %n.vec1730 = and i64 %i.bbm, -8                 ; 4 uses
  %i.bbu = getelementptr i8, ptr %.0.i25.i673, i64 %n.vec1730
  %i.bbv = getelementptr i8, ptr %.014.i.i672, i64 %n.vec1730
  br label %vec.epilog.vector.body1731

vec.epilog.vector.body1731:                       ; preds = %vec.epilog.vector.body1731, %vec.epilog.ph1729
  %index1732 = phi i64 [ %vec.epilog.resume.val1723, %vec.epilog.ph1729 ], [ %index.next1736, %vec.epilog.vector.body1731 ] ; 3 uses
  %next.gep1733 = getelementptr i8, ptr %.0.i25.i673, i64 %index1732
  %next.gep1734.a = getelementptr i8, ptr %.014.i.i672, i64 %index1732
  %wide.load1735 = load <8 x i8>, ptr %next.gep1734.a, align 1, !tbaa !30
  store <8 x i8> %wide.load1735, ptr %next.gep1733, align 1, !tbaa !30
  %index.next1736 = add nuw i64 %index1732, 8     ; 2 uses
  %i.bbw = icmp eq i64 %index.next1736, %n.vec1730
  br i1 %i.bbw, label %vec.epilog.middle.block1737, label %vec.epilog.vector.body1731, !llvm.loop !129

vec.epilog.middle.block1737:                      ; preds = %vec.epilog.vector.body1731
  %cmp.n1738 = icmp eq i64 %i.bbm, %n.vec1730
  br i1 %cmp.n1738, label %ZSTD_storeSeq.exit358.i.i662, label %.lr.ph.i.i674.preheader

.lr.ph.i.i674.preheader:                          ; preds = %iter.check1725, %vec.epilog.iter.check1727, %vec.epilog.middle.block1737
  %.121.i.i675.ph = phi ptr [ %.0.i25.i673, %iter.check1725 ], [ %i.bbp, %vec.epilog.iter.check1727 ], [ %i.bbu, %vec.epilog.middle.block1737 ] ; 2 uses
  %.11520.i.i676.ph = phi ptr [ %.014.i.i672, %iter.check1725 ], [ %i.bbq, %vec.epilog.iter.check1727 ], [ %i.bbv, %vec.epilog.middle.block1737 ] ; 3 uses
  %.11520.i.i676.ph2049 = ptrtoaddr ptr %.11520.i.i676.ph to i64 ; 2 uses
  %reass.sub2085 = sub i64 %.1312.i.i475.lcssa20502054, %.11520.i.i676.ph2049
  %i.bbx = add i64 %reass.sub2085, 1
  %i.bby = sub i64 %.1312.i.i475.lcssa20502054, %.11520.i.i676.ph2049
  %xtraiter2055.a = and i64 %i.bbx, 7             ; 2 uses
  %lcmp.mod2056.not.a = icmp eq i64 %xtraiter2055.a, 0
  br i1 %lcmp.mod2056.not.a, label %.lr.ph.i.i674.prol.loopexit, label %.lr.ph.i.i674.prol

.lr.ph.i.i674.prol:                               ; preds = %.lr.ph.i.i674.preheader, %.lr.ph.i.i674.prol
  %.121.i.i675.prol = phi ptr [ %i.bcb, %.lr.ph.i.i674.prol ], [ %.121.i.i675.ph, %.lr.ph.i.i674.preheader ] ; 2 uses
  %.11520.i.i676.prol = phi ptr [ %i.bbz, %.lr.ph.i.i674.prol ], [ %.11520.i.i676.ph, %.lr.ph.i.i674.preheader ] ; 2 uses
  %prol.iter2057.a = phi i64 [ %prol.iter2057.next.a, %.lr.ph.i.i674.prol ], [ 0, %.lr.ph.i.i674.preheader ]
  %i.bbz = getelementptr inbounds nuw i8, ptr %.11520.i.i676.prol, i64 1 ; 2 uses
  %i.bca = load i8, ptr %.11520.i.i676.prol, align 1, !tbaa !30
  %i.bcb = getelementptr inbounds nuw i8, ptr %.121.i.i675.prol, i64 1 ; 2 uses
  store i8 %i.bca, ptr %.121.i.i675.prol, align 1, !tbaa !30
  %prol.iter2057.next.a = add i64 %prol.iter2057.a, 1 ; 2 uses
  %prol.iter2057.cmp.not.a = icmp eq i64 %prol.iter2057.next.a, %xtraiter2055.a
  br i1 %prol.iter2057.cmp.not.a, label %.lr.ph.i.i674.prol.loopexit, label %.lr.ph.i.i674.prol, !llvm.loop !130

.lr.ph.i.i674.prol.loopexit:                      ; preds = %.lr.ph.i.i674.prol, %.lr.ph.i.i674.preheader
  %.121.i.i675.unr = phi ptr [ %.121.i.i675.ph, %.lr.ph.i.i674.preheader ], [ %i.bcb, %.lr.ph.i.i674.prol ]
  %.11520.i.i676.unr = phi ptr [ %.11520.i.i676.ph, %.lr.ph.i.i674.preheader ], [ %i.bbz, %.lr.ph.i.i674.prol ]
  %i.bcc = icmp ult i64 %i.bby, 7
  br i1 %i.bcc, label %ZSTD_storeSeq.exit358.i.i662, label %.lr.ph.i.i674

.lr.ph.i.i674:                                    ; preds = %.lr.ph.i.i674.prol.loopexit, %.lr.ph.i.i674
  %.121.i.i675 = phi ptr [ %i.bda, %.lr.ph.i.i674 ], [ %.121.i.i675.unr, %.lr.ph.i.i674.prol.loopexit ] ; 9 uses
  %.11520.i.i676 = phi ptr [ %i.bcy, %.lr.ph.i.i674 ], [ %.11520.i.i676.unr, %.lr.ph.i.i674.prol.loopexit ] ; 9 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 1
  %i.bce = load i8, ptr %.11520.i.i676, align 1, !tbaa !30
  %i.bcf = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 1
  store i8 %i.bce, ptr %.121.i.i675, align 1, !tbaa !30
  %i.bcg = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 2
  %i.bch = load i8, ptr %i.bcd, align 1, !tbaa !30
  %i.bci = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 2
  store i8 %i.bch, ptr %i.bcf, align 1, !tbaa !30
  %i.bcj = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 3
  %i.bck = load i8, ptr %i.bcg, align 1, !tbaa !30
  %i.bcl = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 3
  store i8 %i.bck, ptr %i.bci, align 1, !tbaa !30
  %i.bcm = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 4
  %i.bcn = load i8, ptr %i.bcj, align 1, !tbaa !30
  %i.bco = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 4
  store i8 %i.bcn, ptr %i.bcl, align 1, !tbaa !30
  %i.bcp = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 5
  %i.bcq = load i8, ptr %i.bcm, align 1, !tbaa !30
  %i.bcr = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 5
  store i8 %i.bcq, ptr %i.bco, align 1, !tbaa !30
  %i.bcs = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 6
  %i.bct = load i8, ptr %i.bcp, align 1, !tbaa !30
  %i.bcu = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 6
  store i8 %i.bct, ptr %i.bcr, align 1, !tbaa !30
  %i.bcv = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 7 ; 2 uses
  %i.bcw = load i8, ptr %i.bcs, align 1, !tbaa !30
  %i.bcx = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 7
  store i8 %i.bcw, ptr %i.bcu, align 1, !tbaa !30
  %i.bcy = getelementptr inbounds nuw i8, ptr %.11520.i.i676, i64 8
  %i.bcz = load i8, ptr %i.bcv, align 1, !tbaa !30
  %i.bda = getelementptr inbounds nuw i8, ptr %.121.i.i675, i64 8
  store i8 %i.bcz, ptr %i.bcx, align 1, !tbaa !30
  %exitcond.not.i.i677.7 = icmp eq ptr %i.bcv, %.1312.i.i475
  br i1 %exitcond.not.i.i677.7, label %ZSTD_storeSeq.exit358.i.i662, label %.lr.ph.i.i674, !llvm.loop !131

ZSTD_storeSeq.exit358.i.thread.i654:              ; preds = %bb.gm, %bb.gl
  %i.bdb = load ptr, ptr %i.azb, align 8, !tbaa !35
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %i.baq
  store ptr %i.bdc, ptr %i.azb, align 8, !tbaa !35
  %.pre.i655 = load ptr, ptr %i.aze, align 8, !tbaa !40
  br label %bb.gu

ZSTD_storeSeq.exit358.i.i662:                     ; preds = %bb.go, %.lr.ph.i.i674.prol.loopexit, %.lr.ph.i.i674, %middle.block1721, %vec.epilog.middle.block1737, %ZSTD_wildcopy.exit.i24.i671
  %i.bdd = load ptr, ptr %i.azb, align 8, !tbaa !35
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.baq
  store ptr %i.bde, ptr %i.azb, align 8, !tbaa !35
  %i.bdf = icmp ugt i64 %i.baq, 65535
  %.pre240.i663 = load ptr, ptr %i.aze, align 8, !tbaa !40 ; 3 uses
  br i1 %i.bdf, label %bb.gt, label %bb.gu, !prof !143

bb.gt:                                            ; preds = %ZSTD_storeSeq.exit358.i.i662
  store i32 1, ptr %i.azd, align 8, !tbaa !42
  %i.bdg = load ptr, ptr %1, align 8, !tbaa !43
  %i.bdh = ptrtoint ptr %.pre240.i663 to i64
  %i.bdi = ptrtoint ptr %i.bdg to i64
  %i.bdj = sub i64 %i.bdh, %i.bdi
  %i.bdk = lshr exact i64 %i.bdj, 3
  %i.bdl = trunc i64 %i.bdk to i32
  store i32 %i.bdl, ptr %i.azf, align 4, !tbaa !44
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %ZSTD_storeSeq.exit358.i.i662, %ZSTD_storeSeq.exit358.i.thread.i654
  %i.bdm = phi ptr [ %.pre.i655, %ZSTD_storeSeq.exit358.i.thread.i654 ], [ %.pre240.i663, %bb.gt ], [ %.pre240.i663, %ZSTD_storeSeq.exit358.i.i662 ] ; 4 uses
  %i.bdn = trunc i64 %i.baq to i16
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdm, i64 4
  store i16 %i.bdn, ptr %i.bdo, align 4, !tbaa !46
  store i32 1, ptr %i.bdm, align 4, !tbaa !47
  %i.bdp = add i64 %i.bam, 1                      ; 3 uses
  %i.bdq = icmp ugt i64 %i.bdp, 65535
  br i1 %i.bdq, label %ZSTD_storeSeqOnly.exit.i.sink.split.i555, label %ZSTD_storeSeqOnly.exit.i.i527, !prof !48

bb.gv:                                            ; preds = %bb.gj, %bb.gi
  br i1 %.0274.i.in.not.i489, label %bb.gw, label %.thread.i495

bb.gw:                                            ; preds = %bb.gv
  %i.bdr = lshr i32 %.0276.i.i478, 8              ; 3 uses
  %i.bds = icmp ugt i32 %i.bdr, %i.aa
  br i1 %i.bds, label %bb.gx, label %.thread.i495

bb.gx:                                            ; preds = %bb.gw
  %i.bdt = zext nneg i32 %i.bdr to i64            ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bdt
  %.val.i610 = load i32, ptr %i.bdu, align 1, !tbaa !22
  %.1312.i.val.i611 = load i32, ptr %.1312.i.i475, align 1, !tbaa !22
  %i.bdv = icmp ne i32 %.val.i610, %.1312.i.val.i611
  %.not335.i.i612 = icmp ugt i32 %.0272.i.i484, %i.n
  %or.cond.i.i613 = select i1 %i.bdv, i1 true, i1 %.not335.i.i612
  br i1 %or.cond.i.i613, label %.thread.i495, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bdt ; 2 uses
  %i.bdx = add i32 %i.ai, %i.bdr
  %i.bdy = sub i32 %.0270.i.i487, %i.bdx          ; 3 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %.1312.i.i475, i64 4
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdw, i64 4
  %i.beb = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.bdz, ptr noundef nonnull %i.bea, ptr noundef %i.q, ptr noundef %i.af, ptr noundef %i.p)
  %i.bec = add i64 %i.beb, 4                      ; 2 uses
  %i.bed = icmp ugt ptr %.1312.i.i475, %.0301.i199.i472
  br i1 %i.bed, label %.lr.ph179.i644, label %.critedge.i.i614

.lr.ph179.i644:                                   ; preds = %bb.gy, %bb.gz
  %.0261.i178.i645 = phi ptr [ %i.beg, %bb.gz ], [ %i.bdw, %bb.gy ]
  %.1281.i177.i646 = phi i64 [ %i.bej, %bb.gz ], [ %i.bec, %bb.gy ] ; 2 uses
  %.2313.i176.i647 = phi ptr [ %i.bee, %bb.gz ], [ %.1312.i.i475, %bb.gy ] ; 2 uses
  %i.bee = getelementptr inbounds i8, ptr %.2313.i176.i647, i64 -1 ; 4 uses
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !30
  %i.beg = getelementptr inbounds i8, ptr %.0261.i178.i645, i64 -1 ; 3 uses
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !30
  %i.bei = icmp eq i8 %i.bef, %i.beh
  br i1 %i.bei, label %bb.gz, label %.critedge.i.loopexit.i648

bb.gz:                                            ; preds = %.lr.ph179.i644
  %i.bej = add i64 %.1281.i177.i646, 1            ; 2 uses
  %i.bek = icmp ugt ptr %i.bee, %.0301.i199.i472
  %i.bel = icmp ugt ptr %i.beg, %i.ae
  %i.bem = and i1 %i.bel, %i.bek
  br i1 %i.bem, label %.lr.ph179.i644, label %.critedge.i.loopexit.i648, !llvm.loop !94

.critedge.i.loopexit.i648:                        ; preds = %bb.gz, %.lr.ph179.i644
  %.2313.i.lcssa.ph.i649 = phi ptr [ %i.bee, %bb.gz ], [ %.2313.i176.i647, %.lr.ph179.i644 ] ; 2 uses
  %.1281.i.lcssa.ph.i650 = phi i64 [ %i.bej, %bb.gz ], [ %.1281.i177.i646, %.lr.ph179.i644 ]
  %.pre247.i651 = ptrtoint ptr %.2313.i.lcssa.ph.i649 to i64
  br label %.critedge.i.i614

.critedge.i.i614:                                 ; preds = %.critedge.i.loopexit.i648, %bb.gy
  %.pre-phi248.i615 = phi i64 [ %.pre247.i651, %.critedge.i.loopexit.i648 ], [ %.pn.i485, %bb.gy ]
  %.2313.i.lcssa.i616 = phi ptr [ %.2313.i.lcssa.ph.i649, %.critedge.i.loopexit.i648 ], [ %.1312.i.i475, %bb.gy ] ; 6 uses
  %.1281.i.lcssa.i617 = phi i64 [ %.1281.i.lcssa.ph.i650, %.critedge.i.loopexit.i648 ], [ %i.bec, %bb.gy ] ; 3 uses
  %.2313.i.lcssa.i6161672 = ptrtoaddr ptr %.2313.i.lcssa.i616 to i64 ; 3 uses
  %i.ben = ptrtoint ptr %.0301.i199.i472 to i64   ; 2 uses
  %i.beo = sub i64 %.pre-phi248.i615, %i.ben      ; 7 uses
  %i.bep = add i32 %i.bdy, 3
  %.not.i355.i.i618 = icmp ugt ptr %.2313.i.lcssa.i616, %i.aza
  %i.beq = load ptr, ptr %i.azb, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i355.i.i618, label %bb.he, label %bb.ha

bb.ha:                                            ; preds = %.critedge.i.i614
  %.0301.i.val16.i619 = load <2 x i64>, ptr %.0301.i199.i472, align 1, !tbaa !30
  store <2 x i64> %.0301.i.val16.i619, ptr %i.beq, align 1, !tbaa !30
  %i.ber = icmp ugt i64 %i.beo, 16
  br i1 %i.ber, label %bb.hb, label %ZSTD_storeSeq.exit356.i.thread.i620

bb.hb:                                            ; preds = %bb.ha
  %i.bes = load ptr, ptr %i.azb, align 8, !tbaa !35 ; 3 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 16
  %i.beu = getelementptr inbounds nuw i8, ptr %.0301.i199.i472, i64 16 ; 2 uses
  %i.bev = getelementptr i8, ptr %i.bes, i64 %i.beo
  %.val15.i622 = load <2 x i64>, ptr %i.beu, align 1, !tbaa !30
  store <2 x i64> %.val15.i622, ptr %i.bet, align 1, !tbaa !30
  %i.bew = icmp ult i64 %i.beo, 33
  br i1 %i.bew, label %ZSTD_storeSeq.exit356.i.thread.i620, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bes, i64 32
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %bb.hc
  %.pn.i359.i.i623 = phi ptr [ %i.beu, %bb.hc ], [ %i.bez, %bb.hd ] ; 2 uses
  %.1.i360.i.i624 = phi ptr [ %i.bex, %bb.hc ], [ %i.bfa, %bb.hd ] ; 3 uses
  %.130.i361.i.i625 = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i623, i64 16
  %.130.i361.i.val.i626 = load <2 x i64>, ptr %.130.i361.i.i625, align 1, !tbaa !30
  store <2 x i64> %.130.i361.i.val.i626, ptr %.1.i360.i.i624, align 1, !tbaa !30
  %i.bey = getelementptr inbounds nuw i8, ptr %.1.i360.i.i624, i64 16
  %i.bez = getelementptr inbounds nuw i8, ptr %.pn.i359.i.i623, i64 32 ; 2 uses
  %.val14.i627 = load <2 x i64>, ptr %i.bez, align 1, !tbaa !30
  store <2 x i64> %.val14.i627, ptr %i.bey, align 1, !tbaa !30
  %i.bfa = getelementptr inbounds nuw i8, ptr %.1.i360.i.i624, i64 32 ; 2 uses
  %i.bfb = icmp ult ptr %i.bfa, %i.bev
  br i1 %i.bfb, label %bb.hd, label %ZSTD_storeSeq.exit356.i.i628, !llvm.loop !0

bb.he:                                            ; preds = %.critedge.i.i614
  %.not.i26.i630 = icmp ugt ptr %.0301.i199.i472, %i.aza
  br i1 %.not.i26.i630, label %ZSTD_wildcopy.exit.i33.i637, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bfc = sub i64 %i.azc, %i.ben                 ; 2 uses
  %i.bfd = getelementptr inbounds i8, ptr %i.beq, i64 %i.bfc ; 3 uses
  %.val19.i27.i631 = load <2 x i64>, ptr %.0301.i199.i472, align 1, !tbaa !30
  store <2 x i64> %.val19.i27.i631, ptr %i.beq, align 1, !tbaa !30
  %i.bfe = icmp ult i64 %i.bfc, 17
  br i1 %i.bfe, label %ZSTD_wildcopy.exit.i33.i637, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bff = getelementptr inbounds nuw i8, ptr %i.beq, i64 16
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %bb.hg
  %.pn.i.i28.i632 = phi ptr [ %.0301.i199.i472, %bb.hg ], [ %i.bfh, %bb.hh ] ; 2 uses
  %.1.i.i29.i633 = phi ptr [ %i.bff, %bb.hg ], [ %i.bfi, %bb.hh ] ; 3 uses
  %.130.i.i30.i634 = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i632, i64 16
  %.130.i.val.i31.i635 = load <2 x i64>, ptr %.130.i.i30.i634, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i31.i635, ptr %.1.i.i29.i633, align 1, !tbaa !30
  %i.bfg = getelementptr inbounds nuw i8, ptr %.1.i.i29.i633, i64 16
  %i.bfh = getelementptr inbounds nuw i8, ptr %.pn.i.i28.i632, i64 32 ; 2 uses
  %.val.i32.i636 = load <2 x i64>, ptr %i.bfh, align 1, !tbaa !30
  store <2 x i64> %.val.i32.i636, ptr %i.bfg, align 1, !tbaa !30
  %i.bfi = getelementptr inbounds nuw i8, ptr %.1.i.i29.i633, i64 32 ; 2 uses
  %i.bfj = icmp ult ptr %i.bfi, %i.bfd
  br i1 %i.bfj, label %bb.hh, label %ZSTD_wildcopy.exit.i33.i637, !llvm.loop !0

ZSTD_wildcopy.exit.i33.i637:                      ; preds = %bb.hh, %bb.hf, %bb.he
  %.014.i34.i638 = phi ptr [ %.0301.i199.i472, %bb.he ], [ %i.aza, %bb.hf ], [ %i.aza, %bb.hh ] ; 7 uses
  %.0.i35.i639 = phi ptr [ %i.beq, %bb.he ], [ %i.bfd, %bb.hf ], [ %i.bfd, %bb.hh ] ; 6 uses
  %i.bfk = icmp ult ptr %.014.i34.i638, %.2313.i.lcssa.i616
  br i1 %i.bfk, label %iter.check1689.a, label %ZSTD_storeSeq.exit356.i.i628

iter.check1689.a:                                 ; preds = %ZSTD_wildcopy.exit.i33.i637
  %.014.i34.i6381670 = ptrtoaddr ptr %.014.i34.i638 to i64 ; 2 uses
  %.0.i35.i6391669 = ptrtoaddr ptr %.0.i35.i639 to i64
  %i.bfl = sub i64 %.2313.i.lcssa.i6161672, %.014.i34.i6381670 ; 7 uses
  %min.iters.check1673.a = icmp ult i64 %i.bfl, 8
  %i.bfm = sub i64 %.014.i34.i6381670, %.0.i35.i6391669
  %diff.check1671.a = icmp ugt i64 %i.bfm, -32
  %or.cond1870 = select i1 %min.iters.check1673.a, i1 true, i1 %diff.check1671.a
  br i1 %or.cond1870, label %.lr.ph.i36.i640.preheader, label %vector.main.loop.iter.check1674.a

vector.main.loop.iter.check1674.a:                ; preds = %iter.check1689.a
  %min.iters.check1675.a = icmp ult i64 %i.bfl, 32
  br i1 %min.iters.check1675.a, label %vec.epilog.ph1693.a, label %vector.ph1676.a

vector.ph1676.a:                                  ; preds = %vector.main.loop.iter.check1674.a
  %i.bfn = and i64 %i.bfl, 24
  %n.vec1677.a = and i64 %i.bfl, -32              ; 5 uses
  %i.bfo = getelementptr i8, ptr %.0.i35.i639, i64 %n.vec1677.a
  %i.bfp = getelementptr i8, ptr %.014.i34.i638, i64 %n.vec1677.a
  br label %vector.body1678.a

vector.body1678.a:                                ; preds = %vector.ph1676.a, %vector.body1678.a
  %index1679.a = phi i64 [ 0, %vector.ph1676.a ], [ %index.next1684.a, %vector.body1678.a ] ; 3 uses
  %next.gep1680.a = getelementptr i8, ptr %.0.i35.i639, i64 %index1679.a ; 2 uses
  %next.gep1681.a = getelementptr i8, ptr %.014.i34.i638, i64 %index1679.a ; 2 uses
  %i.bfq = getelementptr i8, ptr %next.gep1681.a, i64 16
  %wide.load1682.a = load <16 x i8>, ptr %next.gep1681.a, align 1, !tbaa !30
  %wide.load1683.a = load <16 x i8>, ptr %i.bfq, align 1, !tbaa !30
  %i.bfr = getelementptr i8, ptr %next.gep1680.a, i64 16
  store <16 x i8> %wide.load1682.a, ptr %next.gep1680.a, align 1, !tbaa !30
  store <16 x i8> %wide.load1683.a, ptr %i.bfr, align 1, !tbaa !30
  %index.next1684.a = add nuw i64 %index1679.a, 32 ; 2 uses
  %i.bfs = icmp eq i64 %index.next1684.a, %n.vec1677.a
  br i1 %i.bfs, label %middle.block1685.a, label %vector.body1678.a, !llvm.loop !132

middle.block1685.a:                               ; preds = %vector.body1678.a
  %cmp.n1686.a = icmp eq i64 %i.bfl, %n.vec1677.a
  br i1 %cmp.n1686.a, label %ZSTD_storeSeq.exit356.i.i628, label %vec.epilog.iter.check1691.a

vec.epilog.iter.check1691.a:                      ; preds = %middle.block1685.a
  %min.epilog.iters.check1692.a = icmp eq i64 %i.bfn, 0
  br i1 %min.epilog.iters.check1692.a, label %.lr.ph.i36.i640.preheader, label %vec.epilog.ph1693.a, !prof !38

end_hunk_3
begin_hunk_4_@ZSTD_compressBlock_fast_dictMatchState:bb.a
  %next.gep1660 = getelementptr i8, ptr %.0.i58.i579, i64 %index1659
  %next.gep1661 = getelementptr i8, ptr %.014.i57.i578, i64 %index1659
  %wide.load1662 = load <8 x i8>, ptr %next.gep1661, align 1, !tbaa !30
  store <8 x i8> %wide.load1662, ptr %next.gep1660, align 1, !tbaa !30
  %index.next1663 = add nuw i64 %index1659, 8     ; 2 uses
  %i.bks = icmp eq i64 %index.next1663, %n.vec1657
  br i1 %i.bks, label %vec.epilog.middle.block1664, label %vec.epilog.vector.body1658, !llvm.loop !137

vec.epilog.middle.block1664:                      ; preds = %vec.epilog.vector.body1658
  %cmp.n1665 = icmp eq i64 %i.bki, %n.vec1657
  br i1 %cmp.n1665, label %ZSTD_storeSeq.exit354.i.i568, label %.lr.ph.i59.i580.preheader

.lr.ph.i59.i580.preheader:                        ; preds = %iter.check1652, %vec.epilog.iter.check1654, %vec.epilog.middle.block1664
  %.121.i60.i581.ph = phi ptr [ %.0.i58.i579, %iter.check1652 ], [ %i.bkl, %vec.epilog.iter.check1654 ], [ %i.bkq, %vec.epilog.middle.block1664 ] ; 2 uses
  %.11520.i61.i582.ph = phi ptr [ %.014.i57.i578, %iter.check1652 ], [ %i.bkm, %vec.epilog.iter.check1654 ], [ %i.bkr, %vec.epilog.middle.block1664 ] ; 3 uses
  %.11520.i61.i582.ph2062 = ptrtoaddr ptr %.11520.i61.i582.ph to i64 ; 2 uses
  %i.bkt = sub i64 %.5316.i.lcssa.i5211635, %.11520.i61.i582.ph2062
  %xtraiter2063 = and i64 %i.bkt, 7               ; 2 uses
  %lcmp.mod2064.not = icmp eq i64 %xtraiter2063, 0
  br i1 %lcmp.mod2064.not, label %.lr.ph.i59.i580.prol.loopexit, label %.lr.ph.i59.i580.prol

.lr.ph.i59.i580.prol:                             ; preds = %.lr.ph.i59.i580.preheader, %.lr.ph.i59.i580.prol
  %.121.i60.i581.prol = phi ptr [ %i.bkw, %.lr.ph.i59.i580.prol ], [ %.121.i60.i581.ph, %.lr.ph.i59.i580.preheader ] ; 2 uses
  %.11520.i61.i582.prol = phi ptr [ %i.bku, %.lr.ph.i59.i580.prol ], [ %.11520.i61.i582.ph, %.lr.ph.i59.i580.preheader ] ; 2 uses
  %prol.iter2065 = phi i64 [ %prol.iter2065.next, %.lr.ph.i59.i580.prol ], [ 0, %.lr.ph.i59.i580.preheader ]
  %i.bku = getelementptr inbounds nuw i8, ptr %.11520.i61.i582.prol, i64 1 ; 2 uses
  %i.bkv = load i8, ptr %.11520.i61.i582.prol, align 1, !tbaa !30
  %i.bkw = getelementptr inbounds nuw i8, ptr %.121.i60.i581.prol, i64 1 ; 2 uses
  store i8 %i.bkv, ptr %.121.i60.i581.prol, align 1, !tbaa !30
  %prol.iter2065.next = add i64 %prol.iter2065, 1 ; 2 uses
  %prol.iter2065.cmp.not = icmp eq i64 %prol.iter2065.next, %xtraiter2063
  br i1 %prol.iter2065.cmp.not, label %.lr.ph.i59.i580.prol.loopexit, label %.lr.ph.i59.i580.prol, !llvm.loop !138

.lr.ph.i59.i580.prol.loopexit:                    ; preds = %.lr.ph.i59.i580.prol, %.lr.ph.i59.i580.preheader
  %.121.i60.i581.unr = phi ptr [ %.121.i60.i581.ph, %.lr.ph.i59.i580.preheader ], [ %i.bkw, %.lr.ph.i59.i580.prol ]
  %.11520.i61.i582.unr = phi ptr [ %.11520.i61.i582.ph, %.lr.ph.i59.i580.preheader ], [ %i.bku, %.lr.ph.i59.i580.prol ]
  %i.bkx = sub i64 %.11520.i61.i582.ph2062, %.5316.i.lcssa.i5211635
  %i.bky = icmp ugt i64 %i.bkx, -8
  br i1 %i.bky, label %ZSTD_storeSeq.exit354.i.i568, label %.lr.ph.i59.i580

.lr.ph.i59.i580:                                  ; preds = %.lr.ph.i59.i580.prol.loopexit, %.lr.ph.i59.i580
  %.121.i60.i581 = phi ptr [ %i.blw, %.lr.ph.i59.i580 ], [ %.121.i60.i581.unr, %.lr.ph.i59.i580.prol.loopexit ] ; 9 uses
  %.11520.i61.i582 = phi ptr [ %i.blu, %.lr.ph.i59.i580 ], [ %.11520.i61.i582.unr, %.lr.ph.i59.i580.prol.loopexit ] ; 9 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 1
  %i.bla = load i8, ptr %.11520.i61.i582, align 1, !tbaa !30
  %i.blb = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 1
  store i8 %i.bla, ptr %.121.i60.i581, align 1, !tbaa !30
  %i.blc = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 2
  %i.bld = load i8, ptr %i.bkz, align 1, !tbaa !30
  %i.ble = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 2
  store i8 %i.bld, ptr %i.blb, align 1, !tbaa !30
  %i.blf = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 3
  %i.blg = load i8, ptr %i.blc, align 1, !tbaa !30
  %i.blh = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 3
  store i8 %i.blg, ptr %i.ble, align 1, !tbaa !30
  %i.bli = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 4
  %i.blj = load i8, ptr %i.blf, align 1, !tbaa !30
  %i.blk = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 4
  store i8 %i.blj, ptr %i.blh, align 1, !tbaa !30
  %i.bll = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 5
  %i.blm = load i8, ptr %i.bli, align 1, !tbaa !30
  %i.bln = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 5
  store i8 %i.blm, ptr %i.blk, align 1, !tbaa !30
  %i.blo = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 6
  %i.blp = load i8, ptr %i.bll, align 1, !tbaa !30
  %i.blq = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 6
  store i8 %i.blp, ptr %i.bln, align 1, !tbaa !30
  %i.blr = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 7
  %i.bls = load i8, ptr %i.blo, align 1, !tbaa !30
  %i.blt = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 7
  store i8 %i.bls, ptr %i.blq, align 1, !tbaa !30
  %i.blu = getelementptr inbounds nuw i8, ptr %.11520.i61.i582, i64 8 ; 2 uses
  %i.blv = load i8, ptr %i.blr, align 1, !tbaa !30
  %i.blw = getelementptr inbounds nuw i8, ptr %.121.i60.i581, i64 8
  store i8 %i.blv, ptr %i.blt, align 1, !tbaa !30
  %exitcond.not.i62.i583.7 = icmp eq ptr %i.blu, %.5316.i.lcssa.i521
  br i1 %exitcond.not.i62.i583.7, label %ZSTD_storeSeq.exit354.i.i568, label %.lr.ph.i59.i580, !llvm.loop !139

ZSTD_storeSeq.exit354.i.thread.i525:              ; preds = %bb.hy, %bb.hx
  %i.blx = load ptr, ptr %i.azb, align 8, !tbaa !35
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 %i.bjl
  store ptr %i.bly, ptr %i.azb, align 8, !tbaa !35
  %.pre243.i526 = load ptr, ptr %i.aze, align 8, !tbaa !40
  br label %bb.ig

ZSTD_storeSeq.exit354.i.i568:                     ; preds = %bb.ia, %.lr.ph.i59.i580.prol.loopexit, %.lr.ph.i59.i580, %middle.block1648, %vec.epilog.middle.block1664, %ZSTD_wildcopy.exit.i56.i577
  %i.blz = load ptr, ptr %i.azb, align 8, !tbaa !35
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 %i.bjl
  store ptr %i.bma, ptr %i.azb, align 8, !tbaa !35
  %i.bmb = icmp ugt i64 %i.bjl, 65535
  %.pre244.i569 = load ptr, ptr %i.aze, align 8, !tbaa !40 ; 3 uses
  br i1 %i.bmb, label %bb.if, label %bb.ig, !prof !41

bb.if:                                            ; preds = %ZSTD_storeSeq.exit354.i.i568
  store i32 1, ptr %i.azd, align 8, !tbaa !42
  %i.bmc = load ptr, ptr %1, align 8, !tbaa !43
  %i.bmd = ptrtoint ptr %.pre244.i569 to i64
  %i.bme = ptrtoint ptr %i.bmc to i64
  %i.bmf = sub i64 %i.bmd, %i.bme
  %i.bmg = lshr exact i64 %i.bmf, 3
  %i.bmh = trunc i64 %i.bmg to i32
  store i32 %i.bmh, ptr %i.azf, align 4, !tbaa !44
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %ZSTD_storeSeq.exit354.i.i568, %ZSTD_storeSeq.exit354.i.thread.i525
  %i.bmi = phi ptr [ %.pre243.i526, %ZSTD_storeSeq.exit354.i.thread.i525 ], [ %.pre244.i569, %bb.if ], [ %.pre244.i569, %ZSTD_storeSeq.exit354.i.i568 ] ; 4 uses
  %i.bmj = trunc i64 %i.bjl to i16
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmi, i64 4
  store i16 %i.bmj, ptr %i.bmk, align 4, !tbaa !46
  store i32 %i.bjm, ptr %i.bmi, align 4, !tbaa !47
  %i.bml = add i64 %.4.i.lcssa.i522, -3           ; 3 uses
  %i.bmm = icmp ugt i64 %i.bml, 65535
  br i1 %i.bmm, label %ZSTD_storeSeqOnly.exit.i.sink.split.i555, label %ZSTD_storeSeqOnly.exit.i.i527, !prof !48

ZSTD_match4Found_cmov.exit.thread.i499:           ; preds = %ZSTD_match4Found_cmov.exit.i507, %.thread.i495
  %.not337.i.i500 = icmp uge ptr %.1308.i.i476, %.0264.i.i481 ; 2 uses
  %i.bmn = zext i1 %.not337.i.i500 to i64
  %.1268.i.i501 = add i64 %.0267.i.i480, %i.bmn   ; 2 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %.1308.i.i476, i64 %.1268.i.i501 ; 2 uses
  %i.bmp = icmp ugt ptr %i.bmo, %i.r
  br i1 %i.bmp, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.ih

bb.ih:                                            ; preds = %ZSTD_match4Found_cmov.exit.thread.i499
  %.1265.i.idx.i502 = select i1 %.not337.i.i500, i64 256, i64 0
  %.1265.i.i503 = getelementptr inbounds nuw i8, ptr %.0264.i.i481, i64 %.1265.i.idx.i502
  %i.bmq = lshr i64 %i.azx, 8
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bmq
  %i.bms = load i32, ptr %i.bmr, align 4, !tbaa !22 ; 2 uses
  %i.bmt = zext i32 %i.bms to i64
  %i.bmu = xor i64 %i.azx, %i.bmt
  br label %bb.gi

ZSTD_storeSeqOnly.exit.i.sink.split.i555:         ; preds = %bb.ig, %bb.hj, %bb.gu
  %.sink314.i556 = phi ptr [ %i.bhl, %bb.hj ], [ %i.bdm, %bb.gu ], [ %i.bmi, %bb.ig ] ; 2 uses
  %.sink310.ph.i557 = phi i64 [ %i.bho, %bb.hj ], [ %i.bdp, %bb.gu ], [ %i.bml, %bb.ig ]
  %.6317.i.ph.ph.i558 = phi ptr [ %.2313.i.lcssa.i616, %bb.hj ], [ %i.bai, %bb.gu ], [ %.5316.i.lcssa.i521, %bb.ig ]
  %.4295.i.ph.ph.i559 = phi i32 [ %i.bdy, %bb.hj ], [ %.0291.i200.i471, %bb.gu ], [ %i.bht, %bb.ig ]
  %.4289.i.ph.ph.i560 = phi i32 [ %.0291.i200.i471, %bb.hj ], [ %.0285.i201.i470, %bb.gu ], [ %.0291.i200.i471, %bb.ig ]
  %.5.i.ph.ph.i561 = phi i64 [ %.1281.i.lcssa.i617, %bb.hj ], [ %i.ban, %bb.gu ], [ %.4.i.lcssa.i522, %bb.ig ]
  store i32 2, ptr %i.azd, align 8, !tbaa !42
  %i.bmv = load ptr, ptr %1, align 8, !tbaa !43
  %i.bmw = ptrtoint ptr %.sink314.i556 to i64
  %i.bmx = ptrtoint ptr %i.bmv to i64
  %i.bmy = sub i64 %i.bmw, %i.bmx
  %i.bmz = lshr exact i64 %i.bmy, 3
  %i.bna = trunc i64 %i.bmz to i32
  store i32 %i.bna, ptr %i.azf, align 4, !tbaa !44
  br label %ZSTD_storeSeqOnly.exit.i.i527

ZSTD_storeSeqOnly.exit.i.i527:                    ; preds = %ZSTD_storeSeqOnly.exit.i.sink.split.i555, %bb.ig, %bb.hj, %bb.gu
  %.sink310.i528 = phi i64 [ %i.bdp, %bb.gu ], [ %i.bho, %bb.hj ], [ %i.bml, %bb.ig ], [ %.sink310.ph.i557, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ]
  %.sink309.i529 = phi ptr [ %i.bdm, %bb.gu ], [ %i.bhl, %bb.hj ], [ %i.bmi, %bb.ig ], [ %.sink314.i556, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ] ; 2 uses
  %.6317.i.ph.i530 = phi ptr [ %i.bai, %bb.gu ], [ %.2313.i.lcssa.i616, %bb.hj ], [ %.5316.i.lcssa.i521, %bb.ig ], [ %.6317.i.ph.ph.i558, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ]
  %.4295.i.ph.i531 = phi i32 [ %.0291.i200.i471, %bb.gu ], [ %i.bdy, %bb.hj ], [ %i.bht, %bb.ig ], [ %.4295.i.ph.ph.i559, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ] ; 2 uses
  %.4289.i.ph.i532 = phi i32 [ %.0285.i201.i470, %bb.gu ], [ %.0291.i200.i471, %bb.hj ], [ %.0291.i200.i471, %bb.ig ], [ %.4289.i.ph.ph.i560, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ] ; 2 uses
  %.5.i.ph.i533 = phi i64 [ %i.ban, %bb.gu ], [ %.1281.i.lcssa.i617, %bb.hj ], [ %.4.i.lcssa.i522, %bb.ig ], [ %.5.i.ph.ph.i561, %ZSTD_storeSeqOnly.exit.i.sink.split.i555 ]
  %i.bnb = trunc i64 %.sink310.i528 to i16
  %i.bnc = getelementptr inbounds nuw i8, ptr %.sink309.i529, i64 6
  store i16 %i.bnb, ptr %i.bnc, align 2, !tbaa !49
  %i.bnd = getelementptr inbounds nuw i8, ptr %.sink309.i529, i64 8 ; 2 uses
  store ptr %i.bnd, ptr %i.aze, align 8, !tbaa !40
  %i.bne = getelementptr inbounds nuw i8, ptr %.6317.i.ph.i530, i64 %.5.i.ph.i533 ; 4 uses
  %.not338.i.i534 = icmp ugt ptr %i.bne, %i.r
  br i1 %.not338.i.i534, label %.thread122.i543, label %bb.ii

bb.ii:                                            ; preds = %ZSTD_storeSeqOnly.exit.i.i527
  %i.bnf = add i32 %.0270.i.i487, 2
  %i.bng = and i64 %.0270.i.in.i486, 4294967295
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bng
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 2
  %.val9.i535 = load i64, ptr %i.bni, align 1, !tbaa !21
  %i.bnj = mul i64 %.val9.i535, -3523014627193167104
  %i.bnk = lshr i64 %i.bnj, %i.ayx
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bnk
  store i32 %i.bnf, ptr %i.bnl, align 4, !tbaa !22
  %i.bnm = getelementptr inbounds i8, ptr %i.bne, i64 -2 ; 2 uses
  %i.bnn = ptrtoint ptr %i.bnm to i64
  %i.bno = sub i64 %i.bnn, %i.as
  %i.bnp = trunc i64 %i.bno to i32
  %.val8.i536 = load i64, ptr %i.bnm, align 1, !tbaa !21
  %i.bnq = mul i64 %.val8.i536, -3523014627193167104
  %i.bnr = lshr i64 %i.bnq, %i.ayx
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bnr
  store i32 %i.bnp, ptr %i.bns, align 4, !tbaa !22
  br label %bb.ij

bb.ij:                                            ; preds = %bb.io, %bb.ii
  %i.bnt = phi ptr [ %i.bnd, %bb.ii ], [ %i.bou, %bb.io ]
  %.5290.i195.i537 = phi i32 [ %.4289.i.ph.i532, %bb.ii ], [ %.5296.i194.i538, %bb.io ] ; 5 uses
  %.5296.i194.i538 = phi i32 [ %.4295.i.ph.i531, %bb.ii ], [ %.5290.i195.i537, %bb.io ] ; 4 uses
  %.7318.i193.i539 = phi ptr [ %i.bne, %bb.ii ], [ %i.boz, %bb.io ] ; 9 uses
  %i.bnu = ptrtoint ptr %.7318.i193.i539 to i64
  %i.bnv = sub i64 %i.bnu, %i.as
  %i.bnw = trunc i64 %i.bnv to i32                ; 2 uses
  %i.bnx = sub i32 %i.bnw, %.5290.i195.i537       ; 3 uses
  %i.bny = icmp ult i32 %i.bnx, %i.n              ; 2 uses
  %i.bnz = zext i32 %i.bnx to i64
  %.v.i540 = select i1 %i.bny, ptr %i.azl, ptr %i.k
  %i.boa = getelementptr inbounds nuw i8, ptr %.v.i540, i64 %i.bnz ; 2 uses
  %i.bob = sub i32 %i.bnx, %i.n
  %12 = icmp ult i32 %i.bob, -3
  br i1 %12, label %bb.ik, label %.thread122.i543

bb.ik:                                            ; preds = %bb.ij
  %.val4.i541 = load i32, ptr %i.boa, align 1, !tbaa !22
  %.7318.i.val.i542 = load i32, ptr %.7318.i193.i539, align 1, !tbaa !22
  %i.boc = icmp eq i32 %.val4.i541, %.7318.i.val.i542
  br i1 %i.boc, label %bb.il, label %.thread122.i543

bb.il:                                            ; preds = %bb.ik
  %i.bod = select i1 %i.bny, ptr %i.af, ptr %i.q
  %i.boe = getelementptr inbounds nuw i8, ptr %.7318.i193.i539, i64 4
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boa, i64 4
  %i.bog = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.boe, ptr noundef nonnull %i.bof, ptr noundef %i.q, ptr noundef %i.bod, ptr noundef %i.p) ; 2 uses
  %.not.i.i.i549 = icmp ugt ptr %.7318.i193.i539, %i.aza
  br i1 %.not.i.i.i549, label %ZSTD_storeSeq.exit.i.i552, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.boh = load ptr, ptr %i.azb, align 8, !tbaa !35
  %.1302.i.val.i550 = load <2 x i64>, ptr %.7318.i193.i539, align 1, !tbaa !30
  store <2 x i64> %.1302.i.val.i550, ptr %i.boh, align 1, !tbaa !30
  %.pre245.i551 = load ptr, ptr %i.aze, align 8, !tbaa !40
  br label %ZSTD_storeSeq.exit.i.i552

ZSTD_storeSeq.exit.i.i552:                        ; preds = %bb.im, %bb.il
  %i.boi = phi ptr [ %i.bnt, %bb.il ], [ %.pre245.i551, %bb.im ] ; 5 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 4
  store i16 0, ptr %i.boj, align 4, !tbaa !46
  store i32 1, ptr %i.boi, align 4, !tbaa !47
  %i.bok = add i64 %i.bog, 1                      ; 2 uses
  %i.bol = icmp ugt i64 %i.bok, 65535
  br i1 %i.bol, label %bb.in, label %bb.io, !prof !48

bb.in:                                            ; preds = %ZSTD_storeSeq.exit.i.i552
  store i32 2, ptr %i.azd, align 8, !tbaa !42
  %i.bom = load ptr, ptr %1, align 8, !tbaa !43
  %i.bon = ptrtoint ptr %i.boi to i64
  %i.boo = ptrtoint ptr %i.bom to i64
  %i.bop = sub i64 %i.bon, %i.boo
  %i.boq = lshr exact i64 %i.bop, 3
  %i.bor = trunc i64 %i.boq to i32
  store i32 %i.bor, ptr %i.azf, align 4, !tbaa !44
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %ZSTD_storeSeq.exit.i.i552
  %i.bos = trunc i64 %i.bok to i16
  %i.bot = getelementptr inbounds nuw i8, ptr %i.boi, i64 6
  store i16 %i.bos, ptr %i.bot, align 2, !tbaa !49
  %i.bou = getelementptr inbounds nuw i8, ptr %i.boi, i64 8 ; 2 uses
  store ptr %i.bou, ptr %i.aze, align 8, !tbaa !40
  %.7318.i.val7.i553 = load i64, ptr %.7318.i193.i539, align 1, !tbaa !21
  %i.bov = mul i64 %.7318.i.val7.i553, -3523014627193167104
  %i.bow = lshr i64 %i.bov, %i.ayx
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bow
  store i32 %i.bnw, ptr %i.box, align 4, !tbaa !22
  %i.boy = getelementptr i8, ptr %.7318.i193.i539, i64 %i.bog
  %i.boz = getelementptr i8, ptr %i.boy, i64 4    ; 3 uses
  %.not339.i.i554 = icmp ugt ptr %i.boz, %i.r
  br i1 %.not339.i.i554, label %.thread122.i543, label %bb.ij

.thread122.i543:                                  ; preds = %bb.io, %bb.ik, %bb.ij, %ZSTD_storeSeqOnly.exit.i.i527
  %.9320.i.i544 = phi ptr [ %i.bne, %ZSTD_storeSeqOnly.exit.i.i527 ], [ %.7318.i193.i539, %bb.ij ], [ %.7318.i193.i539, %bb.ik ], [ %i.boz, %bb.io ] ; 4 uses
  %.7298.i.i545 = phi i32 [ %.4295.i.ph.i531, %ZSTD_storeSeqOnly.exit.i.i527 ], [ %.5296.i194.i538, %bb.ij ], [ %.5296.i194.i538, %bb.ik ], [ %.5290.i195.i537, %bb.io ] ; 2 uses
  %.7.i.i546 = phi i32 [ %.4289.i.ph.i532, %ZSTD_storeSeqOnly.exit.i.i527 ], [ %.5290.i195.i537, %bb.ij ], [ %.5290.i195.i537, %bb.ik ], [ %.5296.i194.i538, %bb.io ] ; 2 uses
  %.0307.i.i547 = getelementptr inbounds nuw i8, ptr %.9320.i.i544, i64 %i.l ; 2 uses
  %.not332.i.i548 = icmp ugt ptr %.0307.i.i547, %i.r
  br i1 %.not332.i.i548, label %ZSTD_compressBlock_fast_dictMatchState_4_0.exit, label %bb.gh

ZSTD_compressBlock_fast_dictMatchState_4_0.exit:  ; preds = %.thread122.i324, %ZSTD_match4Found_cmov.exit.thread.i280, %.thread122.i105, %ZSTD_match4Found_cmov.exit.thread.i61, %.thread122.i543, %ZSTD_match4Found_cmov.exit.thread.i499, %.thread122.i, %ZSTD_match4Found_cmov.exit.thread.i, %.loopexit.i465, %.loopexit.i246, %.loopexit.i28, %.loopexit.i
  %.0291.i171.i505.sink = phi i32 [ %.7298.i.i545, %.thread122.i543 ], [ %.7298.i.i, %.thread122.i ], [ %.0291.i200.i34, %ZSTD_match4Found_cmov.exit.thread.i61 ], [ %.0291.i200.i252, %ZSTD_match4Found_cmov.exit.thread.i280 ], [ %i.s, %.loopexit.i ], [ %.0291.i200.i, %ZSTD_match4Found_cmov.exit.thread.i ], [ %i.s, %.loopexit.i28 ], [ %.0291.i200.i471, %ZSTD_match4Found_cmov.exit.thread.i499 ], [ %i.s, %.loopexit.i246 ], [ %.7298.i.i107, %.thread122.i105 ], [ %i.s, %.loopexit.i465 ], [ %.7298.i.i326, %.thread122.i324 ]
  %.0285.i169.i506.sink = phi i32 [ %.7.i.i546, %.thread122.i543 ], [ %.7.i.i, %.thread122.i ], [ %.0285.i201.i33, %ZSTD_match4Found_cmov.exit.thread.i61 ], [ %.0285.i201.i251, %ZSTD_match4Found_cmov.exit.thread.i280 ], [ %i.u, %.loopexit.i ], [ %.0285.i201.i, %ZSTD_match4Found_cmov.exit.thread.i ], [ %i.u, %.loopexit.i28 ], [ %.0285.i201.i470, %ZSTD_match4Found_cmov.exit.thread.i499 ], [ %i.u, %.loopexit.i246 ], [ %.7.i.i108, %.thread122.i105 ], [ %i.u, %.loopexit.i465 ], [ %.7.i.i327, %.thread122.i324 ]
  %.0301.i173.i504.sink = phi ptr [ %.9320.i.i544, %.thread122.i543 ], [ %.9320.i.i, %.thread122.i ], [ %.0301.i199.i35, %ZSTD_match4Found_cmov.exit.thread.i61 ], [ %.0301.i199.i253, %ZSTD_match4Found_cmov.exit.thread.i280 ], [ %3, %.loopexit.i ], [ %.0301.i199.i, %ZSTD_match4Found_cmov.exit.thread.i ], [ %3, %.loopexit.i28 ], [ %.0301.i199.i472, %ZSTD_match4Found_cmov.exit.thread.i499 ], [ %3, %.loopexit.i246 ], [ %.9320.i.i106, %.thread122.i105 ], [ %3, %.loopexit.i465 ], [ %.9320.i.i325, %.thread122.i324 ]
  store i32 %.0291.i171.i505.sink, ptr %2, align 4, !tbaa !22
  store i32 %.0285.i169.i506.sink, ptr %i.t, align 4, !tbaa !22
  %i.bpa = ptrtoint ptr %i.q to i64
  %i.bpb = ptrtoint ptr %.0301.i173.i504.sink to i64
  %i.bpc = sub i64 %i.bpa, %i.bpb
  ret i64 %i.bpc
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_fast_extDict(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
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
  %.val60.i = load i64, ptr %1, align 1, !tbaa !21 ; 2 uses
  %.val.i = load i64, ptr %0, align 1, !tbaa !21  ; 2 uses
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
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !21 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !21 ; 2 uses
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
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !22
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !22
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
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !32
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !32
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
  %i.ad = load i8, ptr %.4.i, align 1, !tbaa !30
  %i.ae = load i8, ptr %.453.i, align 1, !tbaa !30
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
  %.val60.i37 = load i64, ptr %4, align 1, !tbaa !21 ; 2 uses
  %.val.i38 = load i64, ptr %i.ak, align 1, !tbaa !21 ; 2 uses
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
  %.045.val.i45 = load i64, ptr %.045.i43, align 1, !tbaa !21 ; 2 uses
  %.049.val.i46 = load i64, ptr %.049.i44, align 1, !tbaa !21 ; 2 uses
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
  %.247.val.i35 = load i32, ptr %.247.i24, align 1, !tbaa !22
  %.251.val.i36 = load i32, ptr %.251.i23, align 1, !tbaa !22
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
  %.348.val.i33 = load i16, ptr %.348.i26, align 1, !tbaa !32
  %.352.val.i34 = load i16, ptr %.352.i25, align 1, !tbaa !32
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
  %i.bj = load i8, ptr %.4.i28, align 1, !tbaa !30
  %i.bk = load i8, ptr %.453.i27, align 1, !tbaa !30
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.i = add i32 %i.h, 1
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !150  ; 7 uses
  %i.o = ptrtoint ptr %3 to i64
  %i.p = ptrtoint ptr %i.l to i64                 ; 7 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, %4
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !151
  %i.u = getelementptr i8, ptr %0, i64 28
  %.val426.a = load i32, ptr %i.u, align 4, !tbaa !152 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 40
  %.val427 = load i32, ptr %i.v, align 8, !tbaa !27
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
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
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
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !22 ; 3 uses
  %i.ap = load i32, ptr %2, align 4, !tbaa !22    ; 3 uses
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
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph571, %.thread
  %i.bf = phi ptr [ %i.av, %.lr.ph571 ], [ %i.mq, %.thread ]
  %i.bg = phi ptr [ %i.au, %.lr.ph571 ], [ %i.mp, %.thread ]
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
  %.0321.val396 = load i64, ptr %.0340568, align 1, !tbaa !21
  %i.bj = mul i64 %.0321.val396, -3523014627271114752
  %i.bk = lshr i64 %i.bj, %i.ay
  %.val397 = load i64, ptr %i.bh, align 1, !tbaa !21
  %i.bl = mul i64 %.val397, -3523014627271114752
  %i.bm = lshr i64 %i.bl, %i.ay
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit381.thread452:                   ; preds = %bb.d
  %.0321.val403 = load i64, ptr %.0340568, align 1, !tbaa !21
  %i.bn = mul i64 %.0321.val403, -3523014627193847808
  %i.bo = lshr i64 %i.bn, %i.ay
  %.val404 = load i64, ptr %i.bh, align 1, !tbaa !21
  %i.bp = mul i64 %.val404, -3523014627193847808
  %i.bq = lshr i64 %i.bp, %i.ay
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit381.thread455:                   ; preds = %bb.d
  %.0321.val410 = load i64, ptr %.0340568, align 1, !tbaa !21
  %i.br = mul i64 %.0321.val410, -3523014627193167104
  %i.bs = lshr i64 %i.br, %i.ay
  %.val411 = load i64, ptr %i.bh, align 1, !tbaa !21
  %i.bt = mul i64 %.val411, -3523014627193167104
  %i.bu = lshr i64 %i.bt, %i.ay
  br label %ZSTD_hashPtr.exit379

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.al, %.thread647, %.thread645, %ZSTD_storeSeqOnly.exit384
  unreachable

ZSTD_hashPtr.exit381:                             ; preds = %bb.d
  %.0321.val = load i32, ptr %.0340568, align 1, !tbaa !22
  %i.bv = mul i32 %.0321.val, -1640531535
  %i.bw = lshr i32 %i.bv, %i.aw
  %i.bx = zext i32 %i.bw to i64
  %.val391 = load i32, ptr %i.bh, align 1, !tbaa !22
  %i.by = mul i32 %.val391, -1640531535
  %i.bz = lshr i32 %i.by, %i.aw
  %i.ca = zext i32 %i.bz to i64
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit379:                             ; preds = %ZSTD_hashPtr.exit381, %ZSTD_hashPtr.exit381.thread449, %ZSTD_hashPtr.exit381.thread452, %ZSTD_hashPtr.exit381.thread455
  %.0.i380447 = phi i64 [ %i.bx, %ZSTD_hashPtr.exit381 ], [ %i.bs, %ZSTD_hashPtr.exit381.thread455 ], [ %i.bk, %ZSTD_hashPtr.exit381.thread449 ], [ %i.bo, %ZSTD_hashPtr.exit381.thread452 ] ; 2 uses
  %.0.i378 = phi i64 [ %i.ca, %ZSTD_hashPtr.exit381 ], [ %i.bu, %ZSTD_hashPtr.exit381.thread455 ], [ %i.bm, %ZSTD_hashPtr.exit381.thread449 ], [ %i.bq, %ZSTD_hashPtr.exit381.thread452 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i380447
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !22 ; 2 uses
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
  %.val390 = load i32, ptr %i.cq, align 1, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.0317.val389 = load i32, ptr %.0317, align 1, !tbaa !22
  %i.cr = xor i32 %.0317.val389, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0283 = phi i32 [ %.val390, %bb.f ], [ %i.cr, %bb.g ]
  %i.cs = ptrtoint ptr %.1322 to i64
  %i.ct = sub i64 %i.cs, %i.p
  %i.cu = trunc i64 %i.ct to i32                  ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0313
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !22
  %.0317.val = load i32, ptr %.0317, align 1, !tbaa !22 ; 2 uses
  %i.cw = icmp eq i32 %.0317.val, %.0283
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = zext i32 %i.cj to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx ; 2 uses
  %i.cz = select i1 %i.ck, ptr %i.aj, ptr %i.ak
  %i.da = getelementptr inbounds i8, ptr %.0317, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !30
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !30
  %i.de = icmp eq i8 %i.db, %i.dd                 ; 2 uses
  %.neg = sext i1 %i.de to i64                    ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.0317, i64 %.neg
  %i.dg = getelementptr inbounds i8, ptr %i.cy, i64 %.neg
  %i.dh = select i1 %i.de, i64 5, i64 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %.not359 = icmp ult i32 %.0308, %i.ab
  br i1 %.not359, label %.thread645, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.di = zext i32 %.0308 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0306, i64 %i.di
  %.val388 = load i32, ptr %i.dj, align 1, !tbaa !22
  %.2323.val.pre = load i32, ptr %.1322, align 1, !tbaa !22
  %i.dk = icmp eq i32 %.2323.val.pre, %.val388
  br i1 %i.dk, label %bb.w, label %.thread645

.thread645:                                       ; preds = %bb.j, %bb.k
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0310 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !22 ; 4 uses
  %i.dn = icmp ult i32 %i.dm, %i.ag
  %i.do = select i1 %i.dn, ptr %i.n, ptr %i.l     ; 2 uses
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.o
    i32 5, label %bb.m
    i32 6, label %bb.n
    i32 4, label %bb.l
  ]

bb.l:                                             ; preds = %.thread645
  %i.dp = mul i32 %.0317.val, -1640531535
  %i.dq = lshr i32 %i.dp, %i.aw
  %i.dr = zext i32 %i.dq to i64
  br label %ZSTD_hashPtr.exit377

bb.m:                                             ; preds = %.thread645
  %.0317.val398 = load i64, ptr %.0317, align 1, !tbaa !21
  %i.ds = mul i64 %.0317.val398, -3523014627271114752
  %i.dt = lshr i64 %i.ds, %i.ay
  br label %ZSTD_hashPtr.exit377

bb.n:                                             ; preds = %.thread645
  %.0317.val405 = load i64, ptr %.0317, align 1, !tbaa !21
  %i.du = mul i64 %.0317.val405, -3523014627193847808
  %i.dv = lshr i64 %i.du, %i.ay
  br label %ZSTD_hashPtr.exit377

bb.o:                                             ; preds = %.thread645
  %.0317.val412 = load i64, ptr %.0317, align 1, !tbaa !21
  %i.dw = mul i64 %.0317.val412, -3523014627193167104
  %i.dx = lshr i64 %i.dw, %i.ay
  br label %ZSTD_hashPtr.exit377

ZSTD_hashPtr.exit377:                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i376 = phi i64 [ %i.dr, %bb.l ], [ %i.dx, %bb.o ], [ %i.dt, %bb.m ], [ %i.dv, %bb.n ] ; 3 uses
  %i.dy = ptrtoint ptr %.0318 to i64
  %i.dz = sub i64 %i.dy, %i.p
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  store i32 %i.ea, ptr %i.dl, align 4, !tbaa !22
  %.not360 = icmp ult i32 %i.dm, %i.ab
  br i1 %.not360, label %.thread647, label %bb.p

bb.p:                                             ; preds = %ZSTD_hashPtr.exit377
  %i.eb = zext i32 %i.dm to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eb
  %.val386 = load i32, ptr %i.ec, align 1, !tbaa !22
  %.0318.val.pre = load i32, ptr %.0318, align 1, !tbaa !22
  %i.ed = icmp eq i32 %.0318.val.pre, %.val386
  br i1 %i.ed, label %bb.w, label %.thread647

.thread647:                                       ; preds = %ZSTD_hashPtr.exit377, %bb.p
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i376
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !22 ; 2 uses
  %i.eg = icmp ult i32 %i.ef, %i.ag
  %i.eh = select i1 %i.eg, ptr %i.n, ptr %i.l
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.t
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 4, label %bb.q
  ]

bb.q:                                             ; preds = %.thread647
  %.0316.val = load i32, ptr %.0316, align 1, !tbaa !22
  %i.ei = mul i32 %.0316.val, -1640531535
  %i.ej = lshr i32 %i.ei, %i.aw
  %i.ek = zext i32 %i.ej to i64
  br label %ZSTD_hashPtr.exit375

bb.r:                                             ; preds = %.thread647
  %.0316.val399 = load i64, ptr %.0316, align 1, !tbaa !21
  %i.el = mul i64 %.0316.val399, -3523014627271114752
  %i.em = lshr i64 %i.el, %i.ay
  br label %ZSTD_hashPtr.exit375

bb.s:                                             ; preds = %.thread647
  %.0316.val406 = load i64, ptr %.0316, align 1, !tbaa !21
  %i.en = mul i64 %.0316.val406, -3523014627193847808
  %i.eo = lshr i64 %i.en, %i.ay
  br label %ZSTD_hashPtr.exit375

bb.t:                                             ; preds = %.thread647
  %.0316.val413 = load i64, ptr %.0316, align 1, !tbaa !21
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
  br i1 %i.ex, label %bb.e, label %.loopexit, !llvm.loop !144

.loopexit:                                        ; preds = %.thread, %bb.v, %bb.c
  %.0340541 = phi ptr [ %.0340568, %bb.v ], [ %3, %bb.c ], [ %.3343, %.thread ]
  %.1335534 = phi i32 [ %.1335569, %bb.v ], [ %.0334, %bb.c ], [ %.5339, %.thread ] ; 2 uses
  %.1329527 = phi i32 [ %.1329570, %bb.v ], [ %spec.select, %bb.c ], [ %.5333, %.thread ] ; 2 uses
  %i.ey = icmp ne i32 %.0327, 0
  %i.ez = icmp ne i32 %.1335534, 0                ; 2 uses
  %or.cond = select i1 %i.ey, i1 %i.ez, i1 false
  %i.fa = select i1 %or.cond, i32 %.0327, i32 %spec.select368
  %i.fb = select i1 %i.ez, i32 %.1335534, i32 %.0327
  store i32 %i.fb, ptr %2, align 4, !tbaa !22
  %.not367 = icmp eq i32 %.1329527, 0
  %i.fc = select i1 %.not367, i32 %i.fa, i32 %.1329527
  store i32 %i.fc, ptr %i.am, align 4, !tbaa !22
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
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !30
  %i.fs = getelementptr inbounds i8, ptr %.3300543, i64 -1 ; 4 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !30
  %i.fu = icmp eq i8 %i.fr, %i.ft
  br i1 %i.fu, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.lr.ph
  %i.fv = add i64 %.3296544, 1                    ; 2 uses
  %i.fw = icmp ugt ptr %i.fq, %.0340568
  %i.fx = icmp ugt ptr %i.fs, %i.fi
  %i.fy = and i1 %i.fw, %i.fx
  br i1 %i.fy, label %.lr.ph, label %.critedge, !llvm.loop !145

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
  %i.gg = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i382, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.critedge
  %.0340.val = load <2 x i64>, ptr %.0340568, align 1, !tbaa !30
  store <2 x i64> %.0340.val, ptr %i.gg, align 1, !tbaa !30
  %i.gh = icmp ugt i64 %i.gf, 16
  br i1 %i.gh, label %bb.z, label %ZSTD_storeSeq.exit383.thread

bb.z:                                             ; preds = %bb.y
  %i.gi = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %.0340568, i64 16 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gi, i64 %i.gf
  %.val425 = load <2 x i64>, ptr %i.gk, align 1, !tbaa !30
  store <2 x i64> %.val425, ptr %i.gj, align 1, !tbaa !30
  %i.gm = icmp ult i64 %i.gf, 33
  br i1 %i.gm, label %ZSTD_storeSeq.exit383.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i = phi ptr [ %i.gk, %bb.aa ], [ %i.gp, %bb.ab ] ; 2 uses
  %.1.i = phi ptr [ %i.gn, %bb.aa ], [ %i.gq, %bb.ab ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !30
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !30
  %i.go = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val424 = load <2 x i64>, ptr %i.gp, align 1, !tbaa !30
  store <2 x i64> %.val424, ptr %i.go, align 1, !tbaa !30
  %i.gq = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.gr = icmp ult ptr %i.gq, %i.gl
  br i1 %i.gr, label %bb.ab, label %ZSTD_storeSeq.exit383, !llvm.loop !0

bb.ac:                                            ; preds = %.critedge
  %.not.i429 = icmp ugt ptr %.0340568, %i.az
  br i1 %.not.i429, label %ZSTD_wildcopy.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gs = sub i64 %i.bb, %i.ge                    ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gg, i64 %i.gs ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0340568, align 1, !tbaa !30
  store <2 x i64> %.val19.i, ptr %i.gg, align 1, !tbaa !30
  %i.gu = icmp ult i64 %i.gs, 17
  br i1 %i.gu, label %ZSTD_wildcopy.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i = phi ptr [ %.0340568, %bb.ae ], [ %i.gx, %bb.af ] ; 2 uses
  %.1.i.i = phi ptr [ %i.gv, %bb.ae ], [ %i.gy, %bb.af ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !30
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.gx, align 1, !tbaa !30
  store <2 x i64> %.val.i, ptr %i.gw, align 1, !tbaa !30
  %i.gy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.gz = icmp ult ptr %i.gy, %i.gt
  br i1 %i.gz, label %bb.af, label %ZSTD_wildcopy.exit.i, !llvm.loop !0

ZSTD_wildcopy.exit.i:                             ; preds = %bb.af, %bb.ad, %bb.ac
  %.014.i = phi ptr [ %.0340568, %bb.ac ], [ %i.az, %bb.ad ], [ %i.az, %bb.af ] ; 7 uses
  %.0.i430 = phi ptr [ %i.gg, %bb.ac ], [ %i.gt, %bb.ad ], [ %i.gt, %bb.af ] ; 6 uses
  %i.ha = icmp ult ptr %.014.i, %.5
  br i1 %i.ha, label %iter.check, label %ZSTD_storeSeq.exit383

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i45 = ptrtoaddr ptr %.014.i to i64        ; 2 uses
  %.0.i43044 = ptrtoaddr ptr %.0.i430 to i64
  %i.hb = sub i64 %i.gd, %.014.i45                ; 7 uses
  %min.iters.check = icmp ult i64 %i.hb, 8
  %i.hc = sub i64 %.014.i45, %.0.i43044
  %diff.check = icmp ugt i64 %i.hc, -32
  %or.cond59 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond59, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.hb, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hd = and i64 %i.hb, 24
  %n.vec = and i64 %i.hb, -32                     ; 5 uses
  %i.he = getelementptr i8, ptr %.0.i430, i64 %n.vec
  %i.hf = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i430, i64 %index ; 2 uses
  %next.gep47 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.hg = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep47, align 1, !tbaa !30
  %wide.load48 = load <16 x i8>, ptr %i.hg, align 1, !tbaa !30
  %i.hh = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !30
  store <16 x i8> %wide.load48, ptr %i.hh, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit383, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.hb, -8                    ; 4 uses
  %i.hj = getelementptr i8, ptr %.0.i430, i64 %n.vec50
  %i.hk = getelementptr i8, ptr %.014.i, i64 %n.vec50
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %next.gep52 = getelementptr i8, ptr %.0.i430, i64 %index51
  %next.gep53 = getelementptr i8, ptr %.014.i, i64 %index51
  %wide.load54 = load <8 x i8>, ptr %next.gep53, align 1, !tbaa !30
  store <8 x i8> %wide.load54, ptr %next.gep52, align 1, !tbaa !30
  %index.next55 = add nuw i64 %index51, 8         ; 2 uses
  %i.hl = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.hb, %n.vec50
  br i1 %cmp.n56, label %ZSTD_storeSeq.exit383, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i430, %iter.check ], [ %i.he, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.hf, %vec.epilog.iter.check ], [ %i.hk, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i.ph103 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.hm = sub i64 %i.gd, %.11520.i.ph103
  %xtraiter = and i64 %i.hm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.hp, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.hn, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.ho = load i8, ptr %.11520.i.prol, align 1, !tbaa !30
  %i.hp = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.ho, ptr %.121.i.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !148

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.hp, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.hn, %.lr.ph.i.prol ]
  %i.hq = sub i64 %.11520.i.ph103, %i.gd
  %i.hr = icmp ugt i64 %i.hq, -8
  br i1 %i.hr, label %ZSTD_storeSeq.exit383, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.ip, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.in, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.ht = load i8, ptr %.11520.i, align 1, !tbaa !30
  %i.hu = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.ht, ptr %.121.i, align 1, !tbaa !30
  %i.hv = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !30
  %i.hx = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !30
  %i.hy = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !30
  %i.ia = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !30
  %i.ib = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.ic = load i8, ptr %i.hy, align 1, !tbaa !30
  %i.id = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !30
  %i.ie = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.if = load i8, ptr %i.ib, align 1, !tbaa !30
  %i.ig = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.if, ptr %i.id, align 1, !tbaa !30
  %i.ih = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.ii = load i8, ptr %i.ie, align 1, !tbaa !30
  %i.ij = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !30
  %i.ik = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.il = load i8, ptr %i.ih, align 1, !tbaa !30
  %i.im = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.il, ptr %i.ij, align 1, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.io = load i8, ptr %i.ik, align 1, !tbaa !30
  %i.ip = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.io, ptr %i.im, align 1, !tbaa !30
  %exitcond.not.i.7 = icmp eq ptr %i.in, %.5
  br i1 %exitcond.not.i.7, label %ZSTD_storeSeq.exit383, label %.lr.ph.i, !llvm.loop !149

ZSTD_storeSeq.exit383.thread:                     ; preds = %bb.z, %bb.y
  %i.iq = load ptr, ptr %i.ba, align 8, !tbaa !35
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.gf
  store ptr %i.ir, ptr %i.ba, align 8, !tbaa !35
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !40
  br label %bb.ah

ZSTD_storeSeq.exit383:                            ; preds = %bb.ab, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i
  %i.is = load ptr, ptr %i.ba, align 8, !tbaa !35
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.gf
  store ptr %i.it, ptr %i.ba, align 8, !tbaa !35
  %i.iu = icmp ugt i64 %i.gf, 65535
  %.pre628.a = load ptr, ptr %i.bd, align 8, !tbaa !40 ; 3 uses
  br i1 %i.iu, label %bb.ag, label %bb.ah, !prof !41

bb.ag:                                            ; preds = %ZSTD_storeSeq.exit383
  store i32 1, ptr %i.bc, align 8, !tbaa !42
  %i.iv = load ptr, ptr %1, align 8, !tbaa !43
  %i.iw = ptrtoint ptr %.pre628.a to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = lshr exact i64 %i.iy, 3
  %i.ja = trunc i64 %i.iz to i32
  store i32 %i.ja, ptr %i.be, align 4, !tbaa !44
  br label %bb.ah

bb.ah:                                            ; preds = %ZSTD_storeSeq.exit383.thread, %bb.ag, %ZSTD_storeSeq.exit383
  %i.jb = phi ptr [ %.pre, %ZSTD_storeSeq.exit383.thread ], [ %.pre628.a, %bb.ag ], [ %.pre628.a, %ZSTD_storeSeq.exit383 ] ; 5 uses
  %i.jc = trunc i64 %i.gf to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i16 %i.jc, ptr %i.jd, align 4, !tbaa !46
  store i32 %.3305, ptr %i.jb, align 4, !tbaa !47
  %i.je = add i64 %i.gc, -3                       ; 2 uses
  %i.jf = icmp ugt i64 %i.je, 65535
  br i1 %i.jf, label %bb.ai, label %ZSTD_storeSeqOnly.exit, !prof !48

bb.ai:                                            ; preds = %bb.ah
  store i32 2, ptr %i.bc, align 8, !tbaa !42
  %i.jg = load ptr, ptr %1, align 8, !tbaa !43
  %i.jh = ptrtoint ptr %i.jb to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = lshr exact i64 %i.jj, 3
  %i.jl = trunc i64 %i.jk to i32
  store i32 %i.jl, ptr %i.be, align 4, !tbaa !44
  br label %ZSTD_storeSeqOnly.exit

ZSTD_storeSeqOnly.exit:                           ; preds = %bb.ah, %bb.ai
  %i.jm = trunc i64 %i.je to i16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 6
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !49
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  store ptr %i.jo, ptr %i.bd, align 8, !tbaa !40
  %i.jp = getelementptr inbounds nuw i8, ptr %.5, i64 %i.gc ; 8 uses
  %i.jq = icmp ult ptr %.2320, %i.jp
  br i1 %i.jq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %ZSTD_storeSeqOnly.exit
  %i.jr = ptrtoint ptr %.2320 to i64
  %i.js = sub i64 %i.jr, %i.p
  %i.jt = trunc i64 %i.js to i32
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.2312
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %ZSTD_storeSeqOnly.exit
  %.not361 = icmp ugt ptr %i.jp, %i.al
  br i1 %.not361, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jv = add i32 %.1315, 2                       ; 4 uses
  %i.jw = zext i32 %.1315 to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 2 ; 4 uses
  switch i32 %5, label %default.unreachable [
    i32 7, label %ZSTD_hashPtr.exit373.thread474
    i32 5, label %ZSTD_hashPtr.exit373.thread470
    i32 6, label %ZSTD_hashPtr.exit373.thread472
    i32 4, label %ZSTD_hashPtr.exit373
  ]

ZSTD_hashPtr.exit373.thread470:                   ; preds = %bb.al
  %.val400.a = load i64, ptr %i.jy, align 1, !tbaa !21
  %i.jz = mul i64 %.val400.a, -3523014627271114752
  %i.ka = lshr i64 %i.jz, %i.ay
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ka
  store i32 %i.jv, ptr %i.kb, align 4, !tbaa !22
  %i.kc = getelementptr inbounds i8, ptr %i.jp, i64 -2 ; 2 uses
  %.val401 = load i64, ptr %i.kc, align 1, !tbaa !21
  %i.kd = mul i64 %.val401, -3523014627271114752
  %i.ke = lshr i64 %i.kd, %i.ay
  br label %.lr.ph555.preheader

ZSTD_hashPtr.exit373.thread472:                   ; preds = %bb.al
  %.val407.a = load i64, ptr %i.jy, align 1, !tbaa !21
  %i.kf = mul i64 %.val407.a, -3523014627193847808
  %i.kg = lshr i64 %i.kf, %i.ay
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kg
  store i32 %i.jv, ptr %i.kh, align 4, !tbaa !22
  %i.ki = getelementptr inbounds i8, ptr %i.jp, i64 -2 ; 2 uses
  %.val408 = load i64, ptr %i.ki, align 1, !tbaa !21
  %i.kj = mul i64 %.val408, -3523014627193847808
  %i.kk = lshr i64 %i.kj, %i.ay
  br label %.lr.ph555.preheader

ZSTD_hashPtr.exit373.thread474:                   ; preds = %bb.al
  %.val414.a = load i64, ptr %i.jy, align 1, !tbaa !21
  %i.kl = mul i64 %.val414.a, -3523014627193167104
  %i.km = lshr i64 %i.kl, %i.ay
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.km
  store i32 %i.jv, ptr %i.kn, align 4, !tbaa !22
  %i.ko = getelementptr inbounds i8, ptr %i.jp, i64 -2 ; 2 uses
  %.val415 = load i64, ptr %i.ko, align 1, !tbaa !21
  %i.kp = mul i64 %.val415, -3523014627193167104
  %i.kq = lshr i64 %i.kp, %i.ay
  br label %.lr.ph555.preheader

ZSTD_hashPtr.exit373:                             ; preds = %bb.al
  %.val393.a = load i32, ptr %i.jy, align 1, !tbaa !22
  %i.kr = mul i32 %.val393.a, -1640531535
  %i.ks = lshr i32 %i.kr, %i.aw
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kt
  store i32 %i.jv, ptr %i.ku, align 4, !tbaa !22
  %i.kv = getelementptr inbounds i8, ptr %i.jp, i64 -2 ; 2 uses
  %.val394 = load i32, ptr %i.kv, align 1, !tbaa !22
  %i.kw = mul i32 %.val394, -1640531535
  %i.kx = lshr i32 %i.kw, %i.aw
  %i.ky = zext i32 %i.kx to i64
  br label %.lr.ph555.preheader

.lr.ph555.preheader:                              ; preds = %ZSTD_hashPtr.exit373.thread474, %ZSTD_hashPtr.exit373.thread472, %ZSTD_hashPtr.exit373.thread470, %ZSTD_hashPtr.exit373
  %.pn.in = phi ptr [ %i.kv, %ZSTD_hashPtr.exit373 ], [ %i.ko, %ZSTD_hashPtr.exit373.thread474 ], [ %i.kc, %ZSTD_hashPtr.exit373.thread470 ], [ %i.ki, %ZSTD_hashPtr.exit373.thread472 ]
  %.0.i370 = phi i64 [ %i.ky, %ZSTD_hashPtr.exit373 ], [ %i.kq, %ZSTD_hashPtr.exit373.thread474 ], [ %i.ke, %ZSTD_hashPtr.exit373.thread470 ], [ %i.kk, %ZSTD_hashPtr.exit373.thread472 ]
  %.pn = ptrtoint ptr %.pn.in to i64
  %.in = sub i64 %.pn, %i.p
  %i.kz = trunc i64 %.in to i32
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i370
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !22
  br label %.lr.ph555

.lr.ph555:                                        ; preds = %.lr.ph555.preheader, %bb.au
  %i.lb = phi ptr [ %i.mc, %bb.au ], [ %i.jo, %.lr.ph555.preheader ]
  %.3331554 = phi i32 [ %.3337553, %bb.au ], [ %.2330, %.lr.ph555.preheader ] ; 6 uses
  %.3337553 = phi i32 [ %.3331554, %bb.au ], [ %.2336, %.lr.ph555.preheader ] ; 4 uses
  %.1341552 = phi ptr [ %i.mo, %bb.au ], [ %i.jp, %.lr.ph555.preheader ] ; 12 uses
  %i.lc = ptrtoint ptr %.1341552 to i64
  %i.ld = sub i64 %i.lc, %i.p
  %i.le = trunc i64 %i.ld to i32                  ; 2 uses
  %i.lf = sub i32 %i.le, %.3331554                ; 3 uses
  %i.lg = icmp ult i32 %i.lf, %i.ag               ; 2 uses
  %i.lh = zext i32 %i.lf to i64
  %.v = select i1 %i.lg, ptr %i.n, ptr %i.l
  %i.li = getelementptr inbounds nuw i8, ptr %.v, i64 %i.lh ; 2 uses
  %i.lj = sub i32 %i.lf, %i.ag
  %6 = icmp ult i32 %i.lj, -3
  %.not363 = icmp ne i32 %.3331554, 0
  %.not364 = select i1 %.not363, i1 %6, i1 false
  br i1 %.not364, label %bb.am, label %.thread

bb.am:                                            ; preds = %.lr.ph555
  %.val = load i32, ptr %i.li, align 1, !tbaa !22
  %.6.val = load i32, ptr %.1341552, align 1, !tbaa !22
  %i.lk = icmp eq i32 %.val, %.6.val
  br i1 %i.lk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ll = select i1 %i.lg, ptr %i.aj, ptr %i.ak
  %i.lm = getelementptr inbounds nuw i8, ptr %.1341552, i64 4
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lo = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lm, ptr noundef nonnull %i.ln, ptr noundef %i.ak, ptr noundef %i.ll, ptr noundef nonnull %i.ai) ; 2 uses
  %.not.i = icmp ugt ptr %.1341552, %i.az
  br i1 %.not.i, label %ZSTD_storeSeq.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lp = load ptr, ptr %i.ba, align 8, !tbaa !35
  %.1341.val = load <2 x i64>, ptr %.1341552, align 1, !tbaa !30
  store <2 x i64> %.1341.val, ptr %i.lp, align 1, !tbaa !30
  %.pre629 = load ptr, ptr %i.bd, align 8, !tbaa !40
  br label %ZSTD_storeSeq.exit

ZSTD_storeSeq.exit:                               ; preds = %bb.an, %bb.ao
  %i.lq = phi ptr [ %i.lb, %bb.an ], [ %.pre629, %bb.ao ] ; 5 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  store i16 0, ptr %i.lr, align 4, !tbaa !46
  store i32 1, ptr %i.lq, align 4, !tbaa !47
  %i.ls = add i64 %i.lo, 1                        ; 2 uses
  %i.lt = icmp ugt i64 %i.ls, 65535
  br i1 %i.lt, label %bb.ap, label %ZSTD_storeSeqOnly.exit384, !prof !48

bb.ap:                                            ; preds = %ZSTD_storeSeq.exit
  store i32 2, ptr %i.bc, align 8, !tbaa !42
  %i.lu = load ptr, ptr %1, align 8, !tbaa !43
  %i.lv = ptrtoint ptr %i.lq to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = lshr exact i64 %i.lx, 3
  %i.lz = trunc i64 %i.ly to i32
  store i32 %i.lz, ptr %i.be, align 4, !tbaa !44
  br label %ZSTD_storeSeqOnly.exit384

ZSTD_storeSeqOnly.exit384:                        ; preds = %ZSTD_storeSeq.exit, %bb.ap
  %i.ma = trunc i64 %i.ls to i16
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 6
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !49
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  store ptr %i.mc, ptr %i.bd, align 8, !tbaa !40
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.at
    i32 5, label %bb.ar
    i32 6, label %bb.as
    i32 4, label %bb.aq
  ]

bb.aq:                                            ; preds = %ZSTD_storeSeqOnly.exit384
  %.6.val395 = load i32, ptr %.1341552, align 1, !tbaa !22
  %i.md = mul i32 %.6.val395, -1640531535
  %i.me = lshr i32 %i.md, %i.aw
  %i.mf = zext i32 %i.me to i64
  br label %bb.au

bb.ar:                                            ; preds = %ZSTD_storeSeqOnly.exit384
  %.6.val402 = load i64, ptr %.1341552, align 1, !tbaa !21
  %i.mg = mul i64 %.6.val402, -3523014627271114752
  %i.mh = lshr i64 %i.mg, %i.ay
  br label %bb.au

bb.as:                                            ; preds = %ZSTD_storeSeqOnly.exit384
  %.6.val409 = load i64, ptr %.1341552, align 1, !tbaa !21
  %i.mi = mul i64 %.6.val409, -3523014627193847808
  %i.mj = lshr i64 %i.mi, %i.ay
  br label %bb.au

bb.at:                                            ; preds = %ZSTD_storeSeqOnly.exit384
  %.6.val416 = load i64, ptr %.1341552, align 1, !tbaa !21
  %i.mk = mul i64 %.6.val416, -3523014627193167104
  %i.ml = lshr i64 %i.mk, %i.ay
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0.i = phi i64 [ %i.mf, %bb.aq ], [ %i.ml, %bb.at ], [ %i.mh, %bb.ar ], [ %i.mj, %bb.as ]
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i
  store i32 %i.le, ptr %i.mm, align 4, !tbaa !22
  %i.mn = getelementptr i8, ptr %.1341552, i64 %i.lo
  %i.mo = getelementptr i8, ptr %i.mn, i64 4      ; 3 uses
  %.not362 = icmp ugt ptr %i.mo, %i.al
  br i1 %.not362, label %.thread, label %.lr.ph555

.thread:                                          ; preds = %bb.au, %bb.am, %.lr.ph555, %bb.ak
  %.3343 = phi ptr [ %i.jp, %bb.ak ], [ %i.mo, %bb.au ], [ %.1341552, %bb.am ], [ %.1341552, %.lr.ph555 ] ; 3 uses
  %.5339 = phi i32 [ %.2336, %bb.ak ], [ %.3331554, %bb.au ], [ %.3337553, %bb.am ], [ %.3337553, %.lr.ph555 ] ; 2 uses
  %.5333 = phi i32 [ %.2330, %bb.ak ], [ %.3337553, %bb.au ], [ %.3331554, %bb.am ], [ %.3331554, %.lr.ph555 ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.3343, i64 %i.j ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1 ; 2 uses
  %.not358 = icmp ult ptr %i.mq, %i.al
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

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !9, i64 88, !6, i64 96}
!15 = !{!"p1 _ZTS17ZSTD_MatchState_t", !9, i64 0}
!16 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!17 = !{!"ZSTD_MatchState_t", !11, i64 0, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !10, i64 56, !5, i64 64, !12, i64 96, !6, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !6, i64 136, !6, i64 140, !14, i64 144, !15, i64 248, !16, i64 256, !9, i64 288, !6, i64 296, !6, i64 300}
!18 = !{!17, !13, i64 112}
!19 = !{!17, !10, i64 8}
!20 = !{!16, !6, i64 8}
!21 = !{!12, !12, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!17, !6, i64 272}
!25 = !{!16, !6, i64 20}
!26 = !{!17, !6, i64 24}
!27 = !{!17, !6, i64 40}
!28 = !{i64 82510, i64 82534}
!29 = !{i64 5222}
!30 = !{!5, !5, i64 0}
!31 = !{!"short", !5, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 _ZTS8SeqDef_s", !9, i64 0}
!34 = !{!"", !33, i64 0, !33, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !12, i64 64, !6, i64 72, !6, i64 76}
!35 = !{!34, !10, i64 24}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 8, i32 24}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!34, !33, i64 8}
!41 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!42 = !{!34, !6, i64 72}
!43 = !{!34, !33, i64 0}
!44 = !{!34, !6, i64 76}
!45 = !{!"SeqDef_s", !6, i64 0, !31, i64 4, !31, i64 6}
!46 = !{!45, !31, i64 4}
!47 = !{!45, !6, i64 0}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!45, !31, i64 6}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = !{!16, !6, i64 16}
!53 = !{!17, !6, i64 44}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23, !36, !37}
!57 = distinct !{!57, !23, !36, !37}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !23, !36}
!60 = distinct !{!60, !23, !36, !37}
!61 = distinct !{!61, !23, !36, !37}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !23, !36}
!64 = distinct !{!64, !23, !36, !37}
!65 = distinct !{!65, !23, !36, !37}
!66 = distinct !{!66, !39}
!67 = distinct !{!67, !23, !36}
!68 = distinct !{!68, !23, !36, !37}
!69 = distinct !{!69, !23, !36, !37}
!70 = distinct !{!70, !39}
!71 = distinct !{!71, !23, !36}
!72 = distinct !{!72, !23, !36, !37}
!73 = distinct !{!73, !23, !36, !37}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !23, !36}
!76 = distinct !{!76, !23, !36, !37}
!77 = distinct !{!77, !23, !36, !37}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !23, !36}
!80 = distinct !{!80, !23, !36, !37}
!81 = distinct !{!81, !23, !36, !37}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !23, !36}
!84 = distinct !{!84, !23, !36, !37}
!85 = distinct !{!85, !23, !36, !37}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !23, !36}
!88 = !{!17, !6, i64 256}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !23, !36, !37}
!91 = distinct !{!91, !23, !36, !37}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !23, !36}
!94 = distinct !{!94, !23}
!95 = distinct !{!95, !23, !36, !37}
!96 = distinct !{!96, !23, !36, !37}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !23, !36}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, !23, !36, !37}
!101 = distinct !{!101, !23, !36, !37}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !23, !36}
!104 = distinct !{!104, !23, !36, !37}
!105 = distinct !{!105, !23, !36, !37}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !23, !36}
!108 = distinct !{!108, !23, !36, !37}
!109 = distinct !{!109, !23, !36, !37}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !23, !36}
!112 = distinct !{!112, !23, !36, !37}
!113 = distinct !{!113, !23, !36, !37}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !23, !36}
!116 = distinct !{!116, !23, !36, !37}
!117 = distinct !{!117, !23, !36, !37}
!118 = distinct !{!118, !39}
!119 = distinct !{!119, !23, !36}
!120 = distinct !{!120, !23, !36, !37}
!121 = distinct !{!121, !23, !36, !37}
!122 = distinct !{!122, !39}
!123 = distinct !{!123, !23, !36}
!124 = distinct !{!124, !23, !36, !37}
!125 = distinct !{!125, !23, !36, !37}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !23, !36}
!128 = distinct !{!128, !23, !36, !37}
!129 = distinct !{!129, !23, !36, !37}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !23, !36}
!132 = distinct !{!132, !23, !36, !37}
!133 = distinct !{!133, !23, !36, !37}
!134 = distinct !{!134, !39}
!135 = distinct !{!135, !23, !36}
!136 = distinct !{!136, !23, !36, !37}
!137 = distinct !{!137, !23, !36, !37}
!138 = distinct !{!138, !39}
!139 = distinct !{!139, !23, !36}
!140 = !{!17, !15, i64 248}
!141 = !{!17, !10, i64 0}
!142 = !{!17, !6, i64 296}
!143 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!144 = distinct !{!144, !23}
!145 = distinct !{!145, !23}
!146 = distinct !{!146, !23, !36, !37}
!147 = distinct !{!147, !23, !36, !37}
!148 = distinct !{!148, !39}
!149 = distinct !{!149, !23, !36}
!150 = !{!17, !10, i64 16}
!151 = !{!16, !6, i64 0}
!152 = !{!17, !6, i64 28}
end_hunk_4
