Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lorem?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.225 = private unnamed_addr constant [9 x i8] c"officiis\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"debitis\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"saepe\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"eveniet\00", align 1
@.str.229 = private unnamed_addr constant [11 x i8] c"voluptates\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"repudiandae\00", align 1
@.str.231 = private unnamed_addr constant [11 x i8] c"recusandae\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"itaque\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"earum\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"hic\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"tenetur\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"sapiente\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"delectus\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"reiciendis\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"cillum\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"maiores\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"perferendis\00", align 1
@.str.243 = private unnamed_addr constant [10 x i8] c"doloribus\00", align 1
@.str.244 = private unnamed_addr constant [11 x i8] c"asperiores\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"repellat\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"minim\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"nostrud\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"exercitation\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"ullamco\00", align 1
@.str.250 = private unnamed_addr constant [8 x i8] c"laboris\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"aliquip\00", align 1
@.str.252 = private unnamed_addr constant [5 x i8] c"duis\00", align 1
@.str.253 = private unnamed_addr constant [5 x i8] c"aute\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"irure\00", align 1
@g_wordBuffer = internal unnamed_addr global ptr null, align 8
@g_words = internal unnamed_addr global [255 x ptr] zeroinitializer, align 16
@g_distrib = internal unnamed_addr global [650 x i32] zeroinitializer, align 16

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @LOREM_genBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
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
  %i.ci = getelementptr [4 x i8], ptr @g_distrib, i64 %.0194.i
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph168
  %index170 = phi i64 [ 0, %vector.ph168 ], [ %index.next171, %vector.body169 ] ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %index170 ; 2 uses
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
  %i.cm = add nsw i64 %.11.i, 1                   ; 3 uses
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
end_hunk_0
