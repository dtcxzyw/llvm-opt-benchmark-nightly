begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"8bps\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"QuickTime 8BPS video\00", align 1
@ff_eightbps_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 48, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 1040, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Error: Unsupported color depth: %u.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  switch i32 %i.d, label %bb.e [
    i32 8, label %bb.b
    i32 24, label %bb.c
    i32 32, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 1, ptr %i.f, align 8, !tbaa !34
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 71, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 3, ptr %i.h, align 8, !tbaa !34
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 2, ptr %1, align 1, !tbaa !35
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 0, ptr %2, align 2, !tbaa !35
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 111, ptr %i.i, align 8, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.d) #6
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink22 = phi i64 [ 8, %bb.d ], [ 11, %bb.c ], [ 9, %bb.b ]
  %.sink = phi i8 [ 4, %bb.d ], [ 1, %bb.c ], [ 0, %bb.b ]
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink22
  store i8 %.sink, ptr %3, align 1, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp eq i32 %i.k, 111
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store <4 x i8> <i8 2, i8 0, i8 1, i8 3>, ptr %i.m, align 1, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0 = phi i32 [ -1094995529, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !34    ; 3 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = mul i32 %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i32, ptr %i.n, align 8, !tbaa !40
  %i.p = add nsw i32 %i.o, 128
  %i.q = sdiv i32 %i.p, 129
  %i.r = shl nsw i32 %i.q, 1
  %i.s = add nsw i32 %i.r, 2
  %i.t = mul i32 %i.m, %i.s
  %i.u = icmp ult i32 %i.d, %i.t
  br i1 %i.u, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = sext i32 %i.d to i64                     ; 2 uses
  %i.y = shl i32 %i.h, 1                          ; 2 uses
  %.not125 = icmp eq i8 %i.k, 0
  br i1 %.not125, label %._crit_edge124.split, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 %i.x
  %.not98114.not = icmp eq i32 %i.h, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  br i1 %.not98114.not, label %._crit_edge124.split, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.lr.ph123
  %i.ac = mul i32 %i.y, %i.l
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %wide.trip.count131 = zext i8 %i.k to i64
  %wide.trip.count = zext i32 %i.h to i64
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %..thread100_crit_edge
  %indvars.iv128 = phi i64 [ 0, %.lr.ph118.preheader ], [ %indvars.iv.next129, %..thread100_crit_edge ] ; 3 uses
  %.090120 = phi ptr [ %i.ae, %.lr.ph118.preheader ], [ %.4, %..thread100_crit_edge ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv128
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.ai = mul i32 %i.y, %i.ah
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  %i.al = zext i8 %i.ag to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.al
  %gepdiff = sub nsw i64 %i.x, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph118, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.191115 = phi ptr [ %.090120, %.lr.ph118 ], [ %.4, %._crit_edge ] ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !41
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !42 ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ar = mul i32 %i.ap, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as ; 2 uses
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = shl i32 %i.aq, 1                        ; 2 uses
  %i.ax = add i32 %i.aw, 2
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp slt i64 %gepdiff, %i.ay
  br i1 %i.az, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = zext i32 %i.aw to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !35 ; 2 uses
  %.not106 = icmp eq i16 %i.bc, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bd = tail call i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i32
  %i.bf = ptrtoint ptr %i.av to i64               ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %.084109 = phi ptr [ %i.at, %.lr.ph ], [ %.185, %bb.m ] ; 5 uses
  %.086108 = phi i32 [ %i.be, %.lr.ph ], [ %.187, %bb.m ]
  %.292107 = phi ptr [ %.191115, %.lr.ph ], [ %.3, %bb.m ] ; 4 uses
  %i.bg = ptrtoint ptr %.292107 to i64
  %i.bh = sub i64 %i.ab, %i.bg
  %i.bi = icmp slt i64 %i.bh, 2
  br i1 %i.bi, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.292107, i64 1 ; 6 uses
  %i.bk = load i8, ptr %.292107, align 1, !tbaa !35 ; 3 uses
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bm = add nuw i8 %i.bk, 1                     ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %.neg = xor i32 %i.bn, -1
  %i.bo = ptrtoint ptr %.084109 to i64
  %i.bp = sub i64 %i.bf, %i.bo
  %i.bq = zext i8 %i.bm to i64                    ; 5 uses
  %i.br = icmp slt i64 %i.bp, %i.bq
  br i1 %i.br, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = ptrtoint ptr %i.bj to i64
  %i.bt = sub i64 %i.ab, %i.bs
  %i.bu = icmp slt i64 %i.bt, %i.bq
  br i1 %i.bu, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.084109, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, i64 %i.bq, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bq
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.bw = sub i8 1, %i.bk
  %i.bx = ptrtoint ptr %.084109 to i64
  %i.by = sub i64 %i.bf, %i.bx
  %i.bz = zext i8 %i.bw to i64                    ; 3 uses
  %i.ca = icmp slt i64 %i.by, %i.bz
  br i1 %i.ca, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i8, ptr %i.bj, align 1, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr align 1 %.084109, i8 %i.cb, i64 %i.bz, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.292107, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.3 = phi ptr [ %i.bv, %bb.j ], [ %i.cc, %bb.l ] ; 2 uses
  %.neg.pn = phi i32 [ %.neg, %bb.j ], [ -2, %bb.l ]
  %.pn = phi i64 [ %i.bq, %bb.j ], [ %i.bz, %bb.l ]
  %.185 = getelementptr inbounds nuw i8, ptr %.084109, i64 %.pn
  %.187 = add i32 %.neg.pn, %.086108              ; 2 uses
  %.not = icmp eq i32 %.187, 0
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.k, %bb.h, %bb.m, %bb.e
  %.4 = phi ptr [ %.191115, %bb.e ], [ %.3, %bb.m ], [ %i.bj, %bb.h ], [ %i.bj, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..thread100_crit_edge, label %bb.d, !llvm.loop !45

..thread100_crit_edge:                            ; preds = %._crit_edge
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %._crit_edge124.split, label %.lr.ph118, !llvm.loop !46

._crit_edge124.split:                             ; preds = %..thread100_crit_edge, %.lr.ph123, %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !32
  %i.cf = icmp slt i32 %i.ce, 9
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge124.split
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ch = tail call i32 @ff_copy_palette(ptr noundef nonnull %i.cg, ptr noundef %3, ptr noundef nonnull %0) #6 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.cj, ptr noundef nonnull align 8 dereferenceable(1024) %i.cg, i64 1024, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge124.split
  store i32 1, ptr %2, align 4, !tbaa !42
  br label %.thread

end_hunk_0
