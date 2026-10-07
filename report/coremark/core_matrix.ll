Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coremark/original/core_matrix?download=true
inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @core_bench_matrix(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = tail call signext i16 @matrix_test(i32 noundef %i.a, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.g, i16 noundef signext %1)
  %i.i = tail call zeroext i16 @crc16(i16 noundef signext %i.h, i16 noundef zeroext %2) #7
  ret i16 %i.i
}

declare zeroext i16 @crc16(i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local signext i16 @matrix_test(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i16 noundef signext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = or i16 %4, -4096
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %matrix_mul_vect.exit.thread, label %.preheader.preheader.i

matrix_mul_vect.exit.thread:                      ; preds = %bb.a
  %i.b = tail call zeroext i16 @crc16(i16 noundef signext 0, i16 noundef zeroext 0) #7
  %i.c = tail call zeroext i16 @crc16(i16 noundef signext 0, i16 noundef zeroext %i.b) #7
  %i.d = tail call zeroext i16 @crc16(i16 noundef signext 0, i16 noundef zeroext %i.c) #7
  %i.e = tail call zeroext i16 @crc16(i16 noundef signext 0, i16 noundef zeroext %i.d) #7
  br label %matrix_add_const.exit138

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext i32 %0 to i64         ; 39 uses
  %i.f = add nsw i64 %wide.trip.count.i, -1       ; 8 uses
  %min.iters.check = icmp ult i32 %0, 4
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ugt i64 %i.f, 4294967295
  %min.iters.check176 = icmp ult i32 %0, 16
  %i.i = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  %n.vec178 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert179 = insertelement <4 x i16> poison, i16 %4, i64 0
  %broadcast.splat180 = shufflevector <4 x i16> %broadcast.splatinsert179, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n184 = icmp eq i64 %n.vec178, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.loopexit251, %.preheader.preheader.i
  %.01013.i = phi i32 [ %i.be, %.loopexit251 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.j = mul i32 %.01013.i, %0                    ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.k = xor i32 %i.j, -1
  %i.l = icmp ult i32 %i.k, %i.g
  %i.m = or i1 %i.l, %i.h
  br i1 %i.m, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check176, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.n = trunc nuw i64 %index to i32
  %i.o = add i32 %i.j, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.q, align 2, !tbaa !29
  %wide.load177 = load <8 x i16>, ptr %i.r, align 2, !tbaa !29
  %i.s = add <8 x i16> %wide.load, %broadcast.splat
  %i.t = add <8 x i16> %wide.load177, %broadcast.splat
  store <8 x i16> %i.s, ptr %i.q, align 2, !tbaa !29
  store <8 x i16> %i.t, ptr %i.r, align 2, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit251, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index181 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next183, %vec.epilog.vector.body ] ; 2 uses
  %i.v = trunc nuw i64 %index181 to i32
  %i.w = add i32 %i.j, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x ; 2 uses
  %wide.load182 = load <4 x i16>, ptr %i.y, align 2, !tbaa !29
  %i.z = add <4 x i16> %wide.load182, %broadcast.splat180
  store <4 x i16> %i.z, ptr %i.y, align 2, !tbaa !29
  %index.next183 = add nuw i64 %index181, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next183, %n.vec178
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n184, label %.loopexit251, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec178, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ab = trunc nuw i64 %indvars.iv.i.prol to i32
  %i.ac = add i32 %i.j, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29
  %i.ag = add i16 %i.af, %4
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !29
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !38

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.loopexit251, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.j
  %invariant.op340 = add i32 2, %i.j
  %invariant.op342 = add i32 3, %i.j
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.aj = trunc nuw i64 %indvars.iv.i to i32
  %i.ak = add i32 %i.j, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !29
  %i.ao = add i16 %i.an, %4
  store i16 %i.ao, ptr %i.am, align 2, !tbaa !29
  %i.ap = trunc i64 %indvars.iv.i to i32
  %.reass = add i32 %i.ap, %invariant.op
  %i.aq = zext i32 %.reass to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !29
  %i.at = add i16 %i.as, %4
  store i16 %i.at, ptr %i.ar, align 2, !tbaa !29
  %i.au = trunc i64 %indvars.iv.i to i32
  %.reass341 = add i32 %i.au, %invariant.op340
  %i.av = zext i32 %.reass341 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.av ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !29
  %i.ay = add i16 %i.ax, %4
  store i16 %i.ay, ptr %i.aw, align 2, !tbaa !29
  %i.az = trunc i64 %indvars.iv.i to i32
  %.reass343 = add i32 %i.az, %invariant.op342
  %i.ba = zext i32 %.reass343 to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29
  %i.bd = add i16 %i.bc, %4
  store i16 %i.bd, ptr %i.bb, align 2, !tbaa !29
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit251, label %vec.epilog.scalar.ph, !llvm.loop !39

.loopexit251:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.be = add nuw i32 %.01013.i, 1                ; 2 uses
  %exitcond15.not.i = icmp eq i32 %i.be, %0
  br i1 %exitcond15.not.i, label %.preheader.lr.ph.i, label %iter.check, !llvm.loop !0

.preheader.lr.ph.i:                               ; preds = %.loopexit251
  %i.bf = sext i16 %4 to i32                      ; 6 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check186 = icmp ult i32 %0, 8
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = icmp ugt i64 %i.bg, 4294967295
  %n.vec188 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n197 = icmp eq i64 %n.vec188, %wide.trip.count.i
  %xtraiter260 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br label %.preheader.i41

.preheader.i41:                                   ; preds = %.loopexit250, %.preheader.lr.ph.i
  %.01417.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.dm, %.loopexit250 ] ; 2 uses
  %i.bj = mul i32 %.01417.i, %0                   ; 7 uses
  br i1 %min.iters.check186, label %scalar.ph.preheader, label %vector.scevcheck185

vector.scevcheck185:                              ; preds = %.preheader.i41
  %i.bk = xor i32 %i.bj, -1
  %i.bl = icmp ult i32 %i.bk, %i.bh
  %i.bm = or i1 %i.bl, %i.bi
  br i1 %i.bm, label %scalar.ph.preheader, label %vector.body191

vector.body191:                                   ; preds = %vector.scevcheck185, %vector.body191
  %index192 = phi i64 [ %index.next195, %vector.body191 ], [ 0, %vector.scevcheck185 ] ; 2 uses
  %i.bn = trunc nuw i64 %index192 to i32
  %i.bo = add i32 %i.bj, %i.bn
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %wide.load193 = load <4 x i16>, ptr %i.bq, align 2, !tbaa !29
  %wide.load194 = load <4 x i16>, ptr %i.br, align 2, !tbaa !29
  %i.bs = sext <4 x i16> %wide.load193 to <4 x i32>
  %i.bt = sext <4 x i16> %wide.load194 to <4 x i32>
  %i.bu = mul nsw <4 x i32> %broadcast.splat190, %i.bs
  %i.bv = mul nsw <4 x i32> %broadcast.splat190, %i.bt
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> %i.bu, ptr %i.bw, align 4, !tbaa !35
  store <4 x i32> %i.bv, ptr %i.bx, align 4, !tbaa !35
  %index.next195 = add nuw i64 %index192, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next195, %n.vec188
  br i1 %i.by, label %middle.block196, label %vector.body191, !llvm.loop !40

middle.block196:                                  ; preds = %vector.body191
  br i1 %cmp.n197, label %.loopexit250, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck185, %.preheader.i41, %middle.block196
  %indvars.iv.i42.ph = phi i64 [ 0, %vector.scevcheck185 ], [ 0, %.preheader.i41 ], [ %n.vec188, %middle.block196 ] ; 3 uses
  br i1 %lcmp.mod261.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i42.prol = phi i64 [ %indvars.iv.next.i43.prol, %scalar.ph.prol ], [ %indvars.iv.i42.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter262 = phi i64 [ %prol.iter262.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bz = trunc nuw i64 %indvars.iv.i42.prol to i32
  %i.ca = add i32 %i.bj, %i.bz
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !29
  %i.ce = sext i16 %i.cd to i32
  %i.cf = mul nsw i32 %i.ce, %i.bf
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !35
  %indvars.iv.next.i43.prol = add nuw nsw i64 %indvars.iv.i42.prol, 1 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !41

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i42.unr = phi i64 [ %indvars.iv.i42.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i43.prol, %scalar.ph.prol ]
  %i.ch = sub nsw i64 %indvars.iv.i42.ph, %wide.trip.count.i
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.loopexit250, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op344 = add i32 1, %i.bj
  %invariant.op346 = add i32 2, %i.bj
  %invariant.op348 = add i32 3, %i.bj
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i42 = phi i64 [ %indvars.iv.i42.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i43.3, %scalar.ph ] ; 5 uses
  %i.cj = trunc nuw i64 %indvars.iv.i42 to i32
  %i.ck = add i32 %i.bj, %i.cj
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !29
  %i.co = sext i16 %i.cn to i32
  %i.cp = mul nsw i32 %i.co, %i.bf
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cl
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !35
  %i.cr = trunc i64 %indvars.iv.i42 to i32
  %.reass345 = add i32 %i.cr, %invariant.op344
  %i.cs = zext i32 %.reass345 to i64              ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !29
  %i.cv = sext i16 %i.cu to i32
  %i.cw = mul nsw i32 %i.cv, %i.bf
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cs
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !35
  %i.cy = trunc i64 %indvars.iv.i42 to i32
  %.reass347 = add i32 %i.cy, %invariant.op346
  %i.cz = zext i32 %.reass347 to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !29
  %i.dc = sext i16 %i.db to i32
  %i.dd = mul nsw i32 %i.dc, %i.bf
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !35
  %i.df = trunc i64 %indvars.iv.i42 to i32
  %.reass349 = add i32 %i.df, %invariant.op348
  %i.dg = zext i32 %.reass349 to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !29
  %i.dj = sext i16 %i.di to i32
  %i.dk = mul nsw i32 %i.dj, %i.bf
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !35
  %indvars.iv.next.i43.3 = add nuw nsw i64 %indvars.iv.i42, 4 ; 2 uses
  %exitcond.not.i44.3 = icmp eq i64 %indvars.iv.next.i43.3, %wide.trip.count.i
  br i1 %exitcond.not.i44.3, label %.loopexit250, label %scalar.ph, !llvm.loop !42

.loopexit250:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block196
  %i.dm = add nuw i32 %.01417.i, 1                ; 2 uses
  %exitcond19.not.i = icmp eq i32 %i.dm, %0
  br i1 %exitcond19.not.i, label %.preheader.lr.ph.i46, label %.preheader.i41, !llvm.loop !1

.preheader.lr.ph.i46:                             ; preds = %.loopexit250
  %i.dn = sext i16 %i.a to i32                    ; 12 uses
  %i.do = icmp eq i64 %i.f, 0
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod264.not = trunc i32 %0 to i1
  %lcmp.mod268 = trunc i32 %0 to i1
  br label %.preheader.i48

.preheader.i48:                                   ; preds = %bb.b, %.preheader.lr.ph.i46
  %.01935.i = phi i32 [ 0, %.preheader.lr.ph.i46 ], [ %i.es, %bb.b ] ; 2 uses
  %.02034.i = phi i16 [ 0, %.preheader.lr.ph.i46 ], [ %.2.i.lcssa, %bb.b ] ; 2 uses
  %.02133.i = phi i32 [ 0, %.preheader.lr.ph.i46 ], [ %.lcssa259, %bb.b ] ; 2 uses
  %.02332.i = phi i32 [ 0, %.preheader.lr.ph.i46 ], [ %.225.i.lcssa, %bb.b ] ; 2 uses
  %i.dp = mul i32 %.01935.i, %0                   ; 3 uses
  br i1 %i.do, label %.epil.preheader, label %.preheader.i48.new

.preheader.i48.new:                               ; preds = %.preheader.i48, %.preheader.i48.new
  %indvars.iv.i49 = phi i64 [ %indvars.iv.next.i50.1, %.preheader.i48.new ], [ 0, %.preheader.i48 ] ; 3 uses
  %.130.i = phi i16 [ %.2.i.1, %.preheader.i48.new ], [ %.02034.i, %.preheader.i48 ]
  %.12229.i = phi i32 [ %i.ee, %.preheader.i48.new ], [ %.02133.i, %.preheader.i48 ]
  %.12428.i = phi i32 [ %.225.i.1, %.preheader.i48.new ], [ %.02332.i, %.preheader.i48 ]
  %niter = phi i64 [ %niter.next.1, %.preheader.i48.new ], [ 0, %.preheader.i48 ]
  %i.dq = trunc nuw i64 %indvars.iv.i49 to i32
  %i.dr = add i32 %i.dp, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !35 ; 3 uses
  %i.dv = add nsw i32 %i.du, %.12428.i            ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, %i.dn               ; 2 uses
  %i.dx = icmp sgt i32 %i.du, %.12229.i
  %i.dy = zext i1 %i.dx to i16
  %.225.i = select i1 %i.dw, i32 0, i32 %i.dv
  %.2.v.i = select i1 %i.dw, i16 10, i16 %i.dy
  %.2.i = add i16 %.2.v.i, %.130.i
  %i.dz = trunc i64 %indvars.iv.i49 to i32
  %i.ea = or disjoint i32 %i.dz, 1
  %i.eb = add i32 %i.dp, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !35 ; 5 uses
  %i.ef = add nsw i32 %i.ee, %.225.i              ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, %i.dn               ; 2 uses
  %i.eh = icmp sgt i32 %i.ee, %i.du
  %i.ei = zext i1 %i.eh to i16
  %.225.i.1 = select i1 %i.eg, i32 0, i32 %i.ef   ; 3 uses
  %.2.v.i.1 = select i1 %i.eg, i16 10, i16 %i.ei
  %.2.i.1 = add i16 %.2.v.i.1, %.2.i              ; 3 uses
  %indvars.iv.next.i50.1 = add nuw nsw i64 %indvars.iv.i49, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i48.new, !llvm.loop !2

.unr-lcssa:                                       ; preds = %.preheader.i48.new
  br i1 %lcmp.mod264.not, label %.epil.preheader, label %bb.b

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i48
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.preheader.i48 ], [ %indvars.iv.next.i50.1, %.unr-lcssa ]
  %.130.i.epil.init = phi i16 [ %.02034.i, %.preheader.i48 ], [ %.2.i.1, %.unr-lcssa ]
  %.12229.i.epil.init = phi i32 [ %.02133.i, %.preheader.i48 ], [ %i.ee, %.unr-lcssa ]
  %.12428.i.epil.init = phi i32 [ %.02332.i, %.preheader.i48 ], [ %.225.i.1, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod268)
  %i.ej = trunc nuw i64 %indvars.iv.i49.epil.init to i32
  %i.ek = add i32 %i.dp, %i.ej
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !35 ; 3 uses
  %i.eo = add nsw i32 %i.en, %.12428.i.epil.init  ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, %i.dn               ; 2 uses
  %i.eq = icmp sgt i32 %i.en, %.12229.i.epil.init
  %i.er = zext i1 %i.eq to i16
  %.225.i.epil = select i1 %i.ep, i32 0, i32 %i.eo
  %.2.v.i.epil = select i1 %i.ep, i16 10, i16 %i.er
  %.2.i.epil = add i16 %.2.v.i.epil, %.130.i.epil.init
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa259 = phi i32 [ %i.ee, %.unr-lcssa ], [ %i.en, %.epil.preheader ]
  %.225.i.lcssa = phi i32 [ %.225.i.1, %.unr-lcssa ], [ %.225.i.epil, %.epil.preheader ]
  %.2.i.lcssa = phi i16 [ %.2.i.1, %.unr-lcssa ], [ %.2.i.epil, %.epil.preheader ] ; 2 uses
  %i.es = add nuw i32 %.01935.i, 1                ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.es, %0
  br i1 %exitcond36.not.i, label %.lr.ph.preheader.i, label %.preheader.i48, !llvm.loop !3

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.et = tail call zeroext i16 @crc16(i16 noundef signext %.2.i.lcssa, i16 noundef zeroext 0) #7
  %i.eu = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check201 = icmp ult i32 %0, 8
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = icmp ugt i64 %i.eu, 4294967295
  %n.vec203 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec203, %wide.trip.count.i
  %xtraiter269 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit249, %.lr.ph.preheader.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next21.i, %.loopexit249 ] ; 3 uses
  %i.ex = trunc nuw i64 %indvars.iv20.i to i32
  %i.ey = mul i32 %0, %i.ex                       ; 7 uses
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.scevcheck199

vector.scevcheck199:                              ; preds = %.lr.ph.i
  %i.ez = xor i32 %i.ey, -1
  %i.fa = icmp ult i32 %i.ez, %i.ev
  %i.fb = or i1 %i.fa, %i.ew
  br i1 %i.fb, label %scalar.ph200.preheader, label %vector.body204

vector.body204:                                   ; preds = %vector.scevcheck199, %vector.body204
  %index205 = phi i64 [ %index.next211, %vector.body204 ], [ 0, %vector.scevcheck199 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.fp, %vector.body204 ], [ zeroinitializer, %vector.scevcheck199 ]
  %vec.phi206 = phi <4 x i32> [ %i.fq, %vector.body204 ], [ zeroinitializer, %vector.scevcheck199 ]
  %i.fc = trunc nuw i64 %index205 to i32
  %i.fd = add i32 %i.ey, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %wide.load207 = load <4 x i16>, ptr %i.ff, align 2, !tbaa !29
  %wide.load208 = load <4 x i16>, ptr %i.fg, align 2, !tbaa !29
  %i.fh = sext <4 x i16> %wide.load207 to <4 x i32>
  %i.fi = sext <4 x i16> %wide.load208 to <4 x i32>
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index205 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %wide.load209 = load <4 x i16>, ptr %i.fj, align 2, !tbaa !29
  %wide.load210 = load <4 x i16>, ptr %i.fk, align 2, !tbaa !29
  %i.fl = sext <4 x i16> %wide.load209 to <4 x i32>
  %i.fm = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.fn = mul nsw <4 x i32> %i.fl, %i.fh
  %i.fo = mul nsw <4 x i32> %i.fm, %i.fi
  %i.fp = add <4 x i32> %i.fn, %vec.phi           ; 2 uses
  %i.fq = add <4 x i32> %i.fo, %vec.phi206        ; 2 uses
  %index.next211 = add nuw i64 %index205, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next211, %n.vec203
  br i1 %i.fr, label %middle.block212, label %vector.body204, !llvm.loop !43

middle.block212:                                  ; preds = %vector.body204
  %bin.rdx = add <4 x i32> %i.fq, %i.fp
  %i.fs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n213, label %.loopexit249, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %vector.scevcheck199, %.lr.ph.i, %middle.block212
  %indvars.iv.i53.ph = phi i64 [ 0, %vector.scevcheck199 ], [ 0, %.lr.ph.i ], [ %n.vec203, %middle.block212 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.scevcheck199 ], [ 0, %.lr.ph.i ], [ %i.fs, %middle.block212 ] ; 2 uses
  br i1 %lcmp.mod270.not, label %scalar.ph200.prol.loopexit, label %scalar.ph200.prol

scalar.ph200.prol:                                ; preds = %scalar.ph200.preheader, %scalar.ph200.prol
  %indvars.iv.i53.prol = phi i64 [ %indvars.iv.next.i54.prol, %scalar.ph200.prol ], [ %indvars.iv.i53.ph, %scalar.ph200.preheader ] ; 3 uses
  %i.ft = phi i32 [ %i.ge, %scalar.ph200.prol ], [ %.ph, %scalar.ph200.preheader ]
  %prol.iter271 = phi i64 [ %prol.iter271.next, %scalar.ph200.prol ], [ 0, %scalar.ph200.preheader ]
  %i.fu = trunc nuw i64 %indvars.iv.i53.prol to i32
  %i.fv = add i32 %i.ey, %i.fu
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !29
  %i.fz = sext i16 %i.fy to i32
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i53.prol
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !29
  %i.gc = sext i16 %i.gb to i32
  %i.gd = mul nsw i32 %i.gc, %i.fz
  %i.ge = add nsw i32 %i.gd, %i.ft                ; 3 uses
  %indvars.iv.next.i54.prol = add nuw nsw i64 %indvars.iv.i53.prol, 1 ; 2 uses
  %prol.iter271.next = add i64 %prol.iter271, 1   ; 2 uses
  %prol.iter271.cmp.not = icmp eq i64 %prol.iter271.next, %xtraiter269
  br i1 %prol.iter271.cmp.not, label %scalar.ph200.prol.loopexit, label %scalar.ph200.prol, !llvm.loop !44

scalar.ph200.prol.loopexit:                       ; preds = %scalar.ph200.prol, %scalar.ph200.preheader
  %.lcssa258.unr = phi i32 [ poison, %scalar.ph200.preheader ], [ %i.ge, %scalar.ph200.prol ]
  %indvars.iv.i53.unr = phi i64 [ %indvars.iv.i53.ph, %scalar.ph200.preheader ], [ %indvars.iv.next.i54.prol, %scalar.ph200.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph200.preheader ], [ %i.ge, %scalar.ph200.prol ]
  %i.gf = sub nsw i64 %indvars.iv.i53.ph, %wide.trip.count.i
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %.loopexit249, label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.prol.loopexit, %scalar.ph200
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54.3, %scalar.ph200 ], [ %indvars.iv.i53.unr, %scalar.ph200.prol.loopexit ] ; 6 uses
  %i.gh = phi i32 [ %i.hz, %scalar.ph200 ], [ %.unr, %scalar.ph200.prol.loopexit ]
  %i.gi = trunc nuw i64 %indvars.iv.i53 to i32
  %i.gj = add i32 %i.ey, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !29
  %i.gn = sext i16 %i.gm to i32
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i53
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !29
  %i.gq = sext i16 %i.gp to i32
  %i.gr = mul nsw i32 %i.gq, %i.gn
  %i.gs = add nsw i32 %i.gr, %i.gh
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %i.gt = trunc nuw i64 %indvars.iv.next.i54 to i32
  %i.gu = add i32 %i.ey, %i.gt
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.gv
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !29
  %i.gy = sext i16 %i.gx to i32
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next.i54
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !29
  %i.hb = sext i16 %i.ha to i32
  %i.hc = mul nsw i32 %i.hb, %i.gy
  %i.hd = add nsw i32 %i.hc, %i.gs
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i53, 2 ; 2 uses
  %i.he = trunc nuw i64 %indvars.iv.next.i54.1 to i32
  %i.hf = add i32 %i.ey, %i.he
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !29
  %i.hj = sext i16 %i.hi to i32
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next.i54.1
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !29
  %i.hm = sext i16 %i.hl to i32
  %i.hn = mul nsw i32 %i.hm, %i.hj
  %i.ho = add nsw i32 %i.hn, %i.hd
  %indvars.iv.next.i54.2 = add nuw nsw i64 %indvars.iv.i53, 3 ; 2 uses
  %i.hp = trunc nuw i64 %indvars.iv.next.i54.2 to i32
  %i.hq = add i32 %i.ey, %i.hp
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !29
  %i.hu = sext i16 %i.ht to i32
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next.i54.2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !29
  %i.hx = sext i16 %i.hw to i32
  %i.hy = mul nsw i32 %i.hx, %i.hu
  %i.hz = add nsw i32 %i.hy, %i.ho                ; 2 uses
  %indvars.iv.next.i54.3 = add nuw nsw i64 %indvars.iv.i53, 4 ; 2 uses
  %exitcond.not.i55.3 = icmp eq i64 %indvars.iv.next.i54.3, %wide.trip.count.i
  br i1 %exitcond.not.i55.3, label %.loopexit249, label %scalar.ph200, !llvm.loop !45

.loopexit249:                                     ; preds = %scalar.ph200.prol.loopexit, %scalar.ph200, %middle.block212
  %.lcssa174 = phi i32 [ %i.fs, %middle.block212 ], [ %.lcssa258.unr, %scalar.ph200.prol.loopexit ], [ %i.hz, %scalar.ph200 ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv20.i
  store i32 %.lcssa174, ptr %i.ia, align 4, !tbaa !35
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count.i
  br i1 %exitcond24.not.i, label %.preheader.i59.preheader, label %.lr.ph.i, !llvm.loop !4

.preheader.i59.preheader:                         ; preds = %.loopexit249
  %i.ib = icmp eq i64 %i.f, 0
  %unroll_iter281 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod275.not = trunc i32 %0 to i1
  %lcmp.mod280 = trunc i32 %0 to i1
  br label %.preheader.i59

.preheader.i59:                                   ; preds = %.preheader.i59.preheader, %bb.c
  %.01935.i60 = phi i32 [ %i.jf, %bb.c ], [ 0, %.preheader.i59.preheader ] ; 2 uses
  %.02034.i61 = phi i16 [ %.2.i70.lcssa, %bb.c ], [ 0, %.preheader.i59.preheader ] ; 2 uses
  %.02133.i62 = phi i32 [ %.lcssa255, %bb.c ], [ 0, %.preheader.i59.preheader ] ; 2 uses
  %.02332.i63 = phi i32 [ %.225.i68.lcssa, %bb.c ], [ 0, %.preheader.i59.preheader ] ; 2 uses
  %i.ic = mul i32 %.01935.i60, %0                 ; 3 uses
  br i1 %i.ib, label %.epil.preheader273, label %.preheader.i59.new

.preheader.i59.new:                               ; preds = %.preheader.i59, %.preheader.i59.new
  %indvars.iv.i64 = phi i64 [ %indvars.iv.next.i71.1, %.preheader.i59.new ], [ 0, %.preheader.i59 ] ; 3 uses
  %.130.i65 = phi i16 [ %.2.i70.1, %.preheader.i59.new ], [ %.02034.i61, %.preheader.i59 ]
  %.12229.i66 = phi i32 [ %i.ir, %.preheader.i59.new ], [ %.02133.i62, %.preheader.i59 ]
  %.12428.i67 = phi i32 [ %.225.i68.1, %.preheader.i59.new ], [ %.02332.i63, %.preheader.i59 ]
  %niter282 = phi i64 [ %niter282.next.1, %.preheader.i59.new ], [ 0, %.preheader.i59 ]
  %i.id = trunc nuw i64 %indvars.iv.i64 to i32
  %i.ie = add i32 %i.ic, %i.id
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !35 ; 3 uses
  %i.ii = add nsw i32 %i.ih, %.12428.i67          ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, %i.dn               ; 2 uses
  %i.ik = icmp sgt i32 %i.ih, %.12229.i66
  %i.il = zext i1 %i.ik to i16
  %.225.i68 = select i1 %i.ij, i32 0, i32 %i.ii
  %.2.v.i69 = select i1 %i.ij, i16 10, i16 %i.il
  %.2.i70 = add i16 %.2.v.i69, %.130.i65
  %i.im = trunc i64 %indvars.iv.i64 to i32
  %i.in = or disjoint i32 %i.im, 1
  %i.io = add i32 %i.ic, %i.in
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !35 ; 5 uses
  %i.is = add nsw i32 %i.ir, %.225.i68            ; 2 uses
  %i.it = icmp sgt i32 %i.is, %i.dn               ; 2 uses
  %i.iu = icmp sgt i32 %i.ir, %i.ih
  %i.iv = zext i1 %i.iu to i16
  %.225.i68.1 = select i1 %i.it, i32 0, i32 %i.is ; 3 uses
  %.2.v.i69.1 = select i1 %i.it, i16 10, i16 %i.iv
  %.2.i70.1 = add i16 %.2.v.i69.1, %.2.i70        ; 3 uses
  %indvars.iv.next.i71.1 = add nuw nsw i64 %indvars.iv.i64, 2 ; 2 uses
  %niter282.next.1 = add i64 %niter282, 2         ; 2 uses
  %niter282.ncmp.1 = icmp eq i64 %niter282.next.1, %unroll_iter281
  br i1 %niter282.ncmp.1, label %.unr-lcssa272, label %.preheader.i59.new, !llvm.loop !2

.unr-lcssa272:                                    ; preds = %.preheader.i59.new
  br i1 %lcmp.mod275.not, label %.epil.preheader273, label %bb.c

.epil.preheader273:                               ; preds = %.unr-lcssa272, %.preheader.i59
  %indvars.iv.i64.epil.init = phi i64 [ 0, %.preheader.i59 ], [ %indvars.iv.next.i71.1, %.unr-lcssa272 ]
  %.130.i65.epil.init = phi i16 [ %.02034.i61, %.preheader.i59 ], [ %.2.i70.1, %.unr-lcssa272 ]
  %.12229.i66.epil.init = phi i32 [ %.02133.i62, %.preheader.i59 ], [ %i.ir, %.unr-lcssa272 ]
  %.12428.i67.epil.init = phi i32 [ %.02332.i63, %.preheader.i59 ], [ %.225.i68.1, %.unr-lcssa272 ]
  tail call void @llvm.assume(i1 %lcmp.mod280)
  %i.iw = trunc nuw i64 %indvars.iv.i64.epil.init to i32
  %i.ix = add i32 %i.ic, %i.iw
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !35 ; 3 uses
  %i.jb = add nsw i32 %i.ja, %.12428.i67.epil.init ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, %i.dn               ; 2 uses
  %i.jd = icmp sgt i32 %i.ja, %.12229.i66.epil.init
  %i.je = zext i1 %i.jd to i16
  %.225.i68.epil = select i1 %i.jc, i32 0, i32 %i.jb
  %.2.v.i69.epil = select i1 %i.jc, i16 10, i16 %i.je
  %.2.i70.epil = add i16 %.2.v.i69.epil, %.130.i65.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa272, %.epil.preheader273
  %.lcssa255 = phi i32 [ %i.ir, %.unr-lcssa272 ], [ %i.ja, %.epil.preheader273 ]
  %.225.i68.lcssa = phi i32 [ %.225.i68.1, %.unr-lcssa272 ], [ %.225.i68.epil, %.epil.preheader273 ]
  %.2.i70.lcssa = phi i16 [ %.2.i70.1, %.unr-lcssa272 ], [ %.2.i70.epil, %.epil.preheader273 ] ; 2 uses
  %i.jf = add nuw i32 %.01935.i60, 1              ; 2 uses
  %exitcond36.not.i73 = icmp eq i32 %i.jf, %0
  br i1 %exitcond36.not.i73, label %.preheader.preheader.i77, label %.preheader.i59, !llvm.loop !3

.preheader.preheader.i77:                         ; preds = %bb.c
  %i.jg = tail call zeroext i16 @crc16(i16 noundef signext %.2.i70.lcssa, i16 noundef zeroext %i.et) #7
  %i.jh = icmp eq i64 %i.f, 0
  %unroll_iter291 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod287.not = trunc i32 %0 to i1
  %lcmp.mod290 = trunc i32 %0 to i1
  br label %.preheader.i78

.preheader.i78:                                   ; preds = %bb.f, %.preheader.preheader.i77
  %.02529.i = phi i32 [ %i.lf, %bb.f ], [ 0, %.preheader.preheader.i77 ] ; 2 uses
  %i.ji = mul i32 %.02529.i, %0                   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i78
  %indvars.iv31.i = phi i64 [ 0, %.preheader.i78 ], [ %indvars.iv.next32.i, %bb.e ] ; 2 uses
  %i.jj = trunc nuw i64 %indvars.iv31.i to i32    ; 4 uses
  br i1 %i.jh, label %.epil.preheader284, label %.new

.new:                                             ; preds = %bb.d, %.new
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i80.1, %.new ], [ 0, %bb.d ] ; 3 uses
  %i.jk = phi i32 [ %i.kn, %.new ], [ 0, %bb.d ]
  %niter292 = phi i64 [ %niter292.next.1, %.new ], [ 0, %bb.d ]
  %i.jl = trunc nuw i64 %indvars.iv.i79 to i32    ; 2 uses
  %i.jm = add i32 %i.ji, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !29
  %i.jq = sext i16 %i.jp to i32
  %i.jr = mul i32 %0, %i.jl
  %i.js = add i32 %i.jr, %i.jj
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.jt
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !29
  %i.jw = sext i16 %i.jv to i32
  %i.jx = mul nsw i32 %i.jw, %i.jq
  %i.jy = add nsw i32 %i.jx, %i.jk
  %i.jz = trunc i64 %indvars.iv.i79 to i32
  %i.ka = or disjoint i32 %i.jz, 1                ; 2 uses
  %i.kb = add i32 %i.ji, %i.ka
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !29
  %i.kf = sext i16 %i.ke to i32
  %i.kg = mul i32 %0, %i.ka
  %i.kh = add i32 %i.kg, %i.jj
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !29
  %i.kl = sext i16 %i.kk to i32
  %i.km = mul nsw i32 %i.kl, %i.kf
  %i.kn = add nsw i32 %i.km, %i.jy                ; 3 uses
  %indvars.iv.next.i80.1 = add nuw nsw i64 %indvars.iv.i79, 2 ; 2 uses
  %niter292.next.1 = add i64 %niter292, 2         ; 2 uses
  %niter292.ncmp.1 = icmp eq i64 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1, label %.unr-lcssa283, label %.new, !llvm.loop !5

.unr-lcssa283:                                    ; preds = %.new
  br i1 %lcmp.mod287.not, label %.epil.preheader284, label %bb.e

.epil.preheader284:                               ; preds = %.unr-lcssa283, %bb.d
  %indvars.iv.i79.epil.init = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i80.1, %.unr-lcssa283 ]
  %.epil.init = phi i32 [ 0, %bb.d ], [ %i.kn, %.unr-lcssa283 ]
  tail call void @llvm.assume(i1 %lcmp.mod290)
  %i.ko = trunc nuw i64 %indvars.iv.i79.epil.init to i32 ; 2 uses
  %i.kp = add i32 %i.ji, %i.ko
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !29
  %i.kt = sext i16 %i.ks to i32
  %i.ku = mul i32 %0, %i.ko
  %i.kv = add i32 %i.ku, %i.jj
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !29
  %i.kz = sext i16 %i.ky to i32
  %i.la = mul nsw i32 %i.kz, %i.kt
  %i.lb = add nsw i32 %i.la, %.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa283, %.epil.preheader284
  %.lcssa254 = phi i32 [ %i.kn, %.unr-lcssa283 ], [ %i.lb, %.epil.preheader284 ]
  %i.lc = add i32 %i.ji, %i.jj
  %i.ld = zext i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ld
  store i32 %.lcssa254, ptr %i.le, align 4, !tbaa !35
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count.i
  br i1 %exitcond35.not.i, label %bb.f, label %bb.d, !llvm.loop !6

bb.f:                                             ; preds = %bb.e
  %i.lf = add nuw i32 %.02529.i, 1                ; 2 uses
  %exitcond36.not.i82 = icmp eq i32 %i.lf, %0
  br i1 %exitcond36.not.i82, label %.preheader.i86.preheader, label %.preheader.i78, !llvm.loop !7

.preheader.i86.preheader:                         ; preds = %bb.f
  %i.lg = icmp eq i64 %i.f, 0
  %unroll_iter302 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod296.not = trunc i32 %0 to i1
  %lcmp.mod301 = trunc i32 %0 to i1
  br label %.preheader.i86

.preheader.i86:                                   ; preds = %.preheader.i86.preheader, %bb.g
  %.01935.i87 = phi i32 [ %i.mk, %bb.g ], [ 0, %.preheader.i86.preheader ] ; 2 uses
  %.02034.i88 = phi i16 [ %.2.i97.lcssa, %bb.g ], [ 0, %.preheader.i86.preheader ] ; 2 uses
  %.02133.i89 = phi i32 [ %.lcssa253, %bb.g ], [ 0, %.preheader.i86.preheader ] ; 2 uses
  %.02332.i90 = phi i32 [ %.225.i95.lcssa, %bb.g ], [ 0, %.preheader.i86.preheader ] ; 2 uses
  %i.lh = mul i32 %.01935.i87, %0                 ; 3 uses
  br i1 %i.lg, label %.epil.preheader294, label %.preheader.i86.new

.preheader.i86.new:                               ; preds = %.preheader.i86, %.preheader.i86.new
  %indvars.iv.i91 = phi i64 [ %indvars.iv.next.i98.1, %.preheader.i86.new ], [ 0, %.preheader.i86 ] ; 3 uses
  %.130.i92 = phi i16 [ %.2.i97.1, %.preheader.i86.new ], [ %.02034.i88, %.preheader.i86 ]
  %.12229.i93 = phi i32 [ %i.lw, %.preheader.i86.new ], [ %.02133.i89, %.preheader.i86 ]
  %.12428.i94 = phi i32 [ %.225.i95.1, %.preheader.i86.new ], [ %.02332.i90, %.preheader.i86 ]
  %niter303 = phi i64 [ %niter303.next.1, %.preheader.i86.new ], [ 0, %.preheader.i86 ]
  %i.li = trunc nuw i64 %indvars.iv.i91 to i32
  %i.lj = add i32 %i.lh, %i.li
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !35 ; 3 uses
  %i.ln = add nsw i32 %i.lm, %.12428.i94          ; 2 uses
  %i.lo = icmp sgt i32 %i.ln, %i.dn               ; 2 uses
  %i.lp = icmp sgt i32 %i.lm, %.12229.i93
  %i.lq = zext i1 %i.lp to i16
  %.225.i95 = select i1 %i.lo, i32 0, i32 %i.ln
  %.2.v.i96 = select i1 %i.lo, i16 10, i16 %i.lq
  %.2.i97 = add i16 %.2.v.i96, %.130.i92
  %i.lr = trunc i64 %indvars.iv.i91 to i32
  %i.ls = or disjoint i32 %i.lr, 1
  %i.lt = add i32 %i.lh, %i.ls
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !35 ; 5 uses
  %i.lx = add nsw i32 %i.lw, %.225.i95            ; 2 uses
  %i.ly = icmp sgt i32 %i.lx, %i.dn               ; 2 uses
  %i.lz = icmp sgt i32 %i.lw, %i.lm
  %i.ma = zext i1 %i.lz to i16
  %.225.i95.1 = select i1 %i.ly, i32 0, i32 %i.lx ; 3 uses
  %.2.v.i96.1 = select i1 %i.ly, i16 10, i16 %i.ma
  %.2.i97.1 = add i16 %.2.v.i96.1, %.2.i97        ; 3 uses
  %indvars.iv.next.i98.1 = add nuw nsw i64 %indvars.iv.i91, 2 ; 2 uses
  %niter303.next.1 = add i64 %niter303, 2         ; 2 uses
  %niter303.ncmp.1 = icmp eq i64 %niter303.next.1, %unroll_iter302
  br i1 %niter303.ncmp.1, label %.unr-lcssa293, label %.preheader.i86.new, !llvm.loop !2

.unr-lcssa293:                                    ; preds = %.preheader.i86.new
  br i1 %lcmp.mod296.not, label %.epil.preheader294, label %bb.g

.epil.preheader294:                               ; preds = %.unr-lcssa293, %.preheader.i86
  %indvars.iv.i91.epil.init = phi i64 [ 0, %.preheader.i86 ], [ %indvars.iv.next.i98.1, %.unr-lcssa293 ]
  %.130.i92.epil.init = phi i16 [ %.02034.i88, %.preheader.i86 ], [ %.2.i97.1, %.unr-lcssa293 ]
  %.12229.i93.epil.init = phi i32 [ %.02133.i89, %.preheader.i86 ], [ %i.lw, %.unr-lcssa293 ]
  %.12428.i94.epil.init = phi i32 [ %.02332.i90, %.preheader.i86 ], [ %.225.i95.1, %.unr-lcssa293 ]
  tail call void @llvm.assume(i1 %lcmp.mod301)
  %i.mb = trunc nuw i64 %indvars.iv.i91.epil.init to i32
  %i.mc = add i32 %i.lh, %i.mb
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !35 ; 3 uses
  %i.mg = add nsw i32 %i.mf, %.12428.i94.epil.init ; 2 uses
  %i.mh = icmp sgt i32 %i.mg, %i.dn               ; 2 uses
  %i.mi = icmp sgt i32 %i.mf, %.12229.i93.epil.init
  %i.mj = zext i1 %i.mi to i16
  %.225.i95.epil = select i1 %i.mh, i32 0, i32 %i.mg
  %.2.v.i96.epil = select i1 %i.mh, i16 10, i16 %i.mj
  %.2.i97.epil = add i16 %.2.v.i96.epil, %.130.i92.epil.init
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa293, %.epil.preheader294
  %.lcssa253 = phi i32 [ %i.lw, %.unr-lcssa293 ], [ %i.mf, %.epil.preheader294 ]
  %.225.i95.lcssa = phi i32 [ %.225.i95.1, %.unr-lcssa293 ], [ %.225.i95.epil, %.epil.preheader294 ]
  %.2.i97.lcssa = phi i16 [ %.2.i97.1, %.unr-lcssa293 ], [ %.2.i97.epil, %.epil.preheader294 ] ; 2 uses
  %i.mk = add nuw i32 %.01935.i87, 1              ; 2 uses
  %exitcond36.not.i100 = icmp eq i32 %i.mk, %0
  br i1 %exitcond36.not.i100, label %.preheader.preheader.i104, label %.preheader.i86, !llvm.loop !3

.preheader.preheader.i104:                        ; preds = %bb.g
  %i.ml = tail call zeroext i16 @crc16(i16 noundef signext %.2.i97.lcssa, i16 noundef zeroext %i.jg) #7
  %i.mm = icmp eq i64 %i.f, 0
  %unroll_iter314 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod310.not = trunc i32 %0 to i1
  %lcmp.mod313 = trunc i32 %0 to i1
  br label %.preheader.i105

.preheader.i105:                                  ; preds = %bb.j, %.preheader.preheader.i104
  %.031.i = phi i32 [ %i.oz, %bb.j ], [ 0, %.preheader.preheader.i104 ] ; 2 uses
  %i.mn = mul i32 %.031.i, %0                     ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.i105
  %indvars.iv33.i = phi i64 [ 0, %.preheader.i105 ], [ %indvars.iv.next34.i, %bb.i ] ; 2 uses
  %i.mo = trunc nuw i64 %indvars.iv33.i to i32    ; 4 uses
  br i1 %i.mm, label %.epil.preheader306, label %.new304

.new304:                                          ; preds = %bb.h, %.new304
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i107.1, %.new304 ], [ 0, %bb.h ] ; 3 uses
  %i.mp = phi i32 [ %i.oc, %.new304 ], [ 0, %bb.h ]
  %niter315 = phi i64 [ %niter315.next.1, %.new304 ], [ 0, %bb.h ]
  %i.mq = trunc nuw i64 %indvars.iv.i106 to i32   ; 2 uses
  %i.mr = add i32 %i.mn, %i.mq
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !29
  %i.mv = zext i16 %i.mu to i32
  %i.mw = mul i32 %0, %i.mq
  %i.mx = add i32 %i.mw, %i.mo
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !29
  %i.nb = zext i16 %i.na to i32
  %i.nc = mul nuw i32 %i.nb, %i.mv                ; 2 uses
  %i.nd = lshr i32 %i.nc, 2
  %i.ne = and i32 %i.nd, 15
  %i.nf = lshr i32 %i.nc, 5
  %i.ng = and i32 %i.nf, 127
  %i.nh = mul nuw nsw i32 %i.ne, %i.ng
  %i.ni = add i32 %i.nh, %i.mp
  %i.nj = trunc i64 %indvars.iv.i106 to i32
  %i.nk = or disjoint i32 %i.nj, 1                ; 2 uses
  %i.nl = add i32 %i.mn, %i.nk
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.nm
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !29
  %i.np = zext i16 %i.no to i32
  %i.nq = mul i32 %0, %i.nk
  %i.nr = add i32 %i.nq, %i.mo
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !29
  %i.nv = zext i16 %i.nu to i32
  %i.nw = mul nuw i32 %i.nv, %i.np                ; 2 uses
  %i.nx = lshr i32 %i.nw, 2
  %i.ny = and i32 %i.nx, 15
  %i.nz = lshr i32 %i.nw, 5
  %i.oa = and i32 %i.nz, 127
  %i.ob = mul nuw nsw i32 %i.ny, %i.oa
  %i.oc = add i32 %i.ob, %i.ni                    ; 3 uses
  %indvars.iv.next.i107.1 = add nuw nsw i64 %indvars.iv.i106, 2 ; 2 uses
  %niter315.next.1 = add i64 %niter315, 2         ; 2 uses
  %niter315.ncmp.1 = icmp eq i64 %niter315.next.1, %unroll_iter314
  br i1 %niter315.ncmp.1, label %.unr-lcssa305, label %.new304, !llvm.loop !8

.unr-lcssa305:                                    ; preds = %.new304
  br i1 %lcmp.mod310.not, label %.epil.preheader306, label %bb.i

.epil.preheader306:                               ; preds = %.unr-lcssa305, %bb.h
  %indvars.iv.i106.epil.init = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i107.1, %.unr-lcssa305 ]
  %.epil.init309 = phi i32 [ 0, %bb.h ], [ %i.oc, %.unr-lcssa305 ]
  tail call void @llvm.assume(i1 %lcmp.mod313)
  %i.od = trunc nuw i64 %indvars.iv.i106.epil.init to i32 ; 2 uses
  %i.oe = add i32 %i.mn, %i.od
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.of
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !29
  %i.oi = zext i16 %i.oh to i32
  %i.oj = mul i32 %0, %i.od
  %i.ok = add i32 %i.oj, %i.mo
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ol
  %i.on = load i16, ptr %i.om, align 2, !tbaa !29
  %i.oo = zext i16 %i.on to i32
  %i.op = mul nuw i32 %i.oo, %i.oi                ; 2 uses
  %i.oq = lshr i32 %i.op, 2
  %i.or = and i32 %i.oq, 15
  %i.os = lshr i32 %i.op, 5
  %i.ot = and i32 %i.os, 127
  %i.ou = mul nuw nsw i32 %i.or, %i.ot
  %i.ov = add i32 %i.ou, %.epil.init309
  br label %bb.i

bb.i:                                             ; preds = %.unr-lcssa305, %.epil.preheader306
  %.lcssa252 = phi i32 [ %i.oc, %.unr-lcssa305 ], [ %i.ov, %.epil.preheader306 ]
  %i.ow = add i32 %i.mn, %i.mo
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ox
  store i32 %.lcssa252, ptr %i.oy, align 4, !tbaa !35
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, %wide.trip.count.i
  br i1 %exitcond37.not.i, label %bb.j, label %bb.h, !llvm.loop !9

bb.j:                                             ; preds = %bb.i
  %i.oz = add nuw i32 %.031.i, 1                  ; 2 uses
  %exitcond38.not.i = icmp eq i32 %i.oz, %0
  br i1 %exitcond38.not.i, label %.preheader.i112.preheader, label %.preheader.i105, !llvm.loop !10

.preheader.i112.preheader:                        ; preds = %bb.j
  %i.pa = icmp eq i64 %i.f, 0
  %unroll_iter325 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod319.not = trunc i32 %0 to i1
  %lcmp.mod324 = trunc i32 %0 to i1
  br label %.preheader.i112

.preheader.i112:                                  ; preds = %.preheader.i112.preheader, %bb.k
  %.01935.i113 = phi i32 [ %i.qe, %bb.k ], [ 0, %.preheader.i112.preheader ] ; 2 uses
  %.02034.i114 = phi i16 [ %.2.i123.lcssa, %bb.k ], [ 0, %.preheader.i112.preheader ] ; 2 uses
  %.02133.i115 = phi i32 [ %.lcssa, %bb.k ], [ 0, %.preheader.i112.preheader ] ; 2 uses
  %.02332.i116 = phi i32 [ %.225.i121.lcssa, %bb.k ], [ 0, %.preheader.i112.preheader ] ; 2 uses
  %i.pb = mul i32 %.01935.i113, %0                ; 3 uses
  br i1 %i.pa, label %.epil.preheader317, label %.preheader.i112.new

.preheader.i112.new:                              ; preds = %.preheader.i112, %.preheader.i112.new
  %indvars.iv.i117 = phi i64 [ %indvars.iv.next.i124.1, %.preheader.i112.new ], [ 0, %.preheader.i112 ] ; 3 uses
  %.130.i118 = phi i16 [ %.2.i123.1, %.preheader.i112.new ], [ %.02034.i114, %.preheader.i112 ]
  %.12229.i119 = phi i32 [ %i.pq, %.preheader.i112.new ], [ %.02133.i115, %.preheader.i112 ]
  %.12428.i120 = phi i32 [ %.225.i121.1, %.preheader.i112.new ], [ %.02332.i116, %.preheader.i112 ]
  %niter326 = phi i64 [ %niter326.next.1, %.preheader.i112.new ], [ 0, %.preheader.i112 ]
  %i.pc = trunc nuw i64 %indvars.iv.i117 to i32
  %i.pd = add i32 %i.pb, %i.pc
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pe
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !35 ; 3 uses
  %i.ph = add nsw i32 %i.pg, %.12428.i120         ; 2 uses
  %i.pi = icmp sgt i32 %i.ph, %i.dn               ; 2 uses
  %i.pj = icmp sgt i32 %i.pg, %.12229.i119
  %i.pk = zext i1 %i.pj to i16
  %.225.i121 = select i1 %i.pi, i32 0, i32 %i.ph
  %.2.v.i122 = select i1 %i.pi, i16 10, i16 %i.pk
  %.2.i123 = add i16 %.2.v.i122, %.130.i118
  %i.pl = trunc i64 %indvars.iv.i117 to i32
  %i.pm = or disjoint i32 %i.pl, 1
  %i.pn = add i32 %i.pb, %i.pm
  %i.po = zext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.po
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !35 ; 5 uses
  %i.pr = add nsw i32 %i.pq, %.225.i121           ; 2 uses
  %i.ps = icmp sgt i32 %i.pr, %i.dn               ; 2 uses
  %i.pt = icmp sgt i32 %i.pq, %i.pg
  %i.pu = zext i1 %i.pt to i16
  %.225.i121.1 = select i1 %i.ps, i32 0, i32 %i.pr ; 3 uses
  %.2.v.i122.1 = select i1 %i.ps, i16 10, i16 %i.pu
  %.2.i123.1 = add i16 %.2.v.i122.1, %.2.i123     ; 3 uses
  %indvars.iv.next.i124.1 = add nuw nsw i64 %indvars.iv.i117, 2 ; 2 uses
  %niter326.next.1 = add i64 %niter326, 2         ; 2 uses
  %niter326.ncmp.1 = icmp eq i64 %niter326.next.1, %unroll_iter325
  br i1 %niter326.ncmp.1, label %.unr-lcssa316, label %.preheader.i112.new, !llvm.loop !2

.unr-lcssa316:                                    ; preds = %.preheader.i112.new
  br i1 %lcmp.mod319.not, label %.epil.preheader317, label %bb.k

.epil.preheader317:                               ; preds = %.unr-lcssa316, %.preheader.i112
  %indvars.iv.i117.epil.init = phi i64 [ 0, %.preheader.i112 ], [ %indvars.iv.next.i124.1, %.unr-lcssa316 ]
  %.130.i118.epil.init = phi i16 [ %.02034.i114, %.preheader.i112 ], [ %.2.i123.1, %.unr-lcssa316 ]
  %.12229.i119.epil.init = phi i32 [ %.02133.i115, %.preheader.i112 ], [ %i.pq, %.unr-lcssa316 ]
  %.12428.i120.epil.init = phi i32 [ %.02332.i116, %.preheader.i112 ], [ %.225.i121.1, %.unr-lcssa316 ]
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %i.pv = trunc nuw i64 %indvars.iv.i117.epil.init to i32
  %i.pw = add i32 %i.pb, %i.pv
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !35 ; 3 uses
  %i.qa = add nsw i32 %i.pz, %.12428.i120.epil.init ; 2 uses
  %i.qb = icmp sgt i32 %i.qa, %i.dn               ; 2 uses
  %i.qc = icmp sgt i32 %i.pz, %.12229.i119.epil.init
  %i.qd = zext i1 %i.qc to i16
  %.225.i121.epil = select i1 %i.qb, i32 0, i32 %i.qa
  %.2.v.i122.epil = select i1 %i.qb, i16 10, i16 %i.qd
  %.2.i123.epil = add i16 %.2.v.i122.epil, %.130.i118.epil.init
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa316, %.epil.preheader317
  %.lcssa = phi i32 [ %i.pq, %.unr-lcssa316 ], [ %i.pz, %.epil.preheader317 ]
  %.225.i121.lcssa = phi i32 [ %.225.i121.1, %.unr-lcssa316 ], [ %.225.i121.epil, %.epil.preheader317 ]
  %.2.i123.lcssa = phi i16 [ %.2.i123.1, %.unr-lcssa316 ], [ %.2.i123.epil, %.epil.preheader317 ] ; 2 uses
  %i.qe = add nuw i32 %.01935.i113, 1             ; 2 uses
  %exitcond36.not.i126 = icmp eq i32 %i.qe, %0
  br i1 %exitcond36.not.i126, label %.preheader.preheader.i130, label %.preheader.i112, !llvm.loop !3

.preheader.preheader.i130:                        ; preds = %bb.k
  %i.qf = tail call zeroext i16 @crc16(i16 noundef signext %.2.i123.lcssa, i16 noundef zeroext %i.ml) #7
  %i.qg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check219 = icmp ult i32 %0, 4
  %i.qh = trunc i64 %i.qg to i32
  %i.qi = icmp ugt i64 %i.qg, 4294967295
  %min.iters.check221 = icmp ult i32 %0, 16
  %i.qj = and i64 %wide.trip.count.i, 12
  %n.vec223 = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  %broadcast.splatinsert224 = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat225 = shufflevector <8 x i16> %broadcast.splatinsert224, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n232 = icmp eq i64 %n.vec223, %wide.trip.count.i
  %min.epilog.iters.check237 = icmp eq i64 %i.qj, 0
  %n.vec239 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert240 = insertelement <4 x i16> poison, i16 %4, i64 0
  %broadcast.splat241 = shufflevector <4 x i16> %broadcast.splatinsert240, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n247 = icmp eq i64 %n.vec239, %wide.trip.count.i
  %xtraiter327 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br label %iter.check234

iter.check234:                                    ; preds = %.loopexit, %.preheader.preheader.i130
  %.01013.i133 = phi i32 [ %i.sf, %.loopexit ], [ 0, %.preheader.preheader.i130 ] ; 2 uses
  %i.qk = mul i32 %.01013.i133, %0                ; 8 uses
  br i1 %min.iters.check219, label %vec.epilog.scalar.ph235.preheader, label %vector.scevcheck217

vector.scevcheck217:                              ; preds = %iter.check234
  %i.ql = xor i32 %i.qk, -1
  %i.qm = icmp ult i32 %i.ql, %i.qh
  %i.qn = or i1 %i.qm, %i.qi
  br i1 %i.qn, label %vec.epilog.scalar.ph235.preheader, label %vector.main.loop.iter.check220

vector.main.loop.iter.check220:                   ; preds = %vector.scevcheck217
  br i1 %min.iters.check221, label %vec.epilog.ph238, label %vector.body226

vector.body226:                                   ; preds = %vector.main.loop.iter.check220, %vector.body226
  %index227 = phi i64 [ %index.next230, %vector.body226 ], [ 0, %vector.main.loop.iter.check220 ] ; 2 uses
  %i.qo = trunc nuw i64 %index227 to i32
  %i.qp = add i32 %i.qk, %i.qo
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.qq ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 2 uses
  %wide.load228 = load <8 x i16>, ptr %i.qr, align 2, !tbaa !29
  %wide.load229 = load <8 x i16>, ptr %i.qs, align 2, !tbaa !29
  %i.qt = sub <8 x i16> %wide.load228, %broadcast.splat225
  %i.qu = sub <8 x i16> %wide.load229, %broadcast.splat225
  store <8 x i16> %i.qt, ptr %i.qr, align 2, !tbaa !29
  store <8 x i16> %i.qu, ptr %i.qs, align 2, !tbaa !29
  %index.next230 = add nuw i64 %index227, 16      ; 2 uses
  %i.qv = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.qv, label %middle.block231, label %vector.body226, !llvm.loop !46

middle.block231:                                  ; preds = %vector.body226
  br i1 %cmp.n232, label %.loopexit, label %vec.epilog.iter.check236

vec.epilog.iter.check236:                         ; preds = %middle.block231
  br i1 %min.epilog.iters.check237, label %vec.epilog.scalar.ph235.preheader, label %vec.epilog.ph238, !prof !33

vec.epilog.ph238:                                 ; preds = %vector.main.loop.iter.check220, %vec.epilog.iter.check236
  %vec.epilog.resume.val233 = phi i64 [ %n.vec223, %vec.epilog.iter.check236 ], [ 0, %vector.main.loop.iter.check220 ]
  br label %vec.epilog.vector.body242

vec.epilog.vector.body242:                        ; preds = %vec.epilog.vector.body242, %vec.epilog.ph238
  %index243 = phi i64 [ %vec.epilog.resume.val233, %vec.epilog.ph238 ], [ %index.next245, %vec.epilog.vector.body242 ] ; 2 uses
  %i.qw = trunc nuw i64 %index243 to i32
  %i.qx = add i32 %i.qk, %i.qw
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.qy ; 2 uses
  %wide.load244 = load <4 x i16>, ptr %i.qz, align 2, !tbaa !29
  %i.ra = sub <4 x i16> %wide.load244, %broadcast.splat241
  store <4 x i16> %i.ra, ptr %i.qz, align 2, !tbaa !29
  %index.next245 = add nuw i64 %index243, 4       ; 2 uses
  %i.rb = icmp eq i64 %index.next245, %n.vec239
  br i1 %i.rb, label %vec.epilog.middle.block246, label %vec.epilog.vector.body242, !llvm.loop !47

vec.epilog.middle.block246:                       ; preds = %vec.epilog.vector.body242
  br i1 %cmp.n247, label %.loopexit, label %vec.epilog.scalar.ph235.preheader

vec.epilog.scalar.ph235.preheader:                ; preds = %iter.check234, %vector.scevcheck217, %vec.epilog.iter.check236, %vec.epilog.middle.block246
  %indvars.iv.i134.ph = phi i64 [ 0, %iter.check234 ], [ 0, %vector.scevcheck217 ], [ %n.vec223, %vec.epilog.iter.check236 ], [ %n.vec239, %vec.epilog.middle.block246 ] ; 3 uses
  br i1 %lcmp.mod328.not, label %vec.epilog.scalar.ph235.prol.loopexit, label %vec.epilog.scalar.ph235.prol

vec.epilog.scalar.ph235.prol:                     ; preds = %vec.epilog.scalar.ph235.preheader, %vec.epilog.scalar.ph235.prol
  %indvars.iv.i134.prol = phi i64 [ %indvars.iv.next.i135.prol, %vec.epilog.scalar.ph235.prol ], [ %indvars.iv.i134.ph, %vec.epilog.scalar.ph235.preheader ] ; 2 uses
  %prol.iter329 = phi i64 [ %prol.iter329.next, %vec.epilog.scalar.ph235.prol ], [ 0, %vec.epilog.scalar.ph235.preheader ]
  %i.rc = trunc nuw i64 %indvars.iv.i134.prol to i32
  %i.rd = add i32 %i.qk, %i.rc
  %i.re = zext i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.re ; 2 uses
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !29
  %i.rh = sub i16 %i.rg, %4
  store i16 %i.rh, ptr %i.rf, align 2, !tbaa !29
  %indvars.iv.next.i135.prol = add nuw nsw i64 %indvars.iv.i134.prol, 1 ; 2 uses
  %prol.iter329.next = add i64 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i64 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %vec.epilog.scalar.ph235.prol.loopexit, label %vec.epilog.scalar.ph235.prol, !llvm.loop !48

vec.epilog.scalar.ph235.prol.loopexit:            ; preds = %vec.epilog.scalar.ph235.prol, %vec.epilog.scalar.ph235.preheader
  %indvars.iv.i134.unr = phi i64 [ %indvars.iv.i134.ph, %vec.epilog.scalar.ph235.preheader ], [ %indvars.iv.next.i135.prol, %vec.epilog.scalar.ph235.prol ]
  %i.ri = sub nsw i64 %indvars.iv.i134.ph, %wide.trip.count.i
  %i.rj = icmp ugt i64 %i.ri, -4
  br i1 %i.rj, label %.loopexit, label %vec.epilog.scalar.ph235.preheader.new

vec.epilog.scalar.ph235.preheader.new:            ; preds = %vec.epilog.scalar.ph235.prol.loopexit
  %invariant.op350 = add i32 1, %i.qk
  %invariant.op352 = add i32 2, %i.qk
  %invariant.op354 = add i32 3, %i.qk
  br label %vec.epilog.scalar.ph235

vec.epilog.scalar.ph235:                          ; preds = %vec.epilog.scalar.ph235, %vec.epilog.scalar.ph235.preheader.new
  %indvars.iv.i134 = phi i64 [ %indvars.iv.i134.unr, %vec.epilog.scalar.ph235.preheader.new ], [ %indvars.iv.next.i135.3, %vec.epilog.scalar.ph235 ] ; 5 uses
  %i.rk = trunc nuw i64 %indvars.iv.i134 to i32
  %i.rl = add i32 %i.qk, %i.rk
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.rm ; 2 uses
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !29
  %i.rp = sub i16 %i.ro, %4
  store i16 %i.rp, ptr %i.rn, align 2, !tbaa !29
  %i.rq = trunc i64 %indvars.iv.i134 to i32
  %.reass351 = add i32 %i.rq, %invariant.op350
  %i.rr = zext i32 %.reass351 to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.rr ; 2 uses
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !29
  %i.ru = sub i16 %i.rt, %4
  store i16 %i.ru, ptr %i.rs, align 2, !tbaa !29
  %i.rv = trunc i64 %indvars.iv.i134 to i32
  %.reass353 = add i32 %i.rv, %invariant.op352
  %i.rw = zext i32 %.reass353 to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.rw ; 2 uses
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !29
  %i.rz = sub i16 %i.ry, %4
  store i16 %i.rz, ptr %i.rx, align 2, !tbaa !29
  %i.sa = trunc i64 %indvars.iv.i134 to i32
  %.reass355 = add i32 %i.sa, %invariant.op354
  %i.sb = zext i32 %.reass355 to i64
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.sb ; 2 uses
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !29
  %i.se = sub i16 %i.sd, %4
  store i16 %i.se, ptr %i.sc, align 2, !tbaa !29
  %indvars.iv.next.i135.3 = add nuw nsw i64 %indvars.iv.i134, 4 ; 2 uses
  %exitcond.not.i136.3 = icmp eq i64 %indvars.iv.next.i135.3, %wide.trip.count.i
  br i1 %exitcond.not.i136.3, label %.loopexit, label %vec.epilog.scalar.ph235, !llvm.loop !49

.loopexit:                                        ; preds = %vec.epilog.scalar.ph235.prol.loopexit, %vec.epilog.scalar.ph235, %vec.epilog.middle.block246, %middle.block231
  %i.sf = add nuw i32 %.01013.i133, 1             ; 2 uses
  %exitcond15.not.i137 = icmp eq i32 %i.sf, %0
  br i1 %exitcond15.not.i137, label %matrix_add_const.exit138, label %iter.check234, !llvm.loop !0

matrix_add_const.exit138:                         ; preds = %.loopexit, %matrix_mul_vect.exit.thread
  %i.sg = phi i16 [ %i.e, %matrix_mul_vect.exit.thread ], [ %i.qf, %.loopexit ]
  ret i16 %i.sg
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matrix_add_const(i32 noundef %0, ptr nofree noundef captures(none) %1, i16 noundef signext %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext i32 %0 to i64           ; 9 uses
  %i.a = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %0, 4
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp ugt i64 %i.a, 4294967295
  %min.iters.check17 = icmp ult i32 %0, 16
  %i.d = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
end_hunk_0
begin_hunk_1_@matrix_add_const:bb.a
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.loopexit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.e
  %invariant.op26 = add i32 2, %i.e
  %invariant.op28 = add i32 3, %i.e
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ae = trunc nuw i64 %indvars.iv to i32
  %i.af = add i32 %i.e, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ag ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !29
  %i.aj = add i16 %i.ai, %2
  store i16 %i.aj, ptr %i.ah, align 2, !tbaa !29
  %i.ak = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.ak, %invariant.op
  %i.al = zext i32 %.reass to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !29
  %i.ao = add i16 %i.an, %2
  store i16 %i.ao, ptr %i.am, align 2, !tbaa !29
  %i.ap = trunc i64 %indvars.iv to i32
  %.reass27 = add i32 %i.ap, %invariant.op26
  %i.aq = zext i32 %.reass27 to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !29
  %i.at = add i16 %i.as, %2
  store i16 %i.at, ptr %i.ar, align 2, !tbaa !29
  %i.au = trunc i64 %indvars.iv to i32
  %.reass29 = add i32 %i.au, %invariant.op28
  %i.av = zext i32 %.reass29 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !29
  %i.ay = add i16 %i.ax, %2
  store i16 %i.ay, ptr %i.aw, align 2, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !53

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.az = add nuw i32 %.01013, 1                  ; 2 uses
  %exitcond15.not = icmp eq i32 %i.az, %0
  br i1 %exitcond15.not, label %._crit_edge, label %iter.check, !llvm.loop !0

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matrix_mul_const(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i16 noundef signext %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.a = sext i16 %3 to i32                       ; 6 uses
  %wide.trip.count = zext i32 %0 to i64           ; 6 uses
  %i.b = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp ugt i64 %i.b, 4294967295
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.01417 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bh, %.loopexit ] ; 2 uses
  %i.e = mul i32 %.01417, %0                      ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.f = xor i32 %i.e, -1
  %i.g = icmp ult i32 %i.f, %i.c
  %i.h = or i1 %i.g, %i.d
  br i1 %i.h, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.i = trunc nuw i64 %index to i32
  %i.j = add i32 %i.e, %i.i
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load = load <4 x i16>, ptr %i.l, align 2, !tbaa !29
  %wide.load21 = load <4 x i16>, ptr %i.m, align 2, !tbaa !29
  %i.n = sext <4 x i16> %wide.load to <4 x i32>
  %i.o = sext <4 x i16> %wide.load21 to <4 x i32>
  %i.p = mul nsw <4 x i32> %broadcast.splat, %i.n
  %i.q = mul nsw <4 x i32> %broadcast.splat, %i.o
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !35
  store <4 x i32> %i.q, ptr %i.s, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = trunc nuw i64 %indvars.iv.prol to i32
  %i.v = add i32 %i.e, %i.u
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !29
  %i.z = sext i16 %i.y to i32
  %i.aa = mul nsw i32 %i.z, %i.a
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !35
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !55

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.e
  %invariant.op22 = add i32 2, %i.e
  %invariant.op24 = add i32 3, %i.e
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.ae = trunc nuw i64 %indvars.iv to i32
  %i.af = add i32 %i.e, %i.ae
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !29
  %i.aj = sext i16 %i.ai to i32
  %i.ak = mul nsw i32 %i.aj, %i.a
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !35
  %i.am = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.am, %invariant.op
  %i.an = zext i32 %.reass to i64                 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !29
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.a
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !35
  %i.at = trunc i64 %indvars.iv to i32
  %.reass23 = add i32 %i.at, %invariant.op22
  %i.au = zext i32 %.reass23 to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !29
  %i.ax = sext i16 %i.aw to i32
  %i.ay = mul nsw i32 %i.ax, %i.a
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.au
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !35
  %i.ba = trunc i64 %indvars.iv to i32
  %.reass25 = add i32 %i.ba, %invariant.op24
  %i.bb = zext i32 %.reass25 to i64               ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !29
  %i.be = sext i16 %i.bd to i32
  %i.bf = mul nsw i32 %i.be, %i.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !35
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !56

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bh = add nuw i32 %.01417, 1                  ; 2 uses
  %exitcond19.not = icmp eq i32 %i.bh, %0
  br i1 %exitcond19.not, label %._crit_edge, label %.preheader, !llvm.loop !1

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local signext i16 @matrix_sum(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i16 noundef signext %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.a = sext i16 %2 to i32                       ; 3 uses
  %3 = icmp eq i32 %0, 1
  %4 = and i32 %0, -2
  %unroll_iter = zext i32 %4 to i64
  %lcmp.mod.not = trunc i32 %0 to i1
  %lcmp.mod41 = trunc i32 %0 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %.01935 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  %.02034 = phi i16 [ 0, %.preheader.lr.ph ], [ %.2.lcssa, %bb.b ] ; 2 uses
  %.02133 = phi i32 [ 0, %.preheader.lr.ph ], [ %.lcssa, %bb.b ] ; 2 uses
  %.02332 = phi i32 [ 0, %.preheader.lr.ph ], [ %.225.lcssa, %bb.b ] ; 2 uses
  %i.b = mul i32 %.01935, %0                      ; 3 uses
  br i1 %3, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %.130 = phi i16 [ %.2.1, %.preheader.new ], [ %.02034, %.preheader ]
  %.12229 = phi i32 [ %i.q, %.preheader.new ], [ %.02133, %.preheader ]
  %.12428 = phi i32 [ %.225.1, %.preheader.new ], [ %.02332, %.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.c = trunc nuw i64 %indvars.iv to i32
  %i.d = add i32 %i.b, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35   ; 3 uses
  %i.h = add nsw i32 %i.g, %.12428                ; 2 uses
  %i.i = icmp sgt i32 %i.h, %i.a                  ; 2 uses
  %i.j = icmp sgt i32 %i.g, %.12229
  %i.k = zext i1 %i.j to i16
  %.225 = select i1 %i.i, i32 0, i32 %i.h
  %.2.v = select i1 %i.i, i16 10, i16 %i.k
  %.2 = add i16 %.2.v, %.130
  %i.l = trunc i64 %indvars.iv to i32
  %i.m = or disjoint i32 %i.l, 1
  %i.n = add i32 %i.b, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35   ; 5 uses
  %i.r = add nsw i32 %i.q, %.225                  ; 2 uses
  %i.s = icmp sgt i32 %i.r, %i.a                  ; 2 uses
  %i.t = icmp sgt i32 %i.q, %i.g
  %i.u = zext i1 %i.t to i16
  %.225.1 = select i1 %i.s, i32 0, i32 %i.r       ; 3 uses
  %.2.v.1 = select i1 %i.s, i16 10, i16 %i.u
  %.2.1 = add i16 %.2.v.1, %.2                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new, !llvm.loop !2

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %.epil.preheader, label %bb.b

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.130.epil.init = phi i16 [ %.02034, %.preheader ], [ %.2.1, %.unr-lcssa ]
  %.12229.epil.init = phi i32 [ %.02133, %.preheader ], [ %i.q, %.unr-lcssa ]
  %.12428.epil.init = phi i32 [ %.02332, %.preheader ], [ %.225.1, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.v = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.w = add i32 %i.b, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35   ; 3 uses
  %i.aa = add nsw i32 %i.z, %.12428.epil.init     ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, %i.a                ; 2 uses
  %i.ac = icmp sgt i32 %i.z, %.12229.epil.init
  %i.ad = zext i1 %i.ac to i16
  %.225.epil = select i1 %i.ab, i32 0, i32 %i.aa
  %.2.v.epil = select i1 %i.ab, i16 10, i16 %i.ad
  %.2.epil = add i16 %.2.v.epil, %.130.epil.init
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.q, %.unr-lcssa ], [ %i.z, %.epil.preheader ]
  %.225.lcssa = phi i32 [ %.225.1, %.unr-lcssa ], [ %.225.epil, %.epil.preheader ]
  %.2.lcssa = phi i16 [ %.2.1, %.unr-lcssa ], [ %.2.epil, %.epil.preheader ] ; 2 uses
  %i.ae = add nuw i32 %.01935, 1                  ; 2 uses
  %exitcond36.not = icmp eq i32 %i.ae, %0
  br i1 %exitcond36.not, label %._crit_edge, label %.preheader, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.020.lcssa = phi i16 [ 0, %bb.a ], [ %.2.lcssa, %bb.b ]
  ret i16 %.020.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matrix_mul_vect(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count23 = zext i32 %0 to i64         ; 7 uses
  %i.a = add nsw i64 %wide.trip.count23, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp ugt i64 %i.a, 4294967295
  %n.vec = and i64 %wide.trip.count23, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count23
  %xtraiter = and i64 %wide.trip.count23, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv20 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next21, %.loopexit ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv20
  %i.e = trunc nuw i64 %indvars.iv20 to i32
  %i.f = mul i32 %0, %i.e                         ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.g = xor i32 %i.f, -1
  %i.h = icmp ult i32 %i.g, %i.b
  %i.i = or i1 %i.h, %i.c
  br i1 %i.i, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.w, %vector.body ], [ zeroinitializer, %vector.scevcheck ]
  %vec.phi25 = phi <4 x i32> [ %i.x, %vector.body ], [ zeroinitializer, %vector.scevcheck ]
  %i.j = trunc nuw i64 %index to i32
  %i.k = add i32 %i.f, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %wide.load = load <4 x i16>, ptr %i.m, align 2, !tbaa !29
  %wide.load26 = load <4 x i16>, ptr %i.n, align 2, !tbaa !29
  %i.o = sext <4 x i16> %wide.load to <4 x i32>
  %i.p = sext <4 x i16> %wide.load26 to <4 x i32>
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %wide.load27 = load <4 x i16>, ptr %i.q, align 2, !tbaa !29
  %wide.load28 = load <4 x i16>, ptr %i.r, align 2, !tbaa !29
  %i.s = sext <4 x i16> %wide.load27 to <4 x i32>
  %i.t = sext <4 x i16> %wide.load28 to <4 x i32>
  %i.u = mul nsw <4 x i32> %i.s, %i.o
  %i.v = mul nsw <4 x i32> %i.t, %i.p
  %i.w = add <4 x i32> %i.u, %vec.phi             ; 2 uses
  %i.x = add <4 x i32> %i.v, %vec.phi25           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.x, %i.w
  %i.z = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.z, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aa = phi i32 [ %i.al, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = trunc nuw i64 %indvars.iv.prol to i32
  %i.ac = add i32 %i.f, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29
  %i.ag = sext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.prol
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !29
  %i.aj = sext i16 %i.ai to i32
  %i.ak = mul nsw i32 %i.aj, %i.ag
  %i.al = add nsw i32 %i.ak, %i.aa                ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !58

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa31.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count23
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = phi i32 [ %i.cg, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.ap = trunc nuw i64 %indvars.iv to i32
  %i.aq = add i32 %i.f, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !29
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !29
  %i.ax = sext i16 %i.aw to i32
  %i.ay = mul nsw i32 %i.ax, %i.au
  %i.az = add nsw i32 %i.ay, %i.ao
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = trunc nuw i64 %indvars.iv.next to i32
  %i.bb = add i32 %i.f, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !29
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !29
  %i.bi = sext i16 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.bf
  %i.bk = add nsw i32 %i.bj, %i.az
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bl = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.bm = add i32 %i.f, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !29
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !29
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.bq
  %i.bv = add nsw i32 %i.bu, %i.bk
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bw = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.bx = add i32 %i.f, %i.bw
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !29
  %i.cb = sext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !29
  %i.ce = sext i16 %i.cd to i32
  %i.cf = mul nsw i32 %i.ce, %i.cb
  %i.cg = add nsw i32 %i.cf, %i.bv                ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count23
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !59

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.z, %middle.block ], [ %.lcssa31.unr, %scalar.ph.prol.loopexit ], [ %i.cg, %scalar.ph ]
  store i32 %.lcssa, ptr %i.d, align 4, !tbaa !35
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count23
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matrix_mul_matrix(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count34 = zext i32 %0 to i64         ; 2 uses
  %i.a = icmp eq i32 %0, 1
  %unroll_iter = and i64 %wide.trip.count34, 4294967294
  %lcmp.mod.not = trunc i32 %0 to i1
  %lcmp.mod39 = trunc i32 %0 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.d
  %.02529 = phi i32 [ %i.ay, %bb.d ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.b = mul i32 %.02529, %0                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv31 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next32, %bb.c ] ; 2 uses
  %i.c = trunc nuw i64 %indvars.iv31 to i32       ; 4 uses
  %i.d = add i32 %i.b, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  br i1 %i.a, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ 0, %bb.b ] ; 3 uses
  %i.g = phi i32 [ %i.aj, %.new ], [ 0, %bb.b ]
  %niter = phi i64 [ %niter.next.1, %.new ], [ 0, %bb.b ]
  %i.h = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.i = add i32 %i.b, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !29
  %i.m = sext i16 %i.l to i32
  %i.n = mul i32 %0, %i.h
  %i.o = add i32 %i.n, %i.c
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !29
  %i.s = sext i16 %i.r to i32
  %i.t = mul nsw i32 %i.s, %i.m
  %i.u = add nsw i32 %i.t, %i.g
  %i.v = trunc i64 %indvars.iv to i32
  %i.w = or disjoint i32 %i.v, 1                  ; 2 uses
  %i.x = add i32 %i.b, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !29
  %i.ab = sext i16 %i.aa to i32
  %i.ac = mul i32 %0, %i.w
  %i.ad = add i32 %i.ac, %i.c
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !29
  %i.ah = sext i16 %i.ag to i32
  %i.ai = mul nsw i32 %i.ah, %i.ab
  %i.aj = add nsw i32 %i.ai, %i.u                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.new, !llvm.loop !5

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epil.preheader, label %bb.c

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %bb.b ], [ %i.aj, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.ak = trunc nuw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %i.al = add i32 %i.b, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !29
  %i.ap = sext i16 %i.ao to i32
  %i.aq = mul i32 %0, %i.ak
  %i.ar = add i32 %i.aq, %i.c
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.ap
  %i.ax = add nsw i32 %i.aw, %.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.aj, %.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  store i32 %.lcssa, ptr %i.f, align 4, !tbaa !35
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %bb.d, label %bb.b, !llvm.loop !6

bb.d:                                             ; preds = %bb.c
  %i.ay = add nuw i32 %.02529, 1                  ; 2 uses
  %exitcond36.not = icmp eq i32 %i.ay, %0
  br i1 %exitcond36.not, label %._crit_edge, label %.preheader, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matrix_mul_matrix_bitextract(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count36 = zext i32 %0 to i64         ; 2 uses
  %i.a = icmp eq i32 %0, 1
  %unroll_iter = and i64 %wide.trip.count36, 4294967294
  %lcmp.mod.not = trunc i32 %0 to i1
  %lcmp.mod41 = trunc i32 %0 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.d
  %.031 = phi i32 [ %i.bn, %bb.d ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.b = mul i32 %.031, %0                        ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv33 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next34, %bb.c ] ; 2 uses
  %i.c = trunc nuw i64 %indvars.iv33 to i32       ; 4 uses
  %i.d = add i32 %i.b, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  br i1 %i.a, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.new ], [ 0, %bb.b ] ; 3 uses
  %i.g = phi i32 [ %i.at, %.new ], [ 0, %bb.b ]
  %niter = phi i64 [ %niter.next.1, %.new ], [ 0, %bb.b ]
  %i.h = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.i = add i32 %i.b, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !29
  %i.m = zext i16 %i.l to i32
  %i.n = mul i32 %0, %i.h
  %i.o = add i32 %i.n, %i.c
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !29
  %i.s = zext i16 %i.r to i32
  %i.t = mul nuw i32 %i.s, %i.m                   ; 2 uses
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 15
  %i.w = lshr i32 %i.t, 5
  %i.x = and i32 %i.w, 127
  %i.y = mul nuw nsw i32 %i.v, %i.x
  %i.z = add i32 %i.y, %i.g
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = or disjoint i32 %i.aa, 1                ; 2 uses
  %i.ac = add i32 %i.b, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !29
  %i.ag = zext i16 %i.af to i32
  %i.ah = mul i32 %0, %i.ab
  %i.ai = add i32 %i.ah, %i.c
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !29
  %i.am = zext i16 %i.al to i32
  %i.an = mul nuw i32 %i.am, %i.ag                ; 2 uses
  %i.ao = lshr i32 %i.an, 2
  %i.ap = and i32 %i.ao, 15
  %i.aq = lshr i32 %i.an, 5
  %i.ar = and i32 %i.aq, 127
  %i.as = mul nuw nsw i32 %i.ap, %i.ar
  %i.at = add i32 %i.as, %i.z                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.new, !llvm.loop !8

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epil.preheader, label %bb.c

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %bb.b ], [ %i.at, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.au = trunc nuw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %i.av = add i32 %i.b, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !29
  %i.az = zext i16 %i.ay to i32
  %i.ba = mul i32 %0, %i.au
  %i.bb = add i32 %i.ba, %i.c
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !29
  %i.bf = zext i16 %i.be to i32
  %i.bg = mul nuw i32 %i.bf, %i.az                ; 2 uses
  %i.bh = lshr i32 %i.bg, 2
  %i.bi = and i32 %i.bh, 15
  %i.bj = lshr i32 %i.bg, 5
  %i.bk = and i32 %i.bj, 127
  %i.bl = mul nuw nsw i32 %i.bi, %i.bk
  %i.bm = add i32 %i.bl, %.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.at, %.unr-lcssa ], [ %i.bm, %.epil.preheader ]
  store i32 %.lcssa, ptr %i.f, align 4, !tbaa !35
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %bb.d, label %bb.b, !llvm.loop !9

bb.d:                                             ; preds = %bb.c
  %i.bn = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond38.not = icmp eq i32 %i.bn, %0
  br i1 %exitcond38.not, label %._crit_edge, label %.preheader, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @core_init_matrix(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 3
  %i.c = and i64 %i.b, 4294967292
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04653 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 5 uses
  %i.f = add i32 %.04653, 1                       ; 3 uses
  %i.g = shl i32 %i.f, 3
  %i.h = mul i32 %i.g, %i.f
  %i.i = icmp ult i32 %i.h, %0
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph
  %i.j = ptrtoint ptr %1 to i64
  %i.k = add i64 %i.j, 3
  %i.l = and i64 %i.k, 4294967292
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = mul i32 %.04653, %.04653
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %.not61 = icmp eq i32 %.04653, 0
  br i1 %.not61, label %._crit_edge60, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.q = phi ptr [ %i.e, %._crit_edge.thread ], [ %i.p, %._crit_edge ] ; 2 uses
  %i.r = phi i64 [ 1, %._crit_edge.thread ], [ %i.o, %._crit_edge ]
  %i.s = phi ptr [ %i.d, %._crit_edge.thread ], [ %i.m, %._crit_edge ] ; 2 uses
  %.046.lcssa68 = phi i32 [ -1, %._crit_edge.thread ], [ %.04653, %._crit_edge ] ; 4 uses
  %wide.trip.count = zext i32 %.046.lcssa68 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.c
  %.14759 = phi i32 [ %i.ah, %bb.c ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04858 = phi i32 [ %i.ag, %bb.c ], [ 1, %.preheader.preheader ]
  %.05057 = phi i32 [ %i.v, %bb.c ], [ %spec.store.select, %.preheader.preheader ]
  %i.t = mul i32 %.14759, %.046.lcssa68
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.14955 = phi i32 [ %.04858, %.preheader ], [ %i.ag, %bb.b ] ; 4 uses
  %.15154 = phi i32 [ %.05057, %.preheader ], [ %i.v, %bb.b ]
  %i.u = mul nsw i32 %.14955, %.15154
  %i.v = srem i32 %i.u, 65536                     ; 3 uses
  %i.w = add nsw i32 %i.v, %.14955                ; 2 uses
  %i.x = trunc i32 %i.w to i16
  %i.y = trunc nuw i64 %indvars.iv to i32
  %i.z = add i32 %i.t, %i.y
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.aa
  store i16 %i.x, ptr %i.ab, align 2, !tbaa !29
  %i.ac = add i32 %i.w, %.14955
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = and i16 %i.ad, 255
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.aa
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !29
  %i.ag = add nsw i32 %.14955, 1                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !61

bb.c:                                             ; preds = %bb.b
  %i.ah = add nuw i32 %.14759, 1                  ; 2 uses
  %exitcond64.not = icmp eq i32 %i.ah, %.046.lcssa68
  br i1 %exitcond64.not, label %._crit_edge60, label %.preheader, !llvm.loop !62

._crit_edge60:                                    ; preds = %bb.c, %._crit_edge
  %i.ai = phi ptr [ %i.p, %._crit_edge ], [ %i.q, %bb.c ] ; 2 uses
  %i.aj = phi i64 [ %i.o, %._crit_edge ], [ %i.r, %bb.c ]
  %i.ak = phi ptr [ %i.m, %._crit_edge ], [ %i.s, %bb.c ]
  %.046.lcssa69 = phi i32 [ 0, %._crit_edge ], [ %.046.lcssa68, %bb.c ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.aj
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 3
  %i.aq = and i64 %i.ap, 4294967292
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !25
  store i32 %.046.lcssa69, ptr %3, align 8, !tbaa !24
  ret i32 %.046.lcssa69
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = distinct !{!4, !30}
!5 = distinct !{!5, !30}
!6 = distinct !{!6, !30}
!7 = distinct !{!7, !30}
!8 = distinct !{!8, !30}
!9 = distinct !{!9, !30}
!10 = distinct !{!10, !30}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 short", !20, i64 0}
!22 = !{!"p1 int", !20, i64 0}
!23 = !{!"MAT_PARAMS_S", !17, i64 0, !21, i64 8, !21, i64 16, !22, i64 24}
!24 = !{!23, !17, i64 0}
!25 = !{!23, !22, i64 24}
!26 = !{!23, !21, i64 8}
!27 = !{!23, !21, i64 16}
!28 = !{!"short", !16, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!17, !17, i64 0}
!36 = distinct !{!36, !30, !31, !32}
!37 = distinct !{!37, !30, !31, !32}
!38 = distinct !{!38, !34}
end_hunk_1
