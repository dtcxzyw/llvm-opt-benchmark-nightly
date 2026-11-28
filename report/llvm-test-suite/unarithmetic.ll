Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/unarithmetic?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@in_size = dso_local local_unnamed_addr global i32 0, align 4, !guid !8
@in_pos = dso_local local_unnamed_addr global i32 0, align 4, !guid !9
@deari_pos = dso_local local_unnamed_addr global i32 0, align 4, !guid !10
@cum_freq = dso_local local_unnamed_addr global [258 x i32] zeroinitializer, align 16, !guid !11
@index_to_char = dso_local local_unnamed_addr global [258 x i8] zeroinitializer, align 16, !guid !12
@deari = external local_unnamed_addr global ptr, align 8
@char_to_index = dso_local local_unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !13
@freq = dso_local local_unnamed_addr global [258 x i32] zeroinitializer, align 16, !guid !14
@buffer = dso_local local_unnamed_addr global i32 0, align 4, !guid !15
@bits_to_go = dso_local local_unnamed_addr global i32 0, align 4, !guid !16
@garbage_bits = dso_local local_unnamed_addr global i32 0, align 4, !guid !17
@in = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Bad input file\0A\00", align 1, !guid !18

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @do_deari(i32 noundef %0) local_unnamed_addr #0 !guid !26 {
vector.ph:
  store i32 %0, ptr @in_size, align 4, !tbaa !7
  store i32 0, ptr @in_pos, align 4, !tbaa !7
  store i32 0, ptr @deari_pos, align 4, !tbaa !7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 5 uses
  %vec.ind85 = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next87.1, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add86 = add <4 x i8> %vec.ind85, splat (i8 4)
  %i.a = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %vec.ind, ptr %i.a, align 16, !tbaa !7
  store <4 x i32> %step.add, ptr %i.b, align 16, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr @index_to_char, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store <4 x i8> %vec.ind85, ptr %i.d, align 1, !tbaa !27
  store <4 x i8> %step.add86, ptr %i.e, align 1, !tbaa !27
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next87 = add <4 x i8> %vec.ind85, splat (i8 8)
  %step.add.1 = add <4 x i32> %vec.ind, splat (i32 12)
  %step.add86.1 = add <4 x i8> %vec.ind85, splat (i8 12)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %index.next ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %vec.ind.next, ptr %i.f, align 16, !tbaa !7
  store <4 x i32> %step.add.1, ptr %i.g, align 16, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr @index_to_char, i64 %index.next ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  store <4 x i8> %vec.ind.next87, ptr %i.i, align 1, !tbaa !27
  store <4 x i8> %step.add86.1, ptr %i.j, align 1, !tbaa !27
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 16)
  %vec.ind.next87.1 = add <4 x i8> %vec.ind85, splat (i8 16)
  %i.k = icmp eq i64 %index.next.1, 256
  br i1 %i.k, label %vector.body89, label %vector.body, !llvm.loop !19

vector.body89:                                    ; preds = %vector.body, %vector.body89
  %index90 = phi i64 [ %index.next93.1, %vector.body89 ], [ 0, %vector.body ] ; 4 uses
  %vec.ind91 = phi <4 x i32> [ %vec.ind.next94.1, %vector.body89 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body ] ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index90 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> splat (i32 1), ptr %i.l, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.m, align 16, !tbaa !7
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index90 ; 2 uses
  %i.o = sub <4 x i32> splat (i32 257), %vec.ind91
  %i.p = sub <4 x i32> splat (i32 253), %vec.ind91
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %i.o, ptr %i.n, align 16, !tbaa !7
  store <4 x i32> %i.p, ptr %i.q, align 16, !tbaa !7
  %index.next93 = or disjoint i64 %index90, 8     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index.next93 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> splat (i32 1), ptr %i.r, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.s, align 16, !tbaa !7
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index.next93 ; 2 uses
  %i.u = sub <4 x i32> splat (i32 249), %vec.ind91
  %i.v = sub <4 x i32> splat (i32 245), %vec.ind91
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.u, ptr %i.t, align 16, !tbaa !7
  store <4 x i32> %i.v, ptr %i.w, align 16, !tbaa !7
  %index.next93.1 = add nuw nsw i64 %index90, 16  ; 2 uses
  %vec.ind.next94.1 = add <4 x i32> %vec.ind91, splat (i32 16)
  %i.x = icmp eq i64 %index.next93.1, 256
  br i1 %i.x, label %.preheader.i, label %vector.body89, !llvm.loop !20

.preheader.i:                                     ; preds = %vector.body89
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @freq, i64 1024), align 16, !tbaa !7
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @cum_freq, i64 1024), align 16, !tbaa !7
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @freq, i64 1028), align 4, !tbaa !7
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @cum_freq, i64 1028), align 4, !tbaa !7
  store i32 0, ptr @freq, align 16, !tbaa !7
  store i32 0, ptr @bits_to_go, align 4, !tbaa !7
  store i32 0, ptr @garbage_bits, align 4, !tbaa !7
  %buffer.promoted.i = load i32, ptr @buffer, align 4
  %i.y = load ptr, ptr @in, align 8
  br label %bb.a

bb.a:                                             ; preds = %input_bit.exit.i, %.preheader.i
  %.02.i = phi i32 [ 1, %.preheader.i ], [ %i.ay, %input_bit.exit.i ]
  %i.z = phi i64 [ 0, %.preheader.i ], [ %i.ax, %input_bit.exit.i ]
  %i.aa = phi i32 [ 0, %.preheader.i ], [ %i.av, %input_bit.exit.i ] ; 2 uses
  %i.ab = phi i32 [ 0, %.preheader.i ], [ %i.ar, %input_bit.exit.i ] ; 5 uses
  %i.ac = phi i32 [ 0, %.preheader.i ], [ %i.aq, %input_bit.exit.i ] ; 4 uses
  %i.ad = phi i32 [ %buffer.promoted.i, %.preheader.i ], [ %i.au, %input_bit.exit.i ] ; 2 uses
  %i.ae = shl nsw i64 %i.z, 1
  %i.af = icmp eq i32 %i.aa, 0
  br i1 %i.af, label %bb.b, label %input_bit.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ag = icmp ult i32 %i.ab, %0
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = add nuw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ah, ptr @in_pos, align 4, !tbaa !7
  %i.ai = zext i32 %i.ab to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  %i.al = zext i8 %i.ak to i32
  br label %input_bit.exit.i

bb.d:                                             ; preds = %bb.b
  %i.am = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.am, ptr @garbage_bits, align 4, !tbaa !7
  %i.an = icmp sgt i32 %i.ac, 13
  br i1 %i.an, label %bb.e, label %input_bit.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !33
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %i.ao) #3 ; 0 uses
  tail call void @exit(i32 noundef -1) #4
  unreachable

input_bit.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.a
  %i.ap = phi i32 [ %i.ad, %bb.a ], [ %i.ad, %bb.d ], [ %i.al, %bb.c ] ; 2 uses
  %i.aq = phi i32 [ %i.ac, %bb.a ], [ %i.am, %bb.d ], [ %i.ac, %bb.c ]
  %i.ar = phi i32 [ %i.ab, %bb.a ], [ %i.ab, %bb.d ], [ %i.ah, %bb.c ]
  %i.as = phi i32 [ %i.aa, %bb.a ], [ 8, %bb.d ], [ 8, %bb.c ]
  %i.at = and i32 %i.ap, 1
  %i.au = ashr i32 %i.ap, 1                       ; 2 uses
  store i32 %i.au, ptr @buffer, align 4, !tbaa !7
  %i.av = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.av, ptr @bits_to_go, align 4, !tbaa !7
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = or disjoint i64 %i.ae, %i.aw            ; 2 uses
  %i.ay = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.ay, 17
  br i1 %exitcond.not.i7, label %start_decoding.exit, label %bb.a, !llvm.loop !21

start_decoding.exit:                              ; preds = %input_bit.exit.i, %start_decoding.exit.backedge
  %i.az = phi i64 [ %i.cc, %start_decoding.exit.backedge ], [ %i.ax, %input_bit.exit.i ] ; 2 uses
  %i.ba = phi i64 [ %i.ch, %start_decoding.exit.backedge ], [ 0, %input_bit.exit.i ] ; 4 uses
  %i.bb = phi i64 [ %i.ci, %start_decoding.exit.backedge ], [ 65535, %input_bit.exit.i ]
  %i.bc = sub nsw i64 %i.bb, %i.ba
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 3 uses
  %reass.sub = sub i64 %i.az, %i.ba
  %i.be = add i64 %reass.sub, 1
  %i.bf = load i32, ptr @cum_freq, align 16, !tbaa !7
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  %i.bh = mul nsw i64 %i.be, %i.bg
  %i.bi = add nsw i64 %i.bh, -1
  %i.bj = sdiv i64 %i.bi, %i.bd
  %i.bk = trunc i64 %i.bj to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %start_decoding.exit
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i9, %bb.f ], [ 1, %start_decoding.exit ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7  ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, %i.bk
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 1
  br i1 %i.bn, label %bb.f, label %bb.g, !llvm.loop !22

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i8
  %i.bp = getelementptr i8, ptr %i.bo, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.bd, %i.br
  %i.bt = sdiv i64 %i.bs, %i.bg
  %i.bu = add i64 %i.ba, -1
  %i.bv = add i64 %i.bu, %i.bt
  %i.bw = sext i32 %i.bm to i64
  %i.bx = mul nsw i64 %i.bd, %i.bw
  %i.by = sdiv i64 %i.bx, %i.bg
  %i.bz = add nsw i64 %i.by, %i.ba
  %bits_to_go.promoted.i10 = load i32, ptr @bits_to_go, align 4
  %in_pos.promoted.i11 = load i32, ptr @in_pos, align 4
  %garbage_bits.promoted.i12 = load i32, ptr @garbage_bits, align 4
  %buffer.promoted.i13 = load i32, ptr @buffer, align 4
  %i.ca = load i32, ptr @in_size, align 4
  %i.cb = load ptr, ptr @in, align 8
  br label %bb.h

bb.h:                                             ; preds = %input_bit.exit.i14, %bb.g
  %i.cc = phi i64 [ %i.dp, %input_bit.exit.i14 ], [ %i.az, %bb.g ] ; 3 uses
  %i.cd = phi i32 [ %i.dm, %input_bit.exit.i14 ], [ %buffer.promoted.i13, %bb.g ] ; 2 uses
  %i.ce = phi i32 [ %i.di, %input_bit.exit.i14 ], [ %garbage_bits.promoted.i12, %bb.g ] ; 4 uses
  %i.cf = phi i32 [ %i.dj, %input_bit.exit.i14 ], [ %in_pos.promoted.i11, %bb.g ] ; 5 uses
  %i.cg = phi i32 [ %i.dn, %input_bit.exit.i14 ], [ %bits_to_go.promoted.i10, %bb.g ] ; 2 uses
  %i.ch = phi i64 [ %i.ct, %input_bit.exit.i14 ], [ %i.bz, %bb.g ] ; 5 uses
  %i.ci = phi i64 [ %i.cv, %input_bit.exit.i14 ], [ %i.bv, %bb.g ] ; 5 uses
  %i.cj = icmp slt i64 %i.ci, 32768
  br i1 %i.cj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = icmp sgt i64 %i.ch, 32767
  br i1 %i.ck, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = icmp sgt i64 %i.ch, 16383
  %i.cm = icmp samesign ult i64 %i.ci, 49152
  %or.cond.i = and i1 %i.cl, %i.cm
  br i1 %or.cond.i, label %.sink.split.i, label %decode_symbol.exit

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sink17.i = phi i64 [ -32768, %bb.i ], [ -16384, %bb.j ] ; 3 uses
  %i.cn = add nsw i64 %.sink17.i, %i.cc
  %i.co = add nsw i64 %.sink17.i, %i.ch
  %i.cp = add nsw i64 %.sink17.i, %i.ci
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h
  %i.cq = phi i64 [ %i.cc, %bb.h ], [ %i.cn, %.sink.split.i ]
end_hunk_0
