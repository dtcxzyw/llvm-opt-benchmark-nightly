Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xz_dec_bcj?download=true
inline.NumInlined: 26
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcj_x86.mask_to_allowed_status = internal unnamed_addr constant [8 x i8] c"\01\01\01\00\01\00\00\00", align 1
@bcj_x86.mask_to_bit_num = internal unnamed_addr constant [8 x i8] c"\00\01\02\02\03\03\03\03", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @xz_dec_bcj_run(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr i8, ptr %0, i64 48         ; 8 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %2, i64 32         ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.h) ; 6 uses
  %i.j = getelementptr i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 %i.g
  %i.m = getelementptr i8, ptr %0, i64 64         ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 8 %i.m, i64 %i.i, i1 false)
  %i.n = load i64, ptr %i.f, align 8
  %i.o = add i64 %i.n, %i.i
  store i64 %i.o, ptr %i.f, align 8
  %i.p = load i64, ptr %i.b, align 8              ; 2 uses
  %i.q = sub i64 %i.p, %i.i
  store i64 %i.q, ptr %i.b, align 8
  %i.r = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = sub i64 %i.s, %i.i                       ; 3 uses
  store i64 %i.t, ptr %i.r, align 8
  %i.u = getelementptr i8, ptr %i.m, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 1 %i.u, i64 %i.t, i1 false)
  %.not79 = icmp eq i64 %i.p, %i.i
  br i1 %.not79, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.o, label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.y = phi i64 [ %.pre, %._crit_edge ], [ %i.t, %bb.c ] ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 56         ; 9 uses
  %i.aa = getelementptr i8, ptr %2, i64 40        ; 6 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %2, i64 32        ; 15 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 4 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp ult i64 %i.y, %i.ae
  %i.ag = icmp eq i64 %i.y, 0
  %or.cond = or i1 %i.ag, %i.af
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i64 %i.ad, ptr %i.a, align 8
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ad
  %i.ak = getelementptr i8, ptr %0, i64 64        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 8 %i.ak, i64 %i.y, i1 false)
  %i.al = load i64, ptr %i.z, align 8
  %i.am = load i64, ptr %i.ac, align 8
  %i.an = add i64 %i.am, %i.al
  store i64 %i.an, ptr %i.ac, align 8
  %i.ao = tail call i32 @xz_dec_lzma2_run(ptr noundef %1, ptr noundef %2) #9 ; 3 uses
  %i.ap = getelementptr i8, ptr %0, i64 4         ; 2 uses
  store i32 %i.ao, ptr %i.ap, align 4
  switch i32 %i.ao, label %bb.o [
    i32 1, label %bb.g
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %0, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !range !10, !noundef !11
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.at = load ptr, ptr %i.ah, align 8
  %i.au = load i64, ptr %i.ac, align 8
  call fastcc void @bcj_apply(ptr noundef %0, ptr noundef %i.at, ptr noundef nonnull %i.a, i64 noundef %i.au) #10, !srcloc !12
  %i.av = load i32, ptr %i.ap, align 4
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load i64, ptr %i.ac, align 8
  %i.ay = load i64, ptr %i.a, align 8
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  store i64 %i.az, ptr %i.z, align 8
  %i.ba = load i64, ptr %i.ac, align 8
  %i.bb = sub i64 %i.ba, %i.az                    ; 2 uses
  store i64 %i.bb, ptr %i.ac, align 8
  %i.bc = load ptr, ptr %i.ah, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %i.be = load i64, ptr %i.z, align 8             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ak, ptr align 1 %i.bd, i64 %i.be, i1 false)
  %i.bf = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %i.bj = phi i64 [ %i.ab, %bb.d ], [ %i.bh, %bb.h ]
  %i.bk = phi i64 [ %i.ad, %bb.d ], [ %i.bf, %bb.h ]
  %i.bl = icmp ult i64 %i.bk, %i.bj
  br i1 %i.bl, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr i8, ptr %2, i64 24        ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %0, i64 24        ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = load i64, ptr %i.ac, align 8
  %i.bq = getelementptr i8, ptr %0, i64 32        ; 2 uses
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = load i64, ptr %i.aa, align 8
  %i.bs = getelementptr i8, ptr %0, i64 40        ; 2 uses
  store i64 %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %0, i64 64        ; 5 uses
  store ptr %i.bt, ptr %i.bm, align 8
  %i.bu = load i64, ptr %i.z, align 8
  store i64 %i.bu, ptr %i.ac, align 8
  store i64 16, ptr %i.aa, align 8
  %i.bv = tail call i32 @xz_dec_lzma2_run(ptr noundef %1, ptr noundef %2) #9
  %i.bw = getelementptr i8, ptr %0, i64 4         ; 3 uses
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = load i64, ptr %i.ac, align 8
  store i64 %i.bx, ptr %i.z, align 8
  %i.by = load ptr, ptr %i.bo, align 8
  store ptr %i.by, ptr %i.bm, align 8
  %i.bz = load i64, ptr %i.bq, align 8
  store i64 %i.bz, ptr %i.ac, align 8
  %i.ca = load i64, ptr %i.bs, align 8
  store i64 %i.ca, ptr %i.aa, align 8
  %i.cb = load i32, ptr %i.bw, align 4            ; 2 uses
  %switch = icmp ult i32 %i.cb, 2
  br i1 %switch, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cc = load i64, ptr %i.z, align 8
  tail call fastcc void @bcj_apply(ptr noundef %0, ptr noundef %i.bt, ptr noundef %i.b, i64 noundef %i.cc) #10, !srcloc !13
  %i.cd = load i32, ptr %i.bw, align 4
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.l, label %._crit_edge85

._crit_edge85:                                    ; preds = %bb.k
  %.pre86 = load i64, ptr %i.b, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cf = load i64, ptr %i.z, align 8             ; 2 uses
  store i64 %i.cf, ptr %i.b, align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge85, %bb.l
  %i.cg = phi i64 [ %.pre86, %._crit_edge85 ], [ %i.cf, %bb.l ]
  %i.ch = load i64, ptr %i.aa, align 8
  %i.ci = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cj) ; 6 uses
  %i.cl = load ptr, ptr %i.bm, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 8 %i.bt, i64 %i.ck, i1 false)
  %i.cn = load i64, ptr %i.ac, align 8
  %i.co = add i64 %i.cn, %i.ck
  store i64 %i.co, ptr %i.ac, align 8
  %i.cp = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cq = sub i64 %i.cp, %i.ck
  store i64 %i.cq, ptr %i.b, align 8
  %i.cr = load i64, ptr %i.z, align 8
  %i.cs = sub i64 %i.cr, %i.ck                    ; 2 uses
  store i64 %i.cs, ptr %i.z, align 8
  %i.ct = getelementptr i8, ptr %i.bt, i64 %i.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bt, ptr align 1 %i.ct, i64 %i.cs, i1 false)
  %.not84 = icmp eq i64 %i.cp, %i.ck
  br i1 %.not84, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.cu = getelementptr i8, ptr %0, i64 4
  %i.cv = load i32, ptr %i.cu, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.e, %bb.j, %bb.m, %bb.h, %bb.g, %bb.c, %bb.b, %bb.n
  %.0 = phi i32 [ %i.cv, %bb.n ], [ 0, %bb.b ], [ 0, %bb.m ], [ 1, %bb.c ], [ 1, %bb.g ], [ 0, %bb.h ], [ %i.cb, %bb.j ], [ %i.ao, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xz_dec_lzma2_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc void @bcj_apply(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 %i.a       ; 12 uses
  %i.c = sub i64 %3, %i.a                         ; 10 uses
  %i.d = load i32, ptr %0, align 8
  switch i32 %i.d, label %bcj_x86.exit [
    i32 4, label %bb.b
    i32 5, label %bb.m
    i32 7, label %bb.q
    i32 8, label %bb.u
    i32 9, label %bb.aa
    i32 10, label %bb.ae
    i32 11, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = icmp ult i64 %i.c, 5
  br i1 %i.f, label %bcj_x86.exit, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %bb.b
  %i.g = add i64 %i.c, -4
  %i.h = load i32, ptr %i.e, align 8
  %i.i = getelementptr i8, ptr %0, i64 12
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph83.i
  %.05181.i = phi i32 [ %i.h, %.lr.ph83.i ], [ %.2.i, %bb.l ] ; 2 uses
  %.05280.i = phi i64 [ -1, %.lr.ph83.i ], [ %.153.i, %bb.l ] ; 2 uses
  %.05479.i = phi i64 [ 0, %.lr.ph83.i ], [ %i.bj, %bb.l ] ; 11 uses
  %i.j = getelementptr i8, ptr %i.b, i64 %.05479.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, -2
  %.not.i = icmp eq i8 %i.l, -24
  br i1 %.not.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.m = sub i64 %.05479.i, %.05280.i             ; 2 uses
  %i.n = icmp ugt i64 %i.m, 3
  br i1 %i.n, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = trunc nuw nsw i64 %i.m to i32
  %i.p = add nsw i32 %i.o, -1
  %i.q = shl i32 %.05181.i, %i.p
  %i.r = and i32 %i.q, 7                          ; 4 uses
  %.not61.i = icmp eq i32 %i.r, 0
  br i1 %.not61.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %4 = getelementptr i8, ptr @bcj_x86.mask_to_allowed_status, i64 %i.s
  %5 = load i8, ptr %4, align 1, !range !10, !noundef !11
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i64 %.05479.i, 4
  %i.u = getelementptr i8, ptr @bcj_x86.mask_to_bit_num, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = sub i64 %i.t, %i.w
  %i.y = getelementptr i8, ptr %i.b, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = add i8 %i.z, -1
  %i.ab = icmp ult i8 %i.aa, -2
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = shl nuw nsw i32 %i.r, 1
  %i.ad = or disjoint i32 %i.ac, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.1.i = phi i32 [ 0, %bb.e ], [ %i.r, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %i.ae = add nuw i64 %.05479.i, 4                ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = add i8 %i.ag, -1
  %i.ai = icmp ult i8 %i.ah, -2
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.j, i64 1       ; 2 uses
  %.val.i = load i32, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.i, align 4
  %i.al = trunc i64 %.05479.i to i32
  %i.am = add i32 %i.ak, %i.al
  %invariant.op.i = sub i32 -5, %i.am             ; 2 uses
  %i.an = icmp eq i32 %.1.i, 0
  %.reass69.i = add i32 %invariant.op.i, %.val.i  ; 4 uses
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ao = zext nneg i32 %.1.i to i64
  %i.ap = getelementptr i8, ptr @bcj_x86.mask_to_bit_num, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 3                ; 2 uses
  %i.at = sub nsw i32 24, %i.as                   ; 2 uses
  %i.au = lshr i32 %.reass69.i, %i.at
  %i.av = trunc i32 %i.au to i8
  %i.aw = add i8 %i.av, -1
  %i.ax = icmp ult i8 %i.aw, -2
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph77.preheader.i

.lr.ph77.preheader.i:                             ; preds = %.lr.ph.i
  %i.ay = sub nsw i32 32, %i.as
  %notmask.i = shl nsw i32 -1, %i.ay
  %invariant.op = xor i32 %notmask.i, -1
  br label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %.lr.ph77.i, %.lr.ph77.preheader.i
  %.reass7076.i = phi i32 [ %.reass.i, %.lr.ph77.i ], [ %.reass69.i, %.lr.ph77.preheader.i ]
  %.reass74.reass.i.reass.reass = xor i32 %.reass7076.i, %invariant.op
  %.reass.i = add i32 %invariant.op.i, %.reass74.reass.i.reass.reass ; 3 uses
  %i.az = lshr i32 %.reass.i, %i.at
  %i.ba = trunc i32 %i.az to i8
  %i.bb = add i8 %i.ba, -1
  %i.bc = icmp ult i8 %i.bb, -2
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph77.i

._crit_edge.i:                                    ; preds = %.lr.ph77.i, %.lr.ph.i, %bb.j
  %.lcssa.i = phi i32 [ %.reass69.i, %bb.j ], [ %.reass69.i, %.lr.ph.i ], [ %.reass.i, %.lr.ph77.i ] ; 2 uses
  %i.bd = and i32 %.lcssa.i, 33554431
  %i.be = and i32 %.lcssa.i, 16777216
  %i.bf = sub nsw i32 0, %i.be
  %i.bg = or i32 %i.bd, %i.bf
  store i32 %i.bg, ptr %i.aj, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bh = shl nuw nsw i32 %.1.i, 1
  %i.bi = or disjoint i32 %i.bh, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i, %bb.h, %bb.c
  %.155.i = phi i64 [ %.05479.i, %bb.c ], [ %i.ae, %._crit_edge.i ], [ %.05479.i, %bb.k ], [ %.05479.i, %bb.h ]
  %.153.i = phi i64 [ %.05280.i, %bb.c ], [ %.05479.i, %._crit_edge.i ], [ %.05479.i, %bb.k ], [ %.05479.i, %bb.h ] ; 2 uses
  %.2.i = phi i32 [ %.05181.i, %bb.c ], [ %.1.i, %._crit_edge.i ], [ %i.bi, %bb.k ], [ %i.ad, %bb.h ] ; 2 uses
  %i.bj = add i64 %.155.i, 1                      ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %i.g
  br i1 %i.bk, label %bb.c, label %._crit_edge84.i, !llvm.loop !14

._crit_edge84.i:                                  ; preds = %bb.l
  %i.bl = sub i64 %i.bj, %.153.i                  ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 3
  %i.bn = trunc i64 %i.bl to i32
  %i.bo = add i32 %i.bn, -1
  %i.bp = shl i32 %.2.i, %i.bo
  %i.bq = select i1 %i.bm, i32 0, i32 %i.bp
  store i32 %i.bq, ptr %i.e, align 8
  br label %bcj_x86.exit

bb.m:                                             ; preds = %bb.a
  %i.br = and i64 %i.c, -4                        ; 2 uses
  %.not.i29 = icmp eq i64 %i.br, 0
  br i1 %.not.i29, label %bcj_x86.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.m
  %i.bs = getelementptr i8, ptr %0, i64 12
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i30
  %.018.i = phi i64 [ 0, %.lr.ph.i30 ], [ %i.cf, %bb.p ] ; 3 uses
  %i.bt = getelementptr i8, ptr %i.b, i64 %.018.i ; 2 uses
  %.val.i31 = load i32, ptr %i.bt, align 1
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %.val.i31) ; 2 uses
  %i.bv = and i32 %i.bu, -67108861
  %i.bw = icmp eq i32 %i.bv, 1207959553
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = and i32 %i.bu, 67108860
  %i.by = load i32, ptr %i.bs, align 4
  %i.bz = trunc i64 %.018.i to i32
  %i.ca = add i32 %i.by, %i.bz
  %i.cb = sub i32 %i.bx, %i.ca
  %i.cc = and i32 %i.cb, 67108860
  %i.cd = or disjoint i32 %i.cc, 1207959553
  %i.ce = tail call i32 @llvm.bswap.i32(i32 range(i32 1073741824, -2147483648) %i.cd)
  store i32 %i.ce, ptr %i.bt, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cf = add nuw i64 %.018.i, 4                  ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.br
  br i1 %i.cg, label %bb.n, label %bcj_x86.exit, !llvm.loop !15

bb.q:                                             ; preds = %bb.a
  %i.ch = and i64 %i.c, -4                        ; 2 uses
  %.not.i33 = icmp eq i64 %i.ch, 0
  br i1 %.not.i33, label %bcj_x86.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.q
  %i.ci = getelementptr i8, ptr %0, i64 12
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i34
  %.029.i = phi i64 [ 0, %.lr.ph.i34 ], [ %i.dg, %bb.t ] ; 3 uses
  %i.cj = getelementptr i8, ptr %i.b, i64 %.029.i ; 5 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 3
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, -21
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = load i16, ptr %i.cj, align 1
  %i.co = zext i16 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 2
  %i.cq = getelementptr i8, ptr %i.cj, i64 1
  %i.cr = getelementptr i8, ptr %i.cj, i64 2      ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 18
  %i.cv = or disjoint i32 %i.cu, %i.cp
  %i.cw = load i32, ptr %i.ci, align 4
  %i.cx = trunc i64 %.029.i to i32
  %i.cy = add i32 %i.cw, %i.cx
  %reass.sub88 = sub i32 %i.cv, %i.cy
  %i.cz = add i32 %reass.sub88, -8                ; 3 uses
  %i.da = lshr i32 %i.cz, 2
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %i.cj, align 1
  %i.dc = lshr i32 %i.cz, 10
  %i.dd = trunc i32 %i.dc to i8
  store i8 %i.dd, ptr %i.cq, align 1
  %i.de = lshr i32 %i.cz, 18
  %i.df = trunc i32 %i.de to i8
  store i8 %i.df, ptr %i.cr, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dg = add nuw i64 %.029.i, 4                  ; 3 uses
  %i.dh = icmp ult i64 %i.dg, %i.ch
  br i1 %i.dh, label %bb.r, label %bcj_x86.exit, !llvm.loop !16

bb.u:                                             ; preds = %bb.a
  %i.di = icmp ult i64 %i.c, 4
  br i1 %i.di, label %bcj_x86.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = add i64 %i.c, -4
  %i.dk = getelementptr i8, ptr %0, i64 12
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %.041.i = phi i64 [ 0, %bb.v ], [ %i.fa, %bb.z ] ; 5 uses
  %i.dl = getelementptr i8, ptr %i.b, i64 %.041.i ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 1      ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = and i32 %i.do, 248
  %i.dq = icmp eq i32 %i.dp, 240
  br i1 %i.dq, label %bb.x, label %bb.z
end_hunk_0
