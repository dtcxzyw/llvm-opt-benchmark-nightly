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
  %wide.trip.count.i = zext i32 %0 to i64         ; 45 uses
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

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
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
end_hunk_0
begin_hunk_1_@matrix_test:bb.a
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
  %xtraiter318 = and i64 %wide.trip.count.i, 1
  %i.pa = icmp eq i64 %i.f, 0
  %unroll_iter325 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod319.not = icmp eq i64 %xtraiter318, 0
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
  br i1 %lcmp.mod319.not, label %bb.k, label %.epil.preheader317

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

vec.epilog.scalar.ph235.preheader:                ; preds = %vector.scevcheck217, %iter.check234, %vec.epilog.iter.check236, %vec.epilog.middle.block246
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
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec19 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %broadcast.splatinsert20 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat21 = shufflevector <4 x i16> %broadcast.splatinsert20, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n25 = icmp eq i64 %n.vec19, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %.loopexit
  %.01013 = phi i32 [ %i.az, %.loopexit ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.e = mul i32 %.01013, %0                      ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.f = xor i32 %i.e, -1
  %i.g = icmp ult i32 %i.f, %i.b
  %i.h = or i1 %i.g, %i.c
  br i1 %i.h, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.i = trunc nuw i64 %index to i32
  %i.j = add i32 %i.e, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.l, align 2, !tbaa !29
  %wide.load18 = load <8 x i16>, ptr %i.m, align 2, !tbaa !29
  %i.n = add <8 x i16> %wide.load, %broadcast.splat
  %i.o = add <8 x i16> %wide.load18, %broadcast.splat
  store <8 x i16> %i.n, ptr %i.l, align 2, !tbaa !29
  store <8 x i16> %i.o, ptr %i.m, align 2, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.q = trunc nuw i64 %index22 to i32
  %i.r = add i32 %i.e, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.s ; 2 uses
  %wide.load23 = load <4 x i16>, ptr %i.t, align 2, !tbaa !29
  %i.u = add <4 x i16> %wide.load23, %broadcast.splat21
  store <4 x i16> %i.u, ptr %i.t, align 2, !tbaa !29
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n25, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec19, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = trunc nuw i64 %indvars.iv.prol to i32
  %i.x = add i32 %i.e, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !29
  %i.ab = add i16 %i.aa, %2
  store i16 %i.ab, ptr %i.z, align 2, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !52

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
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
end_hunk_1
