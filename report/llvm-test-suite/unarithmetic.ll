Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/unarithmetic?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
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
  store i32 %0, ptr @in_size, align 4, !tbaa !7
  store i32 0, ptr @in_pos, align 4, !tbaa !7
  store i32 0, ptr @deari_pos, align 4, !tbaa !7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.a, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 5 uses
  %vec.ind.a = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next.a, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.a = add <4 x i8> %vec.ind.a, splat (i8 4)
  %1 = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %index ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %vec.ind, ptr %1, align 16, !tbaa !7
  store <4 x i32> %step.add, ptr %2, align 16, !tbaa !7
  %3 = getelementptr inbounds nuw i8, ptr @index_to_char, i64 %index ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 5
  store <4 x i8> %vec.ind.a, ptr %4, align 1, !tbaa !15
  store <4 x i8> %step.add.a, ptr %5, align 1, !tbaa !15
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next87 = add <4 x i8> %vec.ind.a, splat (i8 8)
  %i.a = add <4 x i32> %vec.ind, splat (i32 12)
  %step.add86.1 = add <4 x i8> %vec.ind.a, splat (i8 12)
  %6 = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %index.next ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x i32> %vec.ind.next, ptr %6, align 16, !tbaa !7
  store <4 x i32> %i.a, ptr %i.b, align 16, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr @index_to_char, i64 %index.next ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store <4 x i8> %vec.ind.next87, ptr %i.d, align 1, !tbaa !15
  store <4 x i8> %step.add86.1, ptr %i.e, align 1, !tbaa !15
  %index.next.a = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 16)
  %vec.ind.next.a = add <4 x i8> %vec.ind.a, splat (i8 16)
  %i.f = icmp eq i64 %index.next.a, 256
  br i1 %i.f, label %vector.body86, label %vector.body, !llvm.loop !8

vector.body86:                                    ; preds = %vector.body, %vector.body86
  %index87 = phi i64 [ %index.next90.1, %vector.body86 ], [ 0, %vector.body ] ; 4 uses
  %vec.ind88 = phi <4 x i32> [ %vec.ind.next91.1, %vector.body86 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body ] ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index87 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> splat (i32 1), ptr %i.g, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.h, align 16, !tbaa !7
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index87 ; 2 uses
  %i.j = sub <4 x i32> splat (i32 257), %vec.ind88
  %i.k = sub <4 x i32> splat (i32 253), %vec.ind88
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %i.j, ptr %i.i, align 16, !tbaa !7
  store <4 x i32> %i.k, ptr %i.l, align 16, !tbaa !7
  %index.next90 = or disjoint i64 %index87, 8     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index.next90 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> splat (i32 1), ptr %i.m, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.n, align 16, !tbaa !7
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index.next90 ; 2 uses
  %i.p = sub <4 x i32> splat (i32 249), %vec.ind88
  %i.q = sub <4 x i32> splat (i32 245), %vec.ind88
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %i.p, ptr %i.o, align 16, !tbaa !7
  store <4 x i32> %i.q, ptr %i.r, align 16, !tbaa !7
  %index.next90.1 = add nuw nsw i64 %index87, 16  ; 2 uses
  %vec.ind.next91.1 = add <4 x i32> %vec.ind88, splat (i32 16)
  %i.s = icmp eq i64 %index.next90.1, 256
  br i1 %i.s, label %.preheader.i, label %vector.body86, !llvm.loop !9

.preheader.i:                                     ; preds = %vector.body86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @freq, i64 1024), align 16, !tbaa !7
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @cum_freq, i64 1024), align 16, !tbaa !7
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @freq, i64 1028), align 4, !tbaa !7
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @cum_freq, i64 1028), align 4, !tbaa !7
  store i32 0, ptr @freq, align 16, !tbaa !7
  store i32 0, ptr @bits_to_go, align 4, !tbaa !7
  store i32 0, ptr @garbage_bits, align 4, !tbaa !7
  %buffer.promoted.i = load i32, ptr @buffer, align 4
  %i.t = load ptr, ptr @in, align 8
  br label %bb.a

bb.a:                                             ; preds = %input_bit.exit.i, %.preheader.i
  %.02.i = phi i32 [ 1, %.preheader.i ], [ %i.at, %input_bit.exit.i ]
  %i.u = phi i64 [ 0, %.preheader.i ], [ %i.as, %input_bit.exit.i ]
  %i.v = phi i32 [ 0, %.preheader.i ], [ %i.aq, %input_bit.exit.i ] ; 2 uses
  %i.w = phi i32 [ 0, %.preheader.i ], [ %i.am, %input_bit.exit.i ] ; 5 uses
  %i.x = phi i32 [ 0, %.preheader.i ], [ %i.al, %input_bit.exit.i ] ; 4 uses
  %i.y = phi i32 [ %buffer.promoted.i, %.preheader.i ], [ %i.ap, %input_bit.exit.i ] ; 2 uses
  %i.z = shl nsw i64 %i.u, 1
  %i.aa = icmp eq i32 %i.v, 0
  br i1 %i.aa, label %bb.b, label %input_bit.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp ult i32 %i.w, %0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = add nuw i32 %i.w, 1                     ; 2 uses
  store i32 %i.ac, ptr @in_pos, align 4, !tbaa !7
  %i.ad = zext i32 %i.w to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i32
  br label %input_bit.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ah = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ah, ptr @garbage_bits, align 4, !tbaa !7
  %i.ai = icmp sgt i32 %i.x, 13
  br i1 %i.ai, label %bb.e, label %input_bit.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %i.aj) #3 ; 0 uses
  tail call void @exit(i32 noundef -1) #4
  unreachable

input_bit.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.a
  %i.ak = phi i32 [ %i.y, %bb.a ], [ %i.y, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.al = phi i32 [ %i.x, %bb.a ], [ %i.ah, %bb.d ], [ %i.x, %bb.c ]
  %i.am = phi i32 [ %i.w, %bb.a ], [ %i.w, %bb.d ], [ %i.ac, %bb.c ]
  %i.an = phi i32 [ %i.v, %bb.a ], [ 8, %bb.d ], [ 8, %bb.c ]
  %i.ao = and i32 %i.ak, 1
  %i.ap = ashr i32 %i.ak, 1                       ; 2 uses
  store i32 %i.ap, ptr @buffer, align 4, !tbaa !7
  %i.aq = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.aq, ptr @bits_to_go, align 4, !tbaa !7
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = or disjoint i64 %i.z, %i.ar             ; 2 uses
  %i.at = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.at, 17
  br i1 %exitcond.not.i7, label %start_decoding.exit, label %bb.a, !llvm.loop !10

start_decoding.exit:                              ; preds = %input_bit.exit.i, %start_decoding.exit.backedge
  %i.au = phi i64 [ %i.bx, %start_decoding.exit.backedge ], [ %i.as, %input_bit.exit.i ] ; 2 uses
  %i.av = phi i64 [ %i.cc, %start_decoding.exit.backedge ], [ 0, %input_bit.exit.i ] ; 4 uses
  %i.aw = phi i64 [ %i.cd, %start_decoding.exit.backedge ], [ 65535, %input_bit.exit.i ]
  %i.ax = sub nsw i64 %i.aw, %i.av
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 3 uses
  %reass.sub = sub i64 %i.au, %i.av
  %i.az = add i64 %reass.sub, 1
  %i.ba = load i32, ptr @cum_freq, align 16, !tbaa !7
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = mul nsw i64 %i.az, %i.bb
  %i.bd = add nsw i64 %i.bc, -1
  %i.be = sdiv i64 %i.bd, %i.ay
  %i.bf = trunc i64 %i.be to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %start_decoding.exit
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i9, %bb.f ], [ 1, %start_decoding.exit ] ; 8 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7  ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, %i.bf
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 1
  br i1 %i.bi, label %bb.f, label %bb.g, !llvm.loop !11

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i8
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.ay, %i.bm
  %i.bo = sdiv i64 %i.bn, %i.bb
  %i.bp = add i64 %i.av, -1
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = sext i32 %i.bh to i64
  %i.bs = mul nsw i64 %i.ay, %i.br
  %i.bt = sdiv i64 %i.bs, %i.bb
  %i.bu = add nsw i64 %i.bt, %i.av
  %bits_to_go.promoted.i10 = load i32, ptr @bits_to_go, align 4
  %in_pos.promoted.i11 = load i32, ptr @in_pos, align 4
  %garbage_bits.promoted.i12 = load i32, ptr @garbage_bits, align 4
  %buffer.promoted.i13 = load i32, ptr @buffer, align 4
  %i.bv = load i32, ptr @in_size, align 4
  %i.bw = load ptr, ptr @in, align 8
  br label %bb.h

bb.h:                                             ; preds = %input_bit.exit.i14, %bb.g
  %i.bx = phi i64 [ %i.dk, %input_bit.exit.i14 ], [ %i.au, %bb.g ] ; 3 uses
  %i.by = phi i32 [ %i.dh, %input_bit.exit.i14 ], [ %buffer.promoted.i13, %bb.g ] ; 2 uses
  %i.bz = phi i32 [ %i.dd, %input_bit.exit.i14 ], [ %garbage_bits.promoted.i12, %bb.g ] ; 4 uses
  %i.ca = phi i32 [ %i.de, %input_bit.exit.i14 ], [ %in_pos.promoted.i11, %bb.g ] ; 5 uses
  %i.cb = phi i32 [ %i.di, %input_bit.exit.i14 ], [ %bits_to_go.promoted.i10, %bb.g ] ; 2 uses
  %i.cc = phi i64 [ %i.co, %input_bit.exit.i14 ], [ %i.bu, %bb.g ] ; 5 uses
  %i.cd = phi i64 [ %i.cq, %input_bit.exit.i14 ], [ %i.bq, %bb.g ] ; 5 uses
  %i.ce = icmp slt i64 %i.cd, 32768
  br i1 %i.ce, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = icmp sgt i64 %i.cc, 32767
  br i1 %i.cf, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = icmp sgt i64 %i.cc, 16383
  %i.ch = icmp samesign ult i64 %i.cd, 49152
  %or.cond.i = and i1 %i.cg, %i.ch
  br i1 %or.cond.i, label %.sink.split.i, label %decode_symbol.exit

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sink17.i = phi i64 [ -32768, %bb.i ], [ -16384, %bb.j ] ; 3 uses
  %i.ci = add nsw i64 %.sink17.i, %i.bx
  %i.cj = add nsw i64 %.sink17.i, %i.cc
  %i.ck = add nsw i64 %.sink17.i, %i.cd
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h
  %i.cl = phi i64 [ %i.bx, %bb.h ], [ %i.ci, %.sink.split.i ]
  %i.cm = phi i64 [ %i.cc, %bb.h ], [ %i.cj, %.sink.split.i ]
  %i.cn = phi i64 [ %i.cd, %bb.h ], [ %i.ck, %.sink.split.i ]
  %i.co = shl nsw i64 %i.cm, 1
  %i.cp = shl nsw i64 %i.cn, 1
  %i.cq = or disjoint i64 %i.cp, 1
  %i.cr = shl nsw i64 %i.cl, 1
  %i.cs = icmp eq i32 %i.cb, 0
  br i1 %i.cs, label %bb.l, label %input_bit.exit.i14

bb.l:                                             ; preds = %bb.k
  %i.ct = icmp ult i32 %i.ca, %i.bv
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = add nuw i32 %i.ca, 1                    ; 2 uses
  store i32 %i.cu, ptr @in_pos, align 4, !tbaa !7
  %i.cv = zext i32 %i.ca to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = zext i8 %i.cx to i32
  br label %input_bit.exit.i14

bb.n:                                             ; preds = %bb.l
  %i.cz = add nsw i32 %i.bz, 1                    ; 2 uses
  store i32 %i.cz, ptr @garbage_bits, align 4, !tbaa !7
  %i.da = icmp sgt i32 %i.bz, 13
  br i1 %i.da, label %bb.o, label %input_bit.exit.i14

bb.o:                                             ; preds = %bb.n
end_hunk_0
