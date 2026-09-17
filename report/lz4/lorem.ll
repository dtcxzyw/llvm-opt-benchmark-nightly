Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lorem?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@LOREM_genBlock:bb.a
  store ptr %0, ptr @g_ptr, align 8, !tbaa !20
  %i.a = load i32, ptr @g_distribCount, align 4, !tbaa !21 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.preheader, label %init_word_distrib.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.01.i = phi i64 [ %i.i, %.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @kWords, i64 %.01.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #7
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 255
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %.01.i
  store i32 %i.g, ptr %i.h, align 4, !tbaa !21
  %i.i = add nuw nsw i64 %.01.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, 255
  br i1 %exitcond.not.i, label %vector.body, label %.preheader, !llvm.loop !9

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next.2, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %vec.phi = phi <2 x i64> [ %i.ab, %vector.body ], [ zeroinitializer, %.preheader ]
  %vec.phi165 = phi <2 x i64> [ %i.ac, %vector.body ], [ zeroinitializer, %.preheader ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <2 x i32>, ptr %i.j, align 16, !tbaa !21
  %wide.load166 = load <2 x i32>, ptr %i.k, align 8, !tbaa !21
  %i.l = zext <2 x i32> %wide.load to <2 x i64>
  %i.m = zext <2 x i32> %wide.load166 to <2 x i64>
  %i.n = add <2 x i64> %vec.phi, %i.l
  %i.o = add <2 x i64> %vec.phi165, %i.m
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %wide.load.1 = load <2 x i32>, ptr %i.q, align 16, !tbaa !21
  %wide.load166.1 = load <2 x i32>, ptr %i.r, align 8, !tbaa !21
  %i.s = zext <2 x i32> %wide.load.1 to <2 x i64>
  %i.t = zext <2 x i32> %wide.load166.1 to <2 x i64>
  %i.u = add <2 x i64> %i.n, %i.s
  %i.v = add <2 x i64> %i.o, %i.t
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %wide.load.2 = load <2 x i32>, ptr %i.x, align 16, !tbaa !21
  %wide.load166.2 = load <2 x i32>, ptr %i.y, align 8, !tbaa !21
  %i.z = zext <2 x i32> %wide.load.2 to <2 x i64>
  %i.aa = zext <2 x i32> %wide.load166.2 to <2 x i64>
  %i.ab = add <2 x i64> %i.u, %i.z                ; 2 uses
  %i.ac = add <2 x i64> %i.v, %i.aa               ; 2 uses
  %index.next.2 = add nuw nsw i64 %index, 12      ; 2 uses
  %i.ad = icmp eq i64 %index.next.2, 252
  br i1 %i.ad, label %init_word_len.exit, label %vector.body, !llvm.loop !10

init_word_len.exit:                               ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_wordLen, i64 1008), align 16, !tbaa !21
  %i.ag = zext i32 %i.af to i64
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_wordLen, i64 1012), align 4, !tbaa !21
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.ah, %i.aj
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_wordLen, i64 1016), align 8, !tbaa !21
  %i.am = zext i32 %i.al to i64
  %i.an = add i64 %i.ak, %i.am
  %i.ao = add i64 %i.an, 16
  %i.ap = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ao) #8 ; 3 uses
  store ptr %i.ap, ptr @g_wordBuffer, align 8, !tbaa !20
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %init_word_len.exit
  tail call void @abort() #9
  unreachable

.preheader.i:                                     ; preds = %init_word_len.exit, %.preheader.i.1
  %.012.i = phi ptr [ %i.bf, %.preheader.i.1 ], [ %i.ap, %init_word_len.exit ] ; 3 uses
  %.0911.i = phi i64 [ %i.bg, %.preheader.i.1 ], [ 0, %init_word_len.exit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @kWords, i64 %.0911.i
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !20
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %.0911.i
  %i.au = load i32, ptr %i.at, align 8, !tbaa !21
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.012.i, ptr align 1 %i.as, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @g_words, i64 %.0911.i
  store ptr %.012.i, ptr %i.aw, align 16, !tbaa !20
  %exitcond.not.i7 = icmp eq i64 %.0911.i, 254
  br i1 %exitcond.not.i7, label %init_word_buffer.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.ax = or disjoint i64 %.0911.i, 1             ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i, i64 %i.av ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @kWords, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %i.ax
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.ba, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @g_words, i64 %i.ax
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  %i.bg = add nuw nsw i64 %.0911.i, 2
  br label %.preheader.i

init_word_buffer.exit:                            ; preds = %.preheader.i, %init_word_buffer.exit
  %.0122.i.i = phi i64 [ %i.by, %init_word_buffer.exit ], [ 0, %.preheader.i ] ; 4 uses
  %.0131.i.i = phi i32 [ %i.bx, %init_word_buffer.exit ], [ 0, %.preheader.i ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %.0122.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !21
  %narrow.i.i = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 5)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @kWeights, i64 %spec.select.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21
  %i.bl = add i32 %i.bk, %.0131.i.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %.0122.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21
  %narrow.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 5)
  %spec.select.i.i.1 = zext nneg i32 %narrow.i.i.1 to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @kWeights, i64 %spec.select.i.i.1
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !21
  %i.br = add i32 %i.bq, %i.bl
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %.0122.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !21
  %narrow.i.i.2 = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 5)
  %spec.select.i.i.2 = zext nneg i32 %narrow.i.i.2 to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @kWeights, i64 %spec.select.i.i.2
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !21
  %i.bx = add i32 %i.bw, %i.br                    ; 3 uses
  %i.by = add nuw nsw i64 %.0122.i.i, 3           ; 2 uses
  %exitcond.not.i.i8.2 = icmp eq i64 %i.by, 255
  br i1 %exitcond.not.i.i8.2, label %countFreqs.exit.i, label %init_word_buffer.exit, !llvm.loop !11

countFreqs.exit.i:                                ; preds = %init_word_buffer.exit
  store i32 %i.bx, ptr @g_distribCount, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %countFreqs.exit.i
  %.0194.i = phi i64 [ 0, %countFreqs.exit.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.0203.i = phi i64 [ 0, %countFreqs.exit.i ], [ %i.co, %._crit_edge.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %.0203.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !21 ; 3 uses
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %narrow.i = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 5)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @kWeights, i64 %spec.select.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !21
  %i.cd = trunc nuw nsw i64 %.0203.i to i32       ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1) ; 2 uses
  %i.ce = trunc i64 %.0194.i to i32
  %i.cf = add i32 %smax.i, %i.ce
  %i.cg = zext nneg i32 %smax.i to i64            ; 2 uses
  %min.iters.check.not = icmp eq i32 %i.ca, 1
  br i1 %min.iters.check.not, label %vector.ph168, label %scalar.ph167.preheader

vector.ph168:                                     ; preds = %.lr.ph.i
  %n.vec = and i64 %i.cg, 2147483640              ; 3 uses
  %i.ch = add i64 %.0194.i, %n.vec                ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %.0194.i
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph168
  %index170 = phi i64 [ 0, %vector.ph168 ], [ %index.next171, %vector.body169 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index170 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4, !tbaa !21
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4, !tbaa !21
  %index.next171 = add nuw i64 %index170, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next171, %n.vec
  br i1 %i.cl, label %middle.block172, label %vector.body169, !llvm.loop !12

middle.block172:                                  ; preds = %vector.body169
  %cmp.n = icmp eq i64 %n.vec, %i.cg
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph.i, %middle.block172
  %.11.i.ph = phi i64 [ %.0194.i, %.lr.ph.i ], [ %i.ch, %middle.block172 ]
  br label %scalar.ph167

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %.11.i = phi i64 [ %i.cm, %scalar.ph167 ], [ %.11.i.ph, %scalar.ph167.preheader ] ; 2 uses
  %i.cm = add nuw nsw i64 %.11.i, 1               ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %.11.i
  store i32 %i.cd, ptr %i.cn, align 4, !tbaa !21
  %lftr.wideiv = trunc i64 %i.cm to i32
  %exitcond = icmp eq i32 %i.cf, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge.i, label %scalar.ph167, !llvm.loop !13

._crit_edge.i:                                    ; preds = %scalar.ph167, %middle.block172, %bb.c
  %.1.lcssa.i = phi i64 [ %.0194.i, %bb.c ], [ %i.ch, %middle.block172 ], [ %i.cm, %scalar.ph167 ]
  %i.co = add nuw nsw i64 %.0203.i, 1             ; 2 uses
  %exitcond6.not.i = icmp eq i64 %i.co, 255
  br i1 %exitcond6.not.i, label %init_word_distrib.exit, label %bb.c, !llvm.loop !14

init_word_distrib.exit:                           ; preds = %._crit_edge.i, %bb.a
  %i.cp = phi i32 [ %i.a, %bb.a ], [ %i.bx, %._crit_edge.i ]
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %generateFirstSentence.exit, label %bb.d

bb.d:                                             ; preds = %init_word_distrib.exit
  %i.cq = load ptr, ptr @g_words, align 16, !tbaa !20 ; 2 uses
  %i.cr = load i32, ptr @g_wordLen, align 16, !tbaa !21
  %i.cs = zext i32 %i.cr to i64                   ; 8 uses
  %i.ct = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.cs, i64 14)
  %i.cu = add nuw nsw i64 %i.ct, 2
  %i.cv = icmp ugt i64 %i.cu, %1
  br i1 %i.cv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.cq, i64 16, i1 false)
  %i.cw = load i8, ptr %0, align 1, !tbaa !25
  %i.cx = add i8 %i.cw, -32
  store i8 %i.cx, ptr %0, align 1, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  store i16 32, ptr %i.cy, align 1
  %i.cz = add nuw nsw i64 %i.cs, 1
  br label %.peel.next.i

bb.f:                                             ; preds = %bb.d
  %i.da = add nuw nsw i64 %i.cs, 2
  %i.db = icmp samesign ugt i64 %i.da, %1
  br i1 %i.db, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %i.cq, i64 range(i64 0, 4294967296) %i.cs, i1 false)
  %i.dc = load i8, ptr %0, align 1, !tbaa !25
  %i.dd = add i8 %i.dc, -32
  store i8 %i.dd, ptr %0, align 1, !tbaa !25
  %i.de = sub nuw nsw i64 %1, %i.cs               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  store i8 46, ptr %i.df, align 1, !tbaa !25
  %i.dg = icmp samesign ugt i64 %i.de, 2
  br i1 %i.dg, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i, label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i

bb.h:                                             ; preds = %bb.f
  %i.dh = icmp eq i64 %1, 0
  br i1 %i.dh, label %.peel.next.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 46, ptr %0, align 1, !tbaa !25
  %i.di = icmp samesign ugt i64 %1, 2
  br i1 %i.di, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dj = icmp eq i64 %1, 2
  br i1 %i.dj, label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i, label %.peel.next.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i: ; preds = %bb.i, %bb.g
  %i.dk = phi i64 [ 0, %bb.i ], [ %i.cs, %bb.g ]
  %.sink14.i.i.peel.i = phi i64 [ %1, %bb.i ], [ %i.de, %bb.g ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  %i.dn = add nsw i64 %.sink14.i.i.peel.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dm, i8 32, i64 %i.dn, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i

writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i: ; preds = %bb.g, %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i, %bb.j
  %i.do = getelementptr i8, ptr %0, i64 %1
  %i.dp = getelementptr i8, ptr %i.do, i64 -1
  store i8 10, ptr %i.dp, align 1, !tbaa !25
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.e, %bb.j, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i, %bb.h
  %i.dq = phi i64 [ 0, %bb.h ], [ %i.cz, %bb.e ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i ], [ 1, %bb.j ] ; 9 uses
  %i.dr = getelementptr i8, ptr %0, i64 %1
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1     ; 6 uses
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_words, i64 8), align 8, !tbaa !20 ; 2 uses
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_wordLen, i64 4), align 4, !tbaa !21
  %i.dv = zext i32 %i.du to i64                   ; 4 uses
  %i.dw = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.dv, i64 14)
  %i.dx = add nuw nsw i64 %i.dq, 2
  %i.dy = add nuw nsw i64 %i.dx, %i.dw
  %i.dz = icmp ugt i64 %i.dy, %1
  br i1 %i.dz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.peel.next.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ea, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.dt, i64 16, i1 false)
  %i.eb = add nuw nsw i64 %i.dq, %i.dv            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.eb
  store i16 32, ptr %i.ec, align 1
  %i.ed = add nuw nsw i64 %i.eb, 1
  br label %.peel.next

bb.l:                                             ; preds = %.peel.next.i
  %i.ee = add nuw nsw i64 %i.dq, %i.dv            ; 5 uses
  %i.ef = add nuw nsw i64 %i.ee, 2
  %i.eg = icmp samesign ugt i64 %i.ef, %1
  br i1 %i.eg, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr readonly align 1 %i.dt, i64 range(i64 0, 4294967296) %i.dv, i1 false)
  %i.ei = sub nuw nsw i64 %1, %i.ee               ; 3 uses
  %i.ej = icmp eq i64 %1, %i.ee
  br i1 %i.ej, label %.peel.next, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.ee
  store i8 46, ptr %i.ek, align 1, !tbaa !25
  %i.el = icmp samesign ugt i64 %i.ei, 2
  br i1 %i.el, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.em = icmp eq i64 %i.ei, 2
  br i1 %i.em, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel, label %.peel.next

bb.p:                                             ; preds = %bb.l
  %i.en = sub nsw i64 %1, %i.dq                   ; 3 uses
  %i.eo = icmp eq i64 %1, %i.dq
  br i1 %i.eo, label %.peel.next, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq
  store i8 46, ptr %i.ep, align 1, !tbaa !25
  %i.eq = icmp ugt i64 %i.en, 2
  br i1 %i.eq, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = icmp eq i64 %i.en, 2
  br i1 %i.er, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel, label %.peel.next

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel: ; preds = %bb.q, %bb.n
  %i.es = phi i64 [ %i.dq, %bb.q ], [ %i.ee, %bb.n ]
  %.sink14.i.i.i.peel = phi i64 [ %i.en, %bb.q ], [ %i.ei, %bb.n ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 1
  %i.ev = add nsw i64 %.sink14.i.i.i.peel, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eu, i8 32, i64 %i.ev, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel

writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel, %bb.r, %bb.o
  store i8 10, ptr %i.ds, align 1, !tbaa !25
  br label %.peel.next

.peel.next:                                       ; preds = %bb.k, %bb.o, %bb.r, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel, %bb.m, %bb.p
  %g_nbChars.promoted78 = phi i64 [ %1, %bb.p ], [ %1, %bb.m ], [ %i.ed, %bb.k ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel ], [ %1, %bb.o ], [ %1, %bb.r ] ; 9 uses
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_words, i64 16), align 16, !tbaa !20 ; 2 uses
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_wordLen, i64 8), align 8, !tbaa !21
  %i.ey = zext i32 %i.ex to i64                   ; 4 uses
  %i.ez = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.ey, i64 14)
  %i.fa = add nuw nsw i64 %g_nbChars.promoted78, 2
  %i.fb = add nuw nsw i64 %i.fa, %i.ez
  %i.fc = icmp ugt i64 %i.fb, %1
  br i1 %i.fc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.peel.next
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 %g_nbChars.promoted78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fd, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ew, i64 16, i1 false)
  %i.fe = add nuw nsw i64 %g_nbChars.promoted78, %i.ey ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe
  store i16 32, ptr %i.ff, align 1
  %i.fg = add nuw nsw i64 %i.fe, 1
  br label %.peel.next40

bb.t:                                             ; preds = %.peel.next
  %i.fh = add nuw nsw i64 %g_nbChars.promoted78, %i.ey ; 5 uses
  %i.fi = add nuw nsw i64 %i.fh, 2
  %i.fj = icmp samesign ugt i64 %i.fi, %1
  br i1 %i.fj, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %g_nbChars.promoted78
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr readonly align 1 %i.ew, i64 range(i64 0, 4294967296) %i.ey, i1 false)
  %i.fl = sub nuw nsw i64 %1, %i.fh               ; 3 uses
  %i.fm = icmp eq i64 %1, %i.fh
  br i1 %i.fm, label %.peel.next40, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %i.fh
  store i8 46, ptr %i.fn, align 1, !tbaa !25
  %i.fo = icmp samesign ugt i64 %i.fl, 2
  br i1 %i.fo, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel42, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = icmp eq i64 %i.fl, 2
  br i1 %i.fp, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel44, label %.peel.next40

bb.x:                                             ; preds = %bb.t
  %i.fq = sub nsw i64 %1, %g_nbChars.promoted78   ; 3 uses
  %i.fr = icmp eq i64 %1, %g_nbChars.promoted78
  br i1 %i.fr, label %.peel.next40, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %g_nbChars.promoted78
  store i8 46, ptr %i.fs, align 1, !tbaa !25
  %i.ft = icmp ugt i64 %i.fq, 2
  br i1 %i.ft, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel42, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp eq i64 %i.fq, 2
  br i1 %i.fu, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel44, label %.peel.next40

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel42: ; preds = %bb.y, %bb.v
  %i.fv = phi i64 [ %g_nbChars.promoted78, %bb.y ], [ %i.fh, %bb.v ]
  %.sink14.i.i.i.peel43 = phi i64 [ %i.fq, %bb.y ], [ %i.fl, %bb.v ]
end_hunk_0
begin_hunk_1_@LOREM_genBlock:bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %i.hn
  store i8 46, ptr %i.ht, align 1, !tbaa !25
  %i.hu = icmp samesign ugt i64 %i.hr, 2
  br i1 %i.hu, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel62, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hv = icmp eq i64 %i.hr, 2
  br i1 %i.hv, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel64, label %.peel.next60.preheader

bb.an:                                            ; preds = %bb.aj
  %i.hw = sub nsw i64 %1, %g_nbChars.promoted76   ; 3 uses
  %i.hx = icmp eq i64 %1, %g_nbChars.promoted76
  br i1 %i.hx, label %.peel.next60.preheader, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 %g_nbChars.promoted76
  store i8 46, ptr %i.hy, align 1, !tbaa !25
  %i.hz = icmp ugt i64 %i.hw, 2
  br i1 %i.hz, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ia = icmp eq i64 %i.hw, 2
  br i1 %i.ia, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel64, label %.peel.next60.preheader

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel62: ; preds = %bb.ao, %bb.al
  %i.ib = phi i64 [ %g_nbChars.promoted76, %bb.ao ], [ %i.hn, %bb.al ]
  %.sink14.i.i.i.peel63 = phi i64 [ %i.hw, %bb.ao ], [ %i.hr, %bb.al ]
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 1
  %i.ie = add nsw i64 %.sink14.i.i.i.peel63, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.id, i8 32, i64 %i.ie, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel64

writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel64: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel62, %bb.ap, %bb.am
  store i8 10, ptr %i.ds, align 1, !tbaa !25
  br label %.peel.next60.preheader

.peel.next60.preheader:                           ; preds = %bb.ai, %bb.am, %bb.ap, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel64, %bb.ak, %bb.an
  %.ph182 = phi i64 [ %1, %bb.ap ], [ %1, %bb.am ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel64 ], [ %i.hm, %bb.ai ], [ %1, %bb.ak ], [ %1, %bb.an ] ; 3 uses
  br label %.peel.next60

.peel.next60:                                     ; preds = %.peel.next60.preheader, %generateWord.exit.i
  %g_nbChars.promoted74 = phi i64 [ %g_nbChars.promoted73, %generateWord.exit.i ], [ %.ph182, %.peel.next60.preheader ]
  %i.if = phi i64 [ %i.jo, %generateWord.exit.i ], [ %.ph182, %.peel.next60.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %generateWord.exit.i ], [ 5, %.peel.next60.preheader ] ; 4 uses
  %i.ig = phi i64 [ %i.jp, %generateWord.exit.i ], [ %.ph182, %.peel.next60.preheader ] ; 9 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr @g_words, i64 %indvars.iv.i
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !20 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %indvars.iv.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !21
  %i.il = zext i32 %i.ik to i64                   ; 4 uses
  %i.im = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.il, i64 14)
  %i.in = add i64 %i.ig, 2
  %i.io = add i64 %i.in, %i.im
  %i.ip = icmp ugt i64 %i.io, %1
  br i1 %i.ip, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %.peel.next60
  %i.iq = add i64 %i.ig, %i.il                    ; 5 uses
  %i.ir = add i64 %i.iq, 2
  %i.is = icmp ugt i64 %i.ir, %1
  br i1 %i.is, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.it = sub i64 %1, %i.ig                       ; 3 uses
  %i.iu = icmp eq i64 %1, %i.ig
  br i1 %i.iu, label %generateWord.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ig
  store i8 46, ptr %i.iv, align 1, !tbaa !25
  %i.iw = icmp ugt i64 %i.it, 2
  br i1 %i.iw, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ix = icmp eq i64 %i.it, 2
  br i1 %i.ix, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i, label %generateWord.exit.i

bb.au:                                            ; preds = %bb.aq
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr readonly align 1 %i.ii, i64 range(i64 0, 4294967296) %i.il, i1 false)
  %i.iz = sub i64 %1, %i.iq                       ; 3 uses
  %i.ja = icmp eq i64 %1, %i.iq
  br i1 %i.ja, label %generateWord.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 %i.iq
  store i8 46, ptr %i.jb, align 1, !tbaa !25
  %i.jc = icmp ugt i64 %i.iz, 2
  br i1 %i.jc, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jd = icmp eq i64 %i.iz, 2
  br i1 %i.jd, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i, label %generateWord.exit.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i: ; preds = %bb.av, %bb.as
  %i.je = phi i64 [ %i.ig, %bb.as ], [ %i.iq, %bb.av ]
  %.sink14.i.i.i = phi i64 [ %i.it, %bb.as ], [ %i.iz, %bb.av ]
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 1
  %i.jh = add i64 %.sink14.i.i.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jg, i8 32, i64 %i.jh, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i

writeLastCharacters.exit.sink.split.sink.split.i.i.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i, %bb.aw, %bb.at
  store i8 10, ptr %i.ds, align 1, !tbaa !25
  br label %generateWord.exit.i

bb.ax:                                            ; preds = %.peel.next60
  %i.ji = icmp eq i64 %indvars.iv.i, 7            ; 2 uses
  %.1.i = select i1 %i.ji, i64 2, i64 1
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ii, i64 16, i1 false)
  %i.jk = add i64 %i.ig, %i.il                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 %i.jk
  %i.jm = select i1 %i.ji, i16 8236, i16 32
  store i16 %i.jm, ptr %i.jl, align 1
  %i.jn = add i64 %i.jk, %.1.i                    ; 3 uses
  br label %generateWord.exit.i

generateWord.exit.i:                              ; preds = %bb.at, %bb.aw, %writeLastCharacters.exit.sink.split.sink.split.i.i.i, %bb.ax, %bb.au, %bb.ar
  %g_nbChars.promoted73 = phi i64 [ %g_nbChars.promoted74, %bb.ar ], [ %1, %bb.au ], [ %i.jn, %bb.ax ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i ], [ %1, %bb.aw ], [ %1, %bb.at ] ; 2 uses
  %i.jo = phi i64 [ %i.if, %bb.ar ], [ %1, %bb.au ], [ %i.jn, %bb.ax ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i ], [ %1, %bb.aw ], [ %1, %bb.at ] ; 10 uses
  %i.jp = phi i64 [ %1, %bb.ar ], [ %1, %bb.au ], [ %i.jn, %bb.ax ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i ], [ %1, %bb.aw ], [ %1, %bb.at ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i10 = icmp eq i64 %indvars.iv.next.i, 18
  br i1 %exitcond.not.i10, label %.loopexit.i, label %.peel.next60, !llvm.loop !15

.loopexit.i:                                      ; preds = %generateWord.exit.i
  %i.jq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_words, i64 144), align 16, !tbaa !20 ; 2 uses
  %i.jr = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_wordLen, i64 72), align 8, !tbaa !21
  %i.js = zext i32 %i.jr to i64                   ; 4 uses
  %i.jt = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.js, i64 14)
  %i.ju = add i64 %i.jo, 2
  %i.jv = add i64 %i.ju, %i.jt
  %i.jw = icmp ugt i64 %i.jv, %1
  br i1 %i.jw, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %.loopexit.i
  %i.jx = add i64 %i.jo, %i.js                    ; 5 uses
  %i.jy = add i64 %i.jx, 2
  %i.jz = icmp ugt i64 %i.jy, %1
  br i1 %i.jz, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ka = sub i64 %1, %i.jo                       ; 3 uses
  %i.kb = icmp eq i64 %1, %i.jo
  br i1 %i.kb, label %generateFirstSentence.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 %i.jo
  store i8 46, ptr %i.kc, align 1, !tbaa !25
  %i.kd = icmp ugt i64 %i.ka, 2
  br i1 %i.kd, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i16.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ke = icmp eq i64 %i.ka, 2
  br i1 %i.ke, label %writeLastCharacters.exit.sink.split.sink.split.i.i14.i, label %generateFirstSentence.exit

bb.bc:                                            ; preds = %bb.ay
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kf, ptr readonly align 1 %i.jq, i64 range(i64 0, 4294967296) %i.js, i1 false)
  %i.kg = sub i64 %1, %i.jx                       ; 3 uses
  %i.kh = icmp eq i64 %1, %i.jx
  br i1 %i.kh, label %generateFirstSentence.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 %i.jx
  store i8 46, ptr %i.ki, align 1, !tbaa !25
  %i.kj = icmp ugt i64 %i.kg, 2
  br i1 %i.kj, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i16.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kk = icmp eq i64 %i.kg, 2
  br i1 %i.kk, label %writeLastCharacters.exit.sink.split.sink.split.i.i14.i, label %generateFirstSentence.exit

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i16.i: ; preds = %bb.bd, %bb.ba
  %i.kl = phi i64 [ %i.jo, %bb.ba ], [ %i.jx, %bb.bd ]
  %.sink14.i.i18.i = phi i64 [ %i.ka, %bb.ba ], [ %i.kg, %bb.bd ]
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.km, i64 1
  %i.ko = add i64 %.sink14.i.i18.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.kn, i8 32, i64 %i.ko, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i14.i

writeLastCharacters.exit.sink.split.sink.split.i.i14.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i16.i, %bb.be, %bb.bb
  store i8 10, ptr %i.ds, align 1, !tbaa !25
  br label %generateFirstSentence.exit

bb.bf:                                            ; preds = %.loopexit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kp, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.jq, i64 16, i1 false)
  %i.kq = add i64 %i.jo, %i.js                    ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 %i.kq
  store i16 8238, ptr %i.kr, align 1
  %i.ks = add i64 %i.kq, 2
  br label %generateFirstSentence.exit

generateFirstSentence.exit:                       ; preds = %bb.bb, %bb.be, %writeLastCharacters.exit.sink.split.sink.split.i.i14.i, %bb.bf, %bb.bc, %bb.az, %init_word_distrib.exit
  %g_nbChars.promoted = phi i64 [ 0, %init_word_distrib.exit ], [ %1, %bb.bc ], [ %g_nbChars.promoted73, %bb.az ], [ %i.ks, %bb.bf ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i14.i ], [ %1, %bb.be ], [ %1, %bb.bb ] ; 2 uses
  %5 = zext i32 %i.cp to i64                      ; 3 uses
  %i.kt = getelementptr i8, ptr %0, i64 %1
  %i.ku = getelementptr i8, ptr %i.kt, i64 -1     ; 3 uses
  %.not6 = icmp eq i32 %4, 0
  br label %bb.bg

bb.bg:                                            ; preds = %generateParagraph.exit, %generateFirstSentence.exit
  %i.kv = phi i64 [ %i.sw, %generateParagraph.exit ], [ %g_nbChars.promoted, %generateFirstSentence.exit ] ; 2 uses
  %.lcssa.i.i.lcssa26 = phi i32 [ %.lcssa.i.i, %generateParagraph.exit ], [ %2, %generateFirstSentence.exit ]
  %i.kw = phi i64 [ %i.sx, %generateParagraph.exit ], [ %g_nbChars.promoted, %generateFirstSentence.exit ] ; 4 uses
  %i.kx = icmp ult i64 %i.kw, %1
  br i1 %i.kx, label %bb.bh, label %bb.ck

bb.bh:                                            ; preds = %bb.bg
  %i.ky = mul i32 %.lcssa.i.i.lcssa26, -1640531535
  %i.kz = xor i32 %i.ky, -2048144777              ; 2 uses
  %i.la = tail call i32 @llvm.fshl.i32(i32 %i.kz, i32 %i.kz, i32 13) ; 2 uses
  %6 = zext i32 %i.la to i64
  %7 = mul nuw nsw i64 %6, 7
  %8 = lshr i64 %7, 32
  %9 = trunc nuw nsw i64 %8 to i32
  %i.lb = mul i32 %i.la, -1640531535
  %i.lc = xor i32 %i.lb, -2048144777              ; 2 uses
  %i.ld = tail call i32 @llvm.fshl.i32(i32 %i.lc, i32 %i.lc, i32 13) ; 2 uses
  %10 = zext i32 %i.ld to i64
  %11 = mul nuw nsw i64 %10, 7
  %12 = lshr i64 %11, 32
  %13 = trunc nuw nsw i64 %12 to i32
  %i.le = add nuw nsw i32 %9, 1
  %i.lf = add nuw nsw i32 %i.le, %13
  br label %bb.bi

bb.bi:                                            ; preds = %generateSentence.exit.i, %bb.bh
  %i.lg = phi i64 [ %i.kv, %bb.bh ], [ %i.si, %generateSentence.exit.i ]
  %i.lh = phi i64 [ %i.kw, %bb.bh ], [ %i.sj, %generateSentence.exit.i ]
  %i.li = phi i64 [ %i.kw, %bb.bh ], [ %i.sk, %generateSentence.exit.i ]
  %.09.i = phi i32 [ 0, %bb.bh ], [ %i.sm, %generateSentence.exit.i ]
  %.lcssa.i68.i = phi i32 [ %i.ld, %bb.bh ], [ %.lcssa.i.i, %generateSentence.exit.i ]
  %i.lj = phi i64 [ %i.kw, %bb.bh ], [ %i.sl, %generateSentence.exit.i ] ; 9 uses
  %i.lk = mul i32 %.lcssa.i68.i, -1640531535
  %i.ll = xor i32 %i.lk, -2048144777              ; 2 uses
  %i.lm = tail call i32 @llvm.fshl.i32(i32 %i.ll, i32 %i.ll, i32 13) ; 2 uses
  %14 = zext i32 %i.lm to i64
  %15 = mul nuw nsw i64 %14, 11
  %16 = lshr i64 %15, 32
  %17 = trunc nuw nsw i64 %16 to i32              ; 2 uses
  %i.ln = mul i32 %i.lm, -1640531535
  %i.lo = xor i32 %i.ln, -2048144777              ; 2 uses
  %i.lp = tail call i32 @llvm.fshl.i32(i32 %i.lo, i32 %i.lo, i32 13) ; 2 uses
  %18 = zext i32 %i.lp to i64
  %19 = mul nuw nsw i64 %18, 11
  %20 = lshr i64 %19, 32
  %21 = trunc nuw nsw i64 %20 to i32              ; 2 uses
  %i.lq = add nuw nsw i32 %21, %17                ; 4 uses
  %i.lr = mul i32 %i.lp, -1640531535
  %i.ls = xor i32 %i.lr, -2048144777              ; 2 uses
  %i.lt = tail call i32 @llvm.fshl.i32(i32 %i.ls, i32 %i.ls, i32 13) ; 2 uses
  %22 = zext i32 %i.lt to i64
  %23 = mul nuw nsw i64 %22, 9
  %24 = lshr i64 %23, 32
  %25 = trunc nuw nsw i64 %24 to i32
  %i.lu = mul i32 %i.lt, -1640531535
  %i.lv = xor i32 %i.lu, -2048144777              ; 2 uses
  %i.lw = tail call i32 @llvm.fshl.i32(i32 %i.lv, i32 %i.lv, i32 13) ; 2 uses
  %26 = zext i32 %i.lw to i64
  %27 = mul nuw nsw i64 %26, 9
  %28 = lshr i64 %27, 32
  %29 = trunc nuw nsw i64 %28 to i32
  %i.lx = add nuw nsw i32 %25, 1
  %i.ly = add nuw nsw i32 %i.lx, %29              ; 3 uses
  %i.lz = mul i32 %i.lw, -1640531535
  %i.ma = xor i32 %i.lz, -2048144777              ; 2 uses
  %i.mb = tail call i32 @llvm.fshl.i32(i32 %i.ma, i32 %i.ma, i32 13) ; 2 uses
  %30 = zext i32 %i.mb to i64
  %31 = mul nuw nsw i64 %30, 7
  %32 = lshr i64 %31, 32
  %33 = trunc nuw nsw i64 %32 to i32
  %i.mc = mul i32 %i.mb, -1640531535
  %i.md = xor i32 %i.mc, -2048144777              ; 2 uses
  %i.me = tail call i32 @llvm.fshl.i32(i32 %i.md, i32 %i.md, i32 13) ; 2 uses
  %34 = zext i32 %i.me to i64
  %35 = mul nuw nsw i64 %34, 7
  %36 = lshr i64 %35, 32
  %37 = trunc nuw nsw i64 %36 to i32
  %i.mf = add nuw nsw i32 %i.ly, 1
  %i.mg = add nuw nsw i32 %i.mf, %33
  %i.mh = add nuw nsw i32 %i.mg, %37              ; 2 uses
  %i.mi = mul i32 %i.me, -1640531535
  %i.mj = xor i32 %i.mi, -2048144777              ; 2 uses
  %i.mk = tail call i32 @llvm.fshl.i32(i32 %i.mj, i32 %i.mj, i32 13) ; 2 uses
  %38 = zext i32 %i.mk to i64
  %39 = mul nuw nsw i64 %38, 11
  %.mask.i.i = and i64 %39, 64424509440
  %i.ml = icmp eq i64 %.mask.i.i, 30064771072
  %.val.i.i = select i1 %i.ml, i16 8255, i16 8238 ; 2 uses
  %i.mm = mul i32 %i.mk, -1640531535
  %i.mn = xor i32 %i.mm, -2048144777              ; 2 uses
  %i.mo = tail call i32 @llvm.fshl.i32(i32 %i.mn, i32 %i.mn, i32 13) ; 4 uses
  %40 = zext i32 %i.mo to i64
  %41 = mul nuw i64 %40, %5
  %42 = lshr i64 %41, 32
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %42
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !21
  %i.mr = sext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds [8 x i8], ptr @g_words, i64 %i.mr
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !20 ; 2 uses
  %i.mu = getelementptr inbounds [4 x i8], ptr @g_wordLen, i64 %i.mr
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !21
  %i.mw = zext i32 %i.mv to i64                   ; 4 uses
  %i.mx = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.mw, i64 14)
  %i.my = add i64 %i.lj, 2
  %i.mz = add i64 %i.my, %i.mx
  %i.na = icmp ugt i64 %i.mz, %1
  br i1 %i.na, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nb = icmp eq i32 %i.lq, 0                    ; 2 uses
  %.2.peel.i.i = select i1 %i.nb, i64 2, i64 1
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 %i.lj ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.nc, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.mt, i64 16, i1 false)
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !25
  %i.ne = add i8 %i.nd, -32
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !25
  %i.nf = add i64 %i.lj, %i.mw                    ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 %i.nf
  %i.nh = select i1 %i.nb, i16 %.val.i.i, i16 32
  store i16 %i.nh, ptr %i.ng, align 1
  %i.ni = add i64 %.2.peel.i.i, %i.nf             ; 4 uses
  br label %generateWord.exit.peel.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.nj = add i64 %i.lj, %i.mw                    ; 5 uses
  %i.nk = add i64 %i.nj, 2
  %i.nl = icmp ugt i64 %i.nk, %1
  br i1 %i.nl, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 %i.lj ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nm, ptr readonly align 1 %i.mt, i64 range(i64 0, 4294967296) %i.mw, i1 false)
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !25
  %i.no = add i8 %i.nn, -32
  store i8 %i.no, ptr %i.nm, align 1, !tbaa !25
  %i.np = sub i64 %1, %i.nj                       ; 3 uses
  %i.nq = icmp eq i64 %1, %i.nj
  br i1 %i.nq, label %generateWord.exit.peel.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 %i.nj
  store i8 46, ptr %i.nr, align 1, !tbaa !25
  %i.ns = icmp ugt i64 %i.np, 2
  br i1 %i.ns, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nt = icmp eq i64 %i.np, 2
  br i1 %i.nt, label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i, label %generateWord.exit.peel.i.i

bb.bo:                                            ; preds = %bb.bk
  %i.nu = sub i64 %1, %i.lj                       ; 3 uses
  %i.nv = icmp eq i64 %1, %i.lj
  br i1 %i.nv, label %generateWord.exit.peel.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 %i.lj
  store i8 46, ptr %i.nw, align 1, !tbaa !25
  %i.nx = icmp ugt i64 %i.nu, 2
  br i1 %i.nx, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ny = icmp eq i64 %i.nu, 2
  br i1 %i.ny, label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i, label %generateWord.exit.peel.i.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i.i: ; preds = %bb.bp, %bb.bm
  %i.nz = phi i64 [ %i.lj, %bb.bp ], [ %i.nj, %bb.bm ]
  %.sink14.i.i.peel.i.i = phi i64 [ %i.nu, %bb.bp ], [ %i.np, %bb.bm ]
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.oa, i64 1
  %i.oc = add i64 %.sink14.i.i.peel.i.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ob, i8 32, i64 %i.oc, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i

writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i.i, %bb.bq, %bb.bn
  store i8 10, ptr %i.ku, align 1, !tbaa !25
  br label %generateWord.exit.peel.i.i

generateWord.exit.peel.i.i:                       ; preds = %bb.bj, %bb.bn, %bb.bq, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i, %bb.bo, %bb.bl
  %i.od = phi i64 [ %i.lg, %bb.bo ], [ %1, %bb.bl ], [ %i.ni, %bb.bj ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i ], [ %1, %bb.bn ], [ %1, %bb.bq ] ; 3 uses
  %i.oe = phi i64 [ %i.lh, %bb.bo ], [ %1, %bb.bl ], [ %i.ni, %bb.bj ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i ], [ %1, %bb.bn ], [ %1, %bb.bq ] ; 3 uses
  %i.of = phi i64 [ %i.li, %bb.bo ], [ %1, %bb.bl ], [ %i.ni, %bb.bj ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i ], [ %1, %bb.bn ], [ %1, %bb.bq ] ; 3 uses
  %i.og = phi i64 [ %1, %bb.bo ], [ %1, %bb.bl ], [ %i.ni, %bb.bj ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i ], [ %1, %bb.bn ], [ %1, %bb.bq ] ; 5 uses
  %exitcond.peel.not.i.i = icmp eq i32 %i.lq, 0
  br i1 %exitcond.peel.not.i.i, label %generateSentence.exit.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %generateWord.exit.peel.i.i
  %i.oh = add nsw i32 %21, -1
  %i.oi = sub nsw i32 0, %17
  %.not.i13 = icmp eq i32 %i.oh, %i.oi
  br i1 %.not.i13, label %generateSentence.exit.loopexit.peel.begin.i, label %.peel.next.i.preheader.split.i

.peel.next.i.preheader.split.i:                   ; preds = %.peel.next.i.preheader.i
  %i.oj = add nsw i32 %i.lq, -1
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %generateWord.exit.i.i, %.peel.next.i.preheader.split.i
  %i.ok = phi i64 [ %i.qe, %generateWord.exit.i.i ], [ %i.od, %.peel.next.i.preheader.split.i ]
  %i.ol = phi i64 [ %i.qf, %generateWord.exit.i.i ], [ %i.oe, %.peel.next.i.preheader.split.i ]
  %i.om = phi i64 [ %i.qg, %generateWord.exit.i.i ], [ %i.of, %.peel.next.i.preheader.split.i ]
  %i.on = phi i64 [ %i.qh, %generateWord.exit.i.i ], [ %i.og, %.peel.next.i.preheader.split.i ]
  %.01922.i.i = phi i32 [ %i.qj, %generateWord.exit.i.i ], [ 1, %.peel.next.i.preheader.split.i ] ; 4 uses
  %i.oo = phi i32 [ %i.os, %generateWord.exit.i.i ], [ %i.mo, %.peel.next.i.preheader.split.i ]
  %i.op = phi i64 [ %i.qi, %generateWord.exit.i.i ], [ %i.og, %.peel.next.i.preheader.split.i ] ; 9 uses
  %i.oq = mul i32 %i.oo, -1640531535
  %i.or = xor i32 %i.oq, -2048144777              ; 2 uses
  %i.os = tail call i32 @llvm.fshl.i32(i32 %i.or, i32 %i.or, i32 13) ; 3 uses
  %43 = zext i32 %i.os to i64
  %44 = mul nuw i64 %43, %5
  %45 = lshr i64 %44, 32
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %45
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !21
  %i.ov = sext i32 %i.ou to i64                   ; 2 uses
  %i.ow = getelementptr inbounds [8 x i8], ptr @g_words, i64 %i.ov
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !20 ; 2 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr @g_wordLen, i64 %i.ov
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !21
  %i.pa = zext i32 %i.oz to i64                   ; 4 uses
  %i.pb = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.pa, i64 14)
  %i.pc = add i64 %i.op, 2
  %i.pd = add i64 %i.pc, %i.pb
  %i.pe = icmp ugt i64 %i.pd, %1
  br i1 %i.pe, label %bb.br, label %bb.by

bb.br:                                            ; preds = %.peel.next.i.i
  %i.pf = add i64 %i.op, %i.pa                    ; 5 uses
  %i.pg = add i64 %i.pf, 2
  %i.ph = icmp ugt i64 %i.pg, %1
  br i1 %i.ph, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.pi = sub i64 %1, %i.op                       ; 3 uses
  %i.pj = icmp eq i64 %1, %i.op
  br i1 %i.pj, label %generateWord.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 %i.op
  store i8 46, ptr %i.pk, align 1, !tbaa !25
  %i.pl = icmp ugt i64 %i.pi, 2
  br i1 %i.pl, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pm = icmp eq i64 %i.pi, 2
  br i1 %i.pm, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, label %generateWord.exit.i.i

bb.bv:                                            ; preds = %bb.br
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 %i.op
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pn, ptr readonly align 1 %i.ox, i64 range(i64 0, 4294967296) %i.pa, i1 false)
  %i.po = sub i64 %1, %i.pf                       ; 3 uses
  %i.pp = icmp eq i64 %1, %i.pf
  br i1 %i.pp, label %generateWord.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 %i.pf
  store i8 46, ptr %i.pq, align 1, !tbaa !25
  %i.pr = icmp ugt i64 %i.po, 2
  br i1 %i.pr, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ps = icmp eq i64 %i.po, 2
  br i1 %i.ps, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, label %generateWord.exit.i.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i: ; preds = %bb.bw, %bb.bt
  %i.pt = phi i64 [ %i.op, %bb.bt ], [ %i.pf, %bb.bw ]
  %.sink14.i.i.i.i = phi i64 [ %i.pi, %bb.bt ], [ %i.po, %bb.bw ]
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 1
  %i.pw = add i64 %.sink14.i.i.i.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.pv, i8 32, i64 %i.pw, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i

writeLastCharacters.exit.sink.split.sink.split.i.i.i.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, %bb.bx, %bb.bu
  store i8 10, ptr %i.ku, align 1, !tbaa !25
  br label %generateWord.exit.i.i

bb.by:                                            ; preds = %.peel.next.i.i
  %i.px = icmp eq i32 %.01922.i.i, %i.mh
  %i.py = icmp eq i32 %.01922.i.i, %i.ly
  %i.pz = or i1 %i.px, %i.py                      ; 2 uses
  %.2.i.i = select i1 %i.pz, i64 2, i64 1
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 %i.op
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.qa, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ox, i64 16, i1 false)
  %i.qb = add i64 %i.op, %i.pa                    ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 %i.qb
  %.117.val.i.i = select i1 %i.pz, i16 8236, i16 32
  store i16 %.117.val.i.i, ptr %i.qc, align 1
  %i.qd = add i64 %i.qb, %.2.i.i                  ; 5 uses
  br label %generateWord.exit.i.i

generateWord.exit.i.i:                            ; preds = %bb.bu, %bb.bx, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, %bb.by, %bb.bv, %bb.bs
  %i.qe = phi i64 [ %i.ok, %bb.bs ], [ %1, %bb.bv ], [ %i.qd, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.qf = phi i64 [ %i.ol, %bb.bs ], [ %1, %bb.bv ], [ %i.qd, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.qg = phi i64 [ %i.om, %bb.bs ], [ %1, %bb.bv ], [ %i.qd, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.qh = phi i64 [ %i.on, %bb.bs ], [ %1, %bb.bv ], [ %i.qd, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.qi = phi i64 [ %1, %bb.bs ], [ %1, %bb.bv ], [ %i.qd, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.qj = add nuw nsw i32 %.01922.i.i, 1          ; 2 uses
  %exitcond.not.i.i14 = icmp eq i32 %.01922.i.i, %i.oj
  br i1 %exitcond.not.i.i14, label %generateSentence.exit.loopexit.peel.begin.i, label %.peel.next.i.i, !llvm.loop !16

generateSentence.exit.loopexit.peel.begin.i:      ; preds = %generateWord.exit.i.i, %.peel.next.i.preheader.i
  %i.qk = phi i64 [ %i.od, %.peel.next.i.preheader.i ], [ %i.qe, %generateWord.exit.i.i ]
  %i.ql = phi i64 [ %i.oe, %.peel.next.i.preheader.i ], [ %i.qf, %generateWord.exit.i.i ]
  %i.qm = phi i64 [ %i.of, %.peel.next.i.preheader.i ], [ %i.qg, %generateWord.exit.i.i ]
  %i.qn = phi i64 [ %i.og, %.peel.next.i.preheader.i ], [ %i.qh, %generateWord.exit.i.i ]
  %i.qo = phi i32 [ 1, %.peel.next.i.preheader.i ], [ %i.qj, %generateWord.exit.i.i ] ; 3 uses
  %i.qp = phi i32 [ %i.mo, %.peel.next.i.preheader.i ], [ %i.os, %generateWord.exit.i.i ]
  %i.qq = phi i64 [ %i.og, %.peel.next.i.preheader.i ], [ %i.qi, %generateWord.exit.i.i ] ; 9 uses
  %i.qr = mul i32 %i.qp, -1640531535
  %i.qs = xor i32 %i.qr, -2048144777              ; 2 uses
  %i.qt = tail call i32 @llvm.fshl.i32(i32 %i.qs, i32 %i.qs, i32 13) ; 7 uses
  %46 = zext i32 %i.qt to i64
  %47 = mul nuw i64 %46, %5
  %48 = lshr i64 %47, 32
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %48
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !21
  %i.qw = sext i32 %i.qv to i64                   ; 2 uses
  %i.qx = getelementptr inbounds [8 x i8], ptr @g_words, i64 %i.qw
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !20 ; 2 uses
  %i.qz = getelementptr inbounds [4 x i8], ptr @g_wordLen, i64 %i.qw
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !21
  %i.rb = zext i32 %i.ra to i64                   ; 4 uses
  %i.rc = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.rb, i64 14)
  %i.rd = add i64 %i.qq, 2
  %i.re = add i64 %i.rd, %i.rc
  %i.rf = icmp ugt i64 %i.re, %1
  br i1 %i.rf, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %generateSentence.exit.loopexit.peel.begin.i
  %i.rg = icmp eq i32 %i.qo, %i.lq                ; 2 uses
  %i.rh = icmp eq i32 %i.qo, %i.mh
  %i.ri = icmp eq i32 %i.qo, %i.ly
  %i.rj = or i1 %i.rh, %i.ri                      ; 2 uses
  %i.rk = select i1 %i.rg, i1 true, i1 %i.rj
  %.2.i.peel.i = select i1 %i.rk, i64 2, i64 1
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 %i.qq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.rl, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.qy, i64 16, i1 false)
  %i.rm = add i64 %i.qq, %i.rb                    ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 %i.rm
  %.117.val.i.peel.i = select i1 %i.rj, i16 8236, i16 32
  %i.ro = select i1 %i.rg, i16 %.val.i.i, i16 %.117.val.i.peel.i
  store i16 %i.ro, ptr %i.rn, align 1
  %i.rp = add i64 %i.rm, %.2.i.peel.i             ; 4 uses
  br label %generateSentence.exit.i

bb.ca:                                            ; preds = %generateSentence.exit.loopexit.peel.begin.i
  %i.rq = add i64 %i.qq, %i.rb                    ; 5 uses
  %i.rr = add i64 %i.rq, 2
  %i.rs = icmp ugt i64 %i.rr, %1
  br i1 %i.rs, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 %i.qq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rt, ptr readonly align 1 %i.qy, i64 range(i64 0, 4294967296) %i.rb, i1 false)
  %i.ru = sub i64 %1, %i.rq                       ; 3 uses
  %i.rv = icmp eq i64 %1, %i.rq
  br i1 %i.rv, label %generateSentence.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 %i.rq
  store i8 46, ptr %i.rw, align 1, !tbaa !25
  %i.rx = icmp ugt i64 %i.ru, 2
  br i1 %i.rx, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ry = icmp eq i64 %i.ru, 2
  br i1 %i.ry, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i, label %generateSentence.exit.i

bb.ce:                                            ; preds = %bb.ca
  %i.rz = sub i64 %1, %i.qq                       ; 3 uses
  %i.sa = icmp eq i64 %1, %i.qq
  br i1 %i.sa, label %generateSentence.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 %i.qq
  store i8 46, ptr %i.sb, align 1, !tbaa !25
  %i.sc = icmp ugt i64 %i.rz, 2
  br i1 %i.sc, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sd = icmp eq i64 %i.rz, 2
  br i1 %i.sd, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i, label %generateSentence.exit.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i: ; preds = %bb.cf, %bb.cc
  %i.se = phi i64 [ %i.qq, %bb.cf ], [ %i.rq, %bb.cc ]
  %.sink14.i.i.i.peel.i = phi i64 [ %i.rz, %bb.cf ], [ %i.ru, %bb.cc ]
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 %i.se
  %i.sg = getelementptr i8, ptr %i.sf, i64 1
  %i.sh = add i64 %.sink14.i.i.i.peel.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.sg, i8 32, i64 %i.sh, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i

writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i, %bb.cg, %bb.cd
  store i8 10, ptr %i.ku, align 1, !tbaa !25
  br label %generateSentence.exit.i

generateSentence.exit.i:                          ; preds = %bb.bz, %bb.cd, %bb.cg, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i, %bb.ce, %bb.cb, %generateWord.exit.peel.i.i
  %i.si = phi i64 [ %i.od, %generateWord.exit.peel.i.i ], [ %i.qk, %bb.ce ], [ %1, %bb.cb ], [ %i.rp, %bb.bz ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %1, %bb.cd ], [ %1, %bb.cg ] ; 2 uses
  %i.sj = phi i64 [ %i.oe, %generateWord.exit.peel.i.i ], [ %i.ql, %bb.ce ], [ %1, %bb.cb ], [ %i.rp, %bb.bz ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %1, %bb.cd ], [ %1, %bb.cg ] ; 2 uses
  %i.sk = phi i64 [ %i.of, %generateWord.exit.peel.i.i ], [ %i.qm, %bb.ce ], [ %1, %bb.cb ], [ %i.rp, %bb.bz ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %1, %bb.cd ], [ %1, %bb.cg ] ; 5 uses
  %i.sl = phi i64 [ %i.og, %generateWord.exit.peel.i.i ], [ %i.qn, %bb.ce ], [ %1, %bb.cb ], [ %i.rp, %bb.bz ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %1, %bb.cd ], [ %1, %bb.cg ]
  %.lcssa.i.i = phi i32 [ %i.mo, %generateWord.exit.peel.i.i ], [ %i.qt, %bb.ce ], [ %i.qt, %bb.cb ], [ %i.qt, %bb.bz ], [ %i.qt, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %i.qt, %bb.cd ], [ %i.qt, %bb.cg ] ; 2 uses
  %i.sm = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %exitcond.not.i15 = icmp eq i32 %i.sm, %i.lf
  br i1 %exitcond.not.i15, label %._crit_edge.i16, label %bb.bi, !llvm.loop !17

._crit_edge.i16:                                  ; preds = %generateSentence.exit.i
  %i.sn = icmp ult i64 %i.sk, %1
  br i1 %i.sn, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge.i16
  %i.so = add nuw i64 %i.sk, 1                    ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 %i.sk
  store i8 10, ptr %i.sp, align 1, !tbaa !25
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge.i16
  %i.sq = phi i64 [ %i.so, %bb.ch ], [ %i.si, %._crit_edge.i16 ]
  %i.sr = phi i64 [ %i.so, %bb.ch ], [ %i.sj, %._crit_edge.i16 ]
  %i.ss = phi i64 [ %i.so, %bb.ch ], [ %i.sk, %._crit_edge.i16 ] ; 3 uses
  %i.st = icmp ult i64 %i.ss, %1
  br i1 %i.st, label %bb.cj, label %generateParagraph.exit

bb.cj:                                            ; preds = %bb.ci
  %i.su = add nuw i64 %i.ss, 1                    ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ss
  store i8 10, ptr %i.sv, align 1, !tbaa !25
  br label %generateParagraph.exit

generateParagraph.exit:                           ; preds = %bb.ci, %bb.cj
  %i.sw = phi i64 [ %i.sq, %bb.ci ], [ %i.su, %bb.cj ] ; 2 uses
  %i.sx = phi i64 [ %i.sr, %bb.ci ], [ %i.su, %bb.cj ]
  br i1 %.not6, label %bb.ck, label %bb.bg

bb.ck:                                            ; preds = %generateParagraph.exit, %bb.bg
  %i.sy = phi i64 [ %i.sw, %generateParagraph.exit ], [ %i.kv, %bb.bg ]
  ret i64 %i.sy
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @LOREM_genBuffer(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @LOREM_genBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !22}
!10 = distinct !{!10, !22, !23, !24}
!11 = distinct !{!11, !22}
!12 = distinct !{!12, !22, !23, !24}
!13 = distinct !{!13, !22, !24, !23}
!14 = distinct !{!14, !22}
!15 = distinct !{!15, !22, !26}
!16 = distinct !{!16, !22, !27}
!17 = distinct !{!17, !22}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!5, !5, i64 0}
!26 = !{!"llvm.loop.peeled.count", i32 5}
!27 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_1
