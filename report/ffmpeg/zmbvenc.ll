Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/zmbvenc?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"zmbv\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Zip Motion Blocks Video\00", align 1
@zmbv_pixfmts_list = internal constant [5 x i32] [i32 11, i32 39, i32 37, i32 121, i32 -1], align 16
@ff_zmbv_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 81, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 96, i32 6088, ptr null, ptr null, ptr null, ptr @encode_init, %union.anon { ptr @encode_frame }, ptr @encode_end, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @zmbv_pixfmts_list }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Compression level should be 0-9, not %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Can't allocate work buffer.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Can't allocate compression buffer.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Can't allocate picture.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Error compressing data\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @encode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1856 ; 3 uses
  switch i32 %i.d, label %bb.e [
    i32 11, label %.thread
    i32 39, label %bb.b
    i32 37, label %bb.c
    i32 121, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread

bb.c:                                             ; preds = %bb.a
  br label %.thread

bb.d:                                             ; preds = %bb.a
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ 4, %bb.d ], [ 2, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  %i.f = phi <2 x i32> [ <i32 4, i32 8>, %bb.d ], [ <i32 2, i32 6>, %bb.c ], [ <i32 2, i32 5>, %bb.b ], [ <i32 1, i32 4>, %bb.a ]
  store <2 x i32> %i.f, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1856
  br label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 1856
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 3 uses
  %.not90 = icmp slt i32 %.pre, 1
  br i1 %.not90, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.e
  %i.h = phi ptr [ %i.g, %.thread ], [ %i.e, %bb.e ]
  %i.i = phi i32 [ %.sink, %.thread ], [ %.pre, %bb.e ] ; 2 uses
  %i.j = shl nsw i32 %i.i, 8                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1984
  %i.l = uitofp nneg i32 %i.j to double
  %i.m = zext nneg i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = sub nsw i32 0, %i.n
  %i.p = sitofp nsz i32 %i.o to double
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = fdiv nsz double %i.r, %i.l
  %i.t = tail call nsz double @llvm.log2.f64(double %i.s)
  %i.u = fmul nsz double %i.t, %i.p
  %i.v = fmul nsz double %i.u, 2.560000e+02
  %i.w = fptosi double %i.v to i32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.m
  br i1 %.not.not, label %bb.f, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.y = phi ptr [ %i.e, %bb.e ], [ %i.h, %bb.f ]
  %i.z = phi i32 [ %.pre, %bb.e ], [ %i.i, %bb.f ]
  store ptr %0, ptr %i.b, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1852
  store i32 0, ptr %i.aa, align 4, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1848
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store <2 x i32> splat (i32 8), ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !43 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 64)
  store i32 %spec.select, ptr %i.af, align 8, !tbaa !44
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 63)
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  %spec.select88 = select i1 %i.am, i32 %i.al, i32 9 ; 3 uses
  %i.an = icmp sgt i32 %spec.select88, 9
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %spec.select88) #9
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !47 ; 2 uses
  %i.aq = mul nsw i32 %i.ap, %i.z
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !48 ; 2 uses
  %i.at = mul nsw i32 %i.aq, %i.as
  %i.au = add nsw i32 %i.ap, 15
  %i.av = sdiv i32 %i.au, 16
  %i.aw = add nsw i32 %i.as, 15
  %i.ax = sdiv i32 %i.aw, 16
  %i.ay = shl nsw i32 %i.av, 1
  %i.az = mul i32 %i.ay, %i.ax
  %i.ba = add i32 %i.at, 1028
  %i.bb = add i32 %i.ba, %i.az                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 1844 ; 3 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !49
  %i.bd = sext i32 %i.bb to i64
  %i.be = tail call noalias ptr @av_malloc(i64 noundef %i.bd) #9 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !50
  %.not85 = icmp eq ptr %i.be, null
  br i1 %.not85, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #9
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !49 ; 3 uses
  %i.bh = add nsw i32 %i.bg, 7
  %i.bi = ashr i32 %i.bh, 3
  %i.bj = add nsw i32 %i.bg, 63
  %i.bk = ashr i32 %i.bj, 6
  %i.bl = add i32 %i.bg, 11
  %i.bm = add i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, %i.bk                    ; 2 uses
  store i32 %i.bn, ptr %i.bc, align 4, !tbaa !49
  %i.bo = sext i32 %i.bn to i64
  %i.bp = tail call noalias ptr @av_malloc(i64 noundef %i.bo) #9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !51
  %.not86 = icmp eq ptr %i.bp, null
  br i1 %.not86, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #9
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !47
  %i.bs = load i32, ptr %i.af, align 8, !tbaa !44 ; 4 uses
  %i.bt = add nsw i32 %i.bs, %i.br
  %i.bu = load i32, ptr %i.y, align 8, !tbaa !31  ; 2 uses
  %i.bv = mul nsw i32 %i.bt, %i.bu
  %i.bw = add nsw i32 %i.bv, 15
  %i.bx = and i32 %i.bw, -16                      ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 1840
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !52
  %i.bz = mul nsw i32 %i.bu, %i.bs
  %i.ca = add nsw i32 %i.bz, 15
  %i.cb = and i32 %i.ca, -16                      ; 2 uses
  %i.cc = load i32, ptr %i.ar, align 4, !tbaa !48
  %i.cd = add nsw i32 %i.cc, %i.bs
  %i.ce = load i32, ptr %i.ae, align 4, !tbaa !45
  %i.cf = add nsw i32 %i.cd, %i.ce
  %i.cg = mul nsw i32 %i.cf, %i.bx
  %i.ch = add nsw i32 %i.cg, %i.cb
  %i.ci = sext i32 %i.ch to i64
  %i.cj = tail call noalias ptr @av_mallocz(i64 noundef %i.ci) #9 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 1832
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !53
  %.not87 = icmp eq ptr %i.cj, null
  br i1 %.not87, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #9
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cl = mul nsw i32 %i.bx, %i.bs
  %i.cm = add nsw i32 %i.cl, %i.cb
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 1824
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !54
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 1864
  %i.cr = tail call i32 @ff_deflate_init(ptr noundef nonnull %i.cq, i32 noundef %spec.select88, ptr noundef nonnull %0) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.i
  %.079 = phi i32 [ -22, %bb.i ], [ %i.cr, %bb.p ], [ -12, %bb.o ], [ -12, %bb.m ], [ -12, %bb.k ]
  ret i32 %.079
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 26 uses
  %i.b = alloca [256 x i16], align 16             ; 12 uses
  %i.c = alloca [256 x i16], align 16             ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 32 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1864 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1852 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40   ; 2 uses
  %i.i = icmp ne i32 %i.h, 0                      ; 7 uses
  %i.j = xor i1 %i.i, true
  %i.k = add nsw i32 %i.h, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1848
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  %i.n = icmp eq i32 %i.k, %i.m
  %spec.store.select = select i1 %i.n, i32 0, i32 %i.k
  store i32 %spec.store.select, ptr %i.g, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29
  %i.q = icmp eq i32 %i.p, 11
  br i1 %i.q, label %bb.b, label %.thread561

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 7 uses
  %i.t = icmp ne ptr %i.s, null                   ; 2 uses
  %or.cond = select i1 %i.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 800 ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.s, ptr noundef nonnull dereferenceable(1024) %i.u, i64 1024)
  %.not271 = icmp eq i32 %bcmp, 0
  %i.v = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 1824 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  br i1 %.not271, label %.thread268, label %.preheader279

.preheader279:                                    ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader279, %bb.d
  %indvars.iv487 = phi i64 [ 0, %.preheader279 ], [ %indvars.iv.next488, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader279 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !30 ; 3 uses
  %i.ac = trunc i32 %i.ab to i8                   ; 2 uses
  %i.ad = lshr i32 %i.ab, 8
  %i.ae = trunc i32 %i.ad to i8                   ; 2 uses
  %i.af = lshr i32 %i.ab, 16
  %i.ag = trunc i32 %i.af to i8                   ; 2 uses
  %i.ah = mul nuw nsw i64 %indvars.iv, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !56
  %i.ak = xor i8 %i.aj, %i.ag
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv487
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !56
  %i.ap = xor i8 %i.ao, %i.ae
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ar = getelementptr i8, ptr %i.aq, i64 %indvars.iv487
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store i8 %i.ap, ptr %i.as, align 1, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56
  %i.av = xor i8 %i.au, %i.ac
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !50
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv487
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !56
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !56
  store i8 %i.ae, ptr %i.an, align 1, !tbaa !56
  store i8 %i.ac, ptr %i.at, align 1, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !57

.thread:                                          ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.u, ptr noundef nonnull align 4 dereferenceable(1024) %i.s, i64 1024, i1 false)
  br label %.thread268

bb.e:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %2, align 8, !tbaa !55    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 1824 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !54
  br i1 %i.i, label %.thread268, label %bb.f

.thread561:                                       ; preds = %bb.a
  %i.bc = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 1824 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !54
  br i1 %i.i, label %.thread268, label %.thread566

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %.preheader278, label %.thread566

.preheader278:                                    ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader278
  %indvars.iv492 = phi i64 [ 0, %.preheader278 ], [ %indvars.iv.next493.1, %bb.g ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv492 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !30
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = mul nuw nsw i64 %indvars.iv492, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !56
  %i.bm = load i32, ptr %i.bg, align 4, !tbaa !30
  %i.bn = lshr i32 %i.bm, 8
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !56
  %i.bq = load i32, ptr %i.bg, align 4, !tbaa !30
  %i.br = lshr i32 %i.bq, 16
  %i.bs = trunc i32 %i.br to i8
  store i8 %i.bs, ptr %i.bk, align 1, !tbaa !56
  %indvars.iv.next493 = or disjoint i64 %indvars.iv492, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next493 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = mul nuw nsw i64 %indvars.iv.next493, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i8 %i.bv, ptr %i.by, align 1, !tbaa !56
  %i.bz = load i32, ptr %i.bt, align 4, !tbaa !30
  %i.ca = lshr i32 %i.bz, 8
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !56
  %i.cd = load i32, ptr %i.bt, align 4, !tbaa !30
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.bx, align 1, !tbaa !56
  %indvars.iv.next493.1 = add nuw nsw i64 %indvars.iv492, 2 ; 2 uses
  %exitcond495.not.1 = icmp eq i64 %indvars.iv.next493.1, 256
  br i1 %exitcond495.not.1, label %bb.h, label %bb.g, !llvm.loop !58

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(768) %i.ch, ptr noundef nonnull align 8 dereferenceable(768) %i.bf, i64 768, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ci, ptr noundef nonnull align 4 dereferenceable(1024) %i.s, i64 1024, i1 false)
  br label %.thread566

.thread566:                                       ; preds = %.thread561, %bb.h, %bb.f
  %i.cj = phi ptr [ %i.az, %bb.h ], [ %i.az, %bb.f ], [ %i.bc, %.thread561 ]
  %i.ck = phi ptr [ %i.ba, %bb.h ], [ %i.ba, %bb.f ], [ %i.bd, %.thread561 ]
  %.2207 = phi i32 [ 768, %bb.h ], [ 0, %bb.f ], [ 0, %.thread561 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %._crit_edge452.thread587

.lr.ph:                                           ; preds = %.thread566
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 1856 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.pre = load i32, ptr %i.cp, align 8, !tbaa !47
  %.pre520 = load i32, ptr %i.cq, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@encode_frame:bb.a

block_cmp.exit.thread.i:                          ; preds = %._crit_edge38.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %zmbv_me.exit

.preheader.i.i:                                   ; preds = %._crit_edge38.split.i.i, %.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %indvars.iv.next44.i.i.3, %.preheader.i.i ], [ 0, %._crit_edge38.split.i.i ] ; 5 uses
  %.02939.i.i = phi i32 [ %i.hy, %.preheader.i.i ], [ 0, %._crit_edge38.split.i.i ]
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv43.i.i
  %i.gz = load i16, ptr %i.gy, align 8, !tbaa !60
  %i.ha = zext i16 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !30
  %i.hd = add nsw i32 %i.hc, %.02939.i.i
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv43.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !60
  %i.hh = zext i16 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !30
  %i.hk = add nsw i32 %i.hj, %i.hd
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv43.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !60
  %i.ho = zext i16 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !30
  %i.hr = add nsw i32 %i.hq, %i.hk
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv43.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 6
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !60
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !30
  %i.hy = add nsw i32 %i.hx, %i.hr                ; 7 uses
  %indvars.iv.next44.i.i.3 = add nuw nsw i64 %indvars.iv43.i.i, 4 ; 2 uses
  %exitcond46.not.i.i.3 = icmp eq i64 %indvars.iv.next44.i.i.3, 256
  br i1 %exitcond46.not.i.i.3, label %block_cmp.exit.i, label %.preheader.i.i, !llvm.loop !64

block_cmp.exit.i:                                 ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not.i = icmp eq i32 %i.hy, 0
  br i1 %.not.i, label %.loopexit590, label %bb.k

bb.k:                                             ; preds = %block_cmp.exit.i
  %i.hz = icmp ne i32 %.1244425, 0
  %i.ia = icmp ne i32 %.1234426, 0
  %or.cond.i = select i1 %i.hz, i1 true, i1 %i.ia
  br i1 %or.cond.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ib = mul nsw i32 %i.ev, %.1244425
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds i8, ptr %i.ez, i64 %i.ic
  %i.ie = mul nsw i32 %i.fb, %.1234426
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %i.id, i64 %i.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  br i1 %i.fl, label %.preheader33.lr.ph.i101.i, label %.preheader.i96.i.preheader

.preheader33.lr.ph.i101.i:                        ; preds = %bb.l
  %i.ih = icmp sgt i32 %.fr, 0
  %i.ii = sext i32 %i.fa to i64
  %i.ij = sext i32 %i.fb to i64
  br i1 %i.ih, label %.preheader33.preheader.i102.i, label %.preheader.i96.i.preheader

.preheader33.preheader.i102.i:                    ; preds = %.preheader33.lr.ph.i101.i
  %wide.trip.count.i103.i = zext nneg i32 %.fr to i64 ; 2 uses
  %xtraiter696 = and i64 %wide.trip.count.i103.i, 1
  %i.ik = icmp eq i32 %.fr, 1
  %unroll_iter699 = and i64 %wide.trip.count.i103.i, 2147483646
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  %lcmp.mod698 = trunc i32 %.fr to i1
  br label %.preheader33.i104.i

.preheader33.i104.i:                              ; preds = %._crit_edge.i111.i, %.preheader33.preheader.i102.i
  %.02737.i105.i = phi i32 [ %i.jo, %._crit_edge.i111.i ], [ 0, %.preheader33.preheader.i102.i ]
  %.03036.i106.i = phi ptr [ %i.jm, %._crit_edge.i111.i ], [ %i.ey, %.preheader33.preheader.i102.i ] ; 4 uses
  %.03135.i107.i = phi ptr [ %i.jn, %._crit_edge.i111.i ], [ %i.ig, %.preheader33.preheader.i102.i ] ; 4 uses
  br i1 %i.ik, label %.epil.preheader695, label %.preheader33.i104.i.new

.preheader33.i104.i.new:                          ; preds = %.preheader33.i104.i, %.preheader33.i104.i.new
  %indvars.iv.i108.i = phi i64 [ %indvars.iv.next.i109.i.1, %.preheader33.i104.i.new ], [ 0, %.preheader33.i104.i ] ; 4 uses
  %niter700 = phi i64 [ %niter700.next.1, %.preheader33.i104.i.new ], [ 0, %.preheader33.i104.i ]
  %i.il = getelementptr inbounds nuw i8, ptr %.03036.i106.i, i64 %indvars.iv.i108.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !56
  %i.in = getelementptr inbounds nuw i8, ptr %.03135.i107.i, i64 %indvars.iv.i108.i
  %i.io = load i8, ptr %i.in, align 1, !tbaa !56
  %i.ip = xor i8 %i.io, %i.im
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.iq ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !60
  %i.it = add i16 %i.is, 1
  store i16 %i.it, ptr %i.ir, align 2, !tbaa !60
  %indvars.iv.next.i109.i = or disjoint i64 %indvars.iv.i108.i, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.03036.i106.i, i64 %indvars.iv.next.i109.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !56
  %i.iw = getelementptr inbounds nuw i8, ptr %.03135.i107.i, i64 %indvars.iv.next.i109.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !56
  %i.iy = xor i8 %i.ix, %i.iv
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.iz ; 2 uses
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !60
  %i.jc = add i16 %i.jb, 1
  store i16 %i.jc, ptr %i.ja, align 2, !tbaa !60
  %indvars.iv.next.i109.i.1 = add nuw nsw i64 %indvars.iv.i108.i, 2 ; 2 uses
  %niter700.next.1 = add i64 %niter700, 2         ; 2 uses
  %niter700.ncmp.1 = icmp eq i64 %niter700.next.1, %unroll_iter699
  br i1 %niter700.ncmp.1, label %._crit_edge.i111.i.unr-lcssa, label %.preheader33.i104.i.new, !llvm.loop !62

._crit_edge.i111.i.unr-lcssa:                     ; preds = %.preheader33.i104.i.new
  br i1 %lcmp.mod697.not, label %._crit_edge.i111.i, label %.epil.preheader695

.epil.preheader695:                               ; preds = %._crit_edge.i111.i.unr-lcssa, %.preheader33.i104.i
  %indvars.iv.i108.i.epil.init = phi i64 [ 0, %.preheader33.i104.i ], [ %indvars.iv.next.i109.i.1, %._crit_edge.i111.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod698)
  %i.jd = getelementptr inbounds nuw i8, ptr %.03036.i106.i, i64 %indvars.iv.i108.i.epil.init
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !56
  %i.jf = getelementptr inbounds nuw i8, ptr %.03135.i107.i, i64 %indvars.iv.i108.i.epil.init
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !56
  %i.jh = xor i8 %i.jg, %i.je
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ji ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !60
  %i.jl = add i16 %i.jk, 1
  store i16 %i.jl, ptr %i.jj, align 2, !tbaa !60
  br label %._crit_edge.i111.i

._crit_edge.i111.i:                               ; preds = %._crit_edge.i111.i.unr-lcssa, %.epil.preheader695
  %i.jm = getelementptr inbounds i8, ptr %.03036.i106.i, i64 %i.ii
  %i.jn = getelementptr inbounds i8, ptr %.03135.i107.i, i64 %i.ij
  %i.jo = add nuw nsw i32 %.02737.i105.i, 1       ; 2 uses
  %exitcond42.not.i112.i = icmp eq i32 %i.jo, %i.fj
  br i1 %exitcond42.not.i112.i, label %._crit_edge38.split.i94.i, label %.preheader33.i104.i, !llvm.loop !63

._crit_edge38.split.i94.i:                        ; preds = %._crit_edge.i111.i
  %.pre.i114.i = load i16, ptr %i.b, align 16, !tbaa !60
  %i.jp = zext i16 %.pre.i114.i to i32
  %i.jq = icmp sgt i32 %i.gw, %i.jp
  br i1 %i.jq, label %.preheader.i96.i.preheader, label %block_cmp.exit115.thread.i

.preheader.i96.i.preheader:                       ; preds = %bb.l, %.preheader33.lr.ph.i101.i, %._crit_edge38.split.i94.i
  br label %.preheader.i96.i

.preheader.i96.i:                                 ; preds = %.preheader.i96.i, %.preheader.i96.i.preheader
  %indvars.iv43.i97.i = phi i64 [ 0, %.preheader.i96.i.preheader ], [ %indvars.iv.next44.i99.i.3, %.preheader.i96.i ] ; 5 uses
  %.02939.i98.i = phi i32 [ 0, %.preheader.i96.i.preheader ], [ %i.kr, %.preheader.i96.i ]
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv43.i97.i
  %i.js = load i16, ptr %i.jr, align 8, !tbaa !60
  %i.jt = zext i16 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !30
  %i.jw = add nsw i32 %i.jv, %.02939.i98.i
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv43.i97.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !60
  %i.ka = zext i16 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !30
  %i.kd = add nsw i32 %i.kc, %i.jw
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv43.i97.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = load i16, ptr %i.kf, align 4, !tbaa !60
  %i.kh = zext i16 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !30
  %i.kk = add nsw i32 %i.kj, %i.kd
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv43.i97.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 6
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !60
  %i.ko = zext i16 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !30
  %i.kr = add nsw i32 %i.kq, %i.kk                ; 4 uses
  %indvars.iv.next44.i99.i.3 = add nuw nsw i64 %indvars.iv43.i97.i, 4 ; 2 uses
  %exitcond46.not.i100.i.3 = icmp eq i64 %indvars.iv.next44.i99.i.3, 256
  br i1 %exitcond46.not.i100.i.3, label %block_cmp.exit115.i, label %.preheader.i96.i, !llvm.loop !64

block_cmp.exit115.i:                              ; preds = %.preheader.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ks = icmp slt i32 %i.kr, %i.hy
  br i1 %i.ks, label %bb.m, label %bb.n

block_cmp.exit115.thread.i:                       ; preds = %._crit_edge38.split.i94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.kt = icmp sgt i32 %i.hy, 0
  br i1 %i.kt, label %zmbv_me.exit, label %bb.n

bb.m:                                             ; preds = %block_cmp.exit115.i
  %.not89.i = icmp eq i32 %i.kr, 0
  br i1 %.not89.i, label %.loopexit590, label %bb.n

bb.n:                                             ; preds = %bb.m, %block_cmp.exit115.thread.i, %block_cmp.exit115.i, %bb.k
  %.2245 = phi i32 [ %.1244425, %bb.m ], [ 0, %block_cmp.exit115.i ], [ 0, %block_cmp.exit115.thread.i ], [ 0, %bb.k ] ; 5 uses
  %.2235 = phi i32 [ %.1234426, %bb.m ], [ 0, %block_cmp.exit115.i ], [ 0, %block_cmp.exit115.thread.i ], [ 0, %bb.k ] ; 5 uses
  %.0.i = phi i32 [ %i.kr, %bb.m ], [ %i.hy, %block_cmp.exit115.i ], [ %i.hy, %block_cmp.exit115.thread.i ], [ %i.hy, %bb.k ]
  %.0.i.fr = freeze i32 %.0.i                     ; 3 uses
  %i.ku = load i32, ptr %i.ek, align 8, !tbaa !44 ; 4 uses
  %i.kv = sub nsw i32 0, %i.ku                    ; 9 uses
  %i.kw = load i32, ptr %i.el, align 4, !tbaa !45 ; 9 uses
  %.not90169.i = icmp slt i32 %i.kw, %i.kv
  br i1 %.not90169.i, label %.loopexit590, label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %bb.n
  %i.kx = sext i32 %i.fa to i64
  %i.ky = sext i32 %i.fb to i64                   ; 2 uses
  br i1 %i.fl, label %.lr.ph174.split.us.preheader.i, label %.lr.ph174.split.i.preheader

.lr.ph174.split.i.preheader:                      ; preds = %.lr.ph174.i
  %factor.op.mul = mul i32 %spec.select.i, %i.fj
  %factor.op.mul.i.reass = mul i32 %factor.op.mul, %i.ev
  %factor.op.mul.i.reass.fr = freeze i32 %factor.op.mul.i.reass
  %i.kz = icmp sgt i32 %factor.op.mul.i.reass.fr, 0
  br i1 %i.kz, label %.lr.ph174.split.i.us, label %.lr.ph174.split.i.preheader.split

.lr.ph174.split.i.us:                             ; preds = %.lr.ph174.split.i.preheader, %._crit_edge.split.i.loopexit.split.us.us
  %.3246.us = phi i32 [ %.5248.us.us, %._crit_edge.split.i.loopexit.split.us.us ], [ %.2245, %.lr.ph174.split.i.preheader ]
  %.3236.us = phi i32 [ %.5238.us.us, %._crit_edge.split.i.loopexit.split.us.us ], [ %.2235, %.lr.ph174.split.i.preheader ]
  %.1172.i.us = phi i32 [ %.3.i.us.us, %._crit_edge.split.i.loopexit.split.us.us ], [ %.0.i.fr, %.lr.ph174.split.i.preheader ]
  %.081170.i.us = phi i32 [ %i.mg, %._crit_edge.split.i.loopexit.split.us.us ], [ %i.kv, %.lr.ph174.split.i.preheader ] ; 6 uses
  %i.la = icmp eq i32 %.081170.i.us, %.1234426
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.us.us, %.lr.ph174.split.i.us
  %.4247.us.us = phi i32 [ %.3246.us, %.lr.ph174.split.i.us ], [ %.5248.us.us, %._crit_edge.i.us.us ] ; 2 uses
  %.4237.us.us = phi i32 [ %.3236.us, %.lr.ph174.split.i.us ], [ %.5238.us.us, %._crit_edge.i.us.us ] ; 2 uses
  %.2165.i.us.us = phi i32 [ %.1172.i.us, %.lr.ph174.split.i.us ], [ %.3.i.us.us, %._crit_edge.i.us.us ] ; 3 uses
  %.082164.i.us.us = phi i32 [ %i.kv, %.lr.ph174.split.i.us ], [ %i.mf, %._crit_edge.i.us.us ] ; 6 uses
  %i.lb = or i32 %.082164.i.us.us, %.081170.i.us
  %or.cond3.not.i.us.us = icmp eq i32 %i.lb, 0
  %i.lc = icmp eq i32 %.082164.i.us.us, %.1244425
  %or.cond93.i.us.us = select i1 %i.lc, i1 %i.la, i1 false
  %or.cond181.i.us.us = select i1 %or.cond3.not.i.us.us, i1 true, i1 %or.cond93.i.us.us
  br i1 %or.cond181.i.us.us, label %._crit_edge.i.us.us, label %._crit_edge38.split.i116.i.us.us

._crit_edge38.split.i116.i.us.us:                 ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  br label %.preheader.i118.i.us.us

.preheader.i118.i.us.us:                          ; preds = %.preheader.i118.i.us.us, %._crit_edge38.split.i116.i.us.us
  %indvars.iv43.i119.i.us.us = phi i64 [ 0, %._crit_edge38.split.i116.i.us.us ], [ %indvars.iv.next44.i121.i.us.us.3, %.preheader.i118.i.us.us ] ; 5 uses
  %.02939.i120.i.us.us = phi i32 [ 0, %._crit_edge38.split.i116.i.us.us ], [ %i.md, %.preheader.i118.i.us.us ]
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv43.i119.i.us.us
  %i.le = load i16, ptr %i.ld, align 8, !tbaa !60
  %i.lf = zext i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !30
  %i.li = add nsw i32 %i.lh, %.02939.i120.i.us.us
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv43.i119.i.us.us
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !60
  %i.lm = zext i16 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !30
  %i.lp = add nsw i32 %i.lo, %i.li
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv43.i119.i.us.us
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i16, ptr %i.lr, align 4, !tbaa !60
  %i.lt = zext i16 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !30
  %i.lw = add nsw i32 %i.lv, %i.lp
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv43.i119.i.us.us
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 6
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !60
  %i.ma = zext i16 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !30
  %i.md = add nsw i32 %i.mc, %i.lw                ; 4 uses
  %indvars.iv.next44.i121.i.us.us.3 = add nuw nsw i64 %indvars.iv43.i119.i.us.us, 4 ; 2 uses
  %exitcond46.not.i122.i.us.us.3 = icmp eq i64 %indvars.iv.next44.i121.i.us.us.3, 256
  br i1 %exitcond46.not.i122.i.us.us.3, label %block_cmp.exit137.i.us.us, label %.preheader.i118.i.us.us, !llvm.loop !64

block_cmp.exit137.i.us.us:                        ; preds = %.preheader.i118.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.me = icmp slt i32 %i.md, %.2165.i.us.us
  br i1 %i.me, label %bb.p, label %._crit_edge.i.us.us

bb.p:                                             ; preds = %block_cmp.exit137.i.us.us
  %.not92.i.us.us = icmp eq i32 %i.md, 0
  br i1 %.not92.i.us.us, label %.loopexit590, label %._crit_edge.i.us.us

._crit_edge.i.us.us:                              ; preds = %bb.p, %block_cmp.exit137.i.us.us, %bb.o
  %.5248.us.us = phi i32 [ %.4247.us.us, %bb.o ], [ %.082164.i.us.us, %bb.p ], [ %.4247.us.us, %block_cmp.exit137.i.us.us ] ; 3 uses
  %.5238.us.us = phi i32 [ %.4237.us.us, %bb.o ], [ %.081170.i.us, %bb.p ], [ %.4237.us.us, %block_cmp.exit137.i.us.us ] ; 3 uses
  %.3.i.us.us = phi i32 [ %.2165.i.us.us, %bb.o ], [ %i.md, %bb.p ], [ %.2165.i.us.us, %block_cmp.exit137.i.us.us ] ; 2 uses
  %i.mf = add i32 %.082164.i.us.us, 1
  %exitcond500.not = icmp eq i32 %.082164.i.us.us, %i.kw
  br i1 %exitcond500.not, label %._crit_edge.split.i.loopexit.split.us.us, label %bb.o, !llvm.loop !65

._crit_edge.split.i.loopexit.split.us.us:         ; preds = %._crit_edge.i.us.us
  %i.mg = add i32 %.081170.i.us, 1
  %exitcond501.not = icmp eq i32 %.081170.i.us, %i.kw
  br i1 %exitcond501.not, label %.loopexit590, label %.lr.ph174.split.i.us, !llvm.loop !66

.lr.ph174.split.i.preheader.split:                ; preds = %.lr.ph174.split.i.preheader
  %i.mh = icmp sgt i32 %.0.i.fr, 0
  br i1 %i.mh, label %.lr.ph174.split.i.us331.preheader, label %.loopexit590

.lr.ph174.split.i.us331.preheader:                ; preds = %.lr.ph174.split.i.preheader.split
  %i.mi = add i32 %i.ku, %i.kw
  %i.mj = add i32 %i.mi, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.mj, 16
  %n.vec = and i32 %i.mj, -16                     ; 3 uses
  %i.mk = sub i32 %n.vec, %i.ku
  %broadcast.splatinsert654 = insertelement <16 x i32> poison, i32 %.1244425, i64 0
  %broadcast.splat655 = shufflevector <16 x i32> %broadcast.splatinsert654, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert656 = insertelement <16 x i32> poison, i32 %i.kv, i64 0
  %broadcast.splat657 = shufflevector <16 x i32> %broadcast.splatinsert656, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i32> %broadcast.splat657, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %cmp.n = icmp eq i32 %i.mj, %n.vec
  br label %.lr.ph174.split.i.us331

.lr.ph174.split.i.us331:                          ; preds = %.lr.ph174.split.i.us331.preheader, %._crit_edge.split.i.loopexit.split.split.us.us
  %.081170.i.us332 = phi i32 [ %i.nb, %._crit_edge.split.i.loopexit.split.split.us.us ], [ %i.kv, %.lr.ph174.split.i.us331.preheader ] ; 7 uses
  %i.ml = icmp eq i32 %.081170.i.us332, %.1234426 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph174.split.i.us331
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.081170.i.us332, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert652 = insertelement <16 x i1> poison, i1 %i.ml, i64 0
  %broadcast.splat653 = shufflevector <16 x i1> %broadcast.splatinsert652, <16 x i1> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.mm = or <16 x i32> %vec.ind, %broadcast.splat
  %i.mn = icmp eq <16 x i32> %i.mm, zeroinitializer
  %i.mo = icmp eq <16 x i32> %vec.ind, %broadcast.splat655
  %i.mp = select <16 x i1> %i.mo, <16 x i1> %broadcast.splat653, <16 x i1> zeroinitializer
  %i.mq = select <16 x i1> %i.mn, <16 x i1> splat (i1 true), <16 x i1> %i.mp
  %.fr658 = freeze <16 x i1> %i.mq
  %i.mr = xor <16 x i1> %.fr658, splat (i1 true)  ; 2 uses
  %i.ms = bitcast <16 x i1> %i.mr to i16
  %.not659 = icmp eq i16 %i.ms, 0
  br i1 %.not659, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.mt = icmp eq i32 %index.next, %n.vec
  br i1 %i.mt, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body.interim
  br i1 %cmp.n, label %._crit_edge.split.i.loopexit.split.split.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph174.split.i.us331, %middle.block
  %.082164.i.us302.us.ph = phi i32 [ %i.kv, %.lr.ph174.split.i.us331 ], [ %i.mk, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.mu = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.mr, i1 false)
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = add i32 %index, %i.mv
  %i.mx = sub i32 %i.mw, %i.ku
  br label %zmbv_me.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %._crit_edge.i.us307.us
  %.082164.i.us302.us = phi i32 [ %i.na, %._crit_edge.i.us307.us ], [ %.082164.i.us302.us.ph, %scalar.ph.preheader ] ; 5 uses
  %i.my = or i32 %.082164.i.us302.us, %.081170.i.us332
  %or.cond3.not.i.us303.us = icmp eq i32 %i.my, 0
  %i.mz = icmp eq i32 %.082164.i.us302.us, %.1244425
  %or.cond93.i.us304.us = select i1 %i.mz, i1 %i.ml, i1 false
  %or.cond181.i.us305.us = select i1 %or.cond3.not.i.us303.us, i1 true, i1 %or.cond93.i.us304.us
  br i1 %or.cond181.i.us305.us, label %._crit_edge.i.us307.us, label %zmbv_me.exit

._crit_edge.i.us307.us:                           ; preds = %scalar.ph
  %i.na = add i32 %.082164.i.us302.us, 1
  %exitcond498.not = icmp eq i32 %.082164.i.us302.us, %i.kw
  br i1 %exitcond498.not, label %._crit_edge.split.i.loopexit.split.split.us.us, label %scalar.ph, !llvm.loop !70

._crit_edge.split.i.loopexit.split.split.us.us:   ; preds = %._crit_edge.i.us307.us, %middle.block
  %i.nb = add i32 %.081170.i.us332, 1
  %exitcond499.not = icmp eq i32 %.081170.i.us332, %i.kw
  br i1 %exitcond499.not, label %.loopexit590, label %.lr.ph174.split.i.us331, !llvm.loop !66

.lr.ph174.split.us.preheader.i:                   ; preds = %.lr.ph174.i
  %i.nc = sext i32 %i.kv to i64                   ; 2 uses
  %i.nd = icmp sgt i32 %.fr, 0
  %wide.trip.count.i125.us.us.i = zext i32 %.fr to i64 ; 2 uses
  %i.ne = add i32 %i.kw, 1
  %i.nf = sext i32 %i.ev to i64
  %i.ng = tail call i32 @llvm.smax.i32(i32 %i.kv, i32 %i.kw)
  %smax = sext i32 %i.ng to i64
  %xtraiter702 = and i64 %wide.trip.count.i125.us.us.i, 1
  %i.nh = icmp eq i32 %.fr, 1
  %unroll_iter705 = and i64 %wide.trip.count.i125.us.us.i, 2147483646
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  %lcmp.mod704 = trunc i32 %.fr to i1
  br label %.lr.ph174.split.us.i

.lr.ph174.split.us.i:                             ; preds = %._crit_edge.split.us.us.i.loopexit, %.lr.ph174.split.us.preheader.i
  %.7250 = phi i32 [ %.2245, %.lr.ph174.split.us.preheader.i ], [ %.us-phi346, %._crit_edge.split.us.us.i.loopexit ] ; 2 uses
  %.7240 = phi i32 [ %.2235, %.lr.ph174.split.us.preheader.i ], [ %.us-phi347, %._crit_edge.split.us.us.i.loopexit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.nc, %.lr.ph174.split.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.split.us.us.i.loopexit ] ; 4 uses
  %.1172.us.i = phi i32 [ %.0.i.fr, %.lr.ph174.split.us.preheader.i ], [ %.us-phi348, %._crit_edge.split.us.us.i.loopexit ]
  %.1172.us.i.fr = freeze i32 %.1172.us.i         ; 2 uses
end_hunk_1
begin_hunk_2_@encode_frame:bb.a
  %i.um = getelementptr inbounds nuw i8, ptr %i.e, i64 1880
  store i64 0, ptr %i.um, align 8, !tbaa !79
  %i.un = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !51
  %i.up = getelementptr inbounds nuw i8, ptr %i.e, i64 1888
  store ptr %i.uo, ptr %i.up, align 8, !tbaa !80
  %i.uq = getelementptr inbounds nuw i8, ptr %i.e, i64 1844
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !49
  %i.us = getelementptr inbounds nuw i8, ptr %i.e, i64 1896
  store i32 %i.ur, ptr %i.us, align 8, !tbaa !81
  %i.ut = getelementptr inbounds nuw i8, ptr %i.e, i64 1904 ; 3 uses
  store i64 0, ptr %i.ut, align 8, !tbaa !82
  %i.uu = tail call i32 @deflate(ptr noundef nonnull %i.f, i32 noundef 2) #9
  %.not224 = icmp eq i32 %i.uu, 0
  br i1 %.not224, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge452.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.y

bb.u:                                             ; preds = %._crit_edge452.thread
  %i.uv = load i64, ptr %i.ut, align 8, !tbaa !82
  %i.uw = select i1 %i.i, i64 1, i64 7
  %i.ux = add i64 %i.uw, %i.uv
  %sext = shl i64 %i.ux, 32
  %i.uy = ashr exact i64 %sext, 32
  %i.uz = tail call i32 @ff_get_encode_buffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.uy, i32 noundef 0) #9 ; 2 uses
  %i.va = icmp slt i32 %i.uz, 0
  br i1 %i.va, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !83 ; 8 uses
  %i.vd = zext i1 %i.j to i8
  %i.ve = select i1 %i.ui, i8 2, i8 0
  %i.vf = or disjoint i8 %i.ve, %i.vd
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 1 ; 2 uses
  store i8 %i.vf, ptr %i.vc, align 1, !tbaa !56
  br i1 %i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  store i8 0, ptr %i.vg, align 1, !tbaa !56
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vc, i64 3
  store i8 1, ptr %i.vh, align 1, !tbaa !56
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  store i8 1, ptr %i.vi, align 1, !tbaa !56
  %i.vk = getelementptr inbounds nuw i8, ptr %i.e, i64 1860
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !85
  %i.vm = trunc i32 %i.vl to i8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vc, i64 5
  store i8 %i.vm, ptr %i.vj, align 1, !tbaa !56
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vc, i64 6
  store i8 16, ptr %i.vn, align 1, !tbaa !56
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vc, i64 7
  store i8 16, ptr %i.vo, align 1, !tbaa !56
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !86
  %i.vs = or i32 %i.vr, 1
  store i32 %i.vs, ptr %i.vq, align 8, !tbaa !86
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0210 = phi ptr [ %i.vp, %bb.w ], [ %i.vg, %bb.v ]
  %i.vt = load ptr, ptr %i.un, align 8, !tbaa !51
  %i.vu = load i64, ptr %i.ut, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0210, ptr align 1 %i.vt, i64 %i.vu, i1 false)
  store i32 1, ptr %3, align 4, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.t
  %.0216 = phi i32 [ -1, %bb.t ], [ 0, %bb.x ], [ %i.uz, %bb.u ]
  ret i32 %.0216
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @encode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1832
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1864
  tail call void @ff_deflate_end(ptr noundef nonnull %i.f) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #4

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #4

declare i32 @ff_deflate_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #4

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare void @ff_deflate_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

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
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 136}
!30 = !{!6, !6, i64 0}
!31 = !{!32, !6, i64 1856}
!32 = !{!"ZmbvEncContext", !33, i64 0, !6, i64 8, !6, i64 12, !16, i64 16, !16, i64 24, !7, i64 32, !7, i64 800, !16, i64 1824, !16, i64 1832, !6, i64 1840, !6, i64 1844, !6, i64 1848, !6, i64 1852, !6, i64 1856, !6, i64 1860, !34, i64 1864, !7, i64 1984}
!33 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!34 = !{!"FFZStream", !35, i64 0, !6, i64 112}
!35 = !{!"z_stream_s", !16, i64 0, !6, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !15, i64 40, !16, i64 48, !36, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !6, i64 88, !15, i64 96, !15, i64 104}
!36 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!32, !33, i64 0}
!40 = !{!32, !6, i64 1852}
!41 = !{!10, !6, i64 328}
!42 = !{!32, !6, i64 1848}
!43 = !{!10, !6, i64 280}
!44 = !{!32, !6, i64 8}
!45 = !{!32, !6, i64 12}
!46 = !{!10, !6, i64 424}
!47 = !{!10, !6, i64 112}
!48 = !{!10, !6, i64 116}
!49 = !{!32, !6, i64 1844}
!50 = !{!32, !16, i64 24}
!51 = !{!32, !16, i64 16}
!52 = !{!32, !6, i64 1840}
!53 = !{!32, !16, i64 1832}
!54 = !{!32, !16, i64 1824}
!55 = !{!16, !16, i64 0}
!56 = !{!7, !7, i64 0}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38}
!59 = distinct !{!59, !38}
!60 = !{!61, !61, i64 0}
!61 = !{!"short", !7, i64 0}
!62 = distinct !{!62, !38}
!63 = distinct !{!63, !38}
!64 = distinct !{!64, !38}
!65 = distinct !{!65, !38}
!66 = distinct !{!66, !38}
!67 = distinct !{!67, !38, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !38, !69, !68}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38, !75}
!75 = !{!"llvm.loop.unswitch.partial.disable"}
!76 = distinct !{!76, !38}
!77 = !{!35, !16, i64 0}
!78 = !{!35, !6, i64 8}
!79 = !{!35, !15, i64 16}
!80 = !{!35, !16, i64 24}
!81 = !{!35, !6, i64 32}
!82 = !{!35, !15, i64 40}
!83 = !{!84, !16, i64 24}
!84 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!85 = !{!32, !6, i64 1860}
!86 = !{!84, !6, i64 40}
end_hunk_2
