inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@rcsid = internal constant [64 x i8] c"@(#)$File: cdf_time.c,v 1.25 2024/11/25 21:24:59 christos Exp $\00", align 16
@cdf_timestamp_to_timespec.UTC = internal global [4 x i8] c"UTC\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"*Bad* %#16.16llx\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @rcsid], section "llvm.metadata"

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 -1, 1) i32 @cdf_timestamp_to_timespec(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = srem i64 %1, 10000000
  %i.b = mul nsw i64 %i.a, 100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !12
  %i.d = sdiv i64 %1, 10000000
  %i.e = srem i64 %i.d, 60
  %i.f = trunc nsw i64 %i.e to i32
  store i32 %i.f, ptr %2, align 8, !tbaa !15
  %i.g = sdiv i64 %1, 600000000
  %i.h = srem i64 %i.g, 60
  %i.i = trunc nsw i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !19
  %i.k = sdiv i64 %1, 36000000000
  %.lhs.trunc = trunc nsw i64 %i.k to i32
  %i.l = srem i32 %.lhs.trunc, 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.l, ptr %i.m, align 8, !tbaa !20
  %i.n = sdiv i64 %1, 864000000000
  %i.o = sdiv i64 %1, 315360000000000
  %i.p = trunc nsw i64 %i.o to i32                ; 2 uses
  %i.q = add nsw i32 %i.p, 1601                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = icmp sgt i64 %1, 315359999999999
  br i1 %i.s, label %.lr.ph.i, label %cdf_getdays.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.010.i = phi i32 [ %i.ab, %bb.d ], [ 1601, %bb.a ] ; 4 uses
  %.089.i = phi i32 [ %i.aa, %bb.d ], [ 0, %bb.a ]
  %i.t = and i32 %.010.i, 3
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.v = urem i32 %.010.i, 100
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = urem i32 %.010.i, 400
  %i.x = icmp eq i32 %i.w, 0
  %i.y = select i1 %i.x, i32 366, i32 365
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.z = phi i32 [ 365, %.lr.ph.i ], [ 366, %bb.b ], [ %i.y, %bb.c ]
  %i.aa = add nuw nsw i32 %i.z, %.089.i           ; 2 uses
  %i.ab = add nuw nsw i32 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ab, %i.q
  br i1 %exitcond.not.i, label %cdf_getdays.exit, label %.lr.ph.i, !llvm.loop !21

cdf_getdays.exit:                                 ; preds = %bb.d, %bb.a
  %.08.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.d ]
  %i.ac = trunc nsw i64 %i.n to i32
  %.neg = add nsw i32 %i.ac, 1
  %i.ad = sub i32 %.neg, %.08.lcssa.i             ; 63 uses
  %i.ae = and i32 %i.q, 3
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = srem i32 %i.q, 400
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.af, label %.split.i, label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %cdf_getdays.exit
  %.not20.us.i = icmp slt i32 %i.ad, 31
  br i1 %.not20.us.i, label %.split.us.preheader.i18.thread40, label %.split.us.1.i

.split.us.preheader.i18.thread40:                 ; preds = %.split.us.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !23
  br label %cdf_getmonth.exit

.split.us.1.i:                                    ; preds = %.split.us.preheader.i
  %.not20.us.1.i = icmp samesign ult i32 %i.ad, 59
  br i1 %.not20.us.1.i, label %.split.us.preheader.i18, label %.split.us.2.i

.split.us.2.i:                                    ; preds = %.split.us.1.i
  %.not20.us.2.i = icmp samesign ult i32 %i.ad, 90
  br i1 %.not20.us.2.i, label %.split.us.1.i19, label %.split.us.3.i

.split.us.3.i:                                    ; preds = %.split.us.2.i
  %.not20.us.3.i = icmp samesign ult i32 %i.ad, 120
  br i1 %.not20.us.3.i, label %.split.us.2.i20, label %.split.us.4.i

.split.us.4.i:                                    ; preds = %.split.us.3.i
  %.not20.us.4.i = icmp samesign ult i32 %i.ad, 151
  br i1 %.not20.us.4.i, label %.split.us.3.i21, label %.split.us.5.i

.split.us.5.i:                                    ; preds = %.split.us.4.i
  %.not20.us.5.i = icmp samesign ult i32 %i.ad, 181
  br i1 %.not20.us.5.i, label %.split.us.4.i22, label %.split.us.6.i

.split.us.6.i:                                    ; preds = %.split.us.5.i
  %.not20.us.6.i = icmp samesign ult i32 %i.ad, 212
  br i1 %.not20.us.6.i, label %.split.us.5.i23, label %.split.us.7.i

.split.us.7.i:                                    ; preds = %.split.us.6.i
  %.not20.us.7.i = icmp samesign ult i32 %i.ad, 243
  br i1 %.not20.us.7.i, label %.split.us.6.i24, label %.split.us.8.i

.split.us.8.i:                                    ; preds = %.split.us.7.i
  %.not20.us.8.i = icmp samesign ult i32 %i.ad, 273
  br i1 %.not20.us.8.i, label %.split.us.7.i25, label %.split.us.9.i

.split.us.9.i:                                    ; preds = %.split.us.8.i
  %.not20.us.9.i = icmp samesign ult i32 %i.ad, 304
  br i1 %.not20.us.9.i, label %.split.us.8.i26, label %.split.us.10.i

.split.us.10.i:                                   ; preds = %.split.us.9.i
  %.not20.us.10.i = icmp samesign ult i32 %i.ad, 334
  br i1 %.not20.us.10.i, label %.split.us.9.i27, label %.split.us.10.i28

.split.i:                                         ; preds = %cdf_getdays.exit
  %i.aj = srem i32 %i.q, 100                      ; 2 uses
  %.not.i16 = icmp eq i32 %i.aj, 0
  %.not20.us28.i = icmp slt i32 %i.ad, 31         ; 2 uses
  br i1 %.not.i16, label %.split.split.us.preheader.i, label %.split.split.preheader.i

.split.split.preheader.i:                         ; preds = %.split.i
  br i1 %.not20.us28.i, label %.split.preheader.i.thread49, label %.split.split.1.i

.split.split.us.preheader.i:                      ; preds = %.split.i
  br i1 %.not20.us28.i, label %.split.preheader.i.thread49, label %.split.split.us.1.i

.split.split.us.1.i:                              ; preds = %.split.split.us.preheader.i
  %i.ak = add nsw i32 %i.ad, -31                  ; 3 uses
  %i.al = select i1 %i.ah, i32 29, i32 28         ; 2 uses
  %.not20.us28.1.i = icmp samesign ult i32 %i.ak, %i.al
  br i1 %.not20.us28.1.i, label %.split.preheader.i, label %.split.split.us.2.i

.split.split.us.2.i:                              ; preds = %.split.split.us.1.i
  %i.am = sub nuw nsw i32 %i.ak, %i.al            ; 20 uses
  %.not20.us28.2.i = icmp samesign ult i32 %i.am, 31
  br i1 %.not20.us28.2.i, label %.split.preheader.i.thread, label %.split.split.us.3.i

.split.split.us.3.i:                              ; preds = %.split.split.us.2.i
  %i.an = add nsw i32 %i.am, -31
  %.not20.us28.3.i = icmp samesign ult i32 %i.am, 61
  br i1 %.not20.us28.3.i, label %.split.preheader.i.thread, label %.split.split.us.4.i

.split.split.us.4.i:                              ; preds = %.split.split.us.3.i
  %i.ao = add nsw i32 %i.am, -61
  %.not20.us28.4.i = icmp samesign ult i32 %i.am, 92
  br i1 %.not20.us28.4.i, label %.split.preheader.i.thread, label %.split.split.us.5.i

.split.split.us.5.i:                              ; preds = %.split.split.us.4.i
  %i.ap = add nsw i32 %i.am, -92
  %.not20.us28.5.i = icmp samesign ult i32 %i.am, 122
  br i1 %.not20.us28.5.i, label %.split.preheader.i.thread, label %.split.split.us.6.i

.split.split.us.6.i:                              ; preds = %.split.split.us.5.i
  %i.aq = add nsw i32 %i.am, -122
  %.not20.us28.6.i = icmp samesign ult i32 %i.am, 153
  br i1 %.not20.us28.6.i, label %.split.preheader.i.thread, label %.split.split.us.7.i

.split.split.us.7.i:                              ; preds = %.split.split.us.6.i
  %i.ar = add nsw i32 %i.am, -153
  %.not20.us28.7.i = icmp samesign ult i32 %i.am, 184
  br i1 %.not20.us28.7.i, label %.split.preheader.i.thread, label %.split.split.us.8.i

.split.split.us.8.i:                              ; preds = %.split.split.us.7.i
  %i.as = add nsw i32 %i.am, -184
  %.not20.us28.8.i = icmp samesign ult i32 %i.am, 214
  br i1 %.not20.us28.8.i, label %.split.preheader.i.thread, label %.split.split.us.9.i

.split.split.us.9.i:                              ; preds = %.split.split.us.8.i
  %i.at = add nsw i32 %i.am, -214
  %.not20.us28.9.i = icmp samesign ult i32 %i.am, 245
  br i1 %.not20.us28.9.i, label %.split.preheader.i.thread, label %.split.split.us.10.i

.split.split.us.10.i:                             ; preds = %.split.split.us.9.i
  %i.au = add nsw i32 %i.am, -245
  %.not20.us28.10.i = icmp samesign ult i32 %i.am, 275
  br i1 %.not20.us28.10.i, label %.split.preheader.i.thread, label %.split.split.us.11.i

.split.split.us.11.i:                             ; preds = %.split.split.us.10.i
  %.not20.us28.11.i = icmp samesign ult i32 %i.am, 306
  %spec.select103.v.i = select i1 %.not20.us28.11.i, i32 -275, i32 -306
  %spec.select103.i = add nsw i32 %spec.select103.v.i, %i.am
  br label %.split.preheader.i.thread

.split.split.1.i:                                 ; preds = %.split.split.preheader.i
  %i.av = add nsw i32 %i.ad, -31
  %.not20.1.i = icmp samesign ult i32 %i.ad, 60
  br i1 %.not20.1.i, label %.split.preheader.i, label %.split.split.2.i

.split.split.2.i:                                 ; preds = %.split.split.1.i
  %i.aw = add nsw i32 %i.ad, -60
  %.not20.2.i = icmp samesign ult i32 %i.ad, 91
  br i1 %.not20.2.i, label %.split.preheader.i.thread, label %.split.split.3.i

.split.split.3.i:                                 ; preds = %.split.split.2.i
  %i.ax = add nsw i32 %i.ad, -91
  %.not20.3.i = icmp samesign ult i32 %i.ad, 121
  br i1 %.not20.3.i, label %.split.preheader.i.thread, label %.split.split.4.i

.split.split.4.i:                                 ; preds = %.split.split.3.i
  %i.ay = add nsw i32 %i.ad, -121
  %.not20.4.i = icmp samesign ult i32 %i.ad, 152
  br i1 %.not20.4.i, label %.split.preheader.i.thread, label %.split.split.5.i

.split.split.5.i:                                 ; preds = %.split.split.4.i
  %i.az = add nsw i32 %i.ad, -152
  %.not20.5.i = icmp samesign ult i32 %i.ad, 182
  br i1 %.not20.5.i, label %.split.preheader.i.thread, label %.split.split.6.i

.split.split.6.i:                                 ; preds = %.split.split.5.i
  %i.ba = add nsw i32 %i.ad, -182
  %.not20.6.i = icmp samesign ult i32 %i.ad, 213
  br i1 %.not20.6.i, label %.split.preheader.i.thread, label %.split.split.7.i

.split.split.7.i:                                 ; preds = %.split.split.6.i
  %i.bb = add nsw i32 %i.ad, -213
  %.not20.7.i = icmp samesign ult i32 %i.ad, 244
  br i1 %.not20.7.i, label %.split.preheader.i.thread, label %.split.split.8.i

.split.split.8.i:                                 ; preds = %.split.split.7.i
  %i.bc = add nsw i32 %i.ad, -244
  %.not20.8.i = icmp samesign ult i32 %i.ad, 274
  br i1 %.not20.8.i, label %.split.preheader.i.thread, label %.split.split.9.i

.split.split.9.i:                                 ; preds = %.split.split.8.i
  %i.bd = add nsw i32 %i.ad, -274
  %.not20.9.i = icmp samesign ult i32 %i.ad, 305
  br i1 %.not20.9.i, label %.split.preheader.i.thread, label %.split.split.10.i

.split.split.10.i:                                ; preds = %.split.split.9.i
  %i.be = add nsw i32 %i.ad, -305
  %.not20.10.i = icmp samesign ult i32 %i.ad, 335
  br i1 %.not20.10.i, label %.split.preheader.i.thread, label %.split.split.11.i

.split.split.11.i:                                ; preds = %.split.split.10.i
  %.not20.11.i = icmp samesign ult i32 %i.ad, 366
  %spec.select104.v.i = select i1 %.not20.11.i, i32 -335, i32 -366
  %spec.select104.i = add nsw i32 %spec.select104.v.i, %i.ad
  br label %.split.preheader.i.thread

.split.us.preheader.i18:                          ; preds = %.split.us.1.i
  %i.bf = add nsw i32 %i.ad, -31
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !23
  %i.bh = icmp ne i32 %i.ad, 31
  %spec.select = zext i1 %i.bh to i32
  br label %cdf_getmonth.exit

.split.preheader.i.thread:                        ; preds = %.split.split.us.2.i, %.split.split.us.3.i, %.split.split.us.4.i, %.split.split.us.5.i, %.split.split.us.6.i, %.split.split.us.7.i, %.split.split.us.8.i, %.split.split.us.9.i, %.split.split.us.10.i, %.split.split.us.11.i, %.split.split.2.i, %.split.split.3.i, %.split.split.4.i, %.split.split.5.i, %.split.split.6.i, %.split.split.7.i, %.split.split.8.i, %.split.split.9.i, %.split.split.10.i, %.split.split.11.i
  %.us-phi.i.ph.ph = phi i32 [ %i.ba, %.split.split.6.i ], [ %i.aq, %.split.split.us.6.i ], [ %i.am, %.split.split.us.2.i ], [ %i.as, %.split.split.us.8.i ], [ %i.an, %.split.split.us.3.i ], [ %i.au, %.split.split.us.10.i ], [ %i.ao, %.split.split.us.4.i ], [ %i.ar, %.split.split.us.7.i ], [ %i.ap, %.split.split.us.5.i ], [ %i.at, %.split.split.us.9.i ], [ %spec.select103.i, %.split.split.us.11.i ], [ %spec.select104.i, %.split.split.11.i ], [ %i.aw, %.split.split.2.i ], [ %i.bc, %.split.split.8.i ], [ %i.ax, %.split.split.3.i ], [ %i.be, %.split.split.10.i ], [ %i.ay, %.split.split.4.i ], [ %i.bb, %.split.split.7.i ], [ %i.az, %.split.split.5.i ], [ %i.bd, %.split.split.9.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.us-phi.i.ph.ph, ptr %i.bi, align 4, !tbaa !23
  br label %.split.1.i

.split.preheader.i.thread49:                      ; preds = %.split.split.preheader.i, %.split.split.us.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ad, ptr %i.bj, align 4, !tbaa !23
  br label %cdf_getmonth.exit

.split.preheader.i:                               ; preds = %.split.split.us.1.i, %.split.split.1.i
  %.us-phi.i.ph = phi i32 [ %i.ak, %.split.split.us.1.i ], [ %i.av, %.split.split.1.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.us-phi.i.ph, ptr %i.bk, align 4, !tbaa !23
  %i.bl = icmp samesign ult i32 %i.ad, 32
  br i1 %i.bl, label %cdf_getmonth.exit, label %.split.1.i

.split.us.1.i19:                                  ; preds = %.split.us.2.i
  %i.bm = add nsw i32 %i.ad, -59
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !23
  %i.bo = icmp eq i32 %i.ad, 59
  %spec.select71 = select i1 %i.bo, i32 1, i32 2
  br label %cdf_getmonth.exit

.split.us.2.i20:                                  ; preds = %.split.us.3.i
  %i.bp = add nsw i32 %i.ad, -90
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !23
  %i.br = icmp eq i32 %i.ad, 90
  %spec.select72 = select i1 %i.br, i32 2, i32 3
  br label %cdf_getmonth.exit

.split.us.3.i21:                                  ; preds = %.split.us.4.i
  %i.bs = add nsw i32 %i.ad, -120
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !23
  %i.bu = icmp eq i32 %i.ad, 120
  %spec.select73 = select i1 %i.bu, i32 3, i32 4
  br label %cdf_getmonth.exit

.split.us.4.i22:                                  ; preds = %.split.us.5.i
  %i.bv = add nsw i32 %i.ad, -151
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !23
  %i.bx = icmp eq i32 %i.ad, 151
  %spec.select74 = select i1 %i.bx, i32 4, i32 5
  br label %cdf_getmonth.exit

.split.us.5.i23:                                  ; preds = %.split.us.6.i
  %i.by = add nsw i32 %i.ad, -181
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !23
  %i.ca = icmp eq i32 %i.ad, 181
  %spec.select75 = select i1 %i.ca, i32 5, i32 6
  br label %cdf_getmonth.exit

.split.us.6.i24:                                  ; preds = %.split.us.7.i
  %i.cb = add nsw i32 %i.ad, -212
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !23
  %i.cd = icmp eq i32 %i.ad, 212
  %spec.select76 = select i1 %i.cd, i32 6, i32 7
  br label %cdf_getmonth.exit

.split.us.7.i25:                                  ; preds = %.split.us.8.i
  %i.ce = add nsw i32 %i.ad, -243
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !23
  %i.cg = icmp eq i32 %i.ad, 243
  %spec.select77 = select i1 %i.cg, i32 7, i32 8
  br label %cdf_getmonth.exit

.split.us.8.i26:                                  ; preds = %.split.us.9.i
  %i.ch = add nsw i32 %i.ad, -273
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !23
  %i.cj = icmp eq i32 %i.ad, 273
  %spec.select78 = select i1 %i.cj, i32 8, i32 9
  br label %cdf_getmonth.exit

.split.us.9.i27:                                  ; preds = %.split.us.10.i
  %i.ck = add nsw i32 %i.ad, -304
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !23
  %i.cm = icmp eq i32 %i.ad, 304
  %spec.select79 = select i1 %i.cm, i32 9, i32 10
  br label %cdf_getmonth.exit

.split.us.10.i28:                                 ; preds = %.split.us.10.i
  %.not20.us.11.i = icmp samesign ult i32 %i.ad, 365
  %spec.select.v.i = select i1 %.not20.us.11.i, i32 -334, i32 -365
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.ad
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %spec.select.i, ptr %i.cn, align 4, !tbaa !23
  %i.co = icmp eq i32 %i.ad, 334
  br i1 %i.co, label %cdf_getmonth.exit, label %.split.us.11.i29

.split.us.11.i29:                                 ; preds = %.split.us.10.i28
  %i.cp = icmp samesign ult i32 %i.ad, 366
  %spec.select.i30 = select i1 %i.cp, i32 11, i32 12
  br label %cdf_getmonth.exit

.split.1.i:                                       ; preds = %.split.preheader.i.thread, %.split.preheader.i
  %.not.i173345.pn = icmp ne i32 %i.aj, 0
  %or.cond17.i3447 = or i1 %.not.i173345.pn, %i.ah
  %i.cq = select i1 %or.cond17.i3447, i32 -60, i32 -59
  %spec.select22.1.i = add nsw i32 %i.cq, %i.ad   ; 11 uses
  %i.cr = icmp slt i32 %spec.select22.1.i, 1
  br i1 %i.cr, label %cdf_getmonth.exit, label %.split.2.i

.split.2.i:                                       ; preds = %.split.1.i
  %i.cs = icmp samesign ult i32 %spec.select22.1.i, 32
  br i1 %i.cs, label %cdf_getmonth.exit, label %.split.3.i

.split.3.i:                                       ; preds = %.split.2.i
  %i.ct = icmp samesign ult i32 %spec.select22.1.i, 62
  br i1 %i.ct, label %cdf_getmonth.exit, label %.split.4.i

.split.4.i:                                       ; preds = %.split.3.i
  %i.cu = icmp samesign ult i32 %spec.select22.1.i, 93
  br i1 %i.cu, label %cdf_getmonth.exit, label %.split.5.i

.split.5.i:                                       ; preds = %.split.4.i
  %i.cv = icmp samesign ult i32 %spec.select22.1.i, 123
  br i1 %i.cv, label %cdf_getmonth.exit, label %.split.6.i

.split.6.i:                                       ; preds = %.split.5.i
  %i.cw = icmp samesign ult i32 %spec.select22.1.i, 154
  br i1 %i.cw, label %cdf_getmonth.exit, label %.split.7.i

.split.7.i:                                       ; preds = %.split.6.i
  %i.cx = icmp samesign ult i32 %spec.select22.1.i, 185
  br i1 %i.cx, label %cdf_getmonth.exit, label %.split.8.i

.split.8.i:                                       ; preds = %.split.7.i
  %i.cy = icmp samesign ult i32 %spec.select22.1.i, 215
  br i1 %i.cy, label %cdf_getmonth.exit, label %.split.9.i

.split.9.i:                                       ; preds = %.split.8.i
  %i.cz = icmp samesign ult i32 %spec.select22.1.i, 246
  br i1 %i.cz, label %cdf_getmonth.exit, label %.split.10.i

.split.10.i:                                      ; preds = %.split.9.i
  %i.da = icmp samesign ult i32 %spec.select22.1.i, 276
  br i1 %i.da, label %cdf_getmonth.exit, label %.split.11.i

.split.11.i:                                      ; preds = %.split.10.i
  %i.db = icmp samesign ult i32 %spec.select22.1.i, 307
  %spec.select45.i = select i1 %i.db, i32 11, i32 12
  br label %cdf_getmonth.exit

cdf_getmonth.exit:                                ; preds = %.split.us.9.i27, %.split.us.8.i26, %.split.us.7.i25, %.split.us.6.i24, %.split.us.5.i23, %.split.us.4.i22, %.split.us.3.i21, %.split.us.2.i20, %.split.us.1.i19, %.split.us.preheader.i18, %.split.preheader.i.thread49, %.split.us.preheader.i18.thread40, %.split.preheader.i, %.split.us.10.i28, %.split.us.11.i29, %.split.1.i, %.split.2.i, %.split.3.i, %.split.4.i, %.split.5.i, %.split.6.i, %.split.7.i, %.split.8.i, %.split.9.i, %.split.10.i, %.split.11.i
  %.us-phi.i31 = phi i32 [ 6, %.split.6.i ], [ 0, %.split.preheader.i ], [ %spec.select78, %.split.us.8.i26 ], [ 1, %.split.1.i ], [ %spec.select45.i, %.split.11.i ], [ 2, %.split.2.i ], [ 8, %.split.8.i ], [ 3, %.split.3.i ], [ 10, %.split.10.i ], [ 4, %.split.4.i ], [ 7, %.split.7.i ], [ 5, %.split.5.i ], [ 9, %.split.9.i ], [ %spec.select72, %.split.us.2.i20 ], [ %spec.select79, %.split.us.9.i27 ], [ %spec.select71, %.split.us.1.i19 ], [ %spec.select.i30, %.split.us.11.i29 ], [ %spec.select76, %.split.us.6.i24 ], [ %spec.select, %.split.us.preheader.i18 ], [ %spec.select73, %.split.us.3.i21 ], [ 10, %.split.us.10.i28 ], [ %spec.select74, %.split.us.4.i22 ], [ %spec.select77, %.split.us.7.i25 ], [ %spec.select75, %.split.us.5.i23 ], [ 0, %.split.us.preheader.i18.thread40 ], [ 0, %.split.preheader.i.thread49 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.us-phi.i31, ptr %i.dc, align 8, !tbaa !24
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.dd, align 8, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.de, align 4, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.df, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.dg, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @cdf_timestamp_to_timespec.UTC, ptr %i.dh, align 8, !tbaa !29
  %i.di = add nsw i32 %i.p, -299
  store i32 %i.di, ptr %i.r, align 4, !tbaa !30
  %i.dj = call i64 @mktime(ptr noundef nonnull %2) #8 ; 2 uses
  store i64 %i.dj, ptr %0, align 8, !tbaa !31
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cdf_getmonth.exit
  %i.dl = tail call ptr @__errno_location() #9
  store i32 22, ptr %i.dl, align 4, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %cdf_getmonth.exit, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ 0, %cdf_getmonth.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @cdf_timespec_to_timestamp(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @cdf_ctime(ptr noundef %0, ptr noundef returned %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.b = icmp sgt i64 %i.a, 253402318799
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ctime_r(ptr noundef nonnull %0, ptr noundef %1) #8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %..critedge_crit_edge, label %bb.c

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.e = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.a, %bb.a ]
  %i.f = tail call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef %1, i64 noundef 26, ptr noundef nonnull @.str, i64 noundef %i.e) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret ptr %1
}

; Function Attrs: nounwind
declare ptr @ctime_r(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 8}
!13 = !{!"timespec", !14, i64 0, !14, i64 8}
!14 = !{!"long", !10, i64 0}
!15 = !{!16, !9, i64 0}
!16 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !14, i64 40, !17, i64 48}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !10, i64 0}
!19 = !{!16, !9, i64 4}
!20 = !{!16, !9, i64 8}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!16, !9, i64 12}
!24 = !{!16, !9, i64 16}
!25 = !{!16, !9, i64 24}
!26 = !{!16, !9, i64 28}
!27 = !{!16, !9, i64 32}
!28 = !{!16, !14, i64 40}
!29 = !{!16, !17, i64 48}
!30 = !{!16, !9, i64 20}
!31 = !{!13, !14, i64 0}
!32 = !{!9, !9, i64 0}
!33 = !{!14, !14, i64 0}
end_hunk_0
