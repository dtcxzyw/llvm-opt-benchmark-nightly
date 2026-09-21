Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/tool_cb_prg?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"\0D%%-%ds %%5.1f%%%%\00", align 1
@tool_stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"-=O=-\00", align 1
@sinus = internal unnamed_addr constant [200 x i32] [i32 515704, i32 531394, i32 547052, i32 562664, i32 578214, i32 593687, i32 609068, i32 624341, i32 639491, i32 654504, i32 669364, i32 684057, i32 698568, i32 712883, i32 726989, i32 740870, i32 754513, i32 767906, i32 781034, i32 793885, i32 806445, i32 818704, i32 830647, i32 842265, i32 853545, i32 864476, i32 875047, i32 885248, i32 895069, i32 904500, i32 913532, i32 922156, i32 930363, i32 938145, i32 945495, i32 952406, i32 958870, i32 964881, i32 970434, i32 975522, i32 980141, i32 984286, i32 987954, i32 991139, i32 993840, i32 996054, i32 997778, i32 999011, i32 999752, i32 999999, i32 999754, i32 999014, i32 997783, i32 996060, i32 993848, i32 991148, i32 987964, i32 984298, i32 980154, i32 975536, i32 970449, i32 964898, i32 958888, i32 952426, i32 945516, i32 938168, i32 930386, i32 922180, i32 913558, i32 904527, i32 895097, i32 885277, i32 875077, i32 864507, i32 853577, i32 842299, i32 830682, i32 818739, i32 806482, i32 793922, i32 781072, i32 767945, i32 754553, i32 740910, i32 727030, i32 712925, i32 698610, i32 684100, i32 669407, i32 654548, i32 639536, i32 624386, i32 609113, i32 593733, i32 578260, i32 562710, i32 547098, i32 531440, i32 515751, i32 500046, i32 484341, i32 468651, i32 452993, i32 437381, i32 421830, i32 406357, i32 390976, i32 375703, i32 360552, i32 345539, i32 330679, i32 315985, i32 301474, i32 287158, i32 273052, i32 259170, i32 245525, i32 232132, i32 219003, i32 206152, i32 193590, i32 181331, i32 169386, i32 157768, i32 146487, i32 135555, i32 124983, i32 114781, i32 104959, i32 95526, i32 86493, i32 77868, i32 69660, i32 61876, i32 54525, i32 47613, i32 41147, i32 35135, i32 29581, i32 24491, i32 19871, i32 15724, i32 12056, i32 8868, i32 6166, i32 3951, i32 2225, i32 990, i32 248, i32 0, i32 244, i32 982, i32 2212, i32 3933, i32 6144, i32 8842, i32 12025, i32 15690, i32 19832, i32 24448, i32 29534, i32 35084, i32 41092, i32 47554, i32 54462, i32 61809, i32 69589, i32 77794, i32 86415, i32 95445, i32 104873, i32 114692, i32 124891, i32 135460, i32 146389, i32 157667, i32 169282, i32 181224, i32 193480, i32 206039, i32 218888, i32 232015, i32 245406, i32 259048, i32 272928, i32 287032, i32 301346, i32 315856, i32 330548, i32 345407, i32 360419, i32 375568, i32 390841, i32 406221, i32 421693, i32 437243, i32 452854, i32 468513, i32 484202, i32 499907], align 16

; Function Attrs: nounwind uwtable
define noundef i32 @tool_progress_cb(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [402 x i8], align 16              ; 11 uses
  %i.b = alloca [401 x i8], align 16              ; 5 uses
  %i.c = alloca [40 x i8], align 16               ; 4 uses
  %i.d = tail call { i64, i32 } @curlx_now() #6   ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i32 } %i.d, 1        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = or i64 %3, %1
  %or.cond.not = icmp eq i64 %i.m, 0              ; 2 uses
  %i.n = add nsw i64 %3, %1
  %spec.select78 = select i1 %or.cond.not, i64 9223372036854775807, i64 %i.n
  %i.o = add nsw i64 %4, %2
  %spec.select80 = select i1 %or.cond.not, i64 9223372036854775807, i64 %i.o
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = add nsw i64 %3, %1
  %spec.select79 = tail call i64 @llvm.sadd.sat.i64(i64 %i.k, i64 %i.p)
  %i.q = add nsw i64 %4, %2
  %spec.select81 = tail call i64 @llvm.sadd.sat.i64(i64 %i.k, i64 %i.q)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06984 = phi i64 [ %spec.select78, %bb.b ], [ %spec.select79, %bb.c ] ; 4 uses
  %.0 = phi i64 [ %spec.select80, %bb.b ], [ %spec.select81, %bb.c ] ; 7 uses
  %i.r = load i32, ptr %i.i, align 8, !tbaa !29
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not75 = icmp eq i64 %.06984, 0
  br i1 %.not75, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30
  %i.u = icmp eq i64 %i.t, %.0
  br i1 %i.u, label %bb.z, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.y = load i32, ptr %i.x, align 8
  %i.z = tail call i64 @curlx_timediff_ms(i64 %i.e, i32 %i.f, i64 %i.w, i32 %i.y) #6
  %i.aa = icmp slt i64 %i.z, 100
  %i.ab = icmp slt i64 %.0, %.06984
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.z, label %bb.q

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = tail call i64 @curlx_timediff_ms(i64 %i.e, i32 %i.f, i64 %i.ad, i32 %i.af) #6
  %i.ah = icmp slt i64 %i.ag, 100
  br i1 %i.ah, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call i32 @get_terminal_columns() #6 ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 400
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 400, ptr %i.ak, align 8, !tbaa !17
  br label %update_width.exit

bb.k:                                             ; preds = %bb.i
  %i.al = icmp sgt i32 %i.ai, 20
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.ai, ptr %i.am, align 8, !tbaa !17
  br label %update_width.exit

bb.m:                                             ; preds = %bb.k
  store i32 20, ptr %i.am, align 8, !tbaa !17
  br label %update_width.exit

update_width.exit:                                ; preds = %bb.j, %bb.l, %bb.m
  %i.an = phi i32 [ 400, %bb.j ], [ %i.ai, %bb.l ], [ 20, %bb.m ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !30
  %.not86 = icmp eq i64 %.0, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ar = add nsw i32 %i.an, -2
  store i8 13, ptr %i.a, align 16, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.at = zext nneg i32 %i.an to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.as, i8 32, i64 %i.at, i1 false)
  %i.au = getelementptr i8, ptr %i.a, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 1
  store i8 0, ptr %i.av, align 1, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.a, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ba, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %5 = udiv i32 1000000, %i.ar                    ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !18
  %6 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = add <4 x i32> %7, <i32 0, i32 5, i32 10, i32 15>
  %9 = urem <4 x i32> %8, splat (i32 200)         ; 4 uses
  %10 = extractelement <4 x i32> %9, i64 0
  %i.bd = zext nneg i32 %10 to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @sinus, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = sdiv i32 %i.bf, %5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %i.a, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 1
  store i8 35, ptr %i.bj, align 1, !tbaa !31
  %11 = extractelement <4 x i32> %9, i64 1
  %i.bk = zext nneg i32 %11 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @sinus, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !33
  %i.bn = sdiv i32 %i.bm, %5
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr %i.a, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  store i8 35, ptr %i.bq, align 1, !tbaa !31
  %12 = extractelement <4 x i32> %9, i64 2
  %i.br = zext nneg i32 %12 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @sinus, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !33
  %i.bu = sdiv i32 %i.bt, %5
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.a, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  store i8 35, ptr %i.bx, align 1, !tbaa !31
  %13 = extractelement <4 x i32> %9, i64 3
  %i.by = zext nneg i32 %13 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @sinus, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33
  %i.cb = sdiv i32 %i.ca, %5
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %i.a, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 1
  store i8 35, ptr %i.ce, align 1, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19
  %i.ch = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.cg) ; 0 uses
  %i.ci = load i32, ptr %i.bb, align 8, !tbaa !18 ; 2 uses
  %i.cj = add i32 %i.ci, 2                        ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, 199
  %i.cl = add i32 %i.ci, -198
  %spec.select.i = select i1 %i.ck, i32 %i.cl, i32 %i.cj
  store i32 %spec.select.i, ptr %i.bb, align 8, !tbaa !18
  br i1 %.not86, label %bb.o, label %bb.n

bb.n:                                             ; preds = %update_width.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %update_width.exit
  %i.co = phi i32 [ %i.cn, %bb.n ], [ 0, %update_width.exit ]
  %i.cp = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.cq = add nsw i32 %i.cp, %i.co                ; 3 uses
  store i32 %i.cq, ptr %i.aw, align 4, !tbaa !32
  %i.cr = load i32, ptr %i.aq, align 8, !tbaa !17
  %i.cs = add nsw i32 %i.cr, -6                   ; 2 uses
  %.not.i = icmp slt i32 %i.cq, %i.cs
  br i1 %.not.i, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.ct = icmp slt i32 %i.cq, 0
  br i1 %i.ct, label %.sink.split.i, label %fly.exit

.sink.split.i:                                    ; preds = %bb.p, %bb.o
  %.sink32.i = phi i32 [ -1, %bb.o ], [ 1, %bb.p ]
  %.sink.i = phi i32 [ %i.cs, %bb.o ], [ 0, %bb.p ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 %.sink32.i, ptr %i.cu, align 8, !tbaa !20
  store i32 %.sink.i, ptr %i.aw, align 4, !tbaa !32
  br label %fly.exit

fly.exit:                                         ; preds = %bb.p, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.q

bb.q:                                             ; preds = %fly.exit, %bb.g, %bb.d
  %i.cv = load i32, ptr %i.i, align 8, !tbaa !29
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.i, align 8, !tbaa !29
  %i.cx = tail call i32 @get_terminal_columns() #6 ; 4 uses
  %i.cy = icmp sgt i32 %i.cx, 400
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 400, ptr %i.cz, align 8, !tbaa !17
  br label %update_width.exit82

bb.s:                                             ; preds = %bb.q
  %i.da = icmp sgt i32 %i.cx, 20
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.cx, ptr %i.db, align 8, !tbaa !17
  %i.dc = add nsw i32 %i.cx, -7
  br label %update_width.exit82

bb.u:                                             ; preds = %bb.s
  store i32 20, ptr %i.db, align 8, !tbaa !17
  br label %update_width.exit82

update_width.exit82:                              ; preds = %bb.r, %bb.t, %bb.u
  %i.dd = phi i32 [ 393, %bb.r ], [ %i.dc, %bb.t ], [ 13, %bb.u ] ; 2 uses
  %i.de = icmp sgt i64 %.06984, 0
  br i1 %i.de, label %bb.v, label %bb.x

bb.v:                                             ; preds = %update_width.exit82
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !30
  %.not76 = icmp eq i64 %.0, %i.dg
  br i1 %.not76, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.0, i64 %.06984)
  %i.dh = sitofp i64 %.0 to double
  %i.di = uitofp nneg i64 %spec.select to double
  %i.dj = fdiv double %i.dh, %i.di                ; 2 uses
  %i.dk = fmul double %i.dj, 1.000000e+02
  %i.dl = uitofp nneg i32 %i.dd to double
  %i.dm = fmul double %i.dj, %i.dl
  %i.dn = fptoui double %i.dm to i64
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 400) ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 35, i64 %spec.store.select, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.store.select
  store i8 0, ptr %i.do, align 1, !tbaa !31
  %i.dp = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.c, i64 noundef 40, ptr noundef nonnull @.str, i32 noundef %i.dd) #6 ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !19
  %i.ds = call i32 (ptr, ptr, ...) @curl_mfprintf(ptr noundef %i.dr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, double noundef %i.dk) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %update_width.exit82
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !19
  %i.dv = call i32 @fflush(ptr noundef %i.du)     ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %.0, ptr %i.dw, align 8, !tbaa !30
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %i.e, ptr %i.dx, align 8, !tbaa !34
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %i.f, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 1179 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 1            ; 2 uses
  %i.ea = and i64 %i.dz, 134217728
  %.not77 = icmp eq i64 %i.ea, 0
  br i1 %.not77, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = and i64 %i.dz, -134217729
  store i64 %i.eb, ptr %i.dy, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !35
  %i.ee = call i32 @curl_easy_pause(ptr noundef %i.ed, i32 noundef 0) #6 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.h, %bb.g, %bb.f
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare { i64, i32 } @curlx_now() local_unnamed_addr #2

declare i64 @curlx_timediff_ms(i64, i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @curl_mfprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @curl_easy_pause(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @progressbarinit(ptr nofree noundef writeonly captures(none) initializes((0, 72)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1179
  %i.b = load i64, ptr %i.a, align 1
  %i.c = and i64 %i.b, 32
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.e, ptr %i.f, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @get_terminal_columns() #6 ; 3 uses
  %i.h = icmp sgt i32 %i.g, 400
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 400, ptr %i.i, align 8, !tbaa !17
  br label %update_width.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.g, 20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.g, ptr %i.k, align 8, !tbaa !17
  br label %update_width.exit

bb.g:                                             ; preds = %bb.e
  store i32 20, ptr %i.k, align 8, !tbaa !17
  br label %update_width.exit

end_hunk_0
