Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_study?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ucd_record = type { i8, i8, i8, i8, i32, i16, i16 }
%struct.recurse_check = type { ptr, ptr }

@_pcre2_ucd_records_8 = external local_unnamed_addr constant [0 x %struct.ucd_record], align 4
@_pcre2_ucd_stage2_8 = external local_unnamed_addr constant [0 x i16], align 2
@_pcre2_ucd_stage1_8 = external local_unnamed_addr constant [0 x i16], align 2
@_pcre2_OP_lengths_8 = external local_unnamed_addr constant [0 x i8], align 1
@_pcre2_ucd_caseless_sets_8 = external local_unnamed_addr constant [0 x i32], align 4
@_pcre2_utf8_table4 = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @_pcre2_study_8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [129 x i32], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = and i32 %i.e, 524288                     ; 2 uses
  %i.g = icmp ne i32 %i.f, 0
  %.lobit = lshr exact i32 %i.f, 19               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.j = load i16, ptr %i.i, align 4, !tbaa !20
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = zext i16 %i.m to i64
  %i.o = mul nuw nsw i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.s = and i32 %i.r, 528
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.u = lshr i32 %i.e, 17
  %.lobit105 = and i32 %i.u, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.v = call fastcc i32 @set_start_bits(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i32 noundef %.lobit, i32 noundef %.lobit105, ptr noundef %i.b)
  switch i32 %i.v, label %._crit_edge [
    i32 3, label %.critedge
    i32 1, label %bb.c
  ]

._crit_edge:                                      ; preds = %bb.b
  %.pre152.pre = load i32, ptr %i.q, align 8, !tbaa !21
  br label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = and i32 %i.e, 655360
  %or.cond6.not = icmp eq i32 %i.y, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread121
  %.085150 = phi ptr [ %i.w, %bb.c ], [ %i.bj, %.thread121 ] ; 2 uses
  %.086149 = phi i32 [ -1, %bb.c ], [ %.5126, %.thread121 ] ; 3 uses
  %.087148 = phi i32 [ -1, %bb.c ], [ %.491125, %.thread121 ] ; 4 uses
  %.092146 = phi i32 [ 0, %bb.c ], [ %i.bk, %.thread121 ] ; 11 uses
  %i.z = load i8, ptr %.085150, align 1, !tbaa !22 ; 3 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %.not107 = icmp eq i8 %i.z, 0
  br i1 %.not107, label %.thread121, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = call range(i8 1, 9) i8 @llvm.ctpop.i8(i8 %i.z)
  %.not108 = icmp samesign ult i8 %i.ab, 2
  br i1 %.not108, label %bb.f, label %.thread127.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ac = call range(i32 1, 9) i32 @llvm.ctpop.i32(i32 %i.aa)
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %.split, label %bb.n

.split:                                           ; preds = %bb.f
  %i.ae = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aa, i1 true)
  switch i32 %i.ae, label %bb.n [
    i32 7, label %bb.m
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.g:                                             ; preds = %.split
  %i.af = or disjoint i32 %.092146, 1
  br label %bb.n

bb.h:                                             ; preds = %.split
  %i.ag = or disjoint i32 %.092146, 2
  br label %bb.n

bb.i:                                             ; preds = %.split
  %i.ah = or disjoint i32 %.092146, 3
  br label %bb.n

bb.j:                                             ; preds = %.split
  %i.ai = or disjoint i32 %.092146, 4
  br label %bb.n

bb.k:                                             ; preds = %.split
  %i.aj = or disjoint i32 %.092146, 5
  br label %bb.n

bb.l:                                             ; preds = %.split
  %i.ak = or disjoint i32 %.092146, 6
  br label %bb.n

bb.m:                                             ; preds = %.split
  %i.al = or disjoint i32 %.092146, 7
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %.split
  %.083 = phi i32 [ %.092146, %.split ], [ %i.al, %bb.m ], [ %i.af, %bb.g ], [ %i.ag, %bb.h ], [ %i.ah, %bb.i ], [ %i.ai, %bb.j ], [ %i.aj, %bb.k ], [ %i.ak, %bb.l ], [ %.092146, %bb.f ]
  %.083.frozen = freeze i32 %.083                 ; 8 uses
  %i.am = icmp ugt i32 %.083.frozen, 127          ; 3 uses
  %or.cond = and i1 %i.g, %i.am
  br i1 %or.cond, label %.thread127.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp slt i32 %.087148, 0
  br i1 %i.an, label %.thread121, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp slt i32 %.086149, 0
  br i1 %i.ao, label %bb.q, label %.thread127.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %i.ar = zext nneg i32 %.083.frozen to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  br i1 %or.cond6.not, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = zext i1 %i.am to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !24
  %i.ay = zext i16 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 7
  %.urem = add i32 %.083.frozen, -128
  %.cmp142 = icmp ult i32 %.083.frozen, 128
  %1 = select i1 %.cmp142, i32 %.083.frozen, i32 %.urem
  %2 = add nsw i32 %i.az, %1
  %3 = sext i32 %2 to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %3
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !24
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30
  %.not109 = icmp eq i8 %i.bf, 0
  br i1 %.not109, label %bb.s, label %.thread127.loopexit

bb.s:                                             ; preds = %bb.r
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !26
  %i.bi = add nsw i32 %i.bh, %.083.frozen
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s
  %.0 = phi i32 [ %i.bi, %bb.t ], [ %i.au, %bb.s ], [ %i.au, %bb.q ]
  %.not110 = icmp eq i32 %.0, %.087148
  %cond.fr = freeze i1 %.not110
  br i1 %cond.fr, label %.thread121, label %.thread127.loopexit

.thread121:                                       ; preds = %bb.u, %bb.o, %bb.d
  %.5126 = phi i32 [ %.086149, %bb.d ], [ %.083.frozen, %bb.u ], [ %.086149, %bb.o ] ; 4 uses
  %.491125 = phi i32 [ %.087148, %bb.d ], [ %.087148, %bb.u ], [ %.083.frozen, %bb.o ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.085150, i64 1
  %i.bk = add nuw nsw i32 %.092146, 8
  %i.bl = icmp samesign ult i32 %.092146, 248
  br i1 %i.bl, label %bb.d, label %bb.v, !llvm.loop !28

bb.v:                                             ; preds = %.thread121
  %i.bm = icmp sgt i32 %.491125, -1
  %.pre151 = load i32, ptr %i.q, align 8, !tbaa !21 ; 5 uses
  br i1 %i.bm, label %bb.w, label %.thread127

bb.w:                                             ; preds = %bb.v
  %i.bn = and i32 %.pre151, 128
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !31 ; 2 uses
  %.not = icmp eq i32 %i.bq, %.491125
  br i1 %.not, label %.thread127, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = icmp sgt i32 %.5126, -1
  %.not106 = icmp eq i32 %i.bq, %.5126
  %or.cond113 = and i1 %i.br, %.not106
  br i1 %or.cond113, label %.thread127, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.491125, ptr %i.bs, align 8, !tbaa !32
  %i.bt = icmp sgt i32 %.5126, -1
  %spec.select = select i1 %i.bt, i32 48, i32 16
  br label %.thread127

.thread127.loopexit:                              ; preds = %bb.n, %bb.e, %bb.p, %bb.r, %bb.u
  %.pre = load i32, ptr %i.q, align 8, !tbaa !21
  br label %.thread127

.thread127:                                       ; preds = %.thread127.loopexit, %bb.z, %bb.y, %bb.v, %bb.x
  %i.bu = phi i32 [ %.pre151, %bb.x ], [ %.pre151, %bb.v ], [ %.pre151, %bb.z ], [ %.pre151, %bb.y ], [ %.pre, %.thread127.loopexit ]
  %.084 = phi i32 [ 64, %bb.x ], [ 64, %bb.v ], [ %spec.select, %bb.z ], [ 64, %bb.y ], [ 64, %.thread127.loopexit ]
  %i.bv = or i32 %i.bu, %.084                     ; 2 uses
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %.thread127
  %.pre152 = phi i32 [ %.pre152.pre, %._crit_edge ], [ %i.bv, %.thread127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.a
  %i.bw = phi i32 [ %.pre152, %bb.aa ], [ %i.r, %bb.a ]
  %i.bx = and i32 %i.bw, 8396800
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !33
  %i.cb = icmp ult i16 %i.ca, 129
  br i1 %i.cb, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 16, !tbaa !12
  %i.cc = call fastcc i32 @find_minlength(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.p, i32 noundef %.lobit, ptr noundef null, ptr noundef %i.a, ptr noundef %i.c) ; 2 uses
  switch i32 %i.cc, label %bb.af [
    i32 -1, label %bb.ag
    i32 -2, label %.thread139
    i32 -3, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %.thread139

bb.af:                                            ; preds = %bb.ad
  %i.cd = call i32 @llvm.smin.i32(i32 %i.cc, i32 65535)
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 126
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !34
  br label %bb.ag

.thread139:                                       ; preds = %bb.ae, %bb.ad
  %.2100.ph = phi i32 [ 2, %bb.ad ], [ 3, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.ah

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ac, %bb.ag, %.thread139, %.critedge
  %.3101 = phi i32 [ 1, %.critedge ], [ %.2100.ph, %.thread139 ], [ 0, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.3101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @set_start_bits(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 4 uses
  %i.c = alloca [6 x i8], align 1                 ; 4 uses
  %i.d = alloca [6 x i8], align 1                 ; 4 uses
  %i.e = alloca [6 x i8], align 1                 ; 4 uses
  %i.f = alloca [6 x i8], align 1                 ; 4 uses
  %i.g = alloca [6 x i8], align 1                 ; 4 uses
  %.not = icmp ne i32 %2, 0                       ; 21 uses
  %i.h = load i32, ptr %4, align 4, !tbaa !12     ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %4, align 4, !tbaa !12
  %i.j = icmp sgt i32 %i.h, 999
  br i1 %i.j, label %.thread462, label %bb.b

bb.b:                                             ; preds = %bb.a
  %wide.trip.count.i398 = select i1 %.not, i64 16, i64 32 ; 28 uses
  %.pr = load i8, ptr %1, align 1, !tbaa !22
  %i.k = getelementptr i8, ptr %0, i64 64         ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.m = getelementptr i8, ptr %0, i64 40         ; 71 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 71 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  switch i8 %.pr, label %.preheader570 [
    i8 -119, label %bb.c
    i8 -114, label %bb.c
    i8 -118, label %bb.c
    i8 -113, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  br label %.preheader570

.preheader570:                                    ; preds = %bb.c, %bb.b
  %.0275.ph = phi ptr [ %i.u, %bb.b ], [ %i.v, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 43 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 45 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 55 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 59 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 67 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 71 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 43 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 45 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 55 ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 %wide.trip.count.i398
  %scevgep = getelementptr i8, ptr %i.bq, i64 40  ; 12 uses
  %i.br = or disjoint i64 %wide.trip.count.i398, 576 ; 4 uses
  %i.bs = or disjoint i64 %wide.trip.count.i398, 512 ; 4 uses
  %i.bt = add nuw nsw i64 %wide.trip.count.i398, 672 ; 4 uses
  br label %bb.d
end_hunk_0
