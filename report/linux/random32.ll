Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/random32?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_prandom_u32_state: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad prandom_u32_state ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_prandom_bytes_state: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad prandom_bytes_state ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_prandom_seed_full_state: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad prandom_seed_full_state ; .previous"

%struct.cpumask = type { [1 x i64] }

@__UNIQUE_ID_addressable_prandom_u32_state_209 = internal global ptr @prandom_u32_state, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_prandom_bytes_state_210 = internal global ptr @prandom_bytes_state, section ".discard.addressable", align 8
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [64 x i64], align 16
@__UNIQUE_ID_addressable_prandom_seed_full_state_211 = internal global ptr @prandom_seed_full_state, section ".discard.addressable", align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_addressable_prandom_bytes_state_210, ptr @__UNIQUE_ID_addressable_prandom_seed_full_state_211, ptr @__UNIQUE_ID_addressable_prandom_u32_state_209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local i32 @prandom_u32_state(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = shl i32 %i.a, 18
  %i.c = and i32 %i.b, -524288
  %i.d = shl i32 %i.a, 6
  %i.e = xor i32 %i.d, %i.a
  %i.f = lshr i32 %i.e, 13
  %i.g = or disjoint i32 %i.f, %i.c               ; 2 uses
  store i32 %i.g, ptr %0, align 4
  %i.h = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = shl i32 %i.i, 2                          ; 2 uses
  %i.k = and i32 %i.j, -32
  %i.l = xor i32 %i.j, %i.i
  %i.m = lshr i32 %i.l, 27
  %i.n = or disjoint i32 %i.m, %i.k               ; 2 uses
  store i32 %i.n, ptr %i.h, align 4
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = shl i32 %i.p, 7
  %i.r = and i32 %i.q, -2048
  %i.s = shl i32 %i.p, 13
  %i.t = xor i32 %i.s, %i.p
  %i.u = lshr i32 %i.t, 21
  %i.v = or disjoint i32 %i.u, %i.r               ; 2 uses
  store i32 %i.v, ptr %i.o, align 4
  %i.w = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = shl i32 %i.x, 13
  %i.z = and i32 %i.y, -1048576
  %i.aa = shl i32 %i.x, 3
  %i.ab = xor i32 %i.aa, %i.x
  %i.ac = lshr i32 %i.ab, 12
  %i.ad = or disjoint i32 %i.ac, %i.z             ; 2 uses
  store i32 %i.ad, ptr %i.w, align 4
  %i.ae = xor i32 %i.n, %i.g
  %i.af = xor i32 %i.ae, %i.v
  %i.ag = xor i32 %i.af, %i.ad
  ret i32 %i.ag
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local void @prandom_bytes_state(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 12         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01217 = phi i64 [ %2, %.lr.ph ], [ %i.aj, %bb.b ]
  %.01316 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %bb.b ] ; 2 uses
  %i.e = load i32, ptr %0, align 4                ; 3 uses
  %i.f = shl i32 %i.e, 18
  %i.g = and i32 %i.f, -524288
  %i.h = shl i32 %i.e, 6
  %i.i = xor i32 %i.h, %i.e
  %i.j = lshr i32 %i.i, 13
  %i.k = or disjoint i32 %i.j, %i.g               ; 2 uses
  store i32 %i.k, ptr %0, align 4
  %i.l = load i32, ptr %i.b, align 4              ; 2 uses
  %i.m = shl i32 %i.l, 2                          ; 2 uses
  %i.n = and i32 %i.m, -32
  %i.o = xor i32 %i.m, %i.l
  %i.p = lshr i32 %i.o, 27
  %i.q = or disjoint i32 %i.p, %i.n               ; 2 uses
  store i32 %i.q, ptr %i.b, align 4
  %i.r = load i32, ptr %i.c, align 4              ; 3 uses
  %i.s = shl i32 %i.r, 7
  %i.t = and i32 %i.s, -2048
  %i.u = shl i32 %i.r, 13
  %i.v = xor i32 %i.u, %i.r
  %i.w = lshr i32 %i.v, 21
  %i.x = or disjoint i32 %i.w, %i.t               ; 2 uses
  store i32 %i.x, ptr %i.c, align 4
  %i.y = load i32, ptr %i.d, align 4              ; 3 uses
  %i.z = shl i32 %i.y, 13
  %i.aa = and i32 %i.z, -1048576
  %i.ab = shl i32 %i.y, 3
  %i.ac = xor i32 %i.ab, %i.y
  %i.ad = lshr i32 %i.ac, 12
  %i.ae = or disjoint i32 %i.ad, %i.aa            ; 2 uses
  store i32 %i.ae, ptr %i.d, align 4
  %i.af = xor i32 %i.q, %i.k
  %i.ag = xor i32 %i.af, %i.x
  %i.ah = xor i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %.01316, align 1
  %i.ai = getelementptr i8, ptr %.01316, i64 4    ; 2 uses
  %i.aj = add i64 %.01217, -4                     ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 3
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.013.lcssa = phi ptr [ %1, %bb.a ], [ %i.ai, %bb.b ] ; 3 uses
  %.012.lcssa = phi i64 [ %2, %bb.a ], [ %i.aj, %bb.b ] ; 3 uses
  %.not = icmp eq i64 %.012.lcssa, 0
  br i1 %.not, label %.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %._crit_edge
  %i.al = load i32, ptr %0, align 4               ; 3 uses
  %i.am = shl i32 %i.al, 18
  %i.an = and i32 %i.am, -524288
  %i.ao = shl i32 %i.al, 6
  %i.ap = xor i32 %i.ao, %i.al
  %i.aq = lshr i32 %i.ap, 13
  %i.ar = or disjoint i32 %i.aq, %i.an            ; 2 uses
  store i32 %i.ar, ptr %0, align 4
  %i.as = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = shl i32 %i.at, 2                        ; 2 uses
  %i.av = and i32 %i.au, -32
  %i.aw = xor i32 %i.au, %i.at
  %i.ax = lshr i32 %i.aw, 27
  %i.ay = or disjoint i32 %i.ax, %i.av            ; 2 uses
  store i32 %i.ay, ptr %i.as, align 4
  %i.az = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4            ; 3 uses
  %i.bb = shl i32 %i.ba, 7
  %i.bc = and i32 %i.bb, -2048
  %i.bd = shl i32 %i.ba, 13
  %i.be = xor i32 %i.bd, %i.ba
  %i.bf = lshr i32 %i.be, 21
  %i.bg = or disjoint i32 %i.bf, %i.bc            ; 2 uses
  store i32 %i.bg, ptr %i.az, align 4
  %i.bh = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4            ; 3 uses
  %i.bj = shl i32 %i.bi, 13
  %i.bk = and i32 %i.bj, -1048576
  %i.bl = shl i32 %i.bi, 3
  %i.bm = xor i32 %i.bl, %i.bi
  %i.bn = lshr i32 %i.bm, 12
  %i.bo = or disjoint i32 %i.bn, %i.bk            ; 2 uses
  store i32 %i.bo, ptr %i.bh, align 4
  %i.bp = xor i32 %i.ay, %i.ar
  %i.bq = xor i32 %i.bp, %i.bg
  %i.br = xor i32 %i.bq, %i.bo                    ; 3 uses
  %3 = trunc i32 %i.br to i8
  store i8 %3, ptr %.013.lcssa, align 1
  %.not15 = icmp eq i64 %.012.lcssa, 1
  br i1 %.not15, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.prol.preheader
  %4 = lshr i32 %i.br, 8
  %5 = getelementptr i8, ptr %.013.lcssa, i64 1
  %i.bs = trunc i32 %4 to i8
  store i8 %i.bs, ptr %5, align 1
  %prol.iter.cmp.not = icmp eq i64 %.012.lcssa, 2
  br i1 %prol.iter.cmp.not, label %.loopexit, label %.new

.new:                                             ; preds = %bb.c
  %i.bt = lshr i32 %i.br, 16
  %i.bu = getelementptr i8, ptr %.013.lcssa, i64 2
  %i.bv = trunc i32 %i.bt to i8
  store i8 %i.bv, ptr %i.bu, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.prol.preheader, %bb.c, %.new, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @prandom_seed_full_state(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.f = phi i64 [ 0, %bb.a ], [ %i.jh, %bb.c ]
  %i.g = load i64, ptr @__cpu_possible_mask, align 8
  %i.h = shl nsw i64 -1, %i.f
  %i.i = and i64 %i.g, %i.h                       ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.b
  %i.j = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.i) #6, !srcloc !13 ; 3 uses
  %i.k = and i64 %i.j, 4294967232
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %find_next_bit.exit.thread

bb.c:                                             ; preds = %find_next_bit.exit
  %i.m = and i64 %i.j, 63
  %i.n = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, %i.b
  %i.q = inttoptr i64 %i.p to ptr                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !14
  call void @get_random_bytes(ptr noundef nonnull %i.a, i64 noundef 16) #8
  %i.r = load i32, ptr %i.a, align 16             ; 2 uses
  %i.s = icmp ult i32 %i.r, 2
  %i.t = select i1 %i.s, i32 2, i32 0
  %i.u = add i32 %i.t, %i.r                       ; 4 uses
  store i32 %i.u, ptr %i.q, align 4
  %i.v = load i32, ptr %i.c, align 4              ; 2 uses
  %i.w = icmp ult i32 %i.v, 8
  %i.x = select i1 %i.w, i32 8, i32 0
  %i.y = add i32 %i.x, %i.v                       ; 3 uses
  %i.z = getelementptr i8, ptr %i.q, i64 4        ; 2 uses
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 16
  %i.ac = select i1 %i.ab, i32 16, i32 0
  %i.ad = add i32 %i.ac, %i.aa                    ; 4 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ag = icmp ult i32 %i.af, 128
  %i.ah = select i1 %i.ag, i32 128, i32 0
  %i.ai = add i32 %i.ah, %i.af                    ; 3 uses
  %i.aj = getelementptr i8, ptr %i.q, i64 12
  %i.ak = shl i32 %i.u, 18
  %i.al = and i32 %i.ak, -524288
  %i.am = shl i32 %i.u, 6
  %i.an = xor i32 %i.am, %i.u
  %i.ao = lshr i32 %i.an, 13                      ; 2 uses
  %i.ap = or disjoint i32 %i.ao, %i.al            ; 2 uses
  %i.aq = shl i32 %i.y, 2                         ; 3 uses
  %i.ar = and i32 %i.aq, 1073741792
  %i.as = xor i32 %i.aq, %i.y
  %i.at = lshr i32 %i.as, 27
  %i.au = or disjoint i32 %i.at, %i.ar
  %i.av = shl i32 %i.ad, 7                        ; 2 uses
  %i.aw = and i32 %i.av, -2048
  %i.ax = shl i32 %i.ad, 13
  %i.ay = xor i32 %i.ax, %i.ad
  %i.az = lshr i32 %i.ay, 21
  %i.ba = or disjoint i32 %i.az, %i.aw            ; 2 uses
  %i.bb = shl i32 %i.ai, 13
  %i.bc = and i32 %i.bb, -1048576
  %i.bd = shl i32 %i.ai, 3
  %i.be = xor i32 %i.bd, %i.ai
  %i.bf = lshr i32 %i.be, 12                      ; 2 uses
  %i.bg = or disjoint i32 %i.bf, %i.bc            ; 2 uses
  %i.bh = shl i32 %i.ao, 18
  %i.bi = and i32 %i.bh, -524288
  %i.bj = shl i32 %i.ap, 6
  %i.bk = xor i32 %i.bj, %i.ap
  %i.bl = lshr i32 %i.bk, 13                      ; 2 uses
  %i.bm = or disjoint i32 %i.bl, %i.bi            ; 2 uses
  %i.bn = shl nuw i32 %i.au, 2                    ; 3 uses
  %i.bo = and i32 %i.bn, 1073741792
  %i.bp = xor i32 %i.bn, %i.aq
  %i.bq = lshr i32 %i.bp, 27
  %i.br = or disjoint i32 %i.bq, %i.bo
  %i.bs = shl i32 %i.ba, 7                        ; 2 uses
  %i.bt = and i32 %i.bs, -2048
  %i.bu = shl i32 %i.ba, 13
  %i.bv = xor i32 %i.bu, %i.av
  %i.bw = lshr i32 %i.bv, 21
  %i.bx = or disjoint i32 %i.bw, %i.bt            ; 2 uses
  %i.by = shl i32 %i.bf, 13
  %i.bz = and i32 %i.by, -1048576
  %i.ca = shl i32 %i.bg, 3
  %i.cb = xor i32 %i.ca, %i.bg
  %i.cc = lshr i32 %i.cb, 12                      ; 2 uses
  %i.cd = or disjoint i32 %i.cc, %i.bz            ; 2 uses
  %i.ce = shl i32 %i.bl, 18
  %i.cf = and i32 %i.ce, -524288
  %i.cg = shl i32 %i.bm, 6
  %i.ch = xor i32 %i.cg, %i.bm
  %i.ci = lshr i32 %i.ch, 13                      ; 2 uses
  %i.cj = or disjoint i32 %i.ci, %i.cf            ; 2 uses
  %i.ck = shl nuw i32 %i.br, 2                    ; 3 uses
  %i.cl = and i32 %i.ck, 1073741792
  %i.cm = xor i32 %i.ck, %i.bn
  %i.cn = lshr i32 %i.cm, 27
  %i.co = or disjoint i32 %i.cn, %i.cl
  %i.cp = shl i32 %i.bx, 7                        ; 2 uses
  %i.cq = and i32 %i.cp, -2048
  %i.cr = shl i32 %i.bx, 13
  %i.cs = xor i32 %i.cr, %i.bs
  %i.ct = lshr i32 %i.cs, 21
  %i.cu = or disjoint i32 %i.ct, %i.cq            ; 2 uses
  %i.cv = shl i32 %i.cc, 13
  %i.cw = and i32 %i.cv, -1048576
  %i.cx = shl i32 %i.cd, 3
  %i.cy = xor i32 %i.cx, %i.cd
  %i.cz = lshr i32 %i.cy, 12                      ; 2 uses
  %i.da = or disjoint i32 %i.cz, %i.cw            ; 2 uses
  %i.db = shl i32 %i.ci, 18
  %i.dc = and i32 %i.db, -524288
  %i.dd = shl i32 %i.cj, 6
  %i.de = xor i32 %i.dd, %i.cj
  %i.df = lshr i32 %i.de, 13                      ; 2 uses
  %i.dg = or disjoint i32 %i.df, %i.dc            ; 2 uses
  %i.dh = shl nuw i32 %i.co, 2                    ; 3 uses
  %i.di = and i32 %i.dh, 1073741792
  %i.dj = xor i32 %i.dh, %i.ck
  %i.dk = lshr i32 %i.dj, 27
  %i.dl = or disjoint i32 %i.dk, %i.di
  %i.dm = shl i32 %i.cu, 7                        ; 2 uses
  %i.dn = and i32 %i.dm, -2048
  %i.do = shl i32 %i.cu, 13
  %i.dp = xor i32 %i.do, %i.cp
  %i.dq = lshr i32 %i.dp, 21
  %i.dr = or disjoint i32 %i.dq, %i.dn            ; 2 uses
  %i.ds = shl i32 %i.cz, 13
  %i.dt = and i32 %i.ds, -1048576
  %i.du = shl i32 %i.da, 3
  %i.dv = xor i32 %i.du, %i.da
  %i.dw = lshr i32 %i.dv, 12                      ; 2 uses
  %i.dx = or disjoint i32 %i.dw, %i.dt            ; 2 uses
  %i.dy = shl i32 %i.df, 18
  %i.dz = and i32 %i.dy, -524288
  %i.ea = shl i32 %i.dg, 6
  %i.eb = xor i32 %i.ea, %i.dg
  %i.ec = lshr i32 %i.eb, 13                      ; 2 uses
  %i.ed = or disjoint i32 %i.ec, %i.dz            ; 2 uses
  %i.ee = shl nuw i32 %i.dl, 2                    ; 3 uses
  %i.ef = and i32 %i.ee, 1073741792
  %i.eg = xor i32 %i.ee, %i.dh
  %i.eh = lshr i32 %i.eg, 27
  %i.ei = or disjoint i32 %i.eh, %i.ef
  %i.ej = shl i32 %i.dr, 7                        ; 2 uses
  %i.ek = and i32 %i.ej, -2048
  %i.el = shl i32 %i.dr, 13
  %i.em = xor i32 %i.el, %i.dm
  %i.en = lshr i32 %i.em, 21
  %i.eo = or disjoint i32 %i.en, %i.ek            ; 2 uses
  %i.ep = shl i32 %i.dw, 13
  %i.eq = and i32 %i.ep, -1048576
  %i.er = shl i32 %i.dx, 3
  %i.es = xor i32 %i.er, %i.dx
  %i.et = lshr i32 %i.es, 12                      ; 2 uses
  %i.eu = or disjoint i32 %i.et, %i.eq            ; 2 uses
  %i.ev = shl i32 %i.ec, 18
  %i.ew = and i32 %i.ev, -524288
  %i.ex = shl i32 %i.ed, 6
  %i.ey = xor i32 %i.ex, %i.ed
  %i.ez = lshr i32 %i.ey, 13                      ; 2 uses
  %i.fa = or disjoint i32 %i.ez, %i.ew            ; 2 uses
  %i.fb = shl nuw i32 %i.ei, 2                    ; 3 uses
  %i.fc = and i32 %i.fb, 1073741792
  %i.fd = xor i32 %i.fb, %i.ee
  %i.fe = lshr i32 %i.fd, 27
  %i.ff = or disjoint i32 %i.fe, %i.fc
  %i.fg = shl i32 %i.eo, 7                        ; 2 uses
  %i.fh = and i32 %i.fg, -2048
  %i.fi = shl i32 %i.eo, 13
  %i.fj = xor i32 %i.fi, %i.ej
  %i.fk = lshr i32 %i.fj, 21
  %i.fl = or disjoint i32 %i.fk, %i.fh            ; 2 uses
  %i.fm = shl i32 %i.et, 13
  %i.fn = and i32 %i.fm, -1048576
  %i.fo = shl i32 %i.eu, 3
  %i.fp = xor i32 %i.fo, %i.eu
  %i.fq = lshr i32 %i.fp, 12                      ; 2 uses
  %i.fr = or disjoint i32 %i.fq, %i.fn            ; 2 uses
  %i.fs = shl i32 %i.ez, 18
  %i.ft = and i32 %i.fs, -524288
  %i.fu = shl i32 %i.fa, 6
  %i.fv = xor i32 %i.fu, %i.fa
  %i.fw = lshr i32 %i.fv, 13                      ; 2 uses
  %i.fx = or disjoint i32 %i.fw, %i.ft            ; 2 uses
  %i.fy = shl nuw i32 %i.ff, 2                    ; 3 uses
  %i.fz = and i32 %i.fy, 1073741792
  %i.ga = xor i32 %i.fy, %i.fb
  %i.gb = lshr i32 %i.ga, 27
  %i.gc = or disjoint i32 %i.gb, %i.fz
  %i.gd = shl i32 %i.fl, 7                        ; 2 uses
  %i.ge = and i32 %i.gd, -2048
  %i.gf = shl i32 %i.fl, 13
  %i.gg = xor i32 %i.gf, %i.fg
  %i.gh = lshr i32 %i.gg, 21
  %i.gi = or disjoint i32 %i.gh, %i.ge            ; 2 uses
  %i.gj = shl i32 %i.fq, 13
  %i.gk = and i32 %i.gj, -1048576
  %i.gl = shl i32 %i.fr, 3
  %i.gm = xor i32 %i.gl, %i.fr
  %i.gn = lshr i32 %i.gm, 12                      ; 2 uses
  %i.go = or disjoint i32 %i.gn, %i.gk            ; 2 uses
  %i.gp = shl i32 %i.fw, 18
  %i.gq = and i32 %i.gp, -524288
  %i.gr = shl i32 %i.fx, 6
  %i.gs = xor i32 %i.gr, %i.fx
  %i.gt = lshr i32 %i.gs, 13                      ; 2 uses
  %i.gu = or disjoint i32 %i.gt, %i.gq            ; 2 uses
  %i.gv = shl nuw i32 %i.gc, 2                    ; 3 uses
  %i.gw = and i32 %i.gv, 1073741792
  %i.gx = xor i32 %i.gv, %i.fy
  %i.gy = lshr i32 %i.gx, 27
  %i.gz = or disjoint i32 %i.gy, %i.gw
  %i.ha = shl i32 %i.gi, 7                        ; 2 uses
  %i.hb = and i32 %i.ha, -2048
  %i.hc = shl i32 %i.gi, 13
  %i.hd = xor i32 %i.hc, %i.gd
  %i.he = lshr i32 %i.hd, 21
  %i.hf = or disjoint i32 %i.he, %i.hb            ; 2 uses
  %i.hg = shl i32 %i.gn, 13
  %i.hh = and i32 %i.hg, -1048576
  %i.hi = shl i32 %i.go, 3
  %i.hj = xor i32 %i.hi, %i.go
  %i.hk = lshr i32 %i.hj, 12                      ; 2 uses
  %i.hl = or disjoint i32 %i.hk, %i.hh            ; 2 uses
  %i.hm = shl i32 %i.gt, 18
  %i.hn = and i32 %i.hm, -524288
  %i.ho = shl i32 %i.gu, 6
  %i.hp = xor i32 %i.ho, %i.gu
  %i.hq = lshr i32 %i.hp, 13                      ; 2 uses
  %i.hr = or disjoint i32 %i.hq, %i.hn            ; 2 uses
  %i.hs = shl nuw i32 %i.gz, 2                    ; 3 uses
  %i.ht = and i32 %i.hs, 1073741792
  %i.hu = xor i32 %i.hs, %i.gv
  %i.hv = lshr i32 %i.hu, 27
  %i.hw = or disjoint i32 %i.hv, %i.ht
  %i.hx = shl i32 %i.hf, 7                        ; 2 uses
  %i.hy = and i32 %i.hx, -2048
  %i.hz = shl i32 %i.hf, 13
  %i.ia = xor i32 %i.hz, %i.ha
  %i.ib = lshr i32 %i.ia, 21
  %i.ic = or disjoint i32 %i.ib, %i.hy            ; 2 uses
  %i.id = shl i32 %i.hk, 13
  %i.ie = and i32 %i.id, -1048576
  %i.if = shl i32 %i.hl, 3
  %i.ig = xor i32 %i.if, %i.hl
  %i.ih = lshr i32 %i.ig, 12                      ; 2 uses
  %i.ii = or disjoint i32 %i.ih, %i.ie            ; 2 uses
  %i.ij = shl i32 %i.hq, 18
  %i.ik = and i32 %i.ij, -524288
  %i.il = shl i32 %i.hr, 6
  %i.im = xor i32 %i.il, %i.hr
  %i.in = lshr i32 %i.im, 13
  %i.io = or disjoint i32 %i.in, %i.ik
  store i32 %i.io, ptr %i.q, align 4
  %i.ip = shl nuw i32 %i.hw, 2                    ; 2 uses
  %i.iq = and i32 %i.ip, -32
  %i.ir = xor i32 %i.ip, %i.hs
  %i.is = lshr i32 %i.ir, 27
  %i.it = or disjoint i32 %i.is, %i.iq
  store i32 %i.it, ptr %i.z, align 4
  %i.iu = shl i32 %i.ic, 7
  %i.iv = and i32 %i.iu, -2048
  %i.iw = shl i32 %i.ic, 13
  %i.ix = xor i32 %i.iw, %i.hx
  %i.iy = lshr i32 %i.ix, 21
  %i.iz = or disjoint i32 %i.iy, %i.iv
  store i32 %i.iz, ptr %i.ae, align 4
  %i.ja = shl i32 %i.ih, 13
  %i.jb = and i32 %i.ja, -1048576
  %i.jc = shl i32 %i.ii, 3
  %i.jd = xor i32 %i.jc, %i.ii
  %i.je = lshr i32 %i.jd, 12
  %i.jf = or disjoint i32 %i.je, %i.jb
  store i32 %i.jf, ptr %i.aj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.jg = add nuw nsw i64 %i.j, 1
  %i.jh = and i64 %i.jg, 127                      ; 2 uses
  %i.ji = icmp samesign ugt i64 %i.jh, 63
  br i1 %i.ji, label %find_next_bit.exit.thread, label %bb.b, !prof !15, !llvm.loop !12

find_next_bit.exit.thread:                        ; preds = %bb.b, %bb.c, %find_next_bit.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = !{i64 1310888}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 1999}
end_hunk_0
