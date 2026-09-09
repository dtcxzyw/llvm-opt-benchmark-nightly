Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vfp_helper?download=true
inline.NumInlined: 456
inline.NumDeleted: 64
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@arm_rmode_to_sf_map = dso_local local_unnamed_addr constant [6 x i8] c"\00\02\01\03\04\05", align 1
@.str = private unnamed_addr constant [31 x i8] c"../target/arm/tcg/vfp_helper.c\00", align 1
@__func__.helper_check_hcr_el2_trap = private unnamed_addr constant [26 x i8] c"helper_check_hcr_el2_trap\00", align 1
@__func__.softfloat_to_vfp_compare = private unnamed_addr constant [25 x i8] c"softfloat_to_vfp_compare\00", align 1
@__func__.round_to_inf = private unnamed_addr constant [13 x i8] c"round_to_inf\00", align 1
@__PRETTY_FUNCTION__.do_recip_sqrt_estimate_incprec = private unnamed_addr constant [40 x i8] c"int do_recip_sqrt_estimate_incprec(int)\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"4096 <= estimate && estimate < 8192\00", align 1
@__PRETTY_FUNCTION__.do_recip_sqrt_estimate = private unnamed_addr constant [32 x i8] c"int do_recip_sqrt_estimate(int)\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"256 <= estimate && estimate < 512\00", align 1
@switch.table.vfp_set_fpcr_to_host = private unnamed_addr constant [4 x i32] [i32 0, i32 131072, i32 65536, i32 196608], align 8
@switch.table.helper_vfp_cmped = private unnamed_addr constant [4 x i32] [i32 -2147483648, i32 1610612736, i32 536870912, i32 805306368], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @arm_set_default_fp_behaviours(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 4
  %i.b = and i64 %i.a, 69947600958128127
  %i.c = or disjoint i64 %i.b, 4612620607807291392
  store i64 %i.c, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @arm_set_ah_fp_behaviours(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 4
  %i.b = and i64 %i.a, 69947600958128127
  %i.c = or disjoint i64 %i.b, -4610239048240332800
  store i64 %i.c, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @vfp_get_fpsr_from_host(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12768
  %.val20 = load i64, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12832
  %.val19 = load i64, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12784
  %.val18 = load i64, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12840
  %.val17 = load i64, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12776
  %.val16 = load i64, ptr %i.e, align 4
  %i.f = trunc i64 %.val16 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12792
  %.val = load i64, ptr %i.g, align 4
  %i.h = trunc i64 %.val to i32
  %i.i = and i32 %i.h, 49119
  %.masked = and i32 %i.f, 65535
  %i.j = or i32 %i.i, %.masked                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12688
  %i.l = load i64, ptr %i.k, align 16             ; 2 uses
  %i.m = and i64 %i.l, 16777218
  %.not = icmp eq i64 %i.m, 16777216
  %i.n = and i32 %i.j, 65503
  %spec.select = select i1 %.not, i32 %i.j, i32 %i.n ; 6 uses
  %i.o = or i64 %.val19, %.val20
  %i.p = trunc i64 %i.o to i32
  %i.q = or i64 %.val17, %.val18
  %i.r = trunc i64 %i.q to i32
  %.masked32 = and i32 %i.p, 65535                ; 2 uses
  %i.s = or i32 %.masked32, %i.r                  ; 3 uses
  %i.t = and i64 %i.l, 2
  %i.u = icmp ne i64 %i.t, 0                      ; 2 uses
  %.2.i = and i32 %spec.select, 7                 ; 2 uses
  %i.v = and i32 %spec.select, 72
  %.not21.i = icmp eq i32 %i.v, 0
  %i.w = or disjoint i32 %.2.i, 8
  %.3.i = select i1 %.not21.i, i32 %.2.i, i32 %i.w
  %i.x = and i32 %spec.select, 16
  %.4.i = or disjoint i32 %.3.i, %i.x
  %i.y = shl nuw nsw i32 %spec.select, 2
  %i.z = and i32 %i.y, 128
  %i.aa = and i32 %spec.select, 16384
  %.not24.i = icmp ne i32 %i.aa, 0
  %or.cond.not.i = and i1 %i.u, %.not24.i
  %.6.v.i = select i1 %or.cond.not.i, i32 128, i32 %i.z
  %.6.i = or disjoint i32 %.4.i, %.6.v.i          ; 2 uses
  %i.ab = and i32 %spec.select, 64
  %.not25.i = icmp ne i32 %i.ab, 0
  %or.cond28.not.i = and i1 %i.u, %.not25.i
  %i.ac = or i32 %.6.i, 16
  %.7.i = select i1 %or.cond28.not.i, i32 %i.ac, i32 %.6.i
  %.2.i21 = and i32 %i.s, 7                       ; 2 uses
  %i.ad = and i32 %i.s, 72
  %.not21.i22 = icmp eq i32 %i.ad, 0
  %i.ae = or disjoint i32 %.2.i21, 8
  %.3.i23 = select i1 %.not21.i22, i32 %.2.i21, i32 %i.ae
  %i.af = and i32 %i.s, 16
  %i.ag = shl nuw nsw i32 %.masked32, 2
  %i.ah = and i32 %i.ag, 128
  %.4.i24 = or disjoint i32 %i.af, %i.ah
  %.6.i28 = or disjoint i32 %.4.i24, %.3.i23
  %i.ai = or i32 %.6.i28, %.7.i
  ret i32 %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @vfp_clear_float_status_exc_flags(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12768 ; 2 uses
  %i.b = load <2 x i64>, ptr %i.a, align 4
  %i.c = and <2 x i64> %i.b, splat (i64 -65536)
  store <2 x i64> %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12784 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.d, align 4
  %i.f = and <2 x i64> %i.e, splat (i64 -65536)
  store <2 x i64> %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12832 ; 2 uses
  %i.h = load <2 x i64>, ptr %i.g, align 4
  %i.i = and <2 x i64> %i.h, splat (i64 -65536)
  store <2 x i64> %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12800 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.j, align 4
  %i.l = and <2 x i64> %i.k, splat (i64 -65536)
  store <2 x i64> %i.l, ptr %i.j, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @vfp_set_fpcr_to_host(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12688
  %i.b = load i64, ptr %i.a, align 16             ; 3 uses
  %i.c = zext i32 %1 to i64
  %i.d = xor i64 %i.b, %i.c
  %i.e = zext i32 %2 to i64
  %i.f = and i64 %i.d, %i.e                       ; 6 uses
  %i.g = and i64 %i.f, 12582912
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.h = lshr i32 %1, 22
  %i.i = and i32 %i.h, 3
  %i.j = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.vfp_set_fpcr_to_host, i64 %i.j
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12768 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.k, align 16
  %i.m = and <2 x i64> %i.l, splat (i64 -458753)
  %i.n = insertelement <2 x i64> poison, i64 %switch.ext, i64 0
  %i.o = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.p = or disjoint <2 x i64> %i.m, %i.o
  store <2 x i64> %i.p, ptr %i.k, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12784 ; 2 uses
  %i.r = load <2 x i64>, ptr %i.q, align 16
  %i.s = and <2 x i64> %i.r, splat (i64 -458753)
  %i.t = or disjoint <2 x i64> %i.s, %i.o
  store <2 x i64> %i.t, ptr %i.q, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12816 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 16
  %i.w = and <2 x i64> %i.v, splat (i64 -458753)
  %i.x = or disjoint <2 x i64> %i.w, %i.o
  store <2 x i64> %i.x, ptr %i.u, align 16
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %i.y = and i64 %i.f, 524288
  %.not85 = icmp eq i64 %i.y, 0
  br i1 %.not85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = and i32 %1, 524288
  %.not91 = icmp eq i32 %i.z, 0                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12784 ; 2 uses
  %3 = load i64, ptr %i.aa, align 16
  %4 = select i1 %.not91, i64 0, i64 2097152      ; 5 uses
  %i.ab = and i64 %3, -6291457
  %5 = or disjoint i64 %i.ab, %4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12792 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, -6291457
  %6 = or disjoint i64 %i.ae, %4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12840 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, -6291457
  %7 = or disjoint i64 %i.ah, %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12808 ; 2 uses
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, -6291457
  %11 = or disjoint i64 %10, %4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12824 ; 2 uses
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, -6291457
  %i.ai = or disjoint i64 %14, %4
  %15 = select i1 %.not91, i64 0, i64 4194304     ; 5 uses
  %16 = or disjoint i64 %5, %15
  store i64 %16, ptr %i.aa, align 16
  %17 = or disjoint i64 %6, %15
  store i64 %17, ptr %i.ac, align 8
  %i.aj = or disjoint i64 %7, %15
  store i64 %i.aj, ptr %i.af, align 8
  %i.ak = or disjoint i64 %11, %15
  store i64 %i.ak, ptr %8, align 8
  %i.al = or disjoint i64 %i.ai, %15
  store i64 %i.al, ptr %12, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = and i64 %i.f, 16777216
  %.not86 = icmp eq i64 %i.am, 0
  br i1 %.not86, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = and i32 %1, 16777216
  %.not92 = icmp eq i32 %i.an, 0                  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12768 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 16
  %i.aq = select i1 %.not92, i64 0, i64 2097152   ; 3 uses
  %i.ar = and i64 %i.ap, -6291457
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12776 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.at, -2097153
  %i.av = or disjoint i64 %i.au, %i.aq
  store i64 %i.av, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12816 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 16
  %i.ay = and i64 %i.ax, -2097153
  %i.az = or disjoint i64 %i.ay, %i.aq
  store i64 %i.az, ptr %i.aw, align 16
  %i.ba = select i1 %.not92, i64 0, i64 4194304
  %i.bb = or disjoint i64 %i.ar, %i.ba
  %i.bc = or disjoint i64 %i.bb, %i.aq
  store i64 %i.bc, ptr %i.ao, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bd = and i64 %i.f, 16777219
  %.not87 = icmp eq i64 %i.bd, 0                  ; 2 uses
  br i1 %.not87, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = trunc i32 %1 to i1
  %i.bf = and i32 %1, 16777218
  %i.bg = icmp eq i32 %i.bf, 16777216
  %i.bh = or i1 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 12776 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = select i1 %i.bh, i64 4194304, i64 0     ; 2 uses
  %i.bl = and i64 %i.bj, -4194305
  %i.bm = or disjoint i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.bi, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12816 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 16
  %i.bp = and i64 %i.bo, -4194305
  %i.bq = or disjoint i64 %i.bp, %i.bk
  store i64 %i.bq, ptr %i.bn, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.br = and i64 %i.f, 33554432
  %.not88 = icmp eq i64 %i.br, 0
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12768 ; 2 uses
  %i.bt = lshr i32 %1, 2
  %i.bu = and i32 %i.bt, 8388608
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load <2 x i64>, ptr %i.bs, align 16
  %i.bx = and <2 x i64> %i.bw, splat (i64 -8388609)
  %i.by = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %i.bz = shufflevector <2 x i64> %i.by, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ca = or disjoint <2 x i64> %i.bx, %i.bz
  store <2 x i64> %i.ca, ptr %i.bs, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 12784 ; 2 uses
  %i.cc = load <2 x i64>, ptr %i.cb, align 16
  %i.cd = and <2 x i64> %i.cc, splat (i64 -8388609)
  %i.ce = or disjoint <2 x i64> %i.cd, %i.bz
  store <2 x i64> %i.ce, ptr %i.cb, align 16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12800 ; 2 uses
  %i.cg = load <2 x i64>, ptr %i.cf, align 16
  %i.ch = and <2 x i64> %i.cg, splat (i64 -8388609)
  %i.ci = or disjoint <2 x i64> %i.ch, %i.bz
  store <2 x i64> %i.ci, ptr %i.cf, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cj = and i64 %i.f, 2
  %.not89 = icmp eq i64 %i.cj, 0
  br i1 %.not89, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j
  %i.ck = and i32 %1, 2
  %.not90 = icmp eq i32 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12776 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = and i64 %i.cm, 69947600958128127
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 12792 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 12816 ; 2 uses
  %. = select i1 %.not90, i64 4612620607807291392, i64 -4610239048240332800 ; 3 uses
  %i.cq = or disjoint i64 %i.cn, %.
  store i64 %i.cq, ptr %i.cl, align 8
  %i.cr = load i64, ptr %i.co, align 8
  %i.cs = and i64 %i.cr, 69947600958128127
  %i.ct = or disjoint i64 %i.cs, %.
  store i64 %i.ct, ptr %i.co, align 8
  %i.cu = load <2 x i64>, ptr %i.cp, align 16
  %i.cv = and <2 x i64> %i.cu, splat (i64 69947600958128127)
  %i.cw = insertelement <2 x i64> poison, i64 %., i64 0
  %i.cx = shufflevector <2 x i64> %i.cw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cy = or disjoint <2 x i64> %i.cv, %i.cx
  store <2 x i64> %i.cy, ptr %i.cp, align 16
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  br i1 %.not87, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 12768 ; 2 uses
  %.val20.i.i = load i64, ptr %i.cz, align 16     ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12832 ; 2 uses
  %.val19.i.i = load i64, ptr %i.da, align 16     ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 12784 ; 2 uses
  %.val18.i.i = load i64, ptr %i.db, align 16     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12840 ; 2 uses
  %.val17.i.i = load i64, ptr %i.dc, align 8      ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 12776 ; 2 uses
  %.val16.i.i = load i64, ptr %i.dd, align 8      ; 2 uses
  %i.de = trunc i64 %.val16.i.i to i32
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 12792 ; 3 uses
  %.masked.i.i = and i32 %i.de, 65535
  %i.dg = and i64 %i.b, 16777218
  %.not.i.i = icmp eq i64 %i.dg, 16777216
  %i.dh = or i64 %.val19.i.i, %.val20.i.i
  %i.di = trunc i64 %i.dh to i32
  %i.dj = or i64 %.val17.i.i, %.val18.i.i
  %i.dk = trunc i64 %i.dj to i32
  %.masked32.i.i = and i32 %i.di, 65535           ; 2 uses
  %i.dl = or i32 %.masked32.i.i, %i.dk            ; 3 uses
  %i.dm = and i64 %i.b, 2
  %i.dn = icmp ne i64 %i.dm, 0                    ; 2 uses
  %.2.i21.i.i = and i32 %i.dl, 7                  ; 2 uses
  %i.do = and i32 %i.dl, 72
  %.not21.i22.i.i = icmp eq i32 %i.do, 0
  %i.dp = or disjoint i32 %.2.i21.i.i, 8
  %.3.i23.i.i = select i1 %.not21.i22.i.i, i32 %.2.i21.i.i, i32 %i.dp
  %i.dq = and i32 %i.dl, 16
  %i.dr = shl nuw nsw i32 %.masked32.i.i, 2
  %i.ds = and i32 %i.dr, 128
  %.4.i24.i.i = or disjoint i32 %i.dq, %i.ds
  %.6.i28.i.i = or disjoint i32 %.4.i24.i.i, %.3.i23.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 12680 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = and i64 %.val20.i.i, -65536
  store i64 %i.dv, ptr %i.cz, align 16
  %i.dw = and i64 %.val16.i.i, -65536
  store i64 %i.dw, ptr %i.dd, align 8
  %i.dx = and i64 %.val18.i.i, -65536
  store i64 %i.dx, ptr %i.db, align 16
  %i.dy = and i64 %.val19.i.i, -65536
  store i64 %i.dy, ptr %i.da, align 16
  %i.dz = and i64 %.val17.i.i, -65536
  store i64 %i.dz, ptr %i.dc, align 8
  %i.ea = load <2 x i64>, ptr %i.df, align 8
  %.val.i.i = load i64, ptr %i.df, align 8
  %i.eb = trunc i64 %.val.i.i to i32
  %i.ec = and i32 %i.eb, 49119
  %i.ed = or i32 %i.ec, %.masked.i.i              ; 2 uses
  %i.ee = and i32 %i.ed, 65503
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.ed, i32 %i.ee ; 6 uses
  %.2.i.i.i = and i32 %spec.select.i.i, 7         ; 2 uses
  %i.ef = and i32 %spec.select.i.i, 72
  %.not21.i.i.i = icmp eq i32 %i.ef, 0
  %i.eg = or disjoint i32 %.2.i.i.i, 8
  %.3.i.i.i = select i1 %.not21.i.i.i, i32 %.2.i.i.i, i32 %i.eg
  %i.eh = and i32 %spec.select.i.i, 16
  %.4.i.i.i = or disjoint i32 %.3.i.i.i, %i.eh
  %i.ei = shl nuw nsw i32 %spec.select.i.i, 2
  %i.ej = and i32 %i.ei, 128
  %i.ek = and i32 %spec.select.i.i, 16384
  %.not24.i.i.i = icmp ne i32 %i.ek, 0
  %or.cond.not.i.i.i = and i1 %i.dn, %.not24.i.i.i
  %.6.v.i.i.i = select i1 %or.cond.not.i.i.i, i32 128, i32 %i.ej
  %.6.i.i.i = or disjoint i32 %.4.i.i.i, %.6.v.i.i.i ; 2 uses
  %i.el = and i32 %spec.select.i.i, 64
  %.not25.i.i.i = icmp ne i32 %i.el, 0
  %or.cond28.not.i.i.i = and i1 %i.dn, %.not25.i.i.i
  %i.em = or i32 %.6.i.i.i, 16
  %.7.i.i.i = select i1 %or.cond28.not.i.i.i, i32 %i.em, i32 %.6.i.i.i
  %i.en = or i32 %.6.i28.i.i, %.7.i.i.i
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = or i64 %i.du, %i.eo
  store i64 %i.ep, ptr %i.dt, align 8
  %i.eq = and <2 x i64> %i.ea, splat (i64 -65536)
  store <2 x i64> %i.eq, ptr %i.df, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 12808 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8
  %i.et = and i64 %i.es, -65536
  store i64 %i.et, ptr %i.er, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

end_hunk_0
