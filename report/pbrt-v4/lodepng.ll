Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZL13addChunk_IHDRP8ucvectorjj16LodePNGColorTypejj:bb.a
  %i.v = trunc i32 %3 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  store i8 %i.v, ptr %i.w, align 1, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  store i8 0, ptr %i.x, align 1, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 19
  store i8 0, ptr %i.y, align 1, !tbaa !29
  %i.z = trunc i32 %5 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !29
  %i.ab = load i8, ptr %i.m, align 1, !tbaa !29
  %.narrow.i.i = xor i8 %i.ab, -1
  %i.ac = zext i8 %.narrow.i.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30
  %i.af = xor i32 %i.ae, 16777215                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %.07.tr.i.i.1 = trunc i32 %i.af to i8
  %.narrow.i.i.1 = xor i8 %i.ah, %.07.tr.i.i.1
  %i.ai = zext i8 %.narrow.i.i.1 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.al = lshr i32 %i.af, 8
  %i.am = xor i32 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %.07.tr.i.i.2 = trunc i32 %i.am to i8
  %.narrow.i.i.2 = xor i8 %i.ao, %.07.tr.i.i.2
  %i.ap = zext i8 %.narrow.i.i.2 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !30
  %i.as = lshr i32 %i.am, 8
  %i.at = xor i32 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29
  %.07.tr.i.i.3 = trunc i32 %i.at to i8
  %.narrow.i.i.3 = xor i8 %i.av, %.07.tr.i.i.3
  %i.aw = zext i8 %.narrow.i.i.3 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !30
  %i.az = lshr i32 %i.at, 8
  %i.ba = xor i32 %i.ay, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %.07.tr.i.i.4 = trunc i32 %i.ba to i8
  %.narrow.i.i.4 = xor i8 %i.bc, %.07.tr.i.i.4
  %i.bd = zext i8 %.narrow.i.i.4 to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30
  %i.bg = lshr i32 %i.ba, 8
  %i.bh = xor i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !29
  %.07.tr.i.i.5 = trunc i32 %i.bh to i8
  %.narrow.i.i.5 = xor i8 %i.bj, %.07.tr.i.i.5
  %i.bk = zext i8 %.narrow.i.i.5 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !30
  %i.bn = lshr i32 %i.bh, 8
  %i.bo = xor i32 %i.bm, %i.bn                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29
  %.07.tr.i.i.6 = trunc i32 %i.bo to i8
  %.narrow.i.i.6 = xor i8 %i.bq, %.07.tr.i.i.6
  %i.br = zext i8 %.narrow.i.i.6 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !30
  %i.bu = lshr i32 %i.bo, 8
  %i.bv = xor i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !29
  %.07.tr.i.i.7 = trunc i32 %i.bv to i8
  %.narrow.i.i.7 = xor i8 %i.bx, %.07.tr.i.i.7
  %i.by = zext i8 %.narrow.i.i.7 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !30
  %i.cb = lshr i32 %i.bv, 8
  %i.cc = xor i32 %i.ca, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %.07.tr.i.i.8 = trunc i32 %i.cc to i8
  %.narrow.i.i.8 = xor i8 %i.ce, %.07.tr.i.i.8
  %i.cf = zext i8 %.narrow.i.i.8 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !30
  %i.ci = lshr i32 %i.cc, 8
  %i.cj = xor i32 %i.ch, %i.ci                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !29
  %.07.tr.i.i.9 = trunc i32 %i.cj to i8
  %.narrow.i.i.9 = xor i8 %i.cl, %.07.tr.i.i.9
  %i.cm = zext i8 %.narrow.i.i.9 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !30
  %i.cp = lshr i32 %i.cj, 8
  %i.cq = xor i32 %i.co, %i.cp                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %.07.tr.i.i.10 = trunc i32 %i.cq to i8
  %.narrow.i.i.10 = xor i8 %i.cs, %.07.tr.i.i.10
  %i.ct = zext i8 %.narrow.i.i.10 to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = xor i32 %i.cv, %i.cw                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29
  %.07.tr.i.i.11 = trunc i32 %i.cx to i8
  %.narrow.i.i.11 = xor i8 %i.cz, %.07.tr.i.i.11
  %i.da = zext i8 %.narrow.i.i.11 to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !30
  %i.dd = lshr i32 %i.cx, 8
  %i.de = xor i32 %i.dc, %i.dd                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %.07.tr.i.i.12 = trunc i32 %i.de to i8
  %.narrow.i.i.12 = xor i8 %i.dg, %.07.tr.i.i.12
  %i.dh = zext i8 %.narrow.i.i.12 to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !30
  %i.dk = lshr i32 %i.de, 8
  %i.dl = xor i32 %i.dj, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !29
  %.07.tr.i.i.13 = trunc i32 %i.dl to i8
  %.narrow.i.i.13 = xor i8 %i.dn, %.07.tr.i.i.13
  %i.do = zext i8 %.narrow.i.i.13 to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !30
  %i.dr = lshr i32 %i.dl, 8
  %i.ds = xor i32 %i.dq, %i.dr                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !29
  %.07.tr.i.i.14 = trunc i32 %i.ds to i8
  %.narrow.i.i.14 = xor i8 %i.du, %.07.tr.i.i.14
  %i.dv = zext i8 %.narrow.i.i.14 to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !30
  %i.dy = lshr i32 %i.ds, 8
  %i.dz = xor i32 %i.dx, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 19
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !29
  %.07.tr.i.i.15 = trunc i32 %i.dz to i8
  %.narrow.i.i.15 = xor i8 %i.eb, %.07.tr.i.i.15
  %i.ec = zext i8 %.narrow.i.i.15 to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !30
  %i.ef = lshr i32 %i.dz, 8
  %i.eg = xor i32 %i.ee, %i.ef                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !29
  %.07.tr.i.i.16 = trunc i32 %i.eg to i8
  %.narrow.i.i.16 = xor i8 %i.ei, %.07.tr.i.i.16
  %i.ej = zext i8 %.narrow.i.i.16 to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @_ZL19lodepng_crc32_table, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !30
  %i.em = lshr i32 %i.eg, 8
  %i.en = xor i32 %i.el, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  %i.ep = xor i32 %i.en, -1
  %i.eq = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %i.er = shufflevector <4 x i32> %i.eq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.es = lshr <4 x i32> %i.er, <i32 24, i32 16, i32 8, i32 0>
  %i.et = trunc <4 x i32> %i.es to <4 x i8>
  store <4 x i8> %i.et, ptr %i.eo, align 1, !tbaa !29
  br label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %.lr.ph.i.i.preheader
  %.1 = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL16addUnknownChunksP8ucvectorPhm(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %.pre = load i64, ptr %i.a, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_Z18lodepng_chunk_nextPhS_.exit
  %i.f = phi i64 [ %.pre, %.lr.ph ], [ %i.r, %_Z18lodepng_chunk_nextPhS_.exit ] ; 4 uses
  %i.g = phi i64 [ %i.b, %.lr.ph ], [ %i.cg, %_Z18lodepng_chunk_nextPhS_.exit ]
  %.01523 = phi ptr [ %1, %.lr.ph ], [ %.1.i, %_Z18lodepng_chunk_nextPhS_.exit ] ; 16 uses
  %.0152334 = ptrtoaddr ptr %.01523 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.01523, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %.01523, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %.01523, i64 3 ; 3 uses
  %i.k = load <4 x i8>, ptr %.01523, align 1, !tbaa !29
  %i.l = load i8, ptr %i.j, align 1, !tbaa !29
  %i.m = zext <4 x i8> %i.k to <4 x i32>
  %i.n = shl nuw <4 x i32> %i.m, <i32 24, i32 16, i32 8, i32 0> ; 4 uses
  %i.o = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.n) ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 12                 ; 7 uses
  %i.r = add i64 %i.q, %i.f                       ; 5 uses
  %.not.i = icmp ult i64 %i.r, %i.f
  br i1 %.not.i, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !28
  %i.t = tail call noalias noundef ptr @realloc(ptr noundef %i.s, i64 noundef %i.r) #33 ; 4 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %.not18.i = icmp eq ptr %i.t, null
  br i1 %.not18.i, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.c
  store ptr %i.t, ptr %0, align 8, !tbaa !28
  store i64 %i.r, ptr %i.a, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.f ; 3 uses
  %i.w = extractelement <4 x i32> %i.n, i64 0
  %i.x = extractelement <4 x i32> %i.n, i64 1
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = extractelement <4 x i32> %i.n, i64 2
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = or disjoint i32 %i.aa, 11               ; 2 uses
  %3 = zext i8 %i.l to i32
  %add = add i32 %i.ab, %3                        ; 2 uses
  %add.overflow = icmp ult i32 %add, %i.ab
  %i.ac = icmp eq i32 %add, -1
  %i.ad = or i1 %i.ac, %add.overflow
  br i1 %i.ad, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ae = add i64 %i.f, %i.u
  %i.af = sub i64 %.0152334, %i.ae
  %diff.check = icmp ugt i64 %i.af, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i32 %i.o, 116
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.q, 120
  %n.vec = and i64 %i.q, 8589934464               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01523, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %wide.load = load <32 x i8>, ptr %i.ah, align 1, !tbaa !29
  %wide.load35 = load <32 x i8>, ptr %i.ai, align 1, !tbaa !29
  %wide.load36 = load <32 x i8>, ptr %i.aj, align 1, !tbaa !29
  %wide.load37 = load <32 x i8>, ptr %i.ak, align 1, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store <32 x i8> %wide.load, ptr %i.al, align 1, !tbaa !29
  store <32 x i8> %wide.load35, ptr %i.am, align 1, !tbaa !29
  store <32 x i8> %wide.load36, ptr %i.an, align 1, !tbaa !29
  store <32 x i8> %wide.load37, ptr %i.ao, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.q, 8589934584             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01523, i64 %index39
  %wide.load40 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 %index39
  store <8 x i8> %wide.load40, ptr %i.ar, align 1, !tbaa !29
  %index.next41 = add nuw i64 %index39, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !677

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.q, %n.vec38
  br i1 %cmp.n42, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01523, i64 %indvars.iv.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !29
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.aw = and i64 %indvars.iv.next.i, 4294967295
  %.not19.i = icmp eq i64 %i.q, %i.aw
  br i1 %.not19.i, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !678

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i64 %i.r, ptr %i.c, align 8, !tbaa !58
  %.not.i19 = icmp uge ptr %.01523, %i.d
  %i.ax = sub i64 %i.e, %i.g
  %i.ay = icmp slt i64 %i.ax, 12
  %or.cond.i = or i1 %.not.i19, %i.ay
  br i1 %or.cond.i, label %_Z18lodepng_chunk_nextPhS_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.az = load i8, ptr %.01523, align 1, !tbaa !29 ; 2 uses
  %i.ba = icmp eq i8 %i.az, -119
  %i.bb = load i8, ptr %i.h, align 1, !tbaa !29   ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 80
  %or.cond30.i = select i1 %i.ba, i1 %i.bc, i1 false
  %.pre28 = load i8, ptr %i.i, align 1, !tbaa !29 ; 2 uses
  br i1 %or.cond30.i, label %bb.e, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.d
  %.pre29 = load i8, ptr %i.j, align 1, !tbaa !29
  %i.bd = zext i8 %i.bb to i64
  %i.be = shl nuw nsw i64 %i.bd, 16
  br label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.bf = icmp eq i8 %.pre28, 78
  %.pre30 = load i8, ptr %i.j, align 1, !tbaa !29 ; 2 uses
  %i.bg = icmp eq i8 %.pre30, 71
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.01523, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29
  %i.bj = icmp eq i8 %i.bi, 13
  br i1 %i.bj, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.01523, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.bm = icmp eq i8 %i.bl, 10
  br i1 %i.bm, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.01523, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = icmp eq i8 %i.bo, 26
  br i1 %i.bp, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.01523, i64 7
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %i.bs = icmp eq i8 %i.br, 10
  br i1 %i.bs, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.01523, i64 8
  br label %_Z18lodepng_chunk_nextPhS_.exit

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bu = phi i8 [ %.pre29, %.._crit_edge.i_crit_edge ], [ 71, %bb.i ], [ 71, %bb.h ], [ 71, %bb.g ], [ 71, %bb.f ], [ %.pre30, %bb.e ]
  %i.bv = phi i64 [ %i.be, %.._crit_edge.i_crit_edge ], [ 5242880, %bb.i ], [ 5242880, %bb.h ], [ 5242880, %bb.g ], [ 5242880, %bb.f ], [ 5242880, %bb.e ]
  %i.bw = zext i8 %i.az to i64
  %i.bx = shl nuw nsw i64 %i.bw, 24
  %i.by = zext i8 %.pre28 to i64
  %i.bz = shl nuw nsw i64 %i.by, 8
  %i.ca = zext i8 %i.bu to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.01523, i64 %i.bv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  br label %_Z18lodepng_chunk_nextPhS_.exit

_Z18lodepng_chunk_nextPhS_.exit:                  ; preds = %.loopexit, %bb.j, %._crit_edge.i
  %.1.i = phi ptr [ %i.cf, %._crit_edge.i ], [ %i.bt, %bb.j ], [ %i.d, %.loopexit ] ; 2 uses
  %i.cg = ptrtoint ptr %.1.i to i64               ; 2 uses
  %i.ch = sub i64 %i.cg, %i.b
  %i.ci = icmp ult i64 %i.ch, %2
  br i1 %i.ci, label %bb.b, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, !llvm.loop !679

_Z20lodepng_chunk_appendPPhPmPKh.exit.thread:     ; preds = %_Z18lodepng_chunk_nextPhS_.exit, %bb.b, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 77, %bb.b ], [ 83, %bb.c ], [ 0, %_Z18lodepng_chunk_nextPhS_.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 112) i32 @_ZL13addChunk_iCCPP8ucvectorPK11LodePNGInfoP23LodePNGCompressSettings(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %strlen.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) ; 5 uses
  %i.e = add i64 %strlen.i, -80
  %or.cond = icmp ult i64 %i.e, -79
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load i32, ptr %i.h, align 8, !tbaa !114
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !185  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i32 %i.l(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %2), !inline_history !14
  %.not14.i = icmp eq i32 %i.m, 0
  br i1 %.not14.i, label %_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit.thread, label %_ZL18lodepng_chunk_initPPhP8ucvectorjPKc.exit.thread

_ZL13zlib_compressPPhPmPKhmPK23LodePNGCompressSettings.exit: ; preds = %bb.b
  %i.n = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %2) ; 2 uses
end_hunk_0
