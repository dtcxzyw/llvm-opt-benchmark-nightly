Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mlz?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"String code %d exceeds maximum value of %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"output chars overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Too many MLZ codes\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"MLZ offset error.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"MLZ dic index error.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MLZ dic offset error.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -12, 1) i32 @ff_mlz_init_dict(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((24, 32)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 560368) #6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.a, ptr %i.b, align 8, !tbaa !9
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 9, i32 512, i32 511, i32 256>, ptr %1, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 258, ptr %i.c, align 8, !tbaa !14
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %2, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.d, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_mlz_flush_dict(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  store i32 -1, ptr %i.c, align 4, !tbaa !17
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 -1, ptr %1, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 35023
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !21

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 512, ptr %2, align 4, !tbaa !23
  store i32 9, ptr %0, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 511, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 258, ptr %i.f, align 8, !tbaa !14
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %3, align 4, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define i32 @ff_mlz_decompression(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !13
  %i.d = sext i32 %2 to i64                       ; 4 uses
  %.not153 = icmp eq i32 %2, 0
  br i1 %.not153, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %.085152 = phi i32 [ -1, %.lr.ph ], [ %.186, %bb.af ] ; 12 uses
  %.087151 = phi i64 [ 0, %.lr.ph ], [ %.4, %bb.af ] ; 10 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !24     ; 6 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %input_code.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !26     ; 3 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %.promoted.i = load i32, ptr %i.e, align 8, !tbaa !30 ; 2 uses
  %xtraiter = and i32 %i.k, 1
  %i.o = icmp eq i32 %i.k, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.k, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %spec.select.i9.i = phi i32 [ %.promoted.i, %.lr.ph.i.new ], [ %spec.select.i.i.1, %bb.c ] ; 4 uses
  %.08.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.aq, %bb.c ] ; 3 uses
  %.067.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ap, %bb.c ]
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.p = lshr i32 %spec.select.i9.i, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  %i.t = icmp slt i32 %spec.select.i9.i, %i.n
  %i.u = zext i1 %i.t to i32
  %spec.select.i.i = add i32 %spec.select.i9.i, %i.u ; 5 uses
  %i.v = zext i8 %i.s to i32
  %i.w = and i32 %spec.select.i9.i, 7
  %i.x = shl nuw nsw i32 %i.v, %i.w
  %i.y = lshr i32 %i.x, 7
  store i32 %spec.select.i.i, ptr %i.e, align 8, !tbaa !30
  %i.z = and i32 %i.y, 1
  %i.aa = shl nuw i32 %i.z, %.08.i
  %i.ab = or i32 %i.aa, %.067.i
  %i.ac = or disjoint i32 %.08.i, 1
  %i.ad = lshr i32 %spec.select.i.i, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !31
  %i.ah = icmp slt i32 %spec.select.i.i, %i.n
  %i.ai = zext i1 %i.ah to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.ai ; 3 uses
  %i.aj = zext i8 %i.ag to i32
  %i.ak = and i32 %spec.select.i.i, 7
  %i.al = shl nuw nsw i32 %i.aj, %i.ak
  %i.am = lshr i32 %i.al, 7
  store i32 %spec.select.i.i.1, ptr %i.e, align 8, !tbaa !30
  %i.an = and i32 %i.am, 1
  %i.ao = shl nuw i32 %i.an, %i.ac
  %i.ap = or i32 %i.ao, %i.ab                     ; 3 uses
  %i.aq = add nuw nsw i32 %.08.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %input_code.exit.unr-lcssa, label %bb.c, !llvm.loop !32

input_code.exit.unr-lcssa:                        ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %input_code.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %input_code.exit.unr-lcssa, %.lr.ph.i
  %spec.select.i9.i.epil.init = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %spec.select.i.i.1, %input_code.exit.unr-lcssa ] ; 4 uses
  %.08.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.aq, %input_code.exit.unr-lcssa ]
  %.067.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.ap, %input_code.exit.unr-lcssa ]
  %lcmp.mod250 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.ar = lshr i32 %spec.select.i9.i.epil.init, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !31
  %i.av = icmp slt i32 %spec.select.i9.i.epil.init, %i.n
  %i.aw = zext i1 %i.av to i32
  %spec.select.i.i.epil = add i32 %spec.select.i9.i.epil.init, %i.aw
  %i.ax = zext i8 %i.au to i32
  %i.ay = and i32 %spec.select.i9.i.epil.init, 7
  %i.az = shl nuw nsw i32 %i.ax, %i.ay
  %i.ba = lshr i32 %i.az, 7
  store i32 %spec.select.i.i.epil, ptr %i.e, align 8, !tbaa !30
  %i.bb = and i32 %i.ba, 1
  %i.bc = shl nuw i32 %i.bb, %.08.i.epil.init
  %i.bd = or i32 %i.bc, %.067.i.epil.init
  br label %input_code.exit

input_code.exit:                                  ; preds = %input_code.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.ap, %input_code.exit.unr-lcssa ], [ %i.bd, %.epil.preheader ] ; 2 uses
  switch i32 %.lcssa, label %input_code.exit.thread [
    i32 256, label %bb.d
    i32 32767, label %bb.d
    i32 257, label %bb.g
  ]

bb.d:                                             ; preds = %input_code.exit, %input_code.exit
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !9   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.3, %bb.f ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 3 uses
  store i32 -1, ptr %i.bf, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 -1, ptr %i.bg, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !20
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 -1, ptr %i.bj, align 4, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i32 -1, ptr %i.bk, align 4, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store i32 0, ptr %i.bl, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i32 -1, ptr %i.bn, align 4, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 -1, ptr %i.bo, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store i32 0, ptr %i.bp, align 4, !tbaa !20
  %exitcond.not.i110.2 = icmp eq i64 %indvars.iv.i, 35020
  br i1 %exitcond.not.i110.2, label %ff_mlz_flush_dict.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i32 -1, ptr %i.br, align 4, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 52
  store i32 -1, ptr %i.bs, align 4, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 60
  store i32 0, ptr %i.bt, align 4, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.e

ff_mlz_flush_dict.exit:                           ; preds = %bb.e
  store i32 512, ptr %i.h, align 4, !tbaa !23
  store i32 9, ptr %0, align 8, !tbaa !24
  store i32 511, ptr %i.i, align 8, !tbaa !25
  store i32 258, ptr %i.j, align 8, !tbaa !14
  store i32 0, ptr %i.g, align 4, !tbaa !15
  store i32 -1, ptr %i.a, align 4, !tbaa !13
  br label %bb.af

bb.g:                                             ; preds = %input_code.exit
  store i32 1, ptr %i.g, align 4, !tbaa !15
  br label %bb.af

input_code.exit.thread:                           ; preds = %bb.b, %input_code.exit
  %.06.lcssa.i114 = phi i32 [ %.lcssa, %input_code.exit ], [ 0, %bb.b ] ; 8 uses
  %i.bu = load i32, ptr %i.h, align 4, !tbaa !23  ; 3 uses
  %i.bv = icmp sgt i32 %.06.lcssa.i114, %i.bu
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %input_code.exit.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bx, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %.06.lcssa.i114, i32 noundef %i.bu) #6
  br label %.thread

bb.i:                                             ; preds = %input_code.exit.thread
  %i.by = load i32, ptr %i.i, align 8, !tbaa !25
  %i.bz = icmp eq i32 %.06.lcssa.i114, %i.by
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = add nsw i32 %i.k, 1
  store i32 %i.ca, ptr %0, align 8, !tbaa !24
  %i.cb = shl nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.cb, ptr %i.h, align 4, !tbaa !23
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.i, align 8, !tbaa !25
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.cd = load i32, ptr %i.j, align 8, !tbaa !14
  %.not = icmp slt i32 %.06.lcssa.i114, %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %.087151 ; 2 uses
  %i.cf = sub i64 %i.d, %.087151                  ; 4 uses
  br i1 %.not, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = call fastcc i32 @decode_string(ptr noundef nonnull %0, ptr noundef %i.ce, i32 noundef %.085152, ptr noundef %i.a, i64 noundef %i.cf) ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.cj = icmp ult i64 %i.cf, %i.ci
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cl, i32 noundef 16, ptr noundef nonnull @.str.1) #6
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.cm = add i64 %.087151, %i.ci                 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 %i.cm
  %i.co = load i32, ptr %i.a, align 4, !tbaa !13
  %i.cp = sub i64 %i.d, %i.cm                     ; 2 uses
  %i.cq = call fastcc i32 @decode_string(ptr noundef nonnull %0, ptr noundef %i.cn, i32 noundef %i.co, ptr noundef %i.a, i64 noundef %i.cp) ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.ct = icmp ult i64 %i.cp, %i.cs
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cv, i32 noundef 16, ptr noundef nonnull @.str.1) #6
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.cw = add i64 %i.cm, %i.cs                    ; 2 uses
  %i.cx = load i32, ptr %i.j, align 8, !tbaa !14  ; 4 uses
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !13
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.cz ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %.085152, ptr %i.db, align 4, !tbaa !19
  store i32 %i.cx, ptr %i.da, align 4, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 %i.cy, ptr %i.dc, align 4, !tbaa !33
  %i.dd = icmp slt i32 %.085152, 258
  br i1 %i.dd, label %set_new_entry_dict.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = zext nneg i32 %.085152 to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !20
  %i.di = add nsw i32 %i.dh, 1
  br label %set_new_entry_dict.exit

set_new_entry_dict.exit:                          ; preds = %bb.r, %bb.s
  %.sink.i = phi i32 [ %i.di, %bb.s ], [ 2, %bb.r ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 %.sink.i, ptr %i.dj, align 4, !tbaa !20
  %i.dk = icmp sgt i32 %i.cx, 35021
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %set_new_entry_dict.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dm, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %.thread

bb.u:                                             ; preds = %set_new_entry_dict.exit
  %i.dn = add nsw i32 %i.cx, 1
  store i32 %i.dn, ptr %i.j, align 8, !tbaa !14
  br label %bb.af

bb.v:                                             ; preds = %bb.k
  %i.do = call fastcc i32 @decode_string(ptr noundef nonnull %0, ptr noundef %i.ce, i32 noundef %.06.lcssa.i114, ptr noundef %i.a, i64 noundef %i.cf) ; 2 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dr = icmp ult i64 %i.cf, %i.dq
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dt, i32 noundef 16, ptr noundef nonnull @.str.1) #6
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.du = add i64 %.087151, %i.dq                 ; 6 uses
  %.not107 = icmp ugt i64 %i.du, %i.d
  br i1 %.not107, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = load i32, ptr %i.g, align 4, !tbaa !15
  %.not108 = icmp eq i32 %i.dv, 0
  br i1 %.not108, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %.not109 = icmp eq i32 %.085152, -1
  br i1 %.not109, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = load i32, ptr %i.j, align 8, !tbaa !14  ; 4 uses
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !13
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.dy ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %.085152, ptr %i.ea, align 4, !tbaa !19
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %i.dx, ptr %i.eb, align 4, !tbaa !33
  %i.ec = icmp slt i32 %.085152, 258
  br i1 %i.ec, label %set_new_entry_dict.exit112, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = zext nneg i32 %.085152 to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !20
  %i.eh = add nsw i32 %i.eg, 1
  br label %set_new_entry_dict.exit112

set_new_entry_dict.exit112:                       ; preds = %bb.ab, %bb.ac
  %.sink.i111 = phi i32 [ %i.eh, %bb.ac ], [ 2, %bb.ab ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 %.sink.i111, ptr %i.ei, align 4, !tbaa !20
  %i.ej = icmp sgt i32 %i.dw, 35021
  br i1 %i.ej, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %set_new_entry_dict.exit112
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.el, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %.thread

bb.ae:                                            ; preds = %set_new_entry_dict.exit112
  %i.em = add nsw i32 %i.dw, 1
  store i32 %i.em, ptr %i.j, align 8, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa, %bb.z, %bb.y, %bb.u, %bb.j, %bb.g, %ff_mlz_flush_dict.exit
  %.4 = phi i64 [ %.087151, %bb.j ], [ %.087151, %bb.g ], [ %i.du, %bb.y ], [ %.087151, %ff_mlz_flush_dict.exit ], [ %i.cw, %bb.u ], [ %i.du, %bb.z ], [ %i.du, %bb.aa ], [ %i.du, %bb.ae ] ; 3 uses
  %.186 = phi i32 [ %.085152, %bb.j ], [ %.085152, %bb.g ], [ %.085152, %bb.y ], [ -1, %ff_mlz_flush_dict.exit ], [ %.06.lcssa.i114, %bb.u ], [ %.085152, %bb.z ], [ %.06.lcssa.i114, %bb.aa ], [ %.06.lcssa.i114, %bb.ae ]
  %i.en = icmp ult i64 %.4, %i.d
  br i1 %i.en, label %bb.b, label %.thread, !llvm.loop !34

.thread:                                          ; preds = %bb.af, %bb.a, %bb.ad, %bb.x, %bb.t, %bb.q, %bb.n, %bb.h
  %.5.in = phi i64 [ %.087151, %bb.h ], [ %.087151, %bb.x ], [ %.087151, %bb.n ], [ %i.cw, %bb.t ], [ %i.cm, %bb.q ], [ %i.du, %bb.ad ], [ 0, %bb.a ], [ %.4, %bb.af ]
  %.5 = trunc i64 %.5.in to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.5
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  store i32 -1, ptr %3, align 4, !tbaa !13
  %.not69 = icmp eq i64 %4, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.068 = phi i32 [ %i.w, %bb.n ], [ %2, %bb.a ]  ; 5 uses
  %.04867 = phi i64 [ %i.u, %bb.n ], [ 0, %bb.a ] ; 4 uses
  %cond = icmp eq i32 %.068, -1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.c = trunc i64 %.04867 to i32
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.d = icmp slt i32 %.068, 258
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %.068, ptr %3, align 4, !tbaa !13
  %i.e = trunc i32 %.068 to i8
  store i8 %i.e, ptr %1, align 1, !tbaa !31
  %i.f = trunc i64 %.04867 to i32
  %i.g = add i32 %i.f, 1
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %.068 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = add nsw i32 %i.k, -1
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %.not = icmp ugt i64 %4, %i.m
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.o, i32 noundef 16, ptr noundef nonnull @.str.3) #6
  %i.p = trunc i64 %.04867 to i32
  br label %._crit_edge

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  store i8 %i.s, ptr %i.t, align 1, !tbaa !31
  %i.u = add nuw i64 %.04867, 1                   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19   ; 4 uses
  %or.cond = icmp ugt i32 %i.w, 32767
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.y, i32 noundef 16, ptr noundef nonnull @.str.4) #6
  %i.z = trunc i64 %i.u to i32
  br label %._crit_edge

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp samesign ugt i32 %i.w, 258
  br i1 %i.aa, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ab = zext nneg i32 %i.w to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !19
  %or.cond3 = icmp ugt i32 %i.ae, 32767
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ag, i32 noundef 16, ptr noundef nonnull @.str.4) #6
  %i.ah = trunc i64 %i.u to i32
  br label %._crit_edge

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !20
  %i.ak = add i32 %i.aj, -32769
  %i.al = icmp ult i32 %i.ak, -32768
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.an, i32 noundef 16, ptr noundef nonnull @.str.5) #6
  %i.ao = trunc i64 %i.u to i32
  br label %._crit_edge

bb.n:                                             ; preds = %bb.i, %bb.l
  %exitcond.not = icmp eq i64 %i.u, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %bb.n
  %i.ap = trunc i64 %4 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %bb.m, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.049 = phi i32 [ %i.c, %bb.b ], [ %i.g, %bb.d ], [ %i.p, %bb.f ], [ %i.z, %bb.h ], [ %i.ah, %bb.k ], [ %i.ao, %bb.m ], [ 0, %bb.a ], [ %i.ap, %._crit_edge.loopexit ]
  ret i32 %.049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 24}
!10 = !{!"MLZ", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !11, i64 24, !12, i64 32}
!11 = !{!"p1 _ZTS7MLZDict", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!10, !6, i64 16}
!15 = !{!10, !6, i64 20}
!16 = !{!10, !12, i64 32}
!17 = !{!18, !6, i64 0}
!18 = !{!"MLZDict", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!19 = !{!18, !6, i64 4}
!20 = !{!18, !6, i64 12}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!10, !6, i64 4}
!24 = !{!10, !6, i64 0}
!25 = !{!10, !6, i64 8}
!26 = !{!27, !28, i64 0}
!27 = !{!"GetBitContext", !28, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!28 = !{!"p1 omnipotent char", !12, i64 0}
!29 = !{!27, !6, i64 16}
!30 = !{!27, !6, i64 8}
!31 = !{!7, !7, i64 0}
!32 = distinct !{!32, !22}
!33 = !{!18, !6, i64 8}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
end_hunk_0
