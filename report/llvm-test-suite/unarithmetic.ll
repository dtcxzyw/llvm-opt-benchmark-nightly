inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@in_size = dso_local local_unnamed_addr global i32 0, align 4
@in_pos = dso_local local_unnamed_addr global i32 0, align 4
@deari_pos = dso_local local_unnamed_addr global i32 0, align 4
@cum_freq = dso_local local_unnamed_addr global [258 x i32] zeroinitializer, align 16
@index_to_char = dso_local local_unnamed_addr global [258 x i8] zeroinitializer, align 16
@deari = external local_unnamed_addr global ptr, align 8
@char_to_index = dso_local local_unnamed_addr global [256 x i32] zeroinitializer, align 16
@freq = dso_local local_unnamed_addr global [258 x i32] zeroinitializer, align 16
@buffer = dso_local local_unnamed_addr global i32 0, align 4
@bits_to_go = dso_local local_unnamed_addr global i32 0, align 4
@garbage_bits = dso_local local_unnamed_addr global i32 0, align 4
@in = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Bad input file\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @do_deari(i32 noundef %0) local_unnamed_addr #0 {
vector.ph:
  store i32 %0, ptr @in_size, align 4, !tbaa !4
  store i32 0, ptr @in_pos, align 4, !tbaa !4
  store i32 0, ptr @deari_pos, align 4, !tbaa !4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i8> %vec.ind, splat (i8 4)
  %i.a = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.b = shufflevector <4 x i64> %i.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %index ; 2 uses
  %i.d = trunc <4 x i64> %i.b to <4 x i32>
  %i.e = or disjoint <4 x i32> %i.d, <i32 1, i32 2, i32 3, i32 4>
  %i.f = trunc <4 x i64> %i.b to <4 x i32>
  %i.g = add <4 x i32> %i.f, <i32 5, i32 6, i32 7, i32 8>
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x i32> %i.e, ptr %i.c, align 16, !tbaa !4
  store <4 x i32> %i.g, ptr %i.h, align 16, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr @index_to_char, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store <4 x i8> %vec.ind, ptr %i.j, align 1, !tbaa !8
  store <4 x i8> %step.add, ptr %i.k, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.l = icmp eq i64 %index.next, 256
  br i1 %i.l, label %vector.body85, label %vector.body, !llvm.loop !9

vector.body85:                                    ; preds = %vector.body, %vector.body85
  %index86 = phi i64 [ %index.next89.1, %vector.body85 ], [ 0, %vector.body ] ; 4 uses
  %vec.ind87 = phi <4 x i32> [ %vec.ind.next90.1, %vector.body85 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body ] ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index86 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> splat (i32 1), ptr %i.m, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.n, align 16, !tbaa !4
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index86 ; 2 uses
  %i.p = sub <4 x i32> splat (i32 257), %vec.ind87
  %i.q = sub <4 x i32> splat (i32 253), %vec.ind87
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %i.p, ptr %i.o, align 16, !tbaa !4
  store <4 x i32> %i.q, ptr %i.r, align 16, !tbaa !4
  %index.next89 = or disjoint i64 %index86, 8     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index.next89 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> splat (i32 1), ptr %i.s, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.t, align 16, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index.next89 ; 2 uses
  %i.v = sub <4 x i32> splat (i32 249), %vec.ind87
  %i.w = sub <4 x i32> splat (i32 245), %vec.ind87
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %i.v, ptr %i.u, align 16, !tbaa !4
  store <4 x i32> %i.w, ptr %i.x, align 16, !tbaa !4
  %index.next89.1 = add nuw nsw i64 %index86, 16  ; 2 uses
  %vec.ind.next90.1 = add <4 x i32> %vec.ind87, splat (i32 16)
  %i.y = icmp eq i64 %index.next89.1, 256
  br i1 %i.y, label %.preheader.i, label %vector.body85, !llvm.loop !13

.preheader.i:                                     ; preds = %vector.body85
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @freq, i64 1024), align 16, !tbaa !4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @cum_freq, i64 1024), align 16, !tbaa !4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @freq, i64 1028), align 4, !tbaa !4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @cum_freq, i64 1028), align 4, !tbaa !4
  store i32 0, ptr @freq, align 16, !tbaa !4
  store i32 0, ptr @bits_to_go, align 4, !tbaa !4
  store i32 0, ptr @garbage_bits, align 4, !tbaa !4
  %buffer.promoted.i = load i32, ptr @buffer, align 4
  %i.z = load ptr, ptr @in, align 8
  br label %bb.a

bb.a:                                             ; preds = %input_bit.exit.i, %.preheader.i
  %.02.i = phi i32 [ 1, %.preheader.i ], [ %i.ba, %input_bit.exit.i ]
  %i.aa = phi i64 [ 0, %.preheader.i ], [ %i.az, %input_bit.exit.i ]
  %i.ab = phi i32 [ 0, %.preheader.i ], [ %i.ax, %input_bit.exit.i ] ; 2 uses
  %i.ac = phi i32 [ 0, %.preheader.i ], [ %i.at, %input_bit.exit.i ] ; 5 uses
  %i.ad = phi i32 [ 0, %.preheader.i ], [ %i.as, %input_bit.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %buffer.promoted.i, %.preheader.i ], [ %i.aw, %input_bit.exit.i ] ; 2 uses
  %i.af = shl nsw i64 %i.aa, 1
  %i.ag = icmp eq i32 %i.ab, 0
  br i1 %i.ag, label %bb.b, label %input_bit.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp ult i32 %i.ac, %0
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = add nuw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.ai, ptr @in_pos, align 4, !tbaa !4
  %i.aj = zext i32 %i.ac to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = zext i8 %i.al to i32
  br label %input_bit.exit.i

bb.d:                                             ; preds = %bb.b
  %i.an = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.an, ptr @garbage_bits, align 4, !tbaa !4
  %i.ao = icmp sgt i32 %i.ad, 13
  br i1 %i.ao, label %bb.e, label %input_bit.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aq = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %i.ap) #3 ; 0 uses
  tail call void @exit(i32 noundef -1) #4
  unreachable

input_bit.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.a
  %i.ar = phi i32 [ %i.ae, %bb.a ], [ %i.ae, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %i.as = phi i32 [ %i.ad, %bb.a ], [ %i.an, %bb.d ], [ %i.ad, %bb.c ]
  %i.at = phi i32 [ %i.ac, %bb.a ], [ %i.ac, %bb.d ], [ %i.ai, %bb.c ]
  %i.au = phi i32 [ %i.ab, %bb.a ], [ 8, %bb.d ], [ 8, %bb.c ]
  %i.av = and i32 %i.ar, 1
  %i.aw = ashr i32 %i.ar, 1                       ; 2 uses
  store i32 %i.aw, ptr @buffer, align 4, !tbaa !4
  %i.ax = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.ax, ptr @bits_to_go, align 4, !tbaa !4
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = or disjoint i64 %i.af, %i.ay            ; 2 uses
  %i.ba = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.ba, 17
  br i1 %exitcond.not.i7, label %start_decoding.exit, label %bb.a, !llvm.loop !17

start_decoding.exit:                              ; preds = %input_bit.exit.i, %start_decoding.exit.backedge
  %i.bb = phi i64 [ %i.ce, %start_decoding.exit.backedge ], [ %i.az, %input_bit.exit.i ] ; 2 uses
  %i.bc = phi i64 [ %i.cj, %start_decoding.exit.backedge ], [ 0, %input_bit.exit.i ] ; 4 uses
  %i.bd = phi i64 [ %i.ck, %start_decoding.exit.backedge ], [ 65535, %input_bit.exit.i ]
  %i.be = sub nsw i64 %i.bd, %i.bc
  %i.bf = add nuw nsw i64 %i.be, 1                ; 3 uses
  %reass.sub = sub i64 %i.bb, %i.bc
  %i.bg = add i64 %reass.sub, 1
  %i.bh = load i32, ptr @cum_freq, align 16, !tbaa !4
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %i.bj = mul nsw i64 %i.bg, %i.bi
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = sdiv i64 %i.bk, %i.bf
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %start_decoding.exit
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i9, %bb.f ], [ 1, %start_decoding.exit ] ; 7 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, %i.bm
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 1
  br i1 %i.bp, label %bb.f, label %bb.g, !llvm.loop !18

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i8
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.bf, %i.bt
  %i.bv = sdiv i64 %i.bu, %i.bi
  %i.bw = add i64 %i.bc, -1
  %i.bx = add i64 %i.bw, %i.bv
  %i.by = sext i32 %i.bo to i64
  %i.bz = mul nsw i64 %i.bf, %i.by
  %i.ca = sdiv i64 %i.bz, %i.bi
  %i.cb = add nsw i64 %i.ca, %i.bc
  %bits_to_go.promoted.i10 = load i32, ptr @bits_to_go, align 4
  %in_pos.promoted.i11 = load i32, ptr @in_pos, align 4
  %garbage_bits.promoted.i12 = load i32, ptr @garbage_bits, align 4
  %buffer.promoted.i13 = load i32, ptr @buffer, align 4
  %i.cc = load i32, ptr @in_size, align 4
  %i.cd = load ptr, ptr @in, align 8
  br label %bb.h

bb.h:                                             ; preds = %input_bit.exit.i14, %bb.g
  %i.ce = phi i64 [ %i.ds, %input_bit.exit.i14 ], [ %i.bb, %bb.g ] ; 3 uses
  %i.cf = phi i32 [ %i.dp, %input_bit.exit.i14 ], [ %buffer.promoted.i13, %bb.g ] ; 2 uses
  %i.cg = phi i32 [ %i.dl, %input_bit.exit.i14 ], [ %garbage_bits.promoted.i12, %bb.g ] ; 4 uses
  %i.ch = phi i32 [ %i.dm, %input_bit.exit.i14 ], [ %in_pos.promoted.i11, %bb.g ] ; 5 uses
  %i.ci = phi i32 [ %i.dq, %input_bit.exit.i14 ], [ %bits_to_go.promoted.i10, %bb.g ] ; 2 uses
  %i.cj = phi i64 [ %i.cv, %input_bit.exit.i14 ], [ %i.cb, %bb.g ] ; 5 uses
  %i.ck = phi i64 [ %i.cx, %input_bit.exit.i14 ], [ %i.bx, %bb.g ] ; 5 uses
  %i.cl = icmp slt i64 %i.ck, 32768
  br i1 %i.cl, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = icmp sgt i64 %i.cj, 32767
  br i1 %i.cm, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = icmp sgt i64 %i.cj, 16383
  %i.co = icmp samesign ult i64 %i.ck, 49152
  %or.cond.i = and i1 %i.cn, %i.co
  br i1 %or.cond.i, label %.sink.split.i, label %decode_symbol.exit

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sink17.i = phi i64 [ -32768, %bb.i ], [ -16384, %bb.j ] ; 3 uses
  %i.cp = add nsw i64 %.sink17.i, %i.ce
  %i.cq = add nsw i64 %.sink17.i, %i.cj
  %i.cr = add nsw i64 %.sink17.i, %i.ck
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h
  %i.cs = phi i64 [ %i.ce, %bb.h ], [ %i.cp, %.sink.split.i ]
  %i.ct = phi i64 [ %i.cj, %bb.h ], [ %i.cq, %.sink.split.i ]
  %i.cu = phi i64 [ %i.ck, %bb.h ], [ %i.cr, %.sink.split.i ]
  %i.cv = shl nsw i64 %i.ct, 1
  %i.cw = shl nsw i64 %i.cu, 1
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = shl nsw i64 %i.cs, 1
  %i.cz = icmp eq i32 %i.ci, 0
  br i1 %i.cz, label %bb.l, label %input_bit.exit.i14

bb.l:                                             ; preds = %bb.k
  %i.da = icmp ult i32 %i.ch, %i.cc
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = add nuw i32 %i.ch, 1                    ; 2 uses
  store i32 %i.db, ptr @in_pos, align 4, !tbaa !4
  %i.dc = zext i32 %i.ch to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8
  %i.df = zext i8 %i.de to i32
  br label %input_bit.exit.i14

bb.n:                                             ; preds = %bb.l
  %i.dg = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.dg, ptr @garbage_bits, align 4, !tbaa !4
  %i.dh = icmp sgt i32 %i.cg, 13
  br i1 %i.dh, label %bb.o, label %input_bit.exit.i14

bb.o:                                             ; preds = %bb.n
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.dj = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %i.di) #3 ; 0 uses
  tail call void @exit(i32 noundef -1) #4
  unreachable

input_bit.exit.i14:                               ; preds = %bb.n, %bb.m, %bb.k
  %i.dk = phi i32 [ %i.cf, %bb.k ], [ %i.cf, %bb.n ], [ %i.df, %bb.m ] ; 2 uses
  %i.dl = phi i32 [ %i.cg, %bb.k ], [ %i.dg, %bb.n ], [ %i.cg, %bb.m ]
  %i.dm = phi i32 [ %i.ch, %bb.k ], [ %i.ch, %bb.n ], [ %i.db, %bb.m ]
  %i.dn = phi i32 [ %i.ci, %bb.k ], [ 8, %bb.n ], [ 8, %bb.m ]
  %i.do = and i32 %i.dk, 1
  %i.dp = ashr i32 %i.dk, 1                       ; 2 uses
  store i32 %i.dp, ptr @buffer, align 4, !tbaa !4
  %i.dq = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.dq, ptr @bits_to_go, align 4, !tbaa !4
  %i.dr = zext nneg i32 %i.do to i64
  %i.ds = or disjoint i64 %i.cy, %i.dr
  br label %bb.h

decode_symbol.exit:                               ; preds = %bb.j
  %i.dt = trunc nuw nsw i64 %indvars.iv.i8 to i32
  %i.du = icmp eq i64 %indvars.iv.i8, 257
  br i1 %i.du, label %bb.t, label %bb.p

bb.p:                                             ; preds = %decode_symbol.exit
  %sext = shl i64 %indvars.iv.i8, 32
  %1 = ashr exact i64 %sext, 32                   ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr @index_to_char, i64 %1 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8   ; 3 uses
  %i.dx = load ptr, ptr @deari, align 8, !tbaa !19
  %i.dy = load i32, ptr @deari_pos, align 4, !tbaa !4 ; 2 uses
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @deari_pos, align 4, !tbaa !4
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ea
  store i8 %i.dw, ptr %i.eb, align 1, !tbaa !8
  %i.ec = load i32, ptr @cum_freq, align 16, !tbaa !4
  %i.ed = icmp eq i32 %i.ec, 16383
  br i1 %i.ed, label %.preheader.i15, label %.loopexit.i.preheader

.preheader.i15:                                   ; preds = %bb.p, %.preheader.i15
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i17.1, %.preheader.i15 ], [ 257, %bb.p ] ; 4 uses
  %.02832.i = phi i32 [ %i.ep, %.preheader.i15 ], [ 0, %bb.p ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %indvars.iv.i16 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.eg = add nsw i32 %i.ef, 1
  %i.eh = sdiv i32 %i.eg, 2                       ; 2 uses
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i16
  store i32 %.02832.i, ptr %i.ei, align 4, !tbaa !4
  %i.ej = add nsw i32 %i.eh, %.02832.i            ; 2 uses
  %indvars.iv.next.i17 = add nsw i64 %indvars.iv.i16, -1 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %indvars.iv.next.i17 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = add nsw i32 %i.el, 1
  %i.en = sdiv i32 %i.em, 2                       ; 2 uses
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !4
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.next.i17
  store i32 %i.ej, ptr %i.eo, align 4, !tbaa !4
  %i.ep = add nsw i32 %i.en, %i.ej
  %indvars.iv.next.i17.1 = add nsw i64 %indvars.iv.i16, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i17, 0
  br i1 %.not.i.1, label %.loopexit.i.preheader, label %.preheader.i15, !llvm.loop !21

.loopexit.i.preheader:                            ; preds = %.preheader.i15, %bb.p
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.preheader, %.loopexit.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %.loopexit.i ], [ %1, %.loopexit.i.preheader ] ; 9 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr @freq, i64 %indvars.iv38.i ; 3 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4  ; 2 uses
  %i.es = getelementptr i8, ptr %i.eq, i64 -4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = icmp eq i32 %i.er, %i.et
  %indvars.iv.next39.i = add i64 %indvars.iv38.i, -1
  br i1 %i.eu, label %.loopexit.i, label %bb.q, !llvm.loop !22

bb.q:                                             ; preds = %.loopexit.i
  %i.ev = icmp sgt i64 %indvars.iv.i8, %indvars.iv38.i
  br i1 %i.ev, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %indvars48.le = trunc i64 %indvars.iv38.i to i32
  %i.ew = getelementptr inbounds i8, ptr @index_to_char, i64 %indvars.iv38.i ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !8   ; 2 uses
  store i8 %i.dw, ptr %i.ew, align 1, !tbaa !8
  store i8 %i.ex, ptr %i.dv, align 1, !tbaa !8
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %i.ey
  store i32 %i.dt, ptr %i.ez, align 4, !tbaa !4
  %i.fa = zext i8 %i.dw to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %i.fa
  store i32 %indvars48.le, ptr %i.fb, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fc = add nsw i32 %i.er, 1
  store i32 %i.fc, ptr %i.eq, align 4, !tbaa !4
  %i.fd = icmp sgt i64 %indvars.iv38.i, 0
  br i1 %i.fd, label %.lr.ph.preheader.i, label %start_decoding.exit.backedge

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.fe = and i64 %indvars.iv38.i, 4294967295     ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.fe, 8
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %indvars.iv38.i, 4294967288    ; 2 uses
  %i.ff = and i64 %indvars.iv38.i, 7
  %i.fg = getelementptr [4 x i8], ptr @cum_freq, i64 %i.fe
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph93
  %index95 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %i.fh = xor i64 %index95, -1
  %i.fi = getelementptr [4 x i8], ptr %i.fg, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -12 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fj, align 4, !tbaa !4
  %wide.load96 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !4
  %i.fl = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.fm = add nsw <4 x i32> %wide.load96, splat (i32 1)
  store <4 x i32> %i.fl, ptr %i.fj, align 4, !tbaa !4
  store <4 x i32> %i.fm, ptr %i.fk, align 4, !tbaa !4
  %index.next100 = add nuw i64 %index95, 8        ; 2 uses
  %i.fn = icmp eq i64 %index.next100, %n.vec
  br i1 %i.fn, label %middle.block101, label %vector.body94, !llvm.loop !23

middle.block101:                                  ; preds = %vector.body94
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %start_decoding.exit.backedge, label %.lr.ph.i

start_decoding.exit.backedge:                     ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %middle.block101, %bb.s
  br label %start_decoding.exit

.lr.ph.i:                                         ; preds = %middle.block101, %.lr.ph.preheader.i
  %indvars.iv43.i.ph = phi i64 [ %i.fe, %.lr.ph.preheader.i ], [ %i.ff, %middle.block101 ] ; 13 uses
  %i.fo = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.fp = getelementptr i8, ptr %i.fo, i64 -4     ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !4
  %i.fs = icmp samesign ugt i64 %indvars.iv43.i.ph, 1
  br i1 %i.fs, label %.lr.ph.i.1, label %start_decoding.exit.backedge

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ft = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8     ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !4
  %.not = icmp eq i64 %indvars.iv43.i.ph, 2
  br i1 %.not, label %start_decoding.exit.backedge, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.fx = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.fy = getelementptr i8, ptr %i.fx, i64 -12    ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !4
  %i.gb = icmp samesign ugt i64 %indvars.iv43.i.ph, 3
  br i1 %i.gb, label %.lr.ph.i.3, label %start_decoding.exit.backedge

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.gc = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16    ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !4
  %.not111 = icmp eq i64 %indvars.iv43.i.ph, 4
  br i1 %.not111, label %start_decoding.exit.backedge, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.gg = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.gh = getelementptr i8, ptr %i.gg, i64 -20    ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !4
  %i.gk = icmp samesign ugt i64 %indvars.iv43.i.ph, 5
  br i1 %i.gk, label %.lr.ph.i.5, label %start_decoding.exit.backedge

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.gl = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.gm = getelementptr i8, ptr %i.gl, i64 -24    ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !4
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !4
  %i.gp = icmp eq i64 %indvars.iv43.i.ph, 7
  br i1 %i.gp, label %.lr.ph.i.6, label %start_decoding.exit.backedge

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.gq = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.gr = getelementptr i8, ptr %i.gq, i64 -28    ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !4
  %i.gt = add nsw i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !4
  br label %start_decoding.exit.backedge

bb.t:                                             ; preds = %decode_symbol.exit
  %i.gu = load i32, ptr @deari_pos, align 4, !tbaa !4
  ret i32 %i.gu
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold }
attributes #4 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !11, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !16, i64 0}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10, !11, !12}
end_hunk_0
