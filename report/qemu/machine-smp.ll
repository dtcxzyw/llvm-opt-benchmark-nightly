Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/machine-smp?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.QEnumLookup = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [48 x i8] c"/opt-bench/work/qemu/qemu/hw/core/machine-smp.c\00", align 1
@__func__.machine_parse_smp_config = private unnamed_addr constant [25 x i8] c"machine_parse_smp_config\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Invalid CPU topology: CPU topology parameters must be greater than zero\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"modules > 1 not supported by this machine's CPU topology\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"clusters > 1 not supported by this machine's CPU topology\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"dies > 1 not supported by this machine's CPU topology\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"books > 1 not supported by this machine's CPU topology\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"drawers > 1 not supported by this machine's CPU topology\00", align 1
@.str.7 = private unnamed_addr constant [86 x i8] c"Invalid CPU topology: product of the hierarchy must match maxcpus: %s != maxcpus (%u)\00", align 1
@.str.8 = private unnamed_addr constant [103 x i8] c"Invalid CPU topology: maxcpus must be equal to or greater than smp: %s == maxcpus (%u) < smp_cpus (%u)\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Invalid SMP CPUs %d. The min CPUs supported by machine '%s' is %d\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"Invalid SMP CPUs %d. The max CPUs supported by machine '%s' is %d\00", align 1
@__func__.machine_parse_smp_cache = private unnamed_addr constant [24 x i8] c"machine_parse_smp_cache\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Invalid cache properties: %s. The cache properties are duplicated\00", align 1
@CacheLevelAndType_lookup = external constant %struct.QEnumLookup, align 8
@.str.12 = private unnamed_addr constant [48 x i8] c"%s cache topology not supported by this machine\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"%s level cache not supported by this machine\00", align 1
@CpuTopologyLevel_lookup = external constant %struct.QEnumLookup, align 8
@__func__.machine_check_smp_cache = private unnamed_addr constant [24 x i8] c"machine_check_smp_cache\00", align 1
@.str.14 = private unnamed_addr constant [85 x i8] c"Invalid smp cache topology. L2 cache topology level shouldn't be lower than L1 cache\00", align 1
@.str.15 = private unnamed_addr constant [85 x i8] c"Invalid smp cache topology. L3 cache topology level shouldn't be lower than L2 cache\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/hw/core/boards.h\00", align 1
@__func__.MACHINE_GET_CLASS = private unnamed_addr constant [18 x i8] c"MACHINE_GET_CLASS\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"drawers (%u) * \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"books (%u) * \00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"sockets (%u)\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c" * dies (%u)\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c" * clusters (%u)\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c" * modules (%u)\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c" * cores (%u)\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c" * threads (%u)\00", align 1
@__func__.machine_check_topo_support = private unnamed_addr constant [27 x i8] c"machine_check_topo_support\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"Invalid topology level: %s. The topology level is not supported by this machine\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"smp_cache->props[cache1].topology != CPU_TOPOLOGY_LEVEL_DEFAULT\00", align 1
@__PRETTY_FUNCTION__.smp_cache_topo_cmp = private unnamed_addr constant [81 x i8] c"_Bool smp_cache_topo_cmp(const SmpCache *, CacheLevelAndType, CacheLevelAndType)\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @machine_parse_smp_config(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #8
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 11 uses
  %i.c = load i8, ptr %1, align 8, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1                  ; 3 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = phi i32 [ %i.o, %bb.d ], [ 1, %bb.c ]    ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !7, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1                  ; 3 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = tail call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.x = phi i32 [ %i.w, %bb.f ], [ 1, %bb.e ]    ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !7, !noundef !8
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i32 [ %i.ad, %bb.h ], [ 0, %bb.g ]  ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i8, ptr %i.af, align 8, !range !7, !noundef !8
  %i.ah = trunc nuw i8 %i.ag to i1                ; 3 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.am = phi i32 [ %i.al, %bb.j ], [ 1, %bb.i ]  ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !7, !noundef !8
  %i.ap = trunc nuw i8 %i.ao to i1                ; 3 uses
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = tail call i32 @llvm.umax.i32(i32 %i.as, i32 1)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.au = phi i32 [ %i.at, %bb.l ], [ 1, %bb.k ]  ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aw = load i8, ptr %i.av, align 8, !range !7, !noundef !8
  %i.ax = trunc nuw i8 %i.aw to i1                ; 3 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = trunc i64 %i.az to i32
  %i.bb = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bc = phi i32 [ %i.bb, %bb.n ], [ 1, %bb.m ]  ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = load i8, ptr %i.bd, align 8, !range !7, !noundef !8
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = trunc i64 %i.bh to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bj = phi i32 [ %i.bi, %bb.p ], [ 0, %bb.o ]  ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bl = load i8, ptr %i.bk, align 8, !range !7, !noundef !8
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = trunc i64 %i.bo to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bq = phi i32 [ %i.bp, %bb.r ], [ 0, %bb.q ]  ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bs = load i8, ptr %i.br, align 8, !range !7, !noundef !8
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = trunc i64 %i.bv to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bx = phi i32 [ %i.bw, %bb.t ], [ 0, %bb.s ]  ; 2 uses
  br i1 %i.d, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.ao, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.k, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.s, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.ao, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.aa, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.ao, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %i.ah, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.ap, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.ax, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.bf, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.bm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %i.bt, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.1) #8
  br label %bb.by

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 319
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 325
  %i.de = load i8, ptr %i.dd, align 1, !range !7, !noundef !8
  %i.df = trunc nuw i8 %i.de to i1
  %.not = xor i1 %i.ax, true
  %brmerge = or i1 %.not, %i.df
  br i1 %brmerge, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = icmp sgt i64 %i.dh, 1
  br i1 %i.di, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 127, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.2) #8
  br label %bb.by

bb.as:                                            ; preds = %bb.ap, %bb.aq
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 321
  %i.dk = load i8, ptr %i.dj, align 1, !range !7, !noundef !8
  %i.dl = trunc nuw i8 %i.dk to i1
  %.not233 = xor i1 %i.ap, true
  %brmerge234 = or i1 %.not233, %i.dl
  br i1 %brmerge234, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = icmp sgt i64 %i.dn, 1
  br i1 %i.do, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.3) #8
  br label %bb.by

bb.av:                                            ; preds = %bb.as, %bb.at
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.dq = load i8, ptr %i.dp, align 1, !range !7, !noundef !8
  %i.dr = trunc nuw i8 %i.dq to i1
  %.not235 = xor i1 %i.ah, true
  %brmerge236 = or i1 %.not235, %i.dr
  br i1 %brmerge236, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = icmp sgt i64 %i.dt, 1
  br i1 %i.du, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.4) #8
  br label %bb.by

bb.ay:                                            ; preds = %bb.av, %bb.aw
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 323
  %i.dw = load i8, ptr %i.dv, align 1, !range !7, !noundef !8
  %i.dx = trunc nuw i8 %i.dw to i1
  %.not237 = xor i1 %i.s, true
  %brmerge238 = or i1 %.not237, %i.dx
  br i1 %brmerge238, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = icmp sgt i64 %i.dz, 1
  br i1 %i.ea, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 151, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.5) #8
  br label %bb.by

bb.bb:                                            ; preds = %bb.ay, %bb.az
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 324
  %i.ec = load i8, ptr %i.eb, align 1, !range !7, !noundef !8
  %i.ed = trunc nuw i8 %i.ec to i1
  %.not239 = xor i1 %i.k, true
  %brmerge240 = or i1 %.not239, %i.ed
  br i1 %brmerge240, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = icmp sgt i64 %i.ef, 1
  br i1 %i.eg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.6) #8
  br label %bb.by

bb.be:                                            ; preds = %bb.bb, %bb.bc
  %i.eh = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.ei = icmp eq i32 %i.bx, 0                    ; 2 uses
  %or.cond = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ej = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 1)
  %i.ek = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 1)
  %i.el = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 1)
  br label %.thread

bb.bg:                                            ; preds = %bb.be
  %i.em = select i1 %i.ei, i32 %i.h, i32 %i.bx    ; 11 uses
  %i.en = load i8, ptr %i.dc, align 1, !range !7, !noundef !8
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.ep = icmp eq i32 %i.ae, 0
  br i1 %i.ep, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.eq = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 1) ; 2 uses
  %i.er = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 1) ; 2 uses
  %i.es = mul i32 %i.x, %i.p
  %i.et = mul i32 %i.es, %i.am
  %i.eu = mul i32 %i.et, %i.au
  %i.ev = mul i32 %i.eu, %i.bc
  %i.ew = mul i32 %i.ev, %i.eq
  %i.ex = mul i32 %i.ew, %i.er
  %i.ey = udiv i32 %i.em, %i.ex
  br label %.thread

bb.bj:                                            ; preds = %bb.bh
  %i.ez = icmp eq i32 %i.bj, 0
  br i1 %i.ez, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.fa = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 1) ; 2 uses
  %i.fb = mul i32 %i.x, %i.p
  %i.fc = mul i32 %i.fb, %i.ae
  %i.fd = mul i32 %i.fc, %i.am
  %i.fe = mul i32 %i.fd, %i.au
  %i.ff = mul i32 %i.fe, %i.bc
  %i.fg = mul i32 %i.ff, %i.fa
  %i.fh = udiv i32 %i.em, %i.fg
  br label %.thread

bb.bl:                                            ; preds = %bb.bg
  %i.fi = icmp eq i32 %i.bj, 0
  br i1 %i.fi, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fj = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 1) ; 2 uses
  %i.fk = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 1) ; 2 uses
  %i.fl = mul i32 %i.x, %i.p
  %i.fm = mul i32 %i.fl, %i.fj
  %i.fn = mul i32 %i.fm, %i.am
  %i.fo = mul i32 %i.fn, %i.au
  %i.fp = mul i32 %i.fo, %i.bc
  %i.fq = mul i32 %i.fp, %i.fk
  %i.fr = udiv i32 %i.em, %i.fq
  br label %.thread

bb.bn:                                            ; preds = %bb.bl
  %i.fs = icmp eq i32 %i.ae, 0
  br i1 %i.fs, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ft = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 1) ; 2 uses
  %i.fu = mul i32 %i.x, %i.p
  %i.fv = mul i32 %i.fu, %i.am
  %i.fw = mul i32 %i.fv, %i.au
  %i.fx = mul i32 %i.fw, %i.bc
  %i.fy = mul i32 %i.fx, %i.bj
  %i.fz = mul i32 %i.fy, %i.ft
  %i.ga = udiv i32 %i.em, %i.fz
  br label %.thread

bb.bp:                                            ; preds = %bb.bn, %bb.bj
  %i.gb = icmp eq i32 %i.bq, 0
  br i1 %i.gb, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %bb.bp
  %i.gc = mul i32 %i.x, %i.p
  %i.gd = mul i32 %i.gc, %i.ae
  %i.ge = mul i32 %i.gd, %i.am
  %i.gf = mul i32 %i.ge, %i.au
  %i.gg = mul i32 %i.gf, %i.bc
  %i.gh = mul i32 %i.gg, %i.bj
  %i.gi = udiv i32 %i.em, %i.gh
  br label %.thread

.thread:                                          ; preds = %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bp, %bb.bq, %bb.bf
  %.1204 = phi i32 [ %i.ej, %bb.bf ], [ %i.ae, %bb.bq ], [ %i.ae, %bb.bp ], [ %i.ga, %bb.bo ], [ %i.fj, %bb.bm ], [ %i.ae, %bb.bk ], [ %i.ey, %bb.bi ] ; 2 uses
  %.1202 = phi i32 [ %i.ek, %bb.bf ], [ %i.bj, %bb.bq ], [ %i.bj, %bb.bp ], [ %i.bj, %bb.bo ], [ %i.fr, %bb.bm ], [ %i.fh, %bb.bk ], [ %i.eq, %bb.bi ] ; 2 uses
  %.1 = phi i32 [ %i.el, %bb.bf ], [ %i.gi, %bb.bq ], [ %i.bq, %bb.bp ], [ %i.ft, %bb.bo ], [ %i.fk, %bb.bm ], [ %i.fa, %bb.bk ], [ %i.er, %bb.bi ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.bf ], [ %i.em, %bb.bq ], [ %i.em, %bb.bp ], [ %i.em, %bb.bo ], [ %i.em, %bb.bm ], [ %i.em, %bb.bk ], [ %i.em, %bb.bi ]
  %.0.fr = freeze i32 %.0                         ; 2 uses
  %i.gj = mul i32 %i.x, %i.p
  %i.gk = mul i32 %i.gj, %i.am
  %i.gl = mul i32 %i.gk, %i.au
  %i.gm = mul i32 %i.gl, %i.bc
  %i.gn = mul i32 %i.gm, %.1204
  %i.go = mul i32 %i.gn, %.1202
  %i.gp = mul i32 %i.go, %.1                      ; 4 uses
  %.not226 = icmp eq i32 %.0.fr, 0
  %spec.select = select i1 %.not226, i32 %i.gp, i32 %.0.fr ; 4 uses
  %i.gq = select i1 %i.eh, i32 %spec.select, i32 %i.h ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store i32 %i.gq, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %i.p, ptr %i.gs, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.x, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %.1204, ptr %i.gu, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.am, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 %i.au, ptr %i.gw, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.bc, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 %.1202, ptr %i.gy, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %.1, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  store i32 %spec.select, ptr %i.ha, align 4
  %i.hb = load i8, ptr %i.an, align 8, !range !7, !noundef !8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 322
  store i8 %i.hb, ptr %i.hc, align 1
  %.not228 = icmp eq i32 %i.gp, %spec.select
  br i1 %.not228, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.thread
  %i.hd = tail call fastcc ptr @cpu_hierarchy_to_string(ptr noundef nonnull %0) ; 2 uses
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 234, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.7, ptr noundef %i.hd, i32 noundef %spec.select) #8
  tail call void @g_free(ptr noundef %i.hd) #8
  br label %bb.by

bb.bs:                                            ; preds = %.thread
  %i.he = icmp ult i32 %i.gp, %i.gq
  br i1 %i.he, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.hf = tail call fastcc ptr @cpu_hierarchy_to_string(ptr noundef nonnull %0) ; 2 uses
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.8, ptr noundef %i.hf, i32 noundef %i.gp, i32 noundef %i.gq) #8
  tail call void @g_free(ptr noundef %i.hf) #8
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs
  %i.hg = load i32, ptr %i.gr, align 8            ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.hi = load i32, ptr %i.hh, align 4            ; 2 uses
  %i.hj = icmp ult i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.hl = load ptr, ptr %i.hk, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.9, i32 noundef %i.hg, ptr noundef %i.hl, i32 noundef %i.hi) #8
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.hm = load i32, ptr %i.ha, align 4            ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ho = load i32, ptr %i.hn, align 8            ; 2 uses
  %i.hp = icmp ugt i32 %i.hm, %i.ho
  br i1 %i.hp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 259, ptr noundef nonnull @__func__.machine_parse_smp_config, ptr noundef nonnull @.str.10, i32 noundef %i.hm, ptr noundef %i.hr, i32 noundef %i.ho) #8
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bd, %bb.ba, %bb.ax, %bb.au, %bb.ar, %bb.ao
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @cpu_hierarchy_to_string(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #8
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 5 uses
  %i.c = tail call ptr @g_string_new(ptr noundef null) #8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 324
  %i.e = load i8, ptr %i.d, align 1, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.h = load i32, ptr %i.g, align 4
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.18, i32 noundef %i.h) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 323
  %i.j = load i8, ptr %i.i, align 1, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load i32, ptr %i.l, align 8
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.19, i32 noundef %i.m) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.o = load i32, ptr %i.n, align 4
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.20, i32 noundef %i.o) #8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.q = load i8, ptr %i.p, align 1, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.t = load i32, ptr %i.s, align 8
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.21, i32 noundef %i.t) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 321
  %i.v = load i8, ptr %i.u, align 1, !range !7, !noundef !8
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.y = load i32, ptr %i.x, align 4
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.22, i32 noundef %i.y) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 325
  %i.aa = load i8, ptr %i.z, align 1, !range !7, !noundef !8
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ad = load i32, ptr %i.ac, align 8
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.23, i32 noundef %i.ad) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.af = load i32, ptr %i.ae, align 4
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.24, i32 noundef %i.af) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ah = load i32, ptr %i.ag, align 8
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.25, i32 noundef %i.ah) #8
  %i.ai = tail call ptr @g_string_free(ptr noundef %i.c, i32 noundef 0) #8
  ret ptr %i.ai
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @machine_parse_smp_cache(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #8
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 0, ptr %.sroa.0, align 8
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 326 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %.not36 = icmp eq i32 %i.e, 8
  br i1 %.not36, label %.thread39, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03149 = phi ptr [ %i.v, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03149, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %3 = lshr i64 %i.i, 3
  %.sroa.0.0..sroa_stride = and i64 %3, 536870904
  %.sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0.0..sroa_idx, align 8
  %i.j = and i64 %i.i, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.k, %.sroa.0.0..sroa.0.0..sroa.0.0.
  %.not37 = icmp eq i64 %i.l, 0
  br i1 %.not37, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @CacheLevelAndType_lookup, i32 noundef %i.h) #8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 300, ptr noundef nonnull @__func__.machine_parse_smp_cache, ptr noundef nonnull @.str.11, ptr noundef %i.m) #8
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 348
  store i32 %i.o, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = load i32, ptr %i.r, align 4
  %4 = zext i32 %i.s to i64                       ; 2 uses
  %5 = and i64 %4, 63
  %i.t = shl nuw i64 1, %5
  %6 = lshr i64 %4, 3
  %.sroa.0.0..sroa_stride39 = and i64 %6, 536870904 ; 2 uses
  %.sroa.0.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride39
  %.sroa.0.0..sroa.0.0..sroa.0.0.42 = load i64, ptr %.sroa.0.0..sroa_idx87, align 8
  %i.u = or i64 %i.t, %.sroa.0.0..sroa.0.0..sroa.0.0.42
  %.sroa.0.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride39
  store i64 %i.u, ptr %.sroa.0.0..sroa_idx90, align 8
  %i.v = load ptr, ptr %.03149, align 8           ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !9

.thread39:                                        ; preds = %.preheader
  %i.w = tail call ptr @object_get_class(ptr noundef nonnull %0) #8
  %i.x = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.w, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.ag, %bb.x, %bb.o, %bb.d
  %.lcssa = phi i32 [ %i.z, %bb.d ], [ %i.bc, %bb.o ], [ %i.ce, %bb.x ], [ %i.dg, %bb.ag ]
  %i.ae = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @CacheLevelAndType_lookup, i32 noundef %.lcssa) #8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 320, ptr noundef nonnull @__func__.machine_parse_smp_cache, ptr noundef nonnull @.str.12, ptr noundef %i.ae) #8
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.af = icmp eq i32 %i.e, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.ah, %bb.y, %bb.p, %bb.f
  %i.ag = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @CpuTopologyLevel_lookup, i32 noundef 0) #8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.machine_parse_smp_cache, ptr noundef nonnull @.str.13, ptr noundef %i.ag) #8
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call ptr @object_get_class(ptr noundef nonnull %0) #8
  %i.ai = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ah, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 5 uses
  switch i32 %i.e, label %bb.n [
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 325
  %i.ak = load i8, ptr %i.aj, align 1, !range !7, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.n, label %machine_check_topo_support.exit

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 321
  %i.an = load i8, ptr %i.am, align 1, !range !7, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %machine_check_topo_support.exit

bb.k:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  %i.aq = load i8, ptr %i.ap, align 1, !range !7, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %machine_check_topo_support.exit

bb.l:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 323
  %i.at = load i8, ptr %i.as, align 1, !range !7, !noundef !8
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.n, label %machine_check_topo_support.exit

bb.m:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 324
  %i.aw = load i8, ptr %i.av, align 1, !range !7, !noundef !8
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %machine_check_topo_support.exit

machine_check_topo_support.exit:                  ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.lcssa55 = phi i32 [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 7, %bb.r ], [ 6, %bb.s ], [ 4, %bb.t ], [ 3, %bb.u ], [ 2, %bb.v ], [ 7, %bb.aa ], [ 6, %bb.ab ], [ 4, %bb.ac ], [ 3, %bb.ad ], [ 2, %bb.ae ], [ 7, %bb.aj ], [ 6, %bb.ak ], [ 4, %bb.al ], [ 3, %bb.am ], [ 2, %bb.an ]
  %i.ay = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @CpuTopologyLevel_lookup, i32 noundef range(i32 1, 0) %.lcssa55) #8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @__func__.machine_check_topo_support, ptr noundef nonnull @.str.26, ptr noundef %i.ay) #8
  br label %.critedge

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.i, %bb.j, %bb.m, %bb.l, %.thread39
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ba = load i32, ptr %i.az, align 4            ; 3 uses
  %.not36.1 = icmp eq i32 %i.ba, 8
  br i1 %.not36.1, label %.thread39.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !range !7, !noundef !8
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %bb.e

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp eq i32 %i.ba, 0
  br i1 %i.bh, label %bb.g, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = tail call ptr @object_get_class(ptr noundef nonnull %0) #8
  %i.bj = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.bi, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 5 uses
  switch i32 %i.ba, label %bb.w [
    i32 2, label %bb.v
    i32 3, label %bb.u
    i32 4, label %bb.t
    i32 6, label %bb.s
    i32 7, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 324
  %i.bl = load i8, ptr %i.bk, align 1, !range !7, !noundef !8
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.w, label %machine_check_topo_support.exit

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 323
  %i.bo = load i8, ptr %i.bn, align 1, !range !7, !noundef !8
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.w, label %machine_check_topo_support.exit

bb.t:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 320
  %i.br = load i8, ptr %i.bq, align 1, !range !7, !noundef !8
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.w, label %machine_check_topo_support.exit

bb.u:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 321
  %i.bu = load i8, ptr %i.bt, align 1, !range !7, !noundef !8
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.w, label %machine_check_topo_support.exit

bb.v:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 325
  %i.bx = load i8, ptr %i.bw, align 1, !range !7, !noundef !8
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.w, label %machine_check_topo_support.exit

.thread39.1:                                      ; preds = %bb.n
  %i.bz = tail call ptr @object_get_class(ptr noundef nonnull %0) #8
  %i.ca = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.bz, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.thread39.1, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.cc = load i32, ptr %i.cb, align 4            ; 3 uses
  %.not36.2 = icmp eq i32 %i.cc, 8
  br i1 %.not36.2, label %.thread39.2, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !7, !noundef !8
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.y, label %bb.e

bb.y:                                             ; preds = %bb.x
  %i.cj = icmp eq i32 %i.cc, 0
  br i1 %i.cj, label %bb.g, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = tail call ptr @object_get_class(ptr noundef nonnull %0) #8
  %i.cl = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ck, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 5 uses
  switch i32 %i.cc, label %bb.af [
    i32 2, label %bb.ae
    i32 3, label %bb.ad
    i32 4, label %bb.ac
    i32 6, label %bb.ab
    i32 7, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 324
  %i.cn = load i8, ptr %i.cm, align 1, !range !7, !noundef !8
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.af, label %machine_check_topo_support.exit

bb.ab:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 323
  %i.cq = load i8, ptr %i.cp, align 1, !range !7, !noundef !8
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.af, label %machine_check_topo_support.exit

bb.ac:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 320
  %i.ct = load i8, ptr %i.cs, align 1, !range !7, !noundef !8
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.af, label %machine_check_topo_support.exit

bb.ad:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 321
  %i.cw = load i8, ptr %i.cv, align 1, !range !7, !noundef !8
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.af, label %machine_check_topo_support.exit

bb.ae:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 325
  %i.cz = load i8, ptr %i.cy, align 1, !range !7, !noundef !8
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.af, label %machine_check_topo_support.exit

.thread39.2:                                      ; preds = %bb.w
  %i.db = tail call ptr @object_get_class(ptr noundef nonnull %0) #8
  %i.dc = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.db, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.thread39.2, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.de = load i32, ptr %i.dd, align 4            ; 3 uses
  %.not36.3 = icmp eq i32 %i.de, 8
  br i1 %.not36.3, label %.thread39.3, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dg = load i32, ptr %i.df, align 4            ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !range !7, !noundef !8
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ah, label %bb.e

bb.ah:                                            ; preds = %bb.ag
  %i.dl = icmp eq i32 %i.de, 0
  br i1 %i.dl, label %bb.g, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = tail call ptr @object_get_class(ptr noundef nonnull %0) #8
  %i.dn = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.dm, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 5 uses
  switch i32 %i.de, label %.critedge38 [
    i32 2, label %bb.an
    i32 3, label %bb.am
    i32 4, label %bb.al
    i32 6, label %bb.ak
    i32 7, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 324
  %i.dp = load i8, ptr %i.do, align 1, !range !7, !noundef !8
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.critedge38, label %machine_check_topo_support.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 323
  %i.ds = load i8, ptr %i.dr, align 1, !range !7, !noundef !8
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.critedge38, label %machine_check_topo_support.exit

bb.al:                                            ; preds = %bb.ai
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 320
  %i.dv = load i8, ptr %i.du, align 1, !range !7, !noundef !8
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %.critedge38, label %machine_check_topo_support.exit

bb.am:                                            ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 321
  %i.dy = load i8, ptr %i.dx, align 1, !range !7, !noundef !8
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %.critedge38, label %machine_check_topo_support.exit

bb.an:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 325
  %i.eb = load i8, ptr %i.ea, align 1, !range !7, !noundef !8
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.critedge38, label %machine_check_topo_support.exit

.thread39.3:                                      ; preds = %bb.af
  %i.ed = tail call ptr @object_get_class(ptr noundef nonnull %0) #8
  %i.ee = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ed, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #8 ; 0 uses
  br label %.critedge38

.critedge38:                                      ; preds = %.thread39.3, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 330
  store i8 1, ptr %i.ef, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.g, %machine_check_topo_support.exit, %.critedge38, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ true, %.critedge38 ], [ false, %machine_check_topo_support.exit ], [ false, %bb.g ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 %.3
}

declare ptr @qapi_enum_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @machine_set_cache_topo_level(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  store i32 %2, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @machine_topo_get_cores_per_socket(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load i32, ptr %i.c, align 8
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.g = load i32, ptr %i.f, align 4
  %i.h = mul i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = load i32, ptr %i.i, align 8
  %i.k = mul i32 %i.h, %i.j
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @machine_topo_get_threads_per_socket(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = load i32, ptr %i.i, align 8
  %i.k = mul i32 %i.d, %i.b
  %i.l = mul i32 %i.k, %i.f
  %i.m = mul i32 %i.l, %i.h
  %i.n = mul i32 %i.m, %i.j
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @machine_get_cache_topo_level(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  %i.d = load i32, ptr %i.c, align 4
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @machine_check_smp_cache(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.b, 8
  br i1 %.not.i, label %bb.b, label %smp_cache_topo_cmp.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, i32 noundef 374, ptr noundef nonnull @__PRETTY_FUNCTION__.smp_cache_topo_cmp) #9
  unreachable

smp_cache_topo_cmp.exit:                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %smp_cache_topo_cmp.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i6 = icmp eq i32 %i.g, 8
  br i1 %.not.i6, label %bb.d, label %smp_cache_topo_cmp.exit7

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, i32 noundef 374, ptr noundef nonnull @__PRETTY_FUNCTION__.smp_cache_topo_cmp) #9
  unreachable

smp_cache_topo_cmp.exit7:                         ; preds = %bb.c
  %i.h = icmp ugt i32 %i.g, %i.d
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %smp_cache_topo_cmp.exit7, %smp_cache_topo_cmp.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 395, ptr noundef nonnull @__func__.machine_check_smp_cache, ptr noundef nonnull @.str.14) #8
  br label %bb.i

bb.f:                                             ; preds = %smp_cache_topo_cmp.exit7
  %.not.i8 = icmp eq i32 %i.d, 8
  br i1 %.not.i8, label %bb.g, label %smp_cache_topo_cmp.exit9

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, i32 noundef 374, ptr noundef nonnull @__PRETTY_FUNCTION__.smp_cache_topo_cmp) #9
  unreachable

smp_cache_topo_cmp.exit9:                         ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp ugt i32 %i.d, %i.j
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %smp_cache_topo_cmp.exit9
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @__func__.machine_check_smp_cache, ptr noundef nonnull @.str.15) #8
  br label %bb.i

bb.i:                                             ; preds = %smp_cache_topo_cmp.exit9, %bb.h, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.h ], [ true, %smp_cache_topo_cmp.exit9 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @machine_find_lowest_level_cache_at_topo_level(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.015.lcssa.wide = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ]
  store i32 %.015.lcssa.wide, ptr %1, align 4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, %2
  br i1 %i.f, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, %2
  br i1 %i.i, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.b
  %i.m = phi i1 [ true, %bb.b ], [ false, %bb.e ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @machine_defines_cache_at_topo_level(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, %1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, %1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.c ], [ true, %bb.a ], [ true, %bb.b ], [ %i.l, %bb.d ]
  ret i1 %.lcssa
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #2

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #2

declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
