Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CPUInfo?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.OpenColorIO_v2_5::CPUInfo" = type <{ i32, i32, i32, [65 x i8], [13 x i8], [2 x i8] }>

@.str = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GenuineIntel\00", align 1
@_ZZN16OpenColorIO_v2_57CPUInfo8instanceEvE9singleton = internal global %"struct.OpenColorIO_v2_5::CPUInfo" zeroinitializer, align 4
@_ZGVZN16OpenColorIO_v2_57CPUInfo8instanceEvE9singleton = internal global i64 0, align 8

@_ZN16OpenColorIO_v2_57CPUInfoC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_57CPUInfoC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_57CPUInfoC2Ev(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(90) initializes((0, 90)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(90) %0, i8 0, i64 90, i1 false)
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "mov    %rbx, %rsi \0A\09cpuid               \0A\09xchg   %rbx, %rsi", "={ax},={si},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #4, !srcloc !8 ; 4 uses
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 0 ; 2 uses
  %i.f = extractvalue { i32, i32, i32, i32 } %i.d, 1
  %i.g = extractvalue { i32, i32, i32, i32 } %i.d, 2
  %i.h = extractvalue { i32, i32, i32, i32 } %i.d, 3
  store i32 %i.f, ptr %i.c, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i32 %i.h, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 85
  store i32 %i.g, ptr %i.j, align 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call { i32, i32, i32, i32 } asm sideeffect "mov    %rbx, %rsi \0A\09cpuid               \0A\09xchg   %rbx, %rsi", "={ax},={si},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #4, !srcloc !8 ; 3 uses
  %i.l = extractvalue { i32, i32, i32, i32 } %i.k, 0 ; 4 uses
  %i.m = extractvalue { i32, i32, i32, i32 } %i.k, 2 ; 6 uses
  %i.n = extractvalue { i32, i32, i32, i32 } %i.k, 3
  %i.o = lshr i32 %i.l, 8
  %i.p = and i32 %i.o, 15
  %i.q = lshr i32 %i.l, 20
  %i.r = and i32 %i.q, 255
  %i.s = add nuw nsw i32 %i.p, %i.r
  store i32 %i.s, ptr %i.a, align 4, !tbaa !10
  %i.t = lshr i32 %i.l, 4
  %i.u = and i32 %i.t, 15
  %i.v = lshr i32 %i.l, 12
  %i.w = and i32 %i.v, 240
  %i.x = or disjoint i32 %i.u, %i.w
  store i32 %i.x, ptr %i.b, align 4, !tbaa !11
  %i.y = and i32 %i.n, 67108864
  %.not12 = icmp eq i32 %i.y, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i32, ptr %0, align 4, !tbaa !12
  %i.aa = or i32 %i.z, 1
  store i32 %i.aa, ptr %0, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %1 = and i32 %i.m, 1
  %.not13 = icmp eq i32 %1, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %0, align 4, !tbaa !12
  %i.ac = or i32 %i.ab, 4
  store i32 %i.ac, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = and i32 %i.m, 512
  %.not14 = icmp eq i32 %i.ad, 0
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %0, align 4, !tbaa !12
  %i.af = or i32 %i.ae, 16
  store i32 %i.af, ptr %0, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = and i32 %i.m, 524288
  %.not15 = icmp eq i32 %i.ag, 0
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %0, align 4, !tbaa !12
  %i.ai = or i32 %i.ah, 64
  store i32 %i.ai, ptr %0, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = and i32 %i.m, 1048576
  %.not16 = icmp eq i32 %i.aj, 0
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i32, ptr %0, align 4, !tbaa !12
  %i.al = or i32 %i.ak, 128
  store i32 %i.al, ptr %0, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = and i32 %i.m, 402653184
  %i.an = icmp eq i32 %i.am, 402653184
  br i1 %i.an, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call { i32, i32 } asm sideeffect ".byte 0x0f, 0x01, 0xd0", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #4, !srcloc !13 ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { i32, i32 } %i.ao, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 32
  %i.at = zext i32 %i.ap to i64
  %i.au = or disjoint i64 %i.as, %i.at            ; 3 uses
  %i.av = and i32 %i.ap, 6
  %i.aw = icmp eq i32 %i.av, 6
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ax = load i32, ptr %0, align 4, !tbaa !12    ; 2 uses
  %i.ay = or i32 %i.ax, 256
  store i32 %i.ay, ptr %0, align 4, !tbaa !12
  %i.az = and i32 %i.m, 536870912
  %.not17 = icmp eq i32 %i.az, 0
  br i1 %.not17, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = or i32 %i.ax, 8448
  store i32 %i.ba, ptr %0, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o, %bb.m
  %.09 = phi i64 [ %i.au, %bb.o ], [ %i.au, %bb.n ], [ %i.au, %bb.m ], [ 0, %bb.l ]
  %i.bb = icmp ugt i32 %i.e, 6
  br i1 %i.bb, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bc = tail call { i32, i32, i32, i32 } asm sideeffect "mov    %rbx, %rsi \0A\09cpuid               \0A\09xchg   %rbx, %rsi", "={ax},={si},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #4, !srcloc !8
  %i.bd = extractvalue { i32, i32, i32, i32 } %i.bc, 1 ; 2 uses
  %i.be = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.bf = and i32 %i.be, 256
  %.not18 = icmp eq i32 %i.bf, 0
  %i.bg = and i32 %i.bd, 32
  %.not19 = icmp eq i32 %i.bg, 0
  %or.cond52 = select i1 %.not18, i1 true, i1 %.not19
  br i1 %or.cond52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = or i32 %i.be, 1024                      ; 2 uses
  store i32 %i.bh, ptr %0, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = phi i32 [ %i.bh, %bb.r ], [ %i.be, %bb.q ] ; 2 uses
  %i.bj = and i64 %.09, 224
  %i.bk = icmp eq i64 %i.bj, 224
  br i1 %i.bk, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bl = and i32 %i.bi, 1024
  %.not20 = icmp ne i32 %i.bl, 0
  %i.bm = and i32 %i.bd, -805109760
  %i.bn = icmp eq i32 %i.bm, -805109760
  %or.cond54 = select i1 %.not20, i1 %i.bn, i1 false
  br i1 %or.cond54, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bo = or i32 %i.bi, 4096
  store i32 %i.bo, ptr %0, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.s, %bb.u, %bb.t, %bb.p
  %i.bp = tail call { i32, i32, i32, i32 } asm sideeffect "mov    %rbx, %rsi \0A\09cpuid               \0A\09xchg   %rbx, %rsi", "={ax},={si},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483648, i32 0) #4, !srcloc !8
  %i.bq = extractvalue { i32, i32, i32, i32 } %i.bp, 0
  %i.br = icmp ugt i32 %i.bq, -2147483648
  br i1 %i.br, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %.thread
  %i.bs = tail call { i32, i32, i32, i32 } asm sideeffect "mov    %rbx, %rsi \0A\09cpuid               \0A\09xchg   %rbx, %rsi", "={ax},={si},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483647, i32 0) #4, !srcloc !8
  %i.bt = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(13) @.str, i64 noundef 12) #5
  %.not21 = icmp eq i32 %i.bt, 0
  br i1 %.not21, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.bu = extractvalue { i32, i32, i32, i32 } %i.bs, 2
  %i.bv = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %.not22 = trunc i32 %i.bv to i1
  %i.bw = and i32 %i.bu, 64
  %.not23 = icmp eq i32 %i.bw, 0
  %or.cond55 = select i1 %.not22, i1 %.not23, i1 false
  br i1 %or.cond55, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bx = or i32 %i.bv, 2                         ; 2 uses
  store i32 %i.bx, ptr %0, align 4, !tbaa !12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.by = phi i32 [ %i.bx, %bb.x ], [ %i.bv, %bb.w ] ; 4 uses
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !10  ; 2 uses
  %.off = add i32 %i.bz, -21
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ca = and i32 %i.by, 256
  %.not24 = icmp eq i32 %i.ca, 0
  br i1 %.not24, label %.thread46, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = or i32 %i.by, 512                       ; 2 uses
  store i32 %i.cb, ptr %0, align 4, !tbaa !12
  br label %.thread46

bb.ab:                                            ; preds = %bb.y
  %i.cc = icmp slt i32 %i.bz, 26
  br i1 %i.cc, label %.thread46, label %bb.ad

.thread46:                                        ; preds = %bb.z, %bb.aa, %bb.ab
  %i.cd = phi i32 [ %i.by, %bb.z ], [ %i.cb, %bb.aa ], [ %i.by, %bb.ab ] ; 2 uses
  %i.ce = and i32 %i.cd, 1024
  %.not25 = icmp eq i32 %i.ce, 0
  br i1 %.not25, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread46
  %i.cf = or i32 %i.cd, 2048
  store i32 %i.cf, ptr %0, align 4, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.v, %bb.ac, %.thread46, %bb.ab, %.thread
  %i.cg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(13) @.str.1, i64 noundef 12) #5
  %.not26 = icmp eq i32 %i.cg, 0
  br i1 %.not26, label %bb.ae, label %.thread51.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !10
  %.not64 = icmp eq i32 %i.ch, 6
  br i1 %.not64, label %bb.af, label %.thread51.thread

bb.af:                                            ; preds = %bb.ae
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !11  ; 2 uses
  %.pre = load i32, ptr %0, align 4, !tbaa !12    ; 4 uses
  switch i32 %i.ci, label %._crit_edge [
    i32 9, label %._crit_edgecondstore.split
    i32 13, label %._crit_edgecondstore.split
    i32 14, label %._crit_edgecondstore.split
  ]

._crit_edgecondstore.split:                       ; preds = %bb.af, %bb.af, %bb.af
  %2 = shl i32 %.pre, 1
  %i.cj = and i32 %2, 10
  %.ph = or i32 %i.cj, %.pre                      ; 3 uses
  %3 = and i32 %.pre, 5
  %.not65 = icmp eq i32 %3, 0
  br i1 %.not65, label %._crit_edge, label %bb.ag

bb.ag:                                            ; preds = %._crit_edgecondstore.split
  store i32 %.ph, ptr %0, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ag, %._crit_edgecondstore.split, %bb.af
  %i.ck = phi i32 [ %.pre, %bb.af ], [ %.ph, %._crit_edgecondstore.split ], [ %.ph, %bb.ag ] ; 3 uses
  %i.cl = and i32 %i.ck, 80
  %or.cond.not = icmp eq i32 %i.cl, 16
  %i.cm = icmp slt i32 %i.ci, 23
  %or.cond = and i1 %or.cond.not, %i.cm
  br i1 %or.cond, label %bb.ah, label %.thread51

bb.ah:                                            ; preds = %._crit_edge
  %i.cn = or i32 %i.ck, 32                        ; 2 uses
  store i32 %i.cn, ptr %0, align 4, !tbaa !12
  br label %.thread51

.thread51:                                        ; preds = %._crit_edge, %bb.ah
  %i.co = phi i32 [ %i.cn, %bb.ah ], [ %i.ck, %._crit_edge ] ; 2 uses
  %i.cp = and i32 %i.co, 1024
  %.not31 = icmp eq i32 %i.cp, 0
  br i1 %.not31, label %.thread51.thread, label %bb.ai

bb.ai:                                            ; preds = %.thread51
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !11
  %i.cr = icmp slt i32 %i.cq, 70
  br i1 %i.cr, label %bb.aj, label %.thread51.thread

bb.aj:                                            ; preds = %bb.ai
  %i.cs = or i32 %i.co, 2048
  store i32 %i.cs, ptr %0, align 4, !tbaa !12
  br label %.thread51.thread

.thread51.thread:                                 ; preds = %bb.ae, %.thread51, %bb.ai, %bb.aj, %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = tail call { i32, i32, i32, i32 } asm sideeffect "mov    %rbx, %rsi \0A\09cpuid               \0A\09xchg   %rbx, %rsi", "={ax},={si},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483646, i32 0) #4, !srcloc !8 ; 4 uses
  %i.cy = extractvalue { i32, i32, i32, i32 } %i.cx, 0
  %i.cz = extractvalue { i32, i32, i32, i32 } %i.cx, 1
  %i.da = extractvalue { i32, i32, i32, i32 } %i.cx, 2
  %i.db = extractvalue { i32, i32, i32, i32 } %i.cx, 3
  store i32 %i.cy, ptr %i.ct, align 4, !tbaa !14
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !14
  store i32 %i.da, ptr %i.cv, align 4, !tbaa !14
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = tail call { i32, i32, i32, i32 } asm sideeffect "mov    %rbx, %rsi \0A\09cpuid               \0A\09xchg   %rbx, %rsi", "={ax},={si},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483645, i32 0) #4, !srcloc !8 ; 4 uses
  %i.dh = extractvalue { i32, i32, i32, i32 } %i.dg, 0
  %i.di = extractvalue { i32, i32, i32, i32 } %i.dg, 1
  %i.dj = extractvalue { i32, i32, i32, i32 } %i.dg, 2
  %i.dk = extractvalue { i32, i32, i32, i32 } %i.dg, 3
  store i32 %i.dh, ptr %i.dc, align 4, !tbaa !14
  store i32 %i.di, ptr %i.dd, align 4, !tbaa !14
  store i32 %i.dj, ptr %i.de, align 4, !tbaa !14
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = tail call { i32, i32, i32, i32 } asm sideeffect "mov    %rbx, %rsi \0A\09cpuid               \0A\09xchg   %rbx, %rsi", "={ax},={si},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 -2147483644, i32 0) #4, !srcloc !8 ; 4 uses
  %i.dq = extractvalue { i32, i32, i32, i32 } %i.dp, 0
  %i.dr = extractvalue { i32, i32, i32, i32 } %i.dp, 1
  %i.ds = extractvalue { i32, i32, i32, i32 } %i.dp, 2
  %i.dt = extractvalue { i32, i32, i32, i32 } %i.dp, 3
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !14
  store i32 %i.dr, ptr %i.dm, align 4, !tbaa !14
  store i32 %i.ds, ptr %i.dn, align 4, !tbaa !14
  store i32 %i.dt, ptr %i.do, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN16OpenColorIO_v2_57CPUInfo8instanceEvE9singleton acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN16OpenColorIO_v2_57CPUInfo8instanceEvE9singleton) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN16OpenColorIO_v2_57CPUInfoC2Ev(ptr noundef nonnull align 4 dereferenceable(90) @_ZZN16OpenColorIO_v2_57CPUInfo8instanceEvE9singleton)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN16OpenColorIO_v2_57CPUInfo8instanceEvE9singleton) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN16OpenColorIO_v2_57CPUInfo8instanceEvE9singleton
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{i64 1240, i64 1263, i64 1298}
!9 = !{!"_ZTSN16OpenColorIO_v2_57CPUInfoE", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !4, i64 77}
!10 = !{!9, !5, i64 4}
!11 = !{!9, !5, i64 8}
!12 = !{!9, !5, i64 0}
!13 = !{i64 743}
!14 = !{!5, !5, i64 0}
!15 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
