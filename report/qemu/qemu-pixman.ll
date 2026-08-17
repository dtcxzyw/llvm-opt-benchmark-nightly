inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.PixelFormat = type { i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ErrorPropagator = type { ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"../ui/qemu-pixman.c\00", align 1
@__func__.qemu_pixelformat_from_pixman = private unnamed_addr constant [29 x i8] c"qemu_pixelformat_from_pixman\00", align 1
@drm_format_pixman_map = internal unnamed_addr constant [5 x %struct.anon] [%struct.anon { i32 875710290, i32 402786440 }, %struct.anon { i32 875713089, i32 537036936 }, %struct.anon { i32 875713112, i32 537004168 }, %struct.anon { i32 875709016, i32 537069704 }, %struct.anon { i32 875708993, i32 537102472 }], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"image != NULL\00", align 1
@__PRETTY_FUNCTION__.qemu_pixman_linebuf_create = private unnamed_addr constant [70 x i8] c"pixman_image_t *qemu_pixman_linebuf_create(pixman_format_code_t, int)\00", align 1
@error_fatal = external global ptr, align 8
@__func__.qemu_pixman_image_new_shareable = private unnamed_addr constant [32 x i8] c"qemu_pixman_image_new_shareable\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"handle != NULL\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Image dimensions overflow\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to allocate image\00", align 1
@switch.table.qemu_default_pixman_format = private unnamed_addr constant [18 x i32] [i32 268567893, i32 268567909, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 402786440, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 537004168], align 4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_pixelformat_from_pixman(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PixelFormat) align 4 captures(none) initializes((0, 24), (28, 32)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 24, i1 false), !annotation !7
  %i.a = lshr i32 %1, 24
  %i.b = lshr i32 %1, 22
  %i.c = and i32 %i.b, 3                          ; 5 uses
  %i.d = shl nuw nsw i32 %i.a, %i.c               ; 7 uses
  %i.e = trunc i32 %i.d to i8                     ; 2 uses
  store i8 %i.e, ptr %0, align 4
  %i.f = lshr i32 %i.d, 3
  %i.g = trunc nuw i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.g, ptr %i.h, align 1
  %i.i = lshr i32 %1, 12
  %i.j = and i32 %i.i, 15
  %i.k = shl nuw nsw i32 %i.j, %i.c               ; 3 uses
  %i.l = lshr i32 %1, 8
  %i.m = and i32 %i.l, 15
  %i.n = shl nuw nsw i32 %i.m, %i.c               ; 5 uses
  %i.o = lshr i32 %1, 4
  %i.p = and i32 %i.o, 15
  %i.q = shl nuw nsw i32 %i.p, %i.c               ; 4 uses
  %i.r = and i32 %1, 15
  %i.s = shl nuw nsw i32 %i.r, %i.c               ; 8 uses
  %i.t = add nuw nsw i32 %i.q, %i.n               ; 4 uses
  %i.u = add nuw nsw i32 %i.t, %i.k
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.w, ptr %i.x, align 2
  %i.y = trunc nuw nsw i32 %i.k to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = trunc nuw nsw i32 %i.n to i8            ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.aa, ptr %i.ab, align 4
  %i.ac = trunc nuw nsw i32 %i.q to i8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = trunc nuw nsw i32 %i.s to i8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.ae, ptr %i.af, align 2
  %i.ag = lshr i32 %1, 16
  %i.ah = and i32 %i.ag, 63
  switch i32 %i.ah, label %bb.f [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 8, label %bb.d
    i32 9, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.ai = add nuw i8 %i.ac, %i.ae                 ; 3 uses
  %i.aj = add i8 %i.ai, %i.aa                     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ai, ptr %i.al, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.ae, ptr %2, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.am = add nuw nsw i32 %i.t, %i.s
  %i.an = trunc i32 %i.am to i8                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = add nuw i8 %i.aa, %i.ac                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ap, ptr %i.aq, align 2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.aa, ptr %3, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.ar = sub nsw i32 %i.d, %i.s
  %i.as = trunc i32 %i.ar to i8                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.as, ptr %i.at, align 2
  %i.au = add nuw nsw i32 %i.s, %i.q              ; 2 uses
  %i.av = sub nsw i32 %i.d, %i.au                 ; 2 uses
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = add nuw nsw i32 %i.n, %i.au
  %i.az = sub nsw i32 %i.d, %i.ay
  %i.ba = trunc i32 %i.az to i8                   ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ba, ptr %4, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.bb = sub i8 %i.e, %i.aa                      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.bb, ptr %i.bc, align 4
  %i.bd = sub nsw i32 %i.d, %i.t                  ; 2 uses
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = add nuw nsw i32 %i.s, %i.t
  %i.bh = sub nsw i32 %i.d, %i.bg
  %i.bi = trunc i32 %i.bh to i8                   ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.bi, ptr %5, align 2
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @__func__.qemu_pixelformat_from_pixman, ptr noundef null) #9
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.bj = phi i8 [ %i.bi, %bb.e ], [ %i.as, %bb.d ], [ %i.ap, %bb.c ], [ 0, %bb.b ]
  %i.bk = phi i32 [ %i.bd, %bb.e ], [ %i.av, %bb.d ], [ %i.n, %bb.c ], [ %i.s, %bb.b ]
  %i.bl = phi i8 [ %i.bb, %bb.e ], [ %i.ba, %bb.d ], [ 0, %bb.c ], [ %i.ai, %bb.b ]
  %i.bm = phi i8 [ 0, %bb.e ], [ 0, %bb.d ], [ %i.an, %bb.c ], [ %i.aj, %bb.b ]
  %notmask = shl nsw i32 -1, %i.k
  %i.bn = trunc i32 %notmask to i8
  %i.bo = xor i8 %i.bn, -1                        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.bo, ptr %i.bp, align 1
  %notmask27 = shl nsw i32 -1, %i.n
  %i.bq = trunc i32 %notmask27 to i8
  %i.br = xor i8 %i.bq, -1                        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.br, ptr %i.bs, align 4
  %notmask28 = shl nsw i32 -1, %i.q
  %i.bt = trunc i32 %notmask28 to i8
  %i.bu = xor i8 %i.bt, -1                        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.bu, ptr %i.bv, align 1
  %notmask29 = shl nsw i32 -1, %i.s
  %i.bw = trunc i32 %notmask29 to i8
  %i.bx = xor i8 %i.bw, -1                        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.bx, ptr %i.by, align 2
  %i.bz = zext i8 %i.bo to i32
  %i.ca = zext nneg i8 %i.bm to i32
  %i.cb = shl i32 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cb, ptr %i.cc, align 4
  %i.cd = zext i8 %i.br to i32
  %i.ce = zext nneg i8 %i.bl to i32
  %i.cf = shl i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = zext i8 %i.bu to i32
  %i.ci = and i32 %i.bk, 255
  %i.cj = shl i32 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cj, ptr %i.ck, align 4
  %i.cl = zext i8 %i.bx to i32
  %i.cm = zext nneg i8 %i.bj to i32
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.cn, ptr %i.co, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 537397385) i32 @qemu_default_pixman_format(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %0, -15              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 18
  br i1 %i.a, label %switch.lookup, label %bb.d

bb.c:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i32 %0, 32
  %switch.select = select i1 %switch.selectcmp, i32 537397384, i32 0
  %switch.selectcmp4 = icmp eq i32 %0, 24
  %switch.select5 = select i1 %switch.selectcmp4, i32 402851976, i32 %switch.select
  br label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.qemu_default_pixman_format, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %switch.lookup, %bb.c
  %.0 = phi i32 [ %switch.select5, %bb.c ], [ %switch.load, %switch.lookup ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @qemu_drm_format_to_pixman(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  switch i32 %0, label %.loopexit [
    i32 875710290, label %bb.b
    i32 875713089, label %.fold.split
    i32 875713112, label %.fold.split12
    i32 875709016, label %.fold.split13
    i32 875708993, label %.fold.split14
  ]

.fold.split:                                      ; preds = %bb.a
  br label %bb.b

.fold.split12:                                    ; preds = %bb.a
  br label %bb.b

.fold.split13:                                    ; preds = %bb.a
  br label %bb.b

.fold.split14:                                    ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split14, %.fold.split13, %.fold.split12, %.fold.split
  %.lcssa = phi i64 [ 0, %bb.a ], [ 3, %.fold.split13 ], [ 1, %.fold.split ], [ 2, %.fold.split12 ], [ 4, %.fold.split14 ]
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @drm_format_pixman_map, i64 %.lcssa
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b
  %.06 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @qemu_pixman_to_drm_format(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  switch i32 %0, label %.loopexit [
    i32 402786440, label %bb.b
    i32 537036936, label %.fold.split
    i32 537004168, label %.fold.split11
    i32 537069704, label %.fold.split12
    i32 537102472, label %.fold.split13
  ]

.fold.split:                                      ; preds = %bb.a
  br label %bb.b

.fold.split11:                                    ; preds = %bb.a
  br label %bb.b

.fold.split12:                                    ; preds = %bb.a
  br label %bb.b

.fold.split13:                                    ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split13, %.fold.split12, %.fold.split11, %.fold.split
  %.lcssa = phi ptr [ @drm_format_pixman_map, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @drm_format_pixman_map, i64 24), %.fold.split12 ], [ getelementptr inbounds nuw (i8, ptr @drm_format_pixman_map, i64 8), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @drm_format_pixman_map, i64 16), %.fold.split11 ], [ getelementptr inbounds nuw (i8, ptr @drm_format_pixman_map, i64 32), %.fold.split13 ]
  %i.a = load i32, ptr %.lcssa, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b
  %.06 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 10) i32 @qemu_pixman_get_type(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %3, 1234                     ; 4 uses
  %i.b = icmp sgt i32 %0, %1
  %i.c = icmp sgt i32 %1, %2
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = select i1 %i.a, i32 2, i32 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = select i1 %i.a, i32 9, i32 3
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %0, %1
  %i.h = icmp slt i32 %1, %2
  %or.cond19 = and i1 %i.g, %i.h
  br i1 %or.cond19, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i32 %0, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = select i1 %i.a, i32 3, i32 9
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = select i1 %i.a, i32 8, i32 2
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c, %bb.d
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, -15728640) i32 @qemu_pixman_get_format(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4               ; 3 uses
end_hunk_0
