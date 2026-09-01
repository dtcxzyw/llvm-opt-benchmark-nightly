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
  %i.ab = select i1 %.not91, i64 0, i64 2097152   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12840 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, -6291457
  %i.af = or disjoint i64 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12808 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, -6291457
  %i.aj = or disjoint i64 %i.ai, %i.ab
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12824 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, -6291457
  %i.an = or disjoint i64 %i.am, %i.ab
  %3 = select i1 %.not91, i64 0, i64 4194304      ; 4 uses
  %4 = load <2 x i64>, ptr %i.aa, align 16
  %5 = and <2 x i64> %4, splat (i64 -6291457)
  %6 = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %7 = insertelement <2 x i64> poison, i64 %3, i64 0
  %8 = or <2 x i64> %7, %6
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> zeroinitializer
  %10 = or disjoint <2 x i64> %9, %5
  store <2 x i64> %10, ptr %i.aa, align 16
  %i.ao = or disjoint i64 %i.af, %3
  store i64 %i.ao, ptr %i.ac, align 8
  %i.ap = or disjoint i64 %i.aj, %3
  store i64 %i.ap, ptr %i.ag, align 8
  %i.aq = or disjoint i64 %i.an, %3
  store i64 %i.aq, ptr %i.ak, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = and i64 %i.f, 16777216
  %.not86 = icmp eq i64 %i.ar, 0
  br i1 %.not86, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = and i32 %1, 16777216
  %.not92 = icmp eq i32 %i.as, 0                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12768 ; 2 uses
  %i.au = load i64, ptr %i.at, align 16
  %i.av = select i1 %.not92, i64 0, i64 2097152   ; 3 uses
  %i.aw = and i64 %i.au, -6291457
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12776 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, -2097153
  %i.ba = or disjoint i64 %i.az, %i.av
  store i64 %i.ba, ptr %i.ax, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12816 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 16
  %i.bd = and i64 %i.bc, -2097153
  %i.be = or disjoint i64 %i.bd, %i.av
  store i64 %i.be, ptr %i.bb, align 16
  %i.bf = select i1 %.not92, i64 0, i64 4194304
  %i.bg = or disjoint i64 %i.aw, %i.bf
  %i.bh = or disjoint i64 %i.bg, %i.av
  store i64 %i.bh, ptr %i.at, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bi = and i64 %i.f, 16777219
  %.not87 = icmp eq i64 %i.bi, 0                  ; 2 uses
  br i1 %.not87, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = trunc i32 %1 to i1
  %i.bk = and i32 %1, 16777218
  %i.bl = icmp eq i32 %i.bk, 16777216
  %i.bm = or i1 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12776 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, i64 4194304, i64 0     ; 2 uses
  %i.bq = and i64 %i.bo, -4194305
  %i.br = or disjoint i64 %i.bq, %i.bp
  store i64 %i.br, ptr %i.bn, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12816 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 16
  %i.bu = and i64 %i.bt, -4194305
  %i.bv = or disjoint i64 %i.bu, %i.bp
  store i64 %i.bv, ptr %i.bs, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bw = and i64 %i.f, 33554432
  %.not88 = icmp eq i64 %i.bw, 0
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12768 ; 2 uses
  %i.by = lshr i32 %1, 2
  %i.bz = and i32 %i.by, 8388608
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = load <2 x i64>, ptr %i.bx, align 16
  %i.cc = and <2 x i64> %i.cb, splat (i64 -8388609)
  %i.cd = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.ce = shufflevector <2 x i64> %i.cd, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cf = or disjoint <2 x i64> %i.cc, %i.ce
  store <2 x i64> %i.cf, ptr %i.bx, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 12784 ; 2 uses
  %i.ch = load <2 x i64>, ptr %i.cg, align 16
  %i.ci = and <2 x i64> %i.ch, splat (i64 -8388609)
  %i.cj = or disjoint <2 x i64> %i.ci, %i.ce
  store <2 x i64> %i.cj, ptr %i.cg, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 12800 ; 2 uses
  %i.cl = load <2 x i64>, ptr %i.ck, align 16
  %i.cm = and <2 x i64> %i.cl, splat (i64 -8388609)
  %i.cn = or disjoint <2 x i64> %i.cm, %i.ce
  store <2 x i64> %i.cn, ptr %i.ck, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = and i64 %i.f, 2
  %.not89 = icmp eq i64 %i.co, 0
  br i1 %.not89, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j
  %i.cp = and i32 %1, 2
  %.not90 = icmp eq i32 %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12776 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = and i64 %i.cr, 69947600958128127
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 12792 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12816 ; 2 uses
  %. = select i1 %.not90, i64 4612620607807291392, i64 -4610239048240332800 ; 3 uses
  %i.cv = or disjoint i64 %i.cs, %.
  store i64 %i.cv, ptr %i.cq, align 8
  %i.cw = load i64, ptr %i.ct, align 8
  %i.cx = and i64 %i.cw, 69947600958128127
  %i.cy = or disjoint i64 %i.cx, %.
  store i64 %i.cy, ptr %i.ct, align 8
  %i.cz = load <2 x i64>, ptr %i.cu, align 16
  %i.da = and <2 x i64> %i.cz, splat (i64 69947600958128127)
  %i.db = insertelement <2 x i64> poison, i64 %., i64 0
  %i.dc = shufflevector <2 x i64> %i.db, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dd = or disjoint <2 x i64> %i.da, %i.dc
  store <2 x i64> %i.dd, ptr %i.cu, align 16
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  br i1 %.not87, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 12768 ; 2 uses
  %.val20.i.i = load i64, ptr %i.de, align 16     ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 12832 ; 2 uses
  %.val19.i.i = load i64, ptr %i.df, align 16     ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12784 ; 2 uses
  %.val18.i.i = load i64, ptr %i.dg, align 16     ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 12840 ; 2 uses
  %.val17.i.i = load i64, ptr %i.dh, align 8      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 12776 ; 2 uses
  %.val16.i.i = load i64, ptr %i.di, align 8      ; 2 uses
  %i.dj = trunc i64 %.val16.i.i to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 12792 ; 3 uses
  %.masked.i.i = and i32 %i.dj, 65535
  %i.dl = and i64 %i.b, 16777218
  %.not.i.i = icmp eq i64 %i.dl, 16777216
  %i.dm = or i64 %.val19.i.i, %.val20.i.i
  %i.dn = trunc i64 %i.dm to i32
  %i.do = or i64 %.val17.i.i, %.val18.i.i
  %i.dp = trunc i64 %i.do to i32
  %.masked32.i.i = and i32 %i.dn, 65535           ; 2 uses
  %i.dq = or i32 %.masked32.i.i, %i.dp            ; 3 uses
  %i.dr = and i64 %i.b, 2
  %i.ds = icmp ne i64 %i.dr, 0                    ; 2 uses
  %.2.i21.i.i = and i32 %i.dq, 7                  ; 2 uses
  %i.dt = and i32 %i.dq, 72
  %.not21.i22.i.i = icmp eq i32 %i.dt, 0
  %i.du = or disjoint i32 %.2.i21.i.i, 8
  %.3.i23.i.i = select i1 %.not21.i22.i.i, i32 %.2.i21.i.i, i32 %i.du
  %i.dv = and i32 %i.dq, 16
  %i.dw = shl nuw nsw i32 %.masked32.i.i, 2
  %i.dx = and i32 %i.dw, 128
  %.4.i24.i.i = or disjoint i32 %i.dv, %i.dx
  %.6.i28.i.i = or disjoint i32 %.4.i24.i.i, %.3.i23.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 12680 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = and i64 %.val20.i.i, -65536
  store i64 %i.ea, ptr %i.de, align 16
  %i.eb = and i64 %.val16.i.i, -65536
  store i64 %i.eb, ptr %i.di, align 8
  %i.ec = and i64 %.val18.i.i, -65536
  store i64 %i.ec, ptr %i.dg, align 16
  %i.ed = and i64 %.val19.i.i, -65536
  store i64 %i.ed, ptr %i.df, align 16
  %i.ee = and i64 %.val17.i.i, -65536
  store i64 %i.ee, ptr %i.dh, align 8
  %i.ef = load <2 x i64>, ptr %i.dk, align 8
  %.val.i.i = load i64, ptr %i.dk, align 8
  %i.eg = trunc i64 %.val.i.i to i32
  %i.eh = and i32 %i.eg, 49119
  %i.ei = or i32 %i.eh, %.masked.i.i              ; 2 uses
  %i.ej = and i32 %i.ei, 65503
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.ei, i32 %i.ej ; 6 uses
  %.2.i.i.i = and i32 %spec.select.i.i, 7         ; 2 uses
  %i.ek = and i32 %spec.select.i.i, 72
  %.not21.i.i.i = icmp eq i32 %i.ek, 0
  %i.el = or disjoint i32 %.2.i.i.i, 8
  %.3.i.i.i = select i1 %.not21.i.i.i, i32 %.2.i.i.i, i32 %i.el
  %i.em = and i32 %spec.select.i.i, 16
  %.4.i.i.i = or disjoint i32 %.3.i.i.i, %i.em
  %i.en = shl nuw nsw i32 %spec.select.i.i, 2
  %i.eo = and i32 %i.en, 128
  %i.ep = and i32 %spec.select.i.i, 16384
  %.not24.i.i.i = icmp ne i32 %i.ep, 0
  %or.cond.not.i.i.i = and i1 %i.ds, %.not24.i.i.i
  %.6.v.i.i.i = select i1 %or.cond.not.i.i.i, i32 128, i32 %i.eo
  %.6.i.i.i = or disjoint i32 %.4.i.i.i, %.6.v.i.i.i ; 2 uses
  %i.eq = and i32 %spec.select.i.i, 64
  %.not25.i.i.i = icmp ne i32 %i.eq, 0
  %or.cond28.not.i.i.i = and i1 %i.ds, %.not25.i.i.i
  %i.er = or i32 %.6.i.i.i, 16
  %.7.i.i.i = select i1 %or.cond28.not.i.i.i, i32 %i.er, i32 %.6.i.i.i
  %i.es = or i32 %.6.i28.i.i, %.7.i.i.i
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = or i64 %i.dz, %i.et
  store i64 %i.eu, ptr %i.dy, align 8
  %i.ev = and <2 x i64> %i.ef, splat (i64 -65536)
  store <2 x i64> %i.ev, ptr %i.dk, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 12808 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = and i64 %i.ex, -65536
  store i64 %i.ey, ptr %i.ew, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

end_hunk_0
