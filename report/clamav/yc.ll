Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/yc?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"yC: offset: %x, length: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"yC: decrypting decryptor on sect %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"yC: decrypting sect%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"yC: bad emulation length limit %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"yC: Cannot write unpacked file\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"yC: Unhandled opcode %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"yC: Bounds check assertion.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Heuristics.BoundsCheck\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 8) i32 @yc_decrypt(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i16 noundef signext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %4 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = sext i16 %8 to i32                       ; 2 uses
  %i.f = add i32 %i.d, %i.e
  %i.g = zext i32 %5 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i16, ptr %i.i, align 4, !tbaa !13
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, i32 noundef %i.e, i32 noundef %7) #3
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %4) #3
  %i.n = zext i32 %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 147
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 198
  %i.r = tail call fastcc i32 @yc_poly_emulator(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i32 noundef %7, i32 noundef %7)
  switch i32 %i.r, label %bb.b [
    i32 2, label %.loopexit
    i32 1, label %.loopexit.loopexit107
  ]

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = sub i32 %2, %i.t                         ; 3 uses
  %.not100 = icmp eq i32 %4, 0
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.v = icmp eq i16 %8, -24
  %i.w = select i1 %i.v, i64 1002, i64 1111
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.w
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.y = trunc nuw i64 %indvars.iv to i32
  %i.z = mul i64 %indvars.iv, 40
  %i.aa = and i64 %i.z, 4294967288
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !8  ; 2 uses
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
  %.fr = freeze i32 %i.ah
  %i.ai = icmp eq i32 %.fr, 0
  br i1 %i.ai, label %bb.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i32 %i.ac, label %bb.e [
    i32 1936487470, label %bb.i
    i32 1920168494, label %bb.i
    i32 1869374834, label %bb.i
    i32 1818587694, label %bb.i
    i32 1668445042, label %bb.i
    i32 1633972782, label %bb.i
    i32 1633970478, label %bb.i
    i32 1633969454, label %bb.i
  ]

bb.e:                                             ; preds = %switch.early.test
  %i.aj = and i32 %i.ac, 65535
  %i.ak = icmp eq i32 %i.aj, 17273
  br i1 %i.ak, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.y) #3
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !10 ; 3 uses
  %i.am = sub i32 %i.u, %i.al                     ; 2 uses
  %i.an = icmp ugt i32 %i.al, %i.u
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.am) #3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.as = tail call fastcc i32 @yc_poly_emulator(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.x, ptr noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.am)
  switch i32 %i.as, label %bb.i [
    i32 2, label %.loopexit
    i32 1, label %.loopexit.loopexit107
  ]

bb.i:                                             ; preds = %bb.c, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d, %bb.e, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.at = trunc i32 %4 to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  store i16 %i.at, ptr %i.au, align 2, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i64 0, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 2575
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.bd = sub i32 %i.ba, %i.bc
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !8
  %i.be = zext i32 %i.u to i64
  %i.bf = tail call i64 @cli_writen(i32 noundef %6, ptr noundef nonnull %1, i64 noundef %i.be) #3
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #3
  br label %.loopexit

.loopexit.loopexit107:                            ; preds = %bb.h, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.loopexit107, %bb.g, %._crit_edge, %bb.a, %bb.j
  %.2 = phi i32 [ 0, %._crit_edge ], [ 7, %bb.j ], [ 1, %bb.a ], [ 1, %bb.g ], [ 7, %.loopexit.loopexit107 ], [ 1, %bb.h ]
  ret i32 %.2
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @yc_poly_emulator(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %5, i32 %6) ; 2 uses
  %.not = icmp eq i32 %invariant.umin, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = trunc i32 %5 to i8
  %i.b = ptrtoint ptr %1 to i64                   ; 9 uses
  %wide.trip.count = zext i32 %invariant.umin to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %.0240 = phi i32 [ 100000000, %.lr.ph ], [ %.2, %bb.ac ]
  %.0140238 = phi i8 [ %i.a, %.lr.ph ], [ %i.cy, %bb.ac ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = sub i64 %i.d, %i.b
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp ult i32 %2, %i.f
  br i1 %i.g, label %yc_bounds_check.exit, label %bb.c

yc_bounds_check.exit:                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.h = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.c, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.ab
  %.1237 = phi i32 [ %.0240, %bb.c ], [ %.2, %bb.ab ] ; 16 uses
  %.0138236 = phi i32 [ 0, %bb.c ], [ %i.cw, %bb.ab ] ; 14 uses
  %.0141235 = phi i8 [ %i.i, %bb.c ], [ %.1142, %bb.ab ] ; 19 uses
  %i.j = zext nneg i32 %.0138236 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.j ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.b
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp ult i32 %2, %i.n
  br i1 %i.o, label %yc_bounds_check.exit157, label %bb.e

yc_bounds_check.exit157:                          ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.p = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.k, align 1, !tbaa !8     ; 2 uses
  switch i8 %i.q, label %yc_bounds_check.exit175 [
    i8 -21, label %bb.f
    i8 -2, label %bb.h
    i8 42, label %bb.i
    i8 2, label %bb.j
    i8 50, label %bb.k
    i8 4, label %bb.l
    i8 52, label %bb.n
    i8 44, label %bb.p
    i8 -64, label %bb.r
    i8 -46, label %bb.x
    i8 -112, label %bb.ab
    i8 -8, label %bb.ab
    i8 -7, label %bb.ab
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = add nuw nsw i32 %.0138236, 1             ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.b
  %i.w = trunc i64 %i.v to i32
  %i.x = icmp ult i32 %2, %i.w                    ; 2 uses
  br i1 %i.x, label %yc_bounds_check.exit159.thread, label %yc_bounds_check.exit159

yc_bounds_check.exit159.thread:                   ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.y = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %yc_bounds_check.exit159

yc_bounds_check.exit159:                          ; preds = %bb.f, %yc_bounds_check.exit159.thread
  %.not154 = icmp eq i32 %.1237, 0
  %or.cond = select i1 %i.x, i1 true, i1 %.not154
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %yc_bounds_check.exit159
  %i.z = add i32 %.1237, -1
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !8
  %i.ab = sext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.r, %i.ab
  br label %bb.ab

bb.h:                                             ; preds = %bb.e
  %i.ad = add i8 %.0141235, -1
  %i.ae = add nuw nsw i32 %.0138236, 1
  br label %bb.ab

bb.i:                                             ; preds = %bb.e
  %i.af = sub i8 %.0141235, %.0140238
  %i.ag = add nuw nsw i32 %.0138236, 1
  br label %bb.ab

bb.j:                                             ; preds = %bb.e
  %i.ah = add i8 %.0141235, %.0140238
  %i.ai = add nuw nsw i32 %.0138236, 1
  br label %bb.ab

bb.k:                                             ; preds = %bb.e
  %i.aj = xor i8 %.0141235, %.0140238
  %i.ak = add nuw nsw i32 %.0138236, 1
  br label %bb.ab

bb.l:                                             ; preds = %bb.e
  %i.al = add nuw nsw i32 %.0138236, 1            ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.am ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.b
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp ult i32 %2, %i.aq
  br i1 %i.ar, label %yc_bounds_check.exit161, label %bb.m

yc_bounds_check.exit161:                          ; preds = %bb.l
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.as = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.at = load i8, ptr %i.an, align 1, !tbaa !8
  %i.au = add i8 %i.at, %.0141235
  br label %bb.ab

bb.n:                                             ; preds = %bb.e
  %i.av = add nuw nsw i32 %.0138236, 1            ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.b
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp ult i32 %2, %i.ba
  br i1 %i.bb, label %yc_bounds_check.exit163, label %bb.o

yc_bounds_check.exit163:                          ; preds = %bb.n
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.bc = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.be = xor i8 %i.bd, %.0141235
  br label %bb.ab

bb.p:                                             ; preds = %bb.e
  %i.bf = add nuw nsw i32 %.0138236, 1            ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %i.bg ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.b
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp ult i32 %2, %i.bk
  br i1 %i.bl, label %yc_bounds_check.exit165, label %bb.q

yc_bounds_check.exit165:                          ; preds = %bb.p
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.bm = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bo = sub i8 %.0141235, %i.bn
  br label %bb.ab

bb.r:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.b
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp ult i32 %2, %i.bs
  br i1 %i.bt, label %yc_bounds_check.exit167, label %bb.s

yc_bounds_check.exit167:                          ; preds = %bb.r
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.bu = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.bw = icmp eq i8 %i.bv, -64
  %i.bx = add nuw nsw i32 %.0138236, 2            ; 3 uses
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.b
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = icmp ult i32 %2, %i.cc                  ; 2 uses
  br i1 %i.bw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  br i1 %i.cd, label %yc_bounds_check.exit169, label %bb.u

yc_bounds_check.exit169:                          ; preds = %bb.t
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.ce = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cf = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cg = tail call i8 @llvm.fshl.i8(i8 %.0141235, i8 %.0141235, i8 %i.cf)
  br label %bb.ab

bb.v:                                             ; preds = %bb.s
  br i1 %i.cd, label %yc_bounds_check.exit171, label %bb.w

yc_bounds_check.exit171:                          ; preds = %bb.v
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.ch = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.ci = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cj = tail call i8 @llvm.fshr.i8(i8 %.0141235, i8 %.0141235, i8 %i.ci)
  br label %bb.ab

bb.x:                                             ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.b
  %i.cn = trunc i64 %i.cm to i32
  %i.co = icmp ult i32 %2, %i.cn
  br i1 %i.co, label %yc_bounds_check.exit173, label %bb.y

yc_bounds_check.exit173:                          ; preds = %bb.x
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #3
  %i.cp = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.7) #3 ; 0 uses
  br label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.cq = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cr = icmp eq i8 %i.cq, -56
  %i.cs = add nuw nsw i32 %.0138236, 2            ; 2 uses
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call i8 @llvm.fshr.i8(i8 %.0141235, i8 %.0141235, i8 %.0140238)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cu = tail call i8 @llvm.fshl.i8(i8 %.0141235, i8 %.0141235, i8 %.0140238)
  br label %bb.ab

yc_bounds_check.exit175:                          ; preds = %bb.e
  %i.cv = zext i8 %i.q to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %i.cv) #3
  br label %.loopexit

bb.ab:                                            ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.m, %bb.o, %bb.q, %bb.w, %bb.u, %bb.aa, %bb.z, %bb.e, %bb.e, %bb.e
  %.1142 = phi i8 [ %.0141235, %bb.g ], [ %i.ad, %bb.h ], [ %i.af, %bb.i ], [ %i.ah, %bb.j ], [ %i.aj, %bb.k ], [ %i.au, %bb.m ], [ %i.be, %bb.o ], [ %i.bo, %bb.q ], [ %i.cg, %bb.u ], [ %i.cj, %bb.w ], [ %i.ct, %bb.z ], [ %i.cu, %bb.aa ], [ %.0141235, %bb.e ], [ %.0141235, %bb.e ], [ %.0141235, %bb.e ] ; 2 uses
  %.1139 = phi i32 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ], [ %i.ag, %bb.i ], [ %i.ai, %bb.j ], [ %i.ak, %bb.k ], [ %i.al, %bb.m ], [ %i.av, %bb.o ], [ %i.bf, %bb.q ], [ %i.bx, %bb.u ], [ %i.bx, %bb.w ], [ %i.cs, %bb.z ], [ %i.cs, %bb.aa ], [ %.0138236, %bb.e ], [ %.0138236, %bb.e ], [ %.0138236, %bb.e ]
  %.2 = phi i32 [ %i.z, %bb.g ], [ %.1237, %bb.h ], [ %.1237, %bb.i ], [ %.1237, %bb.j ], [ %.1237, %bb.k ], [ %.1237, %bb.m ], [ %.1237, %bb.o ], [ %.1237, %bb.q ], [ %.1237, %bb.u ], [ %.1237, %bb.w ], [ %.1237, %bb.z ], [ %.1237, %bb.aa ], [ %.1237, %bb.e ], [ %.1237, %bb.e ], [ %.1237, %bb.e ] ; 2 uses
  %i.cw = add nsw i32 %.1139, 1                   ; 2 uses
  %i.cx = icmp ult i32 %i.cw, 48
  br i1 %i.cx, label %bb.d, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = add i8 %.0140238, -1
  store i8 %.1142, ptr %i.c, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.ac, %yc_bounds_check.exit159, %bb.a, %yc_bounds_check.exit173, %yc_bounds_check.exit171, %yc_bounds_check.exit169, %yc_bounds_check.exit167, %yc_bounds_check.exit165, %yc_bounds_check.exit163, %yc_bounds_check.exit161, %yc_bounds_check.exit157, %yc_bounds_check.exit, %yc_bounds_check.exit175
  %.0143 = phi i32 [ 2, %yc_bounds_check.exit171 ], [ 2, %yc_bounds_check.exit ], [ 2, %yc_bounds_check.exit173 ], [ 1, %yc_bounds_check.exit175 ], [ 2, %yc_bounds_check.exit157 ], [ 2, %yc_bounds_check.exit169 ], [ 0, %bb.a ], [ 2, %yc_bounds_check.exit161 ], [ 2, %yc_bounds_check.exit163 ], [ 2, %yc_bounds_check.exit165 ], [ 2, %yc_bounds_check.exit167 ], [ 2, %yc_bounds_check.exit159 ], [ 0, %bb.ac ]
  ret i32 %.0143
}

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @cli_append_potentially_unwanted(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!9, !5, i64 8}
!11 = !{!"short", !4, i64 0}
!12 = !{!"pe_image_file_hdr", !5, i64 0, !11, i64 4, !11, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 20, !11, i64 22}
!13 = !{!12, !11, i64 20}
!14 = !{!9, !5, i64 32}
!15 = !{!9, !5, i64 12}
!16 = !{!12, !11, i64 6}
!17 = !{!9, !5, i64 4}
end_hunk_0
