Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/lz4_compress?download=true
inline.NumInlined: 70
inline.NumDeleted: 5
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_compress_fast: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad LZ4_compress_fast ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_compress_default: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad LZ4_compress_default ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_compress_destSize: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad LZ4_compress_destSize ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_loadDict: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad LZ4_loadDict ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_saveDict: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad LZ4_saveDict ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_LZ4_compress_fast_continue: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad LZ4_compress_fast_continue ; .previous"

@__UNIQUE_ID_addressable_LZ4_compress_fast_428 = internal global ptr @LZ4_compress_fast, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_LZ4_compress_default_429 = internal global ptr @LZ4_compress_default, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_LZ4_compress_destSize_430 = internal global ptr @LZ4_compress_destSize, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_LZ4_loadDict_431 = internal global ptr @LZ4_loadDict, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_LZ4_saveDict_432 = internal global ptr @LZ4_saveDict, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_LZ4_compress_fast_continue_433 = internal global ptr @LZ4_compress_fast_continue, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_434 = internal constant [39 x i8] c"lz4_compress.file=lib/lz4/lz4_compress\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_435 = internal constant [34 x i8] c"lz4_compress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_436 = internal constant [40 x i8] c"lz4_compress.description=LZ4 compressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_addressable_LZ4_compress_default_429, ptr @__UNIQUE_ID_addressable_LZ4_compress_destSize_430, ptr @__UNIQUE_ID_addressable_LZ4_compress_fast_428, ptr @__UNIQUE_ID_addressable_LZ4_compress_fast_continue_433, ptr @__UNIQUE_ID_addressable_LZ4_loadDict_431, ptr @__UNIQUE_ID_addressable_LZ4_saveDict_432, ptr @__UNIQUE_ID_modinfo_434, ptr @__UNIQUE_ID_modinfo_435, ptr @__UNIQUE_ID_modinfo_436], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local i32 @LZ4_compress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 16416)) %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @LZ4_compress_fast_extState(ptr noundef %5, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #7, !srcloc !10
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @LZ4_compress_fast_extState(ptr nofree noundef captures(none) initializes((0, 16416)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; 6 uses
  %i.a = icmp ugt i32 %3, 2113929216              ; 5 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.not = icmp slt i32 %4, %i.e
  %i.f = icmp slt i32 %3, 65547                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 16 uses
  br i1 %.not, label %bb.bh, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.e, label %bb.ag

bb.e:                                             ; preds = %bb.d
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 5 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -12      ; 4 uses
  %i.k = getelementptr i8, ptr %i.i, i64 -5
  br i1 %i.a, label %LZ4_compress_generic.exit224, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i32 %3, 13
  br i1 %i.l, label %.thread398, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.copyload.i254 = load i32, ptr %1, align 1
  %i.m = mul i32 %.0.copyload.i254, -1640531535
  %i.n = lshr i32 %i.m, 19
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr [2 x i8], ptr %0, i64 %i.o
  store i16 0, ptr %i.p, align 2
  %i.q = shl i32 %spec.store.select, 6
  %i.r = getelementptr i8, ptr %i.i, i64 -8
  %i.s = getelementptr i8, ptr %i.i, i64 -6
  br label %bb.h

.loopexit1178:                                    ; preds = %bb.aa, %bb.ab
  br label %bb.h

bb.h:                                             ; preds = %.loopexit1178, %bb.g
  %.0268.i163 = phi ptr [ %1, %bb.g ], [ %i.cy, %.loopexit1178 ] ; 6 uses
  %.0260.i164 = phi ptr [ %2, %bb.g ], [ %.7267.i213, %.loopexit1178 ] ; 6 uses
  %.0281.i161 = getelementptr i8, ptr %.0268.i163, i64 1 ; 2 uses
  %.0256.i165.in.in = load i32, ptr %.0281.i161, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.1257.i168.in.in = phi i32 [ %.0256.i165.in.in, %bb.h ], [ %.0.copyload.i256, %bb.j ]
  %.0237.i171 = phi ptr [ %.0281.i161, %bb.h ], [ %i.u, %bb.j ] ; 6 uses
  %.0236.i172 = phi i32 [ 1, %bb.h ], [ %i.v, %bb.j ]
  %.0235.i173 = phi i32 [ %i.q, %bb.h ], [ %i.w, %bb.j ] ; 2 uses
  %i.t = zext nneg i32 %.0236.i172 to i64
  %i.u = getelementptr i8, ptr %.0237.i171, i64 %i.t ; 3 uses
  %.not.i174 = icmp ugt ptr %i.u, %i.j
  br i1 %.not.i174, label %.thread398, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.v = lshr i32 %.0235.i173, 6
  %i.w = add i32 %.0235.i173, 1
  %.1257.i168.in = mul i32 %.1257.i168.in.in, -1640531535
  %.1257.i168 = lshr i32 %.1257.i168.in, 19
  %i.x = zext nneg i32 %.1257.i168 to i64
  %i.y = getelementptr [2 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %.0.i376 = getelementptr i8, ptr %1, i64 %i.aa
  %.0.copyload.i256 = load i32, ptr %i.u, align 1
  %i.ab = ptrtoint ptr %.0237.i171 to i64         ; 2 uses
  %i.ac = sub i64 %i.ab, %i.g
  %i.ad = trunc i64 %i.ac to i16
  store i16 %i.ad, ptr %i.y, align 2
  %.0.copyload.i263 = load i32, ptr %.0.i376, align 1
  %.0.copyload.i262 = load i32, ptr %.0237.i171, align 1
  %.not300.i180 = icmp eq i32 %.0.copyload.i263, %.0.copyload.i262
  br i1 %.not300.i180, label %.preheader526, label %bb.i, !llvm.loop !12

.preheader526:                                    ; preds = %bb.j
  %.0.i376.le = getelementptr i8, ptr %1, i64 %i.aa ; 3 uses
  %i.ae = icmp ugt ptr %.0237.i171, %.0268.i163
  %i.af = icmp ugt ptr %.0.i376.le, %1
  %i.ag = and i1 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph621, label %.critedge7.i201

.lr.ph621:                                        ; preds = %.preheader526, %bb.k
  %.2241.i200620 = phi ptr [ %i.aj, %bb.k ], [ %.0.i376.le, %.preheader526 ] ; 2 uses
  %.1282.i199619 = phi ptr [ %i.ah, %bb.k ], [ %.0237.i171, %.preheader526 ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.1282.i199619, i64 -1 ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr i8, ptr %.2241.i200620, i64 -1 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %.critedge7.i201.loopexit

bb.k:                                             ; preds = %.lr.ph621
  %i.am = icmp ugt ptr %i.ah, %.0268.i163
  %i.an = icmp ugt ptr %i.aj, %1
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph621, label %.critedge7.i201.loopexit, !llvm.loop !14

.critedge7.i201.loopexit:                         ; preds = %.lr.ph621, %bb.k
  %.1282.i199.lcssa.ph = phi ptr [ %i.ah, %bb.k ], [ %.1282.i199619, %.lr.ph621 ] ; 2 uses
  %.2241.i200.lcssa.ph = phi ptr [ %i.aj, %bb.k ], [ %.2241.i200620, %.lr.ph621 ]
  %.pre873 = ptrtoint ptr %.1282.i199.lcssa.ph to i64
  br label %.critedge7.i201

.critedge7.i201:                                  ; preds = %.critedge7.i201.loopexit, %.preheader526
  %.pre-phi874 = phi i64 [ %.pre873, %.critedge7.i201.loopexit ], [ %i.ab, %.preheader526 ] ; 2 uses
  %.1282.i199.lcssa = phi ptr [ %.1282.i199.lcssa.ph, %.critedge7.i201.loopexit ], [ %.0237.i171, %.preheader526 ]
  %.2241.i200.lcssa = phi ptr [ %.2241.i200.lcssa.ph, %.critedge7.i201.loopexit ], [ %.0.i376.le, %.preheader526 ]
  %i.ap = ptrtoint ptr %.0268.i163 to i64         ; 2 uses
  %i.aq = sub i64 %.pre-phi874, %i.ap             ; 3 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = getelementptr i8, ptr %.0260.i164, i64 1 ; 3 uses
  %i.at = icmp ugt i32 %i.ar, 14
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge7.i201
  %i.au = add i32 %i.ar, -15                      ; 3 uses
  store i8 -16, ptr %.0260.i164, align 1
  %i.av = icmp sgt i32 %i.au, 254
  br i1 %i.av, label %.lr.ph630.preheader, label %._crit_edge631

.lr.ph630.preheader:                              ; preds = %bb.l
  %i.aw = trunc i64 %.pre-phi874 to i32           ; 2 uses
  %i.ax = add i32 %i.aw, 239
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.au, i32 509)
  %i.az = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = sub i32 %i.ax, %i.ba
  %.fr962 = freeze i32 %i.bb                      ; 3 uses
  %i.bc = udiv i32 %.fr962, 255
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.as, i8 -1, i64 %i.be, i1 false)
  %scevgep848 = getelementptr i8, ptr %.0260.i164, i64 2
  %scevgep850 = getelementptr i8, ptr %scevgep848, i64 %i.bd
  %i.bf = add i32 %i.aw, -270
  %i.bg = sub i32 %i.bf, %i.az
  %i.bh = urem i32 %.fr962, 255
  %.neg963 = sub i32 %i.bh, %.fr962
  %i.bi = add i32 %.neg963, %i.bg
  br label %._crit_edge631

._crit_edge631:                                   ; preds = %.lr.ph630.preheader, %bb.l
  %.1261.i221.lcssa = phi ptr [ %i.as, %bb.l ], [ %scevgep850, %.lr.ph630.preheader ] ; 2 uses
  %.0234.i222.lcssa = phi i32 [ %i.au, %bb.l ], [ %i.bi, %.lr.ph630.preheader ]
  %i.bj = trunc i32 %.0234.i222.lcssa to i8
  %i.bk = getelementptr i8, ptr %.1261.i221.lcssa, i64 1
  store i8 %i.bj, ptr %.1261.i221.lcssa, align 1
  br label %bb.n

bb.m:                                             ; preds = %.critedge7.i201
  %.tr.i202 = trunc i64 %i.aq to i8
  %i.bl = shl nuw i8 %.tr.i202, 4
  store i8 %i.bl, ptr %.0260.i164, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge631
  %.2262.i203 = phi ptr [ %i.bk, %._crit_edge631 ], [ %i.as, %bb.m ] ; 2 uses
  %i.bm = and i64 %i.aq, 4294967295
  %i.bn = getelementptr i8, ptr %.2262.i203, i64 %i.bm ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.09.i = phi ptr [ %.2262.i203, %bb.n ], [ %i.bo, %bb.o ] ; 2 uses
  %.0.i276 = phi ptr [ %.0268.i163, %bb.n ], [ %i.bp, %bb.o ] ; 2 uses
  %.0.copyload1.i364 = load i64, ptr %.0.i276, align 1
  store i64 %.0.copyload1.i364, ptr %.09.i, align 1
  %i.bo = getelementptr i8, ptr %.09.i, i64 8     ; 2 uses
  %i.bp = getelementptr i8, ptr %.0.i276, i64 8
  %i.bq = icmp ult ptr %i.bo, %i.bn
  br i1 %i.bq, label %bb.o, label %LZ4_wildCopy.exit, !llvm.loop !15

LZ4_wildCopy.exit:                                ; preds = %bb.o, %bb.ac
  %.2283.i206 = phi ptr [ %i.cy, %bb.ac ], [ %.1282.i199.lcssa, %bb.o ] ; 3 uses
  %.4264.i209 = phi ptr [ %i.em, %bb.ac ], [ %i.bn, %bb.o ] ; 3 uses
  %.3242.i211 = phi ptr [ %.0.i377, %bb.ac ], [ %.2241.i200.lcssa, %bb.o ] ; 2 uses
  %.0238.i212 = phi ptr [ %.7267.i213, %bb.ac ], [ %.0260.i164, %bb.o ] ; 3 uses
  %i.br = ptrtoint ptr %.2283.i206 to i64
  %i.bs = ptrtoint ptr %.3242.i211 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = trunc i64 %i.bt to i16
  store i16 %i.bu, ptr %.4264.i209, align 1
  %i.bv = getelementptr i8, ptr %.4264.i209, i64 2 ; 3 uses
  %i.bw = getelementptr i8, ptr %.2283.i206, i64 4 ; 4 uses
  %i.bx = getelementptr i8, ptr %.3242.i211, i64 4 ; 2 uses
  %i.by = icmp ult ptr %i.bw, %i.j
  br i1 %i.by, label %.lr.ph636, label %._crit_edge637, !prof !16

.lr.ph636:                                        ; preds = %LZ4_wildCopy.exit, %bb.p
  %.033.i635 = phi ptr [ %i.cf, %bb.p ], [ %i.bx, %LZ4_wildCopy.exit ] ; 2 uses
  %.036.i634 = phi ptr [ %i.ce, %bb.p ], [ %i.bw, %LZ4_wildCopy.exit ] ; 3 uses
  %.0.copyload.i349 = load i64, ptr %.033.i635, align 1 ; 2 uses
  %.0.copyload.i348 = load i64, ptr %.036.i634, align 1 ; 2 uses
  %.not.i286 = icmp eq i64 %.0.copyload.i349, %.0.copyload.i348
  br i1 %.not.i286, label %bb.p, label %.thread394

.thread394:                                       ; preds = %.lr.ph636
  %i.bz = xor i64 %.0.copyload.i348, %.0.copyload.i349
  %i.ca = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.bz) #8, !srcloc !17
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr i8, ptr %.036.i634, i64 %i.cc
  br label %LZ4_count.exit

bb.p:                                             ; preds = %.lr.ph636
  %i.ce = getelementptr i8, ptr %.036.i634, i64 8 ; 3 uses
  %i.cf = getelementptr i8, ptr %.033.i635, i64 8 ; 2 uses
  %i.cg = icmp ult ptr %i.ce, %i.j
  br i1 %i.cg, label %.lr.ph636, label %._crit_edge637, !prof !18

._crit_edge637:                                   ; preds = %bb.p, %LZ4_wildCopy.exit
  %.036.i.lcssa = phi ptr [ %i.bw, %LZ4_wildCopy.exit ], [ %i.ce, %bb.p ] ; 5 uses
  %.033.i.lcssa = phi ptr [ %i.bx, %LZ4_wildCopy.exit ], [ %i.cf, %bb.p ] ; 4 uses
  %i.ch = icmp ult ptr %.036.i.lcssa, %i.r
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge637
  %.0.copyload.i41.i = load i32, ptr %.033.i.lcssa, align 1
  %.0.copyload.i.i = load i32, ptr %.036.i.lcssa, align 1
  %i.ci = icmp eq i32 %.0.copyload.i41.i, %.0.copyload.i.i
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr i8, ptr %.036.i.lcssa, i64 4
  %i.ck = getelementptr i8, ptr %.033.i.lcssa, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge637
  %.238.i = phi ptr [ %i.cj, %bb.r ], [ %.036.i.lcssa, %bb.q ], [ %.036.i.lcssa, %._crit_edge637 ] ; 5 uses
  %.235.i = phi ptr [ %i.ck, %bb.r ], [ %.033.i.lcssa, %bb.q ], [ %.033.i.lcssa, %._crit_edge637 ] ; 4 uses
  %i.cl = icmp ult ptr %.238.i, %i.s
  br i1 %i.cl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.0.copyload.i375 = load i16, ptr %.235.i, align 1
  %.0.copyload.i374 = load i16, ptr %.238.i, align 1
  %i.cm = icmp eq i16 %.0.copyload.i375, %.0.copyload.i374
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr i8, ptr %.238.i, i64 2
  %i.co = getelementptr i8, ptr %.235.i, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.339.i = phi ptr [ %i.cn, %bb.u ], [ %.238.i, %bb.t ], [ %.238.i, %bb.s ] ; 4 uses
  %.3.i = phi ptr [ %i.co, %bb.u ], [ %.235.i, %bb.t ], [ %.235.i, %bb.s ]
  %i.cp = icmp ult ptr %.339.i, %i.k
  br i1 %i.cp, label %bb.w, label %LZ4_count.exit

bb.w:                                             ; preds = %bb.v
  %i.cq = load i8, ptr %.3.i, align 1
  %i.cr = load i8, ptr %.339.i, align 1
  %i.cs = icmp eq i8 %i.cq, %i.cr
  %spec.select.i.idx = zext i1 %i.cs to i64
  %spec.select.i = getelementptr i8, ptr %.339.i, i64 %spec.select.i.idx
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %bb.v, %bb.w, %.thread394
  %.sink1051 = phi ptr [ %i.cd, %.thread394 ], [ %.339.i, %bb.v ], [ %spec.select.i, %bb.w ]
  %i.ct = ptrtoint ptr %.sink1051 to i64
  %i.cu = ptrtoint ptr %i.bw to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.2.i.in.fr = freeze i64 %i.cv                  ; 3 uses
  %.2.i = trunc i64 %.2.i.in.fr to i32            ; 3 uses
  %i.cw = add i64 %.2.i.in.fr, 4
  %i.cx = and i64 %i.cw, 4294967295
  %i.cy = getelementptr i8, ptr %.2283.i206, i64 %i.cx ; 9 uses
  %i.cz = icmp ugt i32 %.2.i, 14
  %i.da = load i8, ptr %.0238.i212, align 1       ; 2 uses
  br i1 %i.cz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %LZ4_count.exit
  %i.db = add i8 %i.da, 15
  store i8 %i.db, ptr %.0238.i212, align 1
  %i.dc = add i32 %.2.i, -15                      ; 2 uses
  store i32 -1, ptr %i.bv, align 1
  %i.dd = icmp ugt i32 %i.dc, 1019
  br i1 %i.dd, label %.lr.ph643.preheader, label %._crit_edge644

.lr.ph643.preheader:                              ; preds = %bb.x
  %scevgep851 = getelementptr i8, ptr %.4264.i209, i64 6 ; 2 uses
  %i.de = add i32 %.2.i, -1035                    ; 2 uses
  %i.df = udiv i32 %i.de, 1020
  %i.dg = shl nuw nsw i32 %i.df, 2
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = add nuw nsw i64 %i.dh, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep851, i8 -1, i64 %i.di, i1 false)
  %scevgep853 = getelementptr i8, ptr %scevgep851, i64 %i.dh
  %i.dj = urem i32 %i.de, 1020
  br label %._crit_edge644

._crit_edge644:                                   ; preds = %.lr.ph643.preheader, %bb.x
  %.5265.i219.lcssa = phi ptr [ %i.bv, %bb.x ], [ %scevgep853, %.lr.ph643.preheader ]
  %.2233.i220.lcssa = phi i32 [ %i.dc, %bb.x ], [ %i.dj, %.lr.ph643.preheader ]
  %.lhs.trunc511 = trunc nuw nsw i32 %.2233.i220.lcssa to i16 ; 2 uses
  %i.dk = udiv i16 %.lhs.trunc511, 255
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = getelementptr i8, ptr %.5265.i219.lcssa, i64 %i.dl ; 2 uses
  %i.dn = urem i16 %.lhs.trunc511, 255
  %i.do = trunc nuw i16 %i.dn to i8
  %i.dp = getelementptr i8, ptr %i.dm, i64 1
  store i8 %i.do, ptr %i.dm, align 1
  br label %bb.z

bb.y:                                             ; preds = %LZ4_count.exit
  %i.dq = trunc i64 %.2.i.in.fr to i8
  %i.dr = add i8 %i.da, %i.dq
  store i8 %i.dr, ptr %.0238.i212, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge644
  %.7267.i213 = phi ptr [ %i.bv, %bb.y ], [ %i.dp, %._crit_edge644 ] ; 5 uses
  %i.ds = icmp ugt ptr %i.cy, %i.j
  br i1 %i.ds, label %.thread398, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr i8, ptr %i.cy, i64 -2     ; 2 uses
  %.0.copyload.i257 = load i32, ptr %i.dt, align 1
  %i.du = mul i32 %.0.copyload.i257, -1640531535
  %i.dv = lshr i32 %i.du, 19
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dw, %i.g
  %i.dy = zext nneg i32 %i.dv to i64
  %i.dz = trunc i64 %i.dx to i16
  %i.ea = getelementptr [2 x i8], ptr %0, i64 %i.dy
  store i16 %i.dz, ptr %i.ea, align 2
  %.0.copyload.i.i338 = load i32, ptr %i.cy, align 1
  %i.eb = mul i32 %.0.copyload.i.i338, -1640531535
  %i.ec = lshr i32 %i.eb, 19
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr [2 x i8], ptr %0, i64 %i.ed ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = zext i16 %i.ef to i64
  %.0.i377 = getelementptr i8, ptr %1, i64 %i.eg  ; 3 uses
  %i.eh = ptrtoint ptr %i.cy to i64
  %i.ei = sub i64 %i.eh, %i.g
  %i.ej = trunc i64 %i.ei to i16
  store i16 %i.ej, ptr %i.ee, align 2
  %i.ek = getelementptr i8, ptr %.0.i377, i64 65535
  %.not304.i218 = icmp ult ptr %i.ek, %i.cy
  br i1 %.not304.i218, label %.loopexit1178, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.0.copyload.i261 = load i32, ptr %.0.i377, align 1
  %.0.copyload.i260 = load i32, ptr %i.cy, align 1
  %i.el = icmp eq i32 %.0.copyload.i261, %.0.copyload.i260
  br i1 %i.el, label %bb.ac, label %.loopexit1178

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr i8, ptr %.7267.i213, i64 1
  store i8 0, ptr %.7267.i213, align 1
  br label %LZ4_wildCopy.exit

.thread398:                                       ; preds = %bb.i, %bb.z, %bb.f
  %.3271.i190 = phi ptr [ %1, %bb.f ], [ %i.cy, %bb.z ], [ %.0268.i163, %bb.i ] ; 2 uses
  %.9.i191 = phi ptr [ %2, %bb.f ], [ %.7267.i213, %bb.z ], [ %.0260.i164, %bb.i ] ; 5 uses
  %i.en = ptrtoint ptr %i.i to i64
  %i.eo = ptrtoint ptr %.3271.i190 to i64         ; 2 uses
  %i.ep = sub i64 %i.en, %i.eo                    ; 5 uses
  %i.eq = icmp ugt i64 %i.ep, 14
  br i1 %i.eq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread398
  %i.er = add i64 %i.ep, -15                      ; 2 uses
  store i8 -16, ptr %.9.i191, align 1
  %.10.i198647 = getelementptr i8, ptr %.9.i191, i64 1 ; 2 uses
  %i.es = icmp ugt i64 %i.er, 254
  br i1 %i.es, label %.lr.ph651.preheader, label %._crit_edge652

.lr.ph651.preheader:                              ; preds = %bb.ad
  %6 = add i64 %i.g, %i.h
  %i.et = add i64 %6, -270
  %i.eu = sub i64 %i.et, %i.eo                    ; 2 uses
  %i.ev = udiv i64 %i.eu, 255                     ; 3 uses
  %i.ew = add nuw nsw i64 %i.ev, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.10.i198647, i8 -1, i64 %i.ew, i1 false)
  %.neg965 = mul i64 %i.ev, -255
  %i.ex = add i64 %.neg965, %i.eu
  %i.ey = getelementptr i8, ptr %.9.i191, i64 %i.ev
  %scevgep854 = getelementptr i8, ptr %i.ey, i64 2
  br label %._crit_edge652

._crit_edge652:                                   ; preds = %.lr.ph651.preheader, %bb.ad
  %.0.i197.lcssa = phi i64 [ %i.er, %bb.ad ], [ %i.ex, %.lr.ph651.preheader ]
  %.10.i198.lcssa = phi ptr [ %.10.i198647, %bb.ad ], [ %scevgep854, %.lr.ph651.preheader ] ; 2 uses
  %i.ez = trunc nuw i64 %.0.i197.lcssa to i8
  store i8 %i.ez, ptr %.10.i198.lcssa, align 1
  br label %bb.af

bb.ae:                                            ; preds = %.thread398
  %.tr306.i192 = trunc nuw nsw i64 %i.ep to i8
  %i.fa = shl nuw i8 %.tr306.i192, 4
  store i8 %i.fa, ptr %.9.i191, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge652
  %.10.pn.i193 = phi ptr [ %.10.i198.lcssa, %._crit_edge652 ], [ %.9.i191, %bb.ae ]
  %.11.i194 = getelementptr i8, ptr %.10.pn.i193, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11.i194, ptr align 1 %.3271.i190, i64 %i.ep, i1 false)
  %i.fb = getelementptr i8, ptr %.11.i194, i64 %i.ep
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %2 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  br label %LZ4_compress_generic.exit224

bb.ag:                                            ; preds = %bb.d
  %i.fg = zext nneg i32 %3 to i64                 ; 2 uses
  %i.fh = getelementptr i8, ptr %1, i64 %i.fg     ; 5 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 -12    ; 6 uses
  %i.fj = getelementptr i8, ptr %i.fh, i64 -5
  br i1 %i.a, label %LZ4_compress_generic.exit224, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.0.copyload.i356 = load i64, ptr %1, align 1
  %i.fk = mul i64 %.0.copyload.i356, -3523014627271114752
  %i.fl = lshr i64 %i.fk, 52
  %i.fm = getelementptr [4 x i8], ptr %0, i64 %i.fl
  store i32 0, ptr %i.fm, align 4
  %i.fn = shl i32 %spec.store.select, 6
  %i.fo = or disjoint i32 %i.fn, 1
  %i.fp = and i32 %spec.store.select, 67108863
  %i.fq = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %.not.i110569603 = icmp ugt ptr %i.fq, %i.fi
  br i1 %.not.i110569603, label %.thread410, label %.lr.ph.lr.ph, !prof !19

.lr.ph.lr.ph:                                     ; preds = %bb.ah
  %i.fr = getelementptr i8, ptr %i.fh, i64 -8
  %i.fs = getelementptr i8, ptr %i.fh, i64 -6
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.bd
  %i.ft = phi ptr [ %i.fq, %.lr.ph.lr.ph ], [ %i.kq, %bb.bd ]
  %.0260.i100605 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.7267.i149, %bb.bd ] ; 6 uses
  %.0268.i99604 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.jd, %bb.bd ] ; 6 uses
  %.0281.i97606 = getelementptr i8, ptr %.0268.i99604, i64 1 ; 2 uses
  %.0256.i101.in.in.in607 = load i64, ptr %.0281.i97606, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %.critedge.i159.backedge
  %i.fu = phi i32 [ %i.fp, %.lr.ph ], [ %i.gi, %.critedge.i159.backedge ]
  %i.fv = phi i32 [ %i.fo, %.lr.ph ], [ %i.gh, %.critedge.i159.backedge ] ; 2 uses
  %i.fw = phi ptr [ %i.ft, %.lr.ph ], [ %i.gg, %.critedge.i159.backedge ] ; 3 uses
  %.0237.i107571 = phi ptr [ %.0281.i97606, %.lr.ph ], [ %i.fw, %.critedge.i159.backedge ] ; 6 uses
  %.1257.i104.in.in.in570 = phi i64 [ %.0256.i101.in.in.in607, %.lr.ph ], [ %.0.copyload.i358, %.critedge.i159.backedge ]
  %.1257.i104.in.in = mul i64 %.1257.i104.in.in.in570, -3523014627271114752
  %.1257.i104.in = lshr i64 %.1257.i104.in.in, 52
  %i.fx = getelementptr [4 x i8], ptr %0, i64 %.1257.i104.in ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = zext i32 %i.fy to i64
  %.0.i378 = getelementptr i8, ptr %1, i64 %i.fz  ; 5 uses
  %.0.copyload.i358 = load i64, ptr %i.fw, align 1
  %i.ga = ptrtoint ptr %.0237.i107571 to i64      ; 2 uses
  %i.gb = sub i64 %i.ga, %i.g
  %i.gc = trunc i64 %i.gb to i32
  store i32 %i.gc, ptr %i.fx, align 4
  %i.gd = getelementptr i8, ptr %.0.i378, i64 65535
  %i.ge = icmp ult ptr %i.gd, %.0237.i107571
  br i1 %i.ge, label %.critedge.i159.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.0.copyload.i267 = load i32, ptr %.0.i378, align 1
  %.0.copyload.i266 = load i32, ptr %.0237.i107571, align 1
  %.not300.i116 = icmp eq i32 %.0.copyload.i267, %.0.copyload.i266
  br i1 %.not300.i116, label %.preheader528, label %.critedge.i159.backedge

.critedge.i159.backedge:                          ; preds = %bb.aj, %bb.ai
  %i.gf = zext nneg i32 %i.fu to i64
  %i.gg = getelementptr i8, ptr %i.fw, i64 %i.gf  ; 2 uses
  %i.gh = add i32 %i.fv, 1
  %i.gi = lshr i32 %i.fv, 6
  %.not.i110 = icmp ugt ptr %i.gg, %i.fi
  br i1 %.not.i110, label %.thread410, label %bb.ai, !prof !20, !llvm.loop !12

.preheader528:                                    ; preds = %bb.aj
  %i.gj = icmp ugt ptr %.0237.i107571, %.0268.i99604
  %i.gk = icmp ugt ptr %.0.i378, %1
  %i.gl = and i1 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph577, label %.critedge7.i137

.lr.ph577:                                        ; preds = %.preheader528, %bb.ak
  %.2241.i136576 = phi ptr [ %i.go, %bb.ak ], [ %.0.i378, %.preheader528 ] ; 2 uses
  %.1282.i135575 = phi ptr [ %i.gm, %bb.ak ], [ %.0237.i107571, %.preheader528 ] ; 2 uses
  %i.gm = getelementptr i8, ptr %.1282.i135575, i64 -1 ; 4 uses
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = getelementptr i8, ptr %.2241.i136576, i64 -1 ; 4 uses
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = icmp eq i8 %i.gn, %i.gp
  br i1 %i.gq, label %bb.ak, label %.critedge7.i137.loopexit

bb.ak:                                            ; preds = %.lr.ph577
  %i.gr = icmp ugt ptr %i.gm, %.0268.i99604
  %i.gs = icmp ugt ptr %i.go, %1
  %i.gt = and i1 %i.gr, %i.gs
  br i1 %i.gt, label %.lr.ph577, label %.critedge7.i137.loopexit, !llvm.loop !14

.critedge7.i137.loopexit:                         ; preds = %.lr.ph577, %bb.ak
  %.1282.i135.lcssa.ph = phi ptr [ %i.gm, %bb.ak ], [ %.1282.i135575, %.lr.ph577 ] ; 2 uses
  %.2241.i136.lcssa.ph = phi ptr [ %i.go, %bb.ak ], [ %.2241.i136576, %.lr.ph577 ]
  %.pre875 = ptrtoint ptr %.1282.i135.lcssa.ph to i64
  br label %.critedge7.i137

.critedge7.i137:                                  ; preds = %.critedge7.i137.loopexit, %.preheader528
  %.pre-phi876 = phi i64 [ %.pre875, %.critedge7.i137.loopexit ], [ %i.ga, %.preheader528 ] ; 2 uses
  %.1282.i135.lcssa = phi ptr [ %.1282.i135.lcssa.ph, %.critedge7.i137.loopexit ], [ %.0237.i107571, %.preheader528 ]
  %.2241.i136.lcssa = phi ptr [ %.2241.i136.lcssa.ph, %.critedge7.i137.loopexit ], [ %.0.i378, %.preheader528 ]
  %i.gu = ptrtoint ptr %.0268.i99604 to i64       ; 2 uses
  %i.gv = sub i64 %.pre-phi876, %i.gu             ; 3 uses
  %i.gw = trunc i64 %i.gv to i32                  ; 2 uses
  %i.gx = getelementptr i8, ptr %.0260.i100605, i64 1 ; 3 uses
  %i.gy = icmp ugt i32 %i.gw, 14
  br i1 %i.gy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge7.i137
  %i.gz = add i32 %i.gw, -15                      ; 3 uses
  store i8 -16, ptr %.0260.i100605, align 1
  %i.ha = icmp sgt i32 %i.gz, 254
  br i1 %i.ha, label %.lr.ph585.preheader, label %._crit_edge

.lr.ph585.preheader:                              ; preds = %bb.al
  %i.hb = trunc i64 %.pre-phi876 to i32           ; 2 uses
  %i.hc = add i32 %i.hb, 239
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 509)
  %i.he = trunc i64 %i.gu to i32                  ; 2 uses
  %i.hf = add i32 %i.hd, %i.he
  %i.hg = sub i32 %i.hc, %i.hf
  %.fr = freeze i32 %i.hg                         ; 3 uses
  %i.hh = udiv i32 %.fr, 255
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = add nuw nsw i64 %i.hi, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.gx, i8 -1, i64 %i.hj, i1 false)
  %scevgep = getelementptr i8, ptr %.0260.i100605, i64 2
  %scevgep842 = getelementptr i8, ptr %scevgep, i64 %i.hi
  %i.hk = add i32 %i.hb, -270
  %i.hl = sub i32 %i.hk, %i.he
  %i.hm = urem i32 %.fr, 255
  %.neg = sub i32 %i.hm, %.fr
  %i.hn = add i32 %.neg, %i.hl
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph585.preheader, %bb.al
  %.1261.i157.lcssa = phi ptr [ %i.gx, %bb.al ], [ %scevgep842, %.lr.ph585.preheader ] ; 2 uses
  %.0234.i158.lcssa = phi i32 [ %i.gz, %bb.al ], [ %i.hn, %.lr.ph585.preheader ]
  %i.ho = trunc i32 %.0234.i158.lcssa to i8
  %i.hp = getelementptr i8, ptr %.1261.i157.lcssa, i64 1
  store i8 %i.ho, ptr %.1261.i157.lcssa, align 1
  br label %bb.an

bb.am:                                            ; preds = %.critedge7.i137
  %.tr.i138 = trunc i64 %i.gv to i8
  %i.hq = shl nuw i8 %.tr.i138, 4
  store i8 %i.hq, ptr %.0260.i100605, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge
  %.2262.i139 = phi ptr [ %i.hp, %._crit_edge ], [ %i.gx, %bb.am ] ; 2 uses
  %i.hr = and i64 %i.gv, 4294967295
  %i.hs = getelementptr i8, ptr %.2262.i139, i64 %i.hr ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.09.i277 = phi ptr [ %.2262.i139, %bb.an ], [ %i.ht, %bb.ao ] ; 2 uses
  %.0.i278 = phi ptr [ %.0268.i99604, %bb.an ], [ %i.hu, %bb.ao ] ; 2 uses
  %.0.copyload1.i363 = load i64, ptr %.0.i278, align 1
  store i64 %.0.copyload1.i363, ptr %.09.i277, align 1
  %i.ht = getelementptr i8, ptr %.09.i277, i64 8  ; 2 uses
  %i.hu = getelementptr i8, ptr %.0.i278, i64 8
  %i.hv = icmp ult ptr %i.ht, %i.hs
  br i1 %i.hv, label %bb.ao, label %LZ4_wildCopy.exit279, !llvm.loop !15

LZ4_wildCopy.exit279:                             ; preds = %bb.ao, %bb.bc
  %.2283.i142 = phi ptr [ %i.jd, %bb.bc ], [ %.1282.i135.lcssa, %bb.ao ] ; 3 uses
  %.4264.i145 = phi ptr [ %i.kp, %bb.bc ], [ %i.hs, %bb.ao ] ; 3 uses
  %.3242.i147 = phi ptr [ %.0.i379, %bb.bc ], [ %.2241.i136.lcssa, %bb.ao ] ; 2 uses
  %.0238.i148 = phi ptr [ %.7267.i149, %bb.bc ], [ %.0260.i100605, %bb.ao ] ; 3 uses
  %i.hw = ptrtoint ptr %.2283.i142 to i64
  %i.hx = ptrtoint ptr %.3242.i147 to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = trunc i64 %i.hy to i16
  store i16 %i.hz, ptr %.4264.i145, align 1
  %i.ia = getelementptr i8, ptr %.4264.i145, i64 2 ; 3 uses
  %i.ib = getelementptr i8, ptr %.2283.i142, i64 4 ; 4 uses
  %i.ic = getelementptr i8, ptr %.3242.i147, i64 4 ; 2 uses
  %i.id = icmp ult ptr %i.ib, %i.fi
  br i1 %i.id, label %.lr.ph590, label %._crit_edge591, !prof !16

.lr.ph590:                                        ; preds = %LZ4_wildCopy.exit279, %bb.ap
  %.033.i288589 = phi ptr [ %i.ik, %bb.ap ], [ %i.ic, %LZ4_wildCopy.exit279 ] ; 2 uses
  %.036.i287588 = phi ptr [ %i.ij, %bb.ap ], [ %i.ib, %LZ4_wildCopy.exit279 ] ; 3 uses
  %.0.copyload.i347 = load i64, ptr %.033.i288589, align 1 ; 2 uses
  %.0.copyload.i346 = load i64, ptr %.036.i287588, align 1 ; 2 uses
  %.not.i299 = icmp eq i64 %.0.copyload.i347, %.0.copyload.i346
  br i1 %.not.i299, label %bb.ap, label %.thread415

.thread415:                                       ; preds = %.lr.ph590
  %i.ie = xor i64 %.0.copyload.i346, %.0.copyload.i347
  %i.if = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ie) #8, !srcloc !17
  %i.ig = lshr i64 %i.if, 3
  %i.ih = and i64 %i.ig, 4294967295
  %i.ii = getelementptr i8, ptr %.036.i287588, i64 %i.ih
  br label %LZ4_count.exit303

bb.ap:                                            ; preds = %.lr.ph590
  %i.ij = getelementptr i8, ptr %.036.i287588, i64 8 ; 3 uses
  %i.ik = getelementptr i8, ptr %.033.i288589, i64 8 ; 2 uses
  %i.il = icmp ult ptr %i.ij, %i.fi
  br i1 %i.il, label %.lr.ph590, label %._crit_edge591, !prof !18

._crit_edge591:                                   ; preds = %bb.ap, %LZ4_wildCopy.exit279
  %.036.i287.lcssa = phi ptr [ %i.ib, %LZ4_wildCopy.exit279 ], [ %i.ij, %bb.ap ] ; 5 uses
  %.033.i288.lcssa = phi ptr [ %i.ic, %LZ4_wildCopy.exit279 ], [ %i.ik, %bb.ap ] ; 4 uses
  %i.im = icmp ult ptr %.036.i287.lcssa, %i.fr
  br i1 %i.im, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %._crit_edge591
  %.0.copyload.i41.i297 = load i32, ptr %.033.i288.lcssa, align 1
  %.0.copyload.i.i298 = load i32, ptr %.036.i287.lcssa, align 1
  %i.in = icmp eq i32 %.0.copyload.i41.i297, %.0.copyload.i.i298
  br i1 %i.in, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.io = getelementptr i8, ptr %.036.i287.lcssa, i64 4
  %i.ip = getelementptr i8, ptr %.033.i288.lcssa, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge591
  %.238.i290 = phi ptr [ %i.io, %bb.ar ], [ %.036.i287.lcssa, %bb.aq ], [ %.036.i287.lcssa, %._crit_edge591 ] ; 5 uses
  %.235.i291 = phi ptr [ %i.ip, %bb.ar ], [ %.033.i288.lcssa, %bb.aq ], [ %.033.i288.lcssa, %._crit_edge591 ] ; 4 uses
  %i.iq = icmp ult ptr %.238.i290, %i.fs
  br i1 %i.iq, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.0.copyload.i373 = load i16, ptr %.235.i291, align 1
  %.0.copyload.i372 = load i16, ptr %.238.i290, align 1
  %i.ir = icmp eq i16 %.0.copyload.i373, %.0.copyload.i372
  br i1 %i.ir, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.is = getelementptr i8, ptr %.238.i290, i64 2
  %i.it = getelementptr i8, ptr %.235.i291, i64 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.339.i292 = phi ptr [ %i.is, %bb.au ], [ %.238.i290, %bb.at ], [ %.238.i290, %bb.as ] ; 4 uses
  %.3.i293 = phi ptr [ %i.it, %bb.au ], [ %.235.i291, %bb.at ], [ %.235.i291, %bb.as ]
  %i.iu = icmp ult ptr %.339.i292, %i.fj
  br i1 %i.iu, label %bb.aw, label %LZ4_count.exit303

bb.aw:                                            ; preds = %bb.av
  %i.iv = load i8, ptr %.3.i293, align 1
  %i.iw = load i8, ptr %.339.i292, align 1
  %i.ix = icmp eq i8 %i.iv, %i.iw
  %spec.select.i296.idx = zext i1 %i.ix to i64
  %spec.select.i296 = getelementptr i8, ptr %.339.i292, i64 %spec.select.i296.idx
  br label %LZ4_count.exit303

LZ4_count.exit303:                                ; preds = %bb.av, %bb.aw, %.thread415
  %.sink1053 = phi ptr [ %i.ii, %.thread415 ], [ %.339.i292, %bb.av ], [ %spec.select.i296, %bb.aw ]
  %i.iy = ptrtoint ptr %.sink1053 to i64
  %i.iz = ptrtoint ptr %i.ib to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %.2.i295.in.fr = freeze i64 %i.ja               ; 3 uses
  %.2.i295 = trunc i64 %.2.i295.in.fr to i32      ; 3 uses
  %i.jb = add i64 %.2.i295.in.fr, 4
  %i.jc = and i64 %i.jb, 4294967295
  %i.jd = getelementptr i8, ptr %.2283.i142, i64 %i.jc ; 11 uses
  %i.je = icmp ugt i32 %.2.i295, 14
  %i.jf = load i8, ptr %.0238.i148, align 1       ; 2 uses
  br i1 %i.je, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %LZ4_count.exit303
  %i.jg = add i8 %i.jf, 15
  store i8 %i.jg, ptr %.0238.i148, align 1
  %i.jh = add i32 %.2.i295, -15                   ; 2 uses
  store i32 -1, ptr %i.ia, align 1
  %i.ji = icmp ugt i32 %i.jh, 1019
  br i1 %i.ji, label %.lr.ph597.preheader, label %._crit_edge598

.lr.ph597.preheader:                              ; preds = %bb.ax
  %scevgep843 = getelementptr i8, ptr %.4264.i145, i64 6 ; 2 uses
  %i.jj = add i32 %.2.i295, -1035                 ; 2 uses
  %i.jk = udiv i32 %i.jj, 1020
  %i.jl = shl nuw nsw i32 %i.jk, 2
  %i.jm = zext nneg i32 %i.jl to i64              ; 2 uses
  %i.jn = add nuw nsw i64 %i.jm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep843, i8 -1, i64 %i.jn, i1 false)
  %scevgep845 = getelementptr i8, ptr %scevgep843, i64 %i.jm
  %i.jo = urem i32 %i.jj, 1020
  br label %._crit_edge598

._crit_edge598:                                   ; preds = %.lr.ph597.preheader, %bb.ax
  %.5265.i155.lcssa = phi ptr [ %i.ia, %bb.ax ], [ %scevgep845, %.lr.ph597.preheader ]
  %.2233.i156.lcssa = phi i32 [ %i.jh, %bb.ax ], [ %i.jo, %.lr.ph597.preheader ]
  %.lhs.trunc515 = trunc nuw nsw i32 %.2233.i156.lcssa to i16 ; 2 uses
  %i.jp = udiv i16 %.lhs.trunc515, 255
  %i.jq = zext nneg i16 %i.jp to i64
  %i.jr = getelementptr i8, ptr %.5265.i155.lcssa, i64 %i.jq ; 2 uses
  %i.js = urem i16 %.lhs.trunc515, 255
  %i.jt = trunc nuw i16 %i.js to i8
  %i.ju = getelementptr i8, ptr %i.jr, i64 1
  store i8 %i.jt, ptr %i.jr, align 1
  br label %bb.az

bb.ay:                                            ; preds = %LZ4_count.exit303
  %i.jv = trunc i64 %.2.i295.in.fr to i8
  %i.jw = add i8 %i.jf, %i.jv
  store i8 %i.jw, ptr %.0238.i148, align 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge598
  %.7267.i149 = phi ptr [ %i.ia, %bb.ay ], [ %i.ju, %._crit_edge598 ] ; 6 uses
  %i.jx = icmp ugt ptr %i.jd, %i.fi
  br i1 %i.jx, label %.thread410, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jy = getelementptr i8, ptr %i.jd, i64 -2     ; 2 uses
  %.0.copyload.i359 = load i64, ptr %i.jy, align 1
  %i.jz = mul i64 %.0.copyload.i359, -3523014627271114752
  %i.ka = lshr i64 %i.jz, 52
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.kb, %i.g
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = getelementptr [4 x i8], ptr %0, i64 %i.ka
  store i32 %i.kd, ptr %i.ke, align 4
  %.0.copyload.i341 = load i64, ptr %i.jd, align 1
  %i.kf = mul i64 %.0.copyload.i341, -3523014627271114752
  %i.kg = lshr i64 %i.kf, 52
  %i.kh = getelementptr [4 x i8], ptr %0, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = zext i32 %i.ki to i64
  %.0.i379 = getelementptr i8, ptr %1, i64 %i.kj  ; 3 uses
  %i.kk = ptrtoint ptr %i.jd to i64
  %i.kl = sub i64 %i.kk, %i.g
  %i.km = trunc i64 %i.kl to i32
  store i32 %i.km, ptr %i.kh, align 4
  %i.kn = getelementptr i8, ptr %.0.i379, i64 65535
  %.not304.i154 = icmp ult ptr %i.kn, %i.jd
  br i1 %.not304.i154, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.0.copyload.i265 = load i32, ptr %.0.i379, align 1
  %.0.copyload.i264 = load i32, ptr %i.jd, align 1
  %i.ko = icmp eq i32 %.0.copyload.i265, %.0.copyload.i264
  br i1 %i.ko, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kp = getelementptr i8, ptr %.7267.i149, i64 1
  store i8 0, ptr %.7267.i149, align 1
  br label %LZ4_wildCopy.exit279

bb.bd:                                            ; preds = %bb.ba, %bb.bb
  %i.kq = getelementptr i8, ptr %i.jd, i64 2      ; 2 uses
  %.not.i110569 = icmp ugt ptr %i.kq, %i.fi
  br i1 %.not.i110569, label %.thread410, label %.lr.ph, !prof !21

.thread410:                                       ; preds = %bb.bd, %.critedge.i159.backedge, %bb.az, %bb.ah
  %.2270.i121.ph = phi ptr [ %.0268.i99604, %.critedge.i159.backedge ], [ %i.jd, %bb.az ], [ %1, %bb.ah ], [ %i.jd, %bb.bd ] ; 2 uses
  %.8.i122.ph = phi ptr [ %.0260.i100605, %.critedge.i159.backedge ], [ %.7267.i149, %bb.az ], [ %2, %bb.ah ], [ %.7267.i149, %bb.bd ] ; 5 uses
  %i.kr = ptrtoint ptr %i.fh to i64
  %i.ks = ptrtoint ptr %.2270.i121.ph to i64      ; 2 uses
  %i.kt = sub i64 %i.kr, %i.ks                    ; 5 uses
  %i.ku = icmp ugt i64 %i.kt, 14
  br i1 %i.ku, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.thread410
  %i.kv = add i64 %i.kt, -15                      ; 2 uses
  store i8 -16, ptr %.8.i122.ph, align 1
  %.10.i134610 = getelementptr i8, ptr %.8.i122.ph, i64 1 ; 2 uses
  %i.kw = icmp ugt i64 %i.kv, 254
  br i1 %i.kw, label %.lr.ph614.preheader, label %._crit_edge615

.lr.ph614.preheader:                              ; preds = %bb.be
  %7 = add i64 %i.g, %i.fg
  %i.kx = add i64 %7, -270
  %i.ky = sub i64 %i.kx, %i.ks                    ; 2 uses
  %i.kz = udiv i64 %i.ky, 255                     ; 3 uses
  %i.la = add nuw nsw i64 %i.kz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.10.i134610, i8 -1, i64 %i.la, i1 false)
  %.neg961 = mul i64 %i.kz, -255
  %i.lb = add i64 %.neg961, %i.ky
  %i.lc = getelementptr i8, ptr %.8.i122.ph, i64 %i.kz
  %scevgep846 = getelementptr i8, ptr %i.lc, i64 2
  br label %._crit_edge615

._crit_edge615:                                   ; preds = %.lr.ph614.preheader, %bb.be
  %.0.i133.lcssa = phi i64 [ %i.kv, %bb.be ], [ %i.lb, %.lr.ph614.preheader ]
  %.10.i134.lcssa = phi ptr [ %.10.i134610, %bb.be ], [ %scevgep846, %.lr.ph614.preheader ] ; 2 uses
  %i.ld = trunc nuw i64 %.0.i133.lcssa to i8
  store i8 %i.ld, ptr %.10.i134.lcssa, align 1
  br label %bb.bg

bb.bf:                                            ; preds = %.thread410
  %.tr306.i128 = trunc nuw nsw i64 %i.kt to i8
  %i.le = shl nuw i8 %.tr306.i128, 4
  store i8 %i.le, ptr %.8.i122.ph, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %._crit_edge615
  %.10.pn.i129 = phi ptr [ %.10.i134.lcssa, %._crit_edge615 ], [ %.8.i122.ph, %bb.bf ]
  %.11.i130 = getelementptr i8, ptr %.10.pn.i129, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11.i130, ptr align 1 %.2270.i121.ph, i64 %i.kt, i1 false)
  %i.lf = getelementptr i8, ptr %.11.i130, i64 %i.kt
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %2 to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = trunc i64 %i.li to i32
  br label %LZ4_compress_generic.exit224

bb.bh:                                            ; preds = %bb.c
  %i.lk = sext i32 %4 to i64
  %i.ll = getelementptr i8, ptr %2, i64 %i.lk     ; 4 uses
  br i1 %i.f, label %bb.bi, label %bb.cn

bb.bi:                                            ; preds = %bb.bh
  %i.lm = sext i32 %3 to i64                      ; 2 uses
  %i.ln = getelementptr i8, ptr %1, i64 %i.lm     ; 5 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 -12    ; 4 uses
  %i.lp = getelementptr i8, ptr %i.ln, i64 -5
  br i1 %i.a, label %LZ4_compress_generic.exit224, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lq = icmp samesign ult i32 %3, 13
  br i1 %i.lq, label %.thread459, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.0.copyload.i = load i32, ptr %1, align 1
  %i.lr = mul i32 %.0.copyload.i, -1640531535
  %i.ls = lshr i32 %i.lr, 19
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr [2 x i8], ptr %0, i64 %i.lt
  store i16 0, ptr %i.lu, align 2
  %i.lv = shl i32 %spec.store.select, 6
  %i.lw = getelementptr i8, ptr %i.ln, i64 -8
  %i.lx = getelementptr i8, ptr %i.ln, i64 -6
  br label %bb.bl

.loopexit:                                        ; preds = %bb.cg, %bb.ch
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit, %bb.bk
  %.0268.i35 = phi ptr [ %1, %bb.bk ], [ %i.pj, %.loopexit ] ; 6 uses
  %.0260.i36 = phi ptr [ %2, %bb.bk ], [ %.7267.i85.ph, %.loopexit ] ; 6 uses
  %.0281.i33 = getelementptr i8, ptr %.0268.i35, i64 1 ; 2 uses
  %.0256.i37.in.in = load i32, ptr %.0281.i33, align 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %.1257.i40.in.in = phi i32 [ %.0256.i37.in.in, %bb.bl ], [ %.0.copyload.i250, %bb.bn ]
  %.0237.i43 = phi ptr [ %.0281.i33, %bb.bl ], [ %i.lz, %bb.bn ] ; 6 uses
  %.0236.i44 = phi i32 [ 1, %bb.bl ], [ %i.ma, %bb.bn ]
  %.0235.i45 = phi i32 [ %i.lv, %bb.bl ], [ %i.mb, %bb.bn ] ; 2 uses
  %i.ly = zext nneg i32 %.0236.i44 to i64
  %i.lz = getelementptr i8, ptr %.0237.i43, i64 %i.ly ; 3 uses
  %.not.i46 = icmp ugt ptr %i.lz, %i.lo
  br i1 %.not.i46, label %.thread459, label %bb.bn, !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.ma = lshr i32 %.0235.i45, 6
  %i.mb = add i32 %.0235.i45, 1
  %.1257.i40.in = mul i32 %.1257.i40.in.in, -1640531535
  %.1257.i40 = lshr i32 %.1257.i40.in, 19
  %i.mc = zext nneg i32 %.1257.i40 to i64
  %i.md = getelementptr [2 x i8], ptr %0, i64 %i.mc ; 2 uses
  %i.me = load i16, ptr %i.md, align 2
  %i.mf = zext i16 %i.me to i64                   ; 2 uses
  %.0.i380 = getelementptr i8, ptr %1, i64 %i.mf
  %.0.copyload.i250 = load i32, ptr %i.lz, align 1
  %i.mg = ptrtoint ptr %.0237.i43 to i64          ; 2 uses
  %i.mh = sub i64 %i.mg, %i.g
  %i.mi = trunc i64 %i.mh to i16
  store i16 %i.mi, ptr %i.md, align 2
  %.0.copyload.i271 = load i32, ptr %.0.i380, align 1
  %.0.copyload.i270 = load i32, ptr %.0237.i43, align 1
  %.not300.i52 = icmp eq i32 %.0.copyload.i271, %.0.copyload.i270
  br i1 %.not300.i52, label %.preheader, label %bb.bm, !llvm.loop !12

.preheader:                                       ; preds = %bb.bn
  %.0.i380.le = getelementptr i8, ptr %1, i64 %i.mf ; 3 uses
  %i.mj = icmp ugt ptr %.0237.i43, %.0268.i35
  %i.mk = icmp ugt ptr %.0.i380.le, %1
  %i.ml = and i1 %i.mj, %i.mk
  br i1 %i.ml, label %.lr.ph712, label %.critedge7.i73

.lr.ph712:                                        ; preds = %.preheader, %bb.bo
  %.2241.i72711 = phi ptr [ %i.mo, %bb.bo ], [ %.0.i380.le, %.preheader ] ; 2 uses
  %.1282.i71710 = phi ptr [ %i.mm, %bb.bo ], [ %.0237.i43, %.preheader ] ; 2 uses
  %i.mm = getelementptr i8, ptr %.1282.i71710, i64 -1 ; 4 uses
  %i.mn = load i8, ptr %i.mm, align 1
  %i.mo = getelementptr i8, ptr %.2241.i72711, i64 -1 ; 4 uses
  %i.mp = load i8, ptr %i.mo, align 1
  %i.mq = icmp eq i8 %i.mn, %i.mp
  br i1 %i.mq, label %bb.bo, label %.critedge7.i73.loopexit

bb.bo:                                            ; preds = %.lr.ph712
  %i.mr = icmp ugt ptr %i.mm, %.0268.i35
  %i.ms = icmp ugt ptr %i.mo, %1
  %i.mt = and i1 %i.mr, %i.ms
  br i1 %i.mt, label %.lr.ph712, label %.critedge7.i73.loopexit, !llvm.loop !14

.critedge7.i73.loopexit:                          ; preds = %.lr.ph712, %bb.bo
  %.1282.i71.lcssa.ph = phi ptr [ %i.mm, %bb.bo ], [ %.1282.i71710, %.lr.ph712 ] ; 2 uses
  %.2241.i72.lcssa.ph = phi ptr [ %i.mo, %bb.bo ], [ %.2241.i72711, %.lr.ph712 ]
  %.pre = ptrtoint ptr %.1282.i71.lcssa.ph to i64
  br label %.critedge7.i73

.critedge7.i73:                                   ; preds = %.critedge7.i73.loopexit, %.preheader
  %.pre-phi = phi i64 [ %.pre, %.critedge7.i73.loopexit ], [ %i.mg, %.preheader ] ; 2 uses
  %.1282.i71.lcssa = phi ptr [ %.1282.i71.lcssa.ph, %.critedge7.i73.loopexit ], [ %.0237.i43, %.preheader ]
  %.2241.i72.lcssa = phi ptr [ %.2241.i72.lcssa.ph, %.critedge7.i73.loopexit ], [ %.0.i380.le, %.preheader ]
  %i.mu = ptrtoint ptr %.0268.i35 to i64          ; 2 uses
  %i.mv = sub i64 %.pre-phi, %i.mu                ; 3 uses
  %i.mw = trunc i64 %i.mv to i32                  ; 3 uses
  %i.mx = getelementptr i8, ptr %.0260.i36, i64 1 ; 4 uses
  %i.my = and i64 %i.mv, 4294967295               ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mx, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 8
  %i.nb = udiv i32 %i.mw, 255
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr i8, ptr %i.na, i64 %i.nc
  %i.ne = icmp ugt ptr %i.nd, %i.ll
  br i1 %i.ne, label %LZ4_compress_generic.exit224, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %.critedge7.i73
  %i.nf = icmp ugt i32 %i.mw, 14
  br i1 %i.nf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ng = add i32 %i.mw, -15                      ; 3 uses
  store i8 -16, ptr %.0260.i36, align 1
  %i.nh = icmp sgt i32 %i.ng, 254
  br i1 %i.nh, label %.lr.ph721.preheader, label %._crit_edge722

.lr.ph721.preheader:                              ; preds = %bb.bq
  %i.ni = trunc i64 %.pre-phi to i32              ; 2 uses
  %i.nj = add i32 %i.ni, 239
  %i.nk = tail call i32 @llvm.umin.i32(i32 %i.ng, i32 509)
  %i.nl = trunc i64 %i.mu to i32                  ; 2 uses
  %i.nm = add i32 %i.nk, %i.nl
  %i.nn = sub i32 %i.nj, %i.nm
  %.fr970 = freeze i32 %i.nn                      ; 3 uses
  %i.no = udiv i32 %.fr970, 255
  %i.np = zext nneg i32 %i.no to i64              ; 2 uses
  %i.nq = add nuw nsw i64 %i.np, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.mx, i8 -1, i64 %i.nq, i1 false)
  %scevgep864 = getelementptr i8, ptr %.0260.i36, i64 2
  %scevgep866 = getelementptr i8, ptr %scevgep864, i64 %i.np
  %i.nr = add i32 %i.ni, -270
  %i.ns = sub i32 %i.nr, %i.nl
  %i.nt = urem i32 %.fr970, 255
  %.neg971 = sub i32 %i.nt, %.fr970
  %i.nu = add i32 %.neg971, %i.ns
  br label %._crit_edge722

._crit_edge722:                                   ; preds = %.lr.ph721.preheader, %bb.bq
  %.1261.i93.lcssa = phi ptr [ %i.mx, %bb.bq ], [ %scevgep866, %.lr.ph721.preheader ] ; 2 uses
  %.0234.i94.lcssa = phi i32 [ %i.ng, %bb.bq ], [ %i.nu, %.lr.ph721.preheader ]
  %i.nv = trunc i32 %.0234.i94.lcssa to i8
  %i.nw = getelementptr i8, ptr %.1261.i93.lcssa, i64 1
  store i8 %i.nv, ptr %.1261.i93.lcssa, align 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %.tr.i74 = trunc i64 %i.mv to i8
  %i.nx = shl nuw i8 %.tr.i74, 4
  store i8 %i.nx, ptr %.0260.i36, align 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge722
  %.2262.i75 = phi ptr [ %i.nw, %._crit_edge722 ], [ %i.mx, %bb.br ] ; 2 uses
  %i.ny = getelementptr i8, ptr %.2262.i75, i64 %i.my ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.09.i280 = phi ptr [ %.2262.i75, %bb.bs ], [ %i.nz, %bb.bt ] ; 2 uses
  %.0.i281 = phi ptr [ %.0268.i35, %bb.bs ], [ %i.oa, %bb.bt ] ; 2 uses
  %.0.copyload1.i362 = load i64, ptr %.0.i281, align 1
  store i64 %.0.copyload1.i362, ptr %.09.i280, align 1
  %i.nz = getelementptr i8, ptr %.09.i280, i64 8  ; 2 uses
  %i.oa = getelementptr i8, ptr %.0.i281, i64 8
  %i.ob = icmp ult ptr %i.nz, %i.ny
  br i1 %i.ob, label %bb.bt, label %LZ4_wildCopy.exit282, !llvm.loop !15

LZ4_wildCopy.exit282:                             ; preds = %bb.bt, %bb.ci
  %.2283.i78 = phi ptr [ %i.pj, %bb.ci ], [ %.1282.i71.lcssa, %bb.bt ] ; 3 uses
  %.4264.i81 = phi ptr [ %i.rc, %bb.ci ], [ %i.ny, %bb.bt ] ; 4 uses
  %.3242.i83 = phi ptr [ %.0.i381, %bb.ci ], [ %.2241.i72.lcssa, %bb.bt ] ; 2 uses
  %.0238.i84 = phi ptr [ %.7267.i85.ph, %bb.ci ], [ %.0260.i36, %bb.bt ] ; 3 uses
  %i.oc = ptrtoint ptr %.2283.i78 to i64
  %i.od = ptrtoint ptr %.3242.i83 to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = trunc i64 %i.oe to i16
  store i16 %i.of, ptr %.4264.i81, align 1
  %i.og = getelementptr i8, ptr %.4264.i81, i64 2 ; 3 uses
  %i.oh = getelementptr i8, ptr %.2283.i78, i64 4 ; 4 uses
  %i.oi = getelementptr i8, ptr %.3242.i83, i64 4 ; 2 uses
  %i.oj = icmp ult ptr %i.oh, %i.lo
  br i1 %i.oj, label %.lr.ph727, label %._crit_edge728, !prof !16

.lr.ph727:                                        ; preds = %LZ4_wildCopy.exit282, %bb.bu
  %.033.i305726 = phi ptr [ %i.oq, %bb.bu ], [ %i.oi, %LZ4_wildCopy.exit282 ] ; 2 uses
  %.036.i304725 = phi ptr [ %i.op, %bb.bu ], [ %i.oh, %LZ4_wildCopy.exit282 ] ; 3 uses
  %.0.copyload.i345 = load i64, ptr %.033.i305726, align 1 ; 2 uses
  %.0.copyload.i344 = load i64, ptr %.036.i304725, align 1 ; 2 uses
  %.not.i316 = icmp eq i64 %.0.copyload.i345, %.0.copyload.i344
  br i1 %.not.i316, label %bb.bu, label %.thread442

.thread442:                                       ; preds = %.lr.ph727
  %i.ok = xor i64 %.0.copyload.i344, %.0.copyload.i345
  %i.ol = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ok) #8, !srcloc !17
  %i.om = lshr i64 %i.ol, 3
  %i.on = and i64 %i.om, 4294967295
  %i.oo = getelementptr i8, ptr %.036.i304725, i64 %i.on
  br label %LZ4_count.exit320

bb.bu:                                            ; preds = %.lr.ph727
  %i.op = getelementptr i8, ptr %.036.i304725, i64 8 ; 3 uses
  %i.oq = getelementptr i8, ptr %.033.i305726, i64 8 ; 2 uses
  %i.or = icmp ult ptr %i.op, %i.lo
  br i1 %i.or, label %.lr.ph727, label %._crit_edge728, !prof !18

._crit_edge728:                                   ; preds = %bb.bu, %LZ4_wildCopy.exit282
  %.036.i304.lcssa = phi ptr [ %i.oh, %LZ4_wildCopy.exit282 ], [ %i.op, %bb.bu ] ; 5 uses
  %.033.i305.lcssa = phi ptr [ %i.oi, %LZ4_wildCopy.exit282 ], [ %i.oq, %bb.bu ] ; 4 uses
  %i.os = icmp ult ptr %.036.i304.lcssa, %i.lw
  br i1 %i.os, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %._crit_edge728
  %.0.copyload.i41.i314 = load i32, ptr %.033.i305.lcssa, align 1
  %.0.copyload.i.i315 = load i32, ptr %.036.i304.lcssa, align 1
  %i.ot = icmp eq i32 %.0.copyload.i41.i314, %.0.copyload.i.i315
  br i1 %i.ot, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ou = getelementptr i8, ptr %.036.i304.lcssa, i64 4
  %i.ov = getelementptr i8, ptr %.033.i305.lcssa, i64 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %._crit_edge728
  %.238.i307 = phi ptr [ %i.ou, %bb.bw ], [ %.036.i304.lcssa, %bb.bv ], [ %.036.i304.lcssa, %._crit_edge728 ] ; 5 uses
  %.235.i308 = phi ptr [ %i.ov, %bb.bw ], [ %.033.i305.lcssa, %bb.bv ], [ %.033.i305.lcssa, %._crit_edge728 ] ; 4 uses
  %i.ow = icmp ult ptr %.238.i307, %i.lx
  br i1 %i.ow, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %.0.copyload.i371 = load i16, ptr %.235.i308, align 1
  %.0.copyload.i370 = load i16, ptr %.238.i307, align 1
  %i.ox = icmp eq i16 %.0.copyload.i371, %.0.copyload.i370
  br i1 %i.ox, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.oy = getelementptr i8, ptr %.238.i307, i64 2
  %i.oz = getelementptr i8, ptr %.235.i308, i64 2
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.339.i309 = phi ptr [ %i.oy, %bb.bz ], [ %.238.i307, %bb.by ], [ %.238.i307, %bb.bx ] ; 4 uses
  %.3.i310 = phi ptr [ %i.oz, %bb.bz ], [ %.235.i308, %bb.by ], [ %.235.i308, %bb.bx ]
  %i.pa = icmp ult ptr %.339.i309, %i.lp
  br i1 %i.pa, label %bb.cb, label %LZ4_count.exit320

bb.cb:                                            ; preds = %bb.ca
  %i.pb = load i8, ptr %.3.i310, align 1
  %i.pc = load i8, ptr %.339.i309, align 1
  %i.pd = icmp eq i8 %i.pb, %i.pc
  %spec.select.i313.idx = zext i1 %i.pd to i64
  %spec.select.i313 = getelementptr i8, ptr %.339.i309, i64 %spec.select.i313.idx
  br label %LZ4_count.exit320

LZ4_count.exit320:                                ; preds = %bb.ca, %bb.cb, %.thread442
  %.sink1055 = phi ptr [ %i.oo, %.thread442 ], [ %.339.i309, %bb.ca ], [ %spec.select.i313, %bb.cb ]
  %i.pe = ptrtoint ptr %.sink1055 to i64
  %i.pf = ptrtoint ptr %i.oh to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %.2.i312.in.fr = freeze i64 %i.pg               ; 4 uses
  %.2.i312 = trunc i64 %.2.i312.in.fr to i32      ; 3 uses
  %i.ph = add i64 %.2.i312.in.fr, 4
  %i.pi = and i64 %i.ph, 4294967295
  %i.pj = getelementptr i8, ptr %.2283.i78, i64 %i.pi ; 9 uses
  %i.pk = getelementptr i8, ptr %.4264.i81, i64 8
  %i.pl = lshr i64 %.2.i312.in.fr, 8
  %i.pm = and i64 %i.pl, 16777215
  %i.pn = getelementptr i8, ptr %i.pk, i64 %i.pm
  %i.po = icmp ugt ptr %i.pn, %i.ll
  br i1 %i.po, label %LZ4_compress_generic.exit224, label %bb.cc, !prof !22

bb.cc:                                            ; preds = %LZ4_count.exit320
  %i.pp = icmp ugt i32 %.2.i312, 14
  %i.pq = load i8, ptr %.0238.i84, align 1        ; 2 uses
  br i1 %i.pp, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.pr = add i8 %i.pq, 15
  store i8 %i.pr, ptr %.0238.i84, align 1
  %i.ps = add i32 %.2.i312, -15                   ; 2 uses
  store i32 -1, ptr %i.og, align 1
  %i.pt = icmp ugt i32 %i.ps, 1019
  br i1 %i.pt, label %.lr.ph734.preheader, label %._crit_edge735

.lr.ph734.preheader:                              ; preds = %bb.cd
  %scevgep867 = getelementptr i8, ptr %.4264.i81, i64 6 ; 2 uses
  %i.pu = add i32 %.2.i312, -1035                 ; 2 uses
  %i.pv = udiv i32 %i.pu, 1020
  %i.pw = shl nuw nsw i32 %i.pv, 2
  %i.px = zext nneg i32 %i.pw to i64              ; 2 uses
  %i.py = add nuw nsw i64 %i.px, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep867, i8 -1, i64 %i.py, i1 false)
  %scevgep869 = getelementptr i8, ptr %scevgep867, i64 %i.px
  %i.pz = urem i32 %i.pu, 1020
  br label %._crit_edge735

._crit_edge735:                                   ; preds = %.lr.ph734.preheader, %bb.cd
  %.5265.i91.lcssa = phi ptr [ %i.og, %bb.cd ], [ %scevgep869, %.lr.ph734.preheader ]
  %.2233.i92.lcssa = phi i32 [ %i.ps, %bb.cd ], [ %i.pz, %.lr.ph734.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.2233.i92.lcssa to i16 ; 2 uses
  %i.qa = udiv i16 %.lhs.trunc, 255
  %i.qb = zext nneg i16 %i.qa to i64
  %i.qc = getelementptr i8, ptr %.5265.i91.lcssa, i64 %i.qb ; 2 uses
  %i.qd = urem i16 %.lhs.trunc, 255
  %i.qe = trunc nuw i16 %i.qd to i8
  %i.qf = getelementptr i8, ptr %i.qc, i64 1
  store i8 %i.qe, ptr %i.qc, align 1
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.qg = trunc i64 %.2.i312.in.fr to i8
  %i.qh = add i8 %i.pq, %i.qg
  store i8 %i.qh, ptr %.0238.i84, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge735
  %.7267.i85.ph = phi ptr [ %i.og, %bb.ce ], [ %i.qf, %._crit_edge735 ] ; 5 uses
  %i.qi = icmp ugt ptr %i.pj, %i.lo
  br i1 %i.qi, label %.thread459, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qj = getelementptr i8, ptr %i.pj, i64 -2     ; 2 uses
  %.0.copyload.i251 = load i32, ptr %i.qj, align 1
  %i.qk = mul i32 %.0.copyload.i251, -1640531535
  %i.ql = lshr i32 %i.qk, 19
  %i.qm = ptrtoint ptr %i.qj to i64
  %i.qn = sub i64 %i.qm, %i.g
  %i.qo = zext nneg i32 %i.ql to i64
  %i.qp = trunc i64 %i.qn to i16
  %i.qq = getelementptr [2 x i8], ptr %0, i64 %i.qo
  store i16 %i.qp, ptr %i.qq, align 2
  %.0.copyload.i.i339 = load i32, ptr %i.pj, align 1
  %i.qr = mul i32 %.0.copyload.i.i339, -1640531535
  %i.qs = lshr i32 %i.qr, 19
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = getelementptr [2 x i8], ptr %0, i64 %i.qt ; 2 uses
  %i.qv = load i16, ptr %i.qu, align 2
  %i.qw = zext i16 %i.qv to i64
  %.0.i381 = getelementptr i8, ptr %1, i64 %i.qw  ; 3 uses
  %i.qx = ptrtoint ptr %i.pj to i64
  %i.qy = sub i64 %i.qx, %i.g
  %i.qz = trunc i64 %i.qy to i16
  store i16 %i.qz, ptr %i.qu, align 2
  %i.ra = getelementptr i8, ptr %.0.i381, i64 65535
  %.not304.i90 = icmp ult ptr %i.ra, %i.pj
  br i1 %.not304.i90, label %.loopexit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.0.copyload.i269 = load i32, ptr %.0.i381, align 1
  %.0.copyload.i268 = load i32, ptr %i.pj, align 1
  %i.rb = icmp eq i32 %.0.copyload.i269, %.0.copyload.i268
  br i1 %i.rb, label %bb.ci, label %.loopexit

bb.ci:                                            ; preds = %bb.ch
  %i.rc = getelementptr i8, ptr %.7267.i85.ph, i64 1
  store i8 0, ptr %.7267.i85.ph, align 1
  br label %LZ4_wildCopy.exit282

.thread459:                                       ; preds = %bb.bm, %bb.cf, %bb.bj
  %.3271.i62 = phi ptr [ %1, %bb.bj ], [ %i.pj, %bb.cf ], [ %.0268.i35, %bb.bm ] ; 2 uses
  %.9.i63 = phi ptr [ %2, %bb.bj ], [ %.7267.i85.ph, %bb.cf ], [ %.0260.i36, %bb.bm ] ; 6 uses
  %i.rd = ptrtoint ptr %i.ln to i64
  %i.re = ptrtoint ptr %.3271.i62 to i64          ; 2 uses
  %i.rf = sub i64 %i.rd, %i.re                    ; 7 uses
  %i.rg = ptrtoint ptr %.9.i63 to i64
  %i.rh = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ri = add i64 %i.rf, 240
  %i.rj = udiv i64 %i.ri, 255
  %reass.sub746 = sub i64 %i.rg, %i.rh
  %i.rk = add i64 %reass.sub746, 1
  %i.rl = add i64 %i.rk, %i.rf
  %i.rm = add i64 %i.rl, %i.rj
  %i.rn = zext i32 %4 to i64
  %i.ro = icmp ugt i64 %i.rm, %i.rn
  br i1 %i.ro, label %LZ4_compress_generic.exit224, label %bb.cj

bb.cj:                                            ; preds = %.thread459
  %i.rp = icmp ugt i64 %i.rf, 14
  br i1 %i.rp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.rq = add i64 %i.rf, -15                      ; 2 uses
  store i8 -16, ptr %.9.i63, align 1
  %.10.i70738 = getelementptr i8, ptr %.9.i63, i64 1 ; 2 uses
  %i.rr = icmp ugt i64 %i.rq, 254
  br i1 %i.rr, label %.lr.ph742.preheader, label %._crit_edge743

.lr.ph742.preheader:                              ; preds = %bb.ck
  %8 = add i64 %i.g, %i.lm
  %i.rs = add i64 %8, -270
  %i.rt = sub i64 %i.rs, %i.re                    ; 2 uses
  %i.ru = udiv i64 %i.rt, 255                     ; 3 uses
  %i.rv = add nuw nsw i64 %i.ru, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.10.i70738, i8 -1, i64 %i.rv, i1 false)
  %.neg973 = mul i64 %i.ru, -255
  %i.rw = add i64 %.neg973, %i.rt
  %i.rx = getelementptr i8, ptr %.9.i63, i64 %i.ru
  %scevgep870 = getelementptr i8, ptr %i.rx, i64 2
  br label %._crit_edge743

._crit_edge743:                                   ; preds = %.lr.ph742.preheader, %bb.ck
  %.0.i69.lcssa = phi i64 [ %i.rq, %bb.ck ], [ %i.rw, %.lr.ph742.preheader ]
  %.10.i70.lcssa = phi ptr [ %.10.i70738, %bb.ck ], [ %scevgep870, %.lr.ph742.preheader ] ; 2 uses
  %i.ry = trunc nuw i64 %.0.i69.lcssa to i8
  store i8 %i.ry, ptr %.10.i70.lcssa, align 1
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %.tr306.i64 = trunc nuw nsw i64 %i.rf to i8
  %i.rz = shl nuw i8 %.tr306.i64, 4
  store i8 %i.rz, ptr %.9.i63, align 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge743
  %.10.pn.i65 = phi ptr [ %.10.i70.lcssa, %._crit_edge743 ], [ %.9.i63, %bb.cl ]
  %.11.i66 = getelementptr i8, ptr %.10.pn.i65, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11.i66, ptr align 1 %.3271.i62, i64 %i.rf, i1 false)
  %i.sa = getelementptr i8, ptr %.11.i66, i64 %i.rf
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = sub i64 %i.sb, %i.rh
  %i.sd = trunc i64 %i.sc to i32
  br label %LZ4_compress_generic.exit224

bb.cn:                                            ; preds = %bb.bh
  %i.se = zext nneg i32 %3 to i64                 ; 2 uses
  %i.sf = getelementptr i8, ptr %1, i64 %i.se     ; 5 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 -12    ; 6 uses
  %i.sh = getelementptr i8, ptr %i.sf, i64 -5
  br i1 %i.a, label %LZ4_compress_generic.exit224, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.0.copyload.i350 = load i64, ptr %1, align 1
  %i.si = mul i64 %.0.copyload.i350, -3523014627271114752
  %i.sj = lshr i64 %i.si, 52
  %i.sk = getelementptr [4 x i8], ptr %0, i64 %i.sj
  store i32 0, ptr %i.sk, align 4
  %i.sl = shl i32 %spec.store.select, 6
  %i.sm = or disjoint i32 %i.sl, 1
  %i.sn = and i32 %spec.store.select, 67108863
  %i.so = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %.not.i655694 = icmp ugt ptr %i.so, %i.sg
  br i1 %.not.i655694, label %.thread471, label %.lr.ph659.lr.ph, !prof !19

.lr.ph659.lr.ph:                                  ; preds = %bb.co
  %i.sp = getelementptr i8, ptr %i.sf, i64 -8
  %i.sq = getelementptr i8, ptr %i.sf, i64 -6
  br label %.lr.ph659

.lr.ph659:                                        ; preds = %.lr.ph659.lr.ph, %bb.dm
  %i.sr = phi ptr [ %i.so, %.lr.ph659.lr.ph ], [ %i.xz, %bb.dm ]
  %.0260.i696 = phi ptr [ %2, %.lr.ph659.lr.ph ], [ %.7267.i.ph, %bb.dm ] ; 6 uses
  %.0268.i695 = phi ptr [ %1, %.lr.ph659.lr.ph ], [ %i.wh, %bb.dm ] ; 6 uses
  %.0281.i697 = getelementptr i8, ptr %.0268.i695, i64 1 ; 2 uses
  %.0256.i.in.in.in698 = load i64, ptr %.0281.i697, align 1
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph659, %.critedge.i.backedge
  %i.ss = phi i32 [ %i.sn, %.lr.ph659 ], [ %i.tg, %.critedge.i.backedge ]
  %i.st = phi i32 [ %i.sm, %.lr.ph659 ], [ %i.tf, %.critedge.i.backedge ] ; 2 uses
  %i.su = phi ptr [ %i.sr, %.lr.ph659 ], [ %i.te, %.critedge.i.backedge ] ; 3 uses
  %.0237.i657 = phi ptr [ %.0281.i697, %.lr.ph659 ], [ %i.su, %.critedge.i.backedge ] ; 6 uses
  %.1257.i.in.in.in656 = phi i64 [ %.0256.i.in.in.in698, %.lr.ph659 ], [ %.0.copyload.i352, %.critedge.i.backedge ]
  %.1257.i.in.in = mul i64 %.1257.i.in.in.in656, -3523014627271114752
  %.1257.i.in = lshr i64 %.1257.i.in.in, 52
  %i.sv = getelementptr [4 x i8], ptr %0, i64 %.1257.i.in ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4
  %i.sx = zext i32 %i.sw to i64
  %.0.i382 = getelementptr i8, ptr %1, i64 %i.sx  ; 5 uses
  %.0.copyload.i352 = load i64, ptr %i.su, align 1
  %i.sy = ptrtoint ptr %.0237.i657 to i64         ; 2 uses
  %i.sz = sub i64 %i.sy, %i.g
  %i.ta = trunc i64 %i.sz to i32
  store i32 %i.ta, ptr %i.sv, align 4
  %i.tb = getelementptr i8, ptr %.0.i382, i64 65535
  %i.tc = icmp ult ptr %i.tb, %.0237.i657
  br i1 %i.tc, label %.critedge.i.backedge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.0.copyload.i275 = load i32, ptr %.0.i382, align 1
  %.0.copyload.i274 = load i32, ptr %.0237.i657, align 1
  %.not300.i = icmp eq i32 %.0.copyload.i275, %.0.copyload.i274
  br i1 %.not300.i, label %.preheader523, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %bb.cq, %bb.cp
  %i.td = zext nneg i32 %i.ss to i64
  %i.te = getelementptr i8, ptr %i.su, i64 %i.td  ; 2 uses
  %i.tf = add i32 %i.st, 1
  %i.tg = lshr i32 %i.st, 6
  %.not.i = icmp ugt ptr %i.te, %i.sg
  br i1 %.not.i, label %.thread471, label %bb.cp, !prof !20, !llvm.loop !12

.preheader523:                                    ; preds = %bb.cq
  %i.th = icmp ugt ptr %.0237.i657, %.0268.i695
  %i.ti = icmp ugt ptr %.0.i382, %1
  %i.tj = and i1 %i.th, %i.ti
  br i1 %i.tj, label %.lr.ph666, label %.critedge7.i

.lr.ph666:                                        ; preds = %.preheader523, %bb.cr
  %.2241.i665 = phi ptr [ %i.tm, %bb.cr ], [ %.0.i382, %.preheader523 ] ; 2 uses
  %.1282.i664 = phi ptr [ %i.tk, %bb.cr ], [ %.0237.i657, %.preheader523 ] ; 2 uses
  %i.tk = getelementptr i8, ptr %.1282.i664, i64 -1 ; 4 uses
  %i.tl = load i8, ptr %i.tk, align 1
  %i.tm = getelementptr i8, ptr %.2241.i665, i64 -1 ; 4 uses
  %i.tn = load i8, ptr %i.tm, align 1
  %i.to = icmp eq i8 %i.tl, %i.tn
  br i1 %i.to, label %bb.cr, label %.critedge7.i.loopexit

bb.cr:                                            ; preds = %.lr.ph666
  %i.tp = icmp ugt ptr %i.tk, %.0268.i695
  %i.tq = icmp ugt ptr %i.tm, %1
  %i.tr = and i1 %i.tp, %i.tq
  br i1 %i.tr, label %.lr.ph666, label %.critedge7.i.loopexit, !llvm.loop !14

.critedge7.i.loopexit:                            ; preds = %.lr.ph666, %bb.cr
  %.1282.i.lcssa.ph = phi ptr [ %i.tk, %bb.cr ], [ %.1282.i664, %.lr.ph666 ] ; 2 uses
  %.2241.i.lcssa.ph = phi ptr [ %i.tm, %bb.cr ], [ %.2241.i665, %.lr.ph666 ]
  %.pre871 = ptrtoint ptr %.1282.i.lcssa.ph to i64
  br label %.critedge7.i

.critedge7.i:                                     ; preds = %.critedge7.i.loopexit, %.preheader523
  %.pre-phi872 = phi i64 [ %.pre871, %.critedge7.i.loopexit ], [ %i.sy, %.preheader523 ] ; 2 uses
  %.1282.i.lcssa = phi ptr [ %.1282.i.lcssa.ph, %.critedge7.i.loopexit ], [ %.0237.i657, %.preheader523 ]
  %.2241.i.lcssa = phi ptr [ %.2241.i.lcssa.ph, %.critedge7.i.loopexit ], [ %.0.i382, %.preheader523 ]
  %i.ts = ptrtoint ptr %.0268.i695 to i64         ; 2 uses
  %i.tt = sub i64 %.pre-phi872, %i.ts             ; 3 uses
  %i.tu = trunc i64 %i.tt to i32                  ; 3 uses
  %i.tv = getelementptr i8, ptr %.0260.i696, i64 1 ; 4 uses
  %i.tw = and i64 %i.tt, 4294967295               ; 2 uses
  %i.tx = getelementptr i8, ptr %i.tv, i64 %i.tw
  %i.ty = getelementptr i8, ptr %i.tx, i64 8
  %i.tz = udiv i32 %i.tu, 255
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr i8, ptr %i.ty, i64 %i.ua
  %i.uc = icmp ugt ptr %i.ub, %i.ll
  br i1 %i.uc, label %LZ4_compress_generic.exit224, label %bb.cs, !prof !11

bb.cs:                                            ; preds = %.critedge7.i
  %i.ud = icmp ugt i32 %i.tu, 14
  br i1 %i.ud, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ue = add i32 %i.tu, -15                      ; 3 uses
  store i8 -16, ptr %.0260.i696, align 1
  %i.uf = icmp sgt i32 %i.ue, 254
  br i1 %i.uf, label %.lr.ph675.preheader, label %._crit_edge676

.lr.ph675.preheader:                              ; preds = %bb.ct
  %i.ug = trunc i64 %.pre-phi872 to i32           ; 2 uses
  %i.uh = add i32 %i.ug, 239
  %i.ui = tail call i32 @llvm.umin.i32(i32 %i.ue, i32 509)
  %i.uj = trunc i64 %i.ts to i32                  ; 2 uses
  %i.uk = add i32 %i.ui, %i.uj
  %i.ul = sub i32 %i.uh, %i.uk
  %.fr966 = freeze i32 %i.ul                      ; 3 uses
  %i.um = udiv i32 %.fr966, 255
  %i.un = zext nneg i32 %i.um to i64              ; 2 uses
  %i.uo = add nuw nsw i64 %i.un, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.tv, i8 -1, i64 %i.uo, i1 false)
  %scevgep856 = getelementptr i8, ptr %.0260.i696, i64 2
  %scevgep858 = getelementptr i8, ptr %scevgep856, i64 %i.un
  %i.up = add i32 %i.ug, -270
  %i.uq = sub i32 %i.up, %i.uj
  %i.ur = urem i32 %.fr966, 255
  %.neg967 = sub i32 %i.ur, %.fr966
  %i.us = add i32 %.neg967, %i.uq
  br label %._crit_edge676

._crit_edge676:                                   ; preds = %.lr.ph675.preheader, %bb.ct
  %.1261.i.lcssa = phi ptr [ %i.tv, %bb.ct ], [ %scevgep858, %.lr.ph675.preheader ] ; 2 uses
  %.0234.i.lcssa = phi i32 [ %i.ue, %bb.ct ], [ %i.us, %.lr.ph675.preheader ]
  %i.ut = trunc i32 %.0234.i.lcssa to i8
  %i.uu = getelementptr i8, ptr %.1261.i.lcssa, i64 1
  store i8 %i.ut, ptr %.1261.i.lcssa, align 1
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %.tr.i = trunc i64 %i.tt to i8
  %i.uv = shl nuw i8 %.tr.i, 4
  store i8 %i.uv, ptr %.0260.i696, align 1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %._crit_edge676
  %.2262.i = phi ptr [ %i.uu, %._crit_edge676 ], [ %i.tv, %bb.cu ] ; 2 uses
  %i.uw = getelementptr i8, ptr %.2262.i, i64 %i.tw ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.09.i283 = phi ptr [ %.2262.i, %bb.cv ], [ %i.ux, %bb.cw ] ; 2 uses
  %.0.i284 = phi ptr [ %.0268.i695, %bb.cv ], [ %i.uy, %bb.cw ] ; 2 uses
  %.0.copyload1.i = load i64, ptr %.0.i284, align 1
  store i64 %.0.copyload1.i, ptr %.09.i283, align 1
  %i.ux = getelementptr i8, ptr %.09.i283, i64 8  ; 2 uses
  %i.uy = getelementptr i8, ptr %.0.i284, i64 8
  %i.uz = icmp ult ptr %i.ux, %i.uw
  br i1 %i.uz, label %bb.cw, label %LZ4_wildCopy.exit285, !llvm.loop !15

LZ4_wildCopy.exit285:                             ; preds = %bb.cw, %bb.dl
  %.2283.i = phi ptr [ %i.wh, %bb.dl ], [ %.1282.i.lcssa, %bb.cw ] ; 3 uses
  %.4264.i = phi ptr [ %i.xy, %bb.dl ], [ %i.uw, %bb.cw ] ; 4 uses
  %.3242.i = phi ptr [ %.0.i383, %bb.dl ], [ %.2241.i.lcssa, %bb.cw ] ; 2 uses
  %.0238.i = phi ptr [ %.7267.i.ph, %bb.dl ], [ %.0260.i696, %bb.cw ] ; 3 uses
  %i.va = ptrtoint ptr %.2283.i to i64
  %i.vb = ptrtoint ptr %.3242.i to i64
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = trunc i64 %i.vc to i16
  store i16 %i.vd, ptr %.4264.i, align 1
  %i.ve = getelementptr i8, ptr %.4264.i, i64 2   ; 3 uses
  %i.vf = getelementptr i8, ptr %.2283.i, i64 4   ; 4 uses
  %i.vg = getelementptr i8, ptr %.3242.i, i64 4   ; 2 uses
  %i.vh = icmp ult ptr %i.vf, %i.sg
  br i1 %i.vh, label %.lr.ph681, label %._crit_edge682, !prof !16

.lr.ph681:                                        ; preds = %LZ4_wildCopy.exit285, %bb.cx
  %.033.i322680 = phi ptr [ %i.vo, %bb.cx ], [ %i.vg, %LZ4_wildCopy.exit285 ] ; 2 uses
  %.036.i321679 = phi ptr [ %i.vn, %bb.cx ], [ %i.vf, %LZ4_wildCopy.exit285 ] ; 3 uses
  %.0.copyload.i343 = load i64, ptr %.033.i322680, align 1 ; 2 uses
  %.0.copyload.i342 = load i64, ptr %.036.i321679, align 1 ; 2 uses
  %.not.i333 = icmp eq i64 %.0.copyload.i343, %.0.copyload.i342
  br i1 %.not.i333, label %bb.cx, label %.thread478

.thread478:                                       ; preds = %.lr.ph681
  %i.vi = xor i64 %.0.copyload.i342, %.0.copyload.i343
  %i.vj = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.vi) #8, !srcloc !17
  %i.vk = lshr i64 %i.vj, 3
  %i.vl = and i64 %i.vk, 4294967295
  %i.vm = getelementptr i8, ptr %.036.i321679, i64 %i.vl
  br label %LZ4_count.exit337

bb.cx:                                            ; preds = %.lr.ph681
  %i.vn = getelementptr i8, ptr %.036.i321679, i64 8 ; 3 uses
  %i.vo = getelementptr i8, ptr %.033.i322680, i64 8 ; 2 uses
  %i.vp = icmp ult ptr %i.vn, %i.sg
  br i1 %i.vp, label %.lr.ph681, label %._crit_edge682, !prof !18

._crit_edge682:                                   ; preds = %bb.cx, %LZ4_wildCopy.exit285
  %.036.i321.lcssa = phi ptr [ %i.vf, %LZ4_wildCopy.exit285 ], [ %i.vn, %bb.cx ] ; 5 uses
  %.033.i322.lcssa = phi ptr [ %i.vg, %LZ4_wildCopy.exit285 ], [ %i.vo, %bb.cx ] ; 4 uses
  %i.vq = icmp ult ptr %.036.i321.lcssa, %i.sp
  br i1 %i.vq, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %._crit_edge682
  %.0.copyload.i41.i331 = load i32, ptr %.033.i322.lcssa, align 1
  %.0.copyload.i.i332 = load i32, ptr %.036.i321.lcssa, align 1
  %i.vr = icmp eq i32 %.0.copyload.i41.i331, %.0.copyload.i.i332
  br i1 %i.vr, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.vs = getelementptr i8, ptr %.036.i321.lcssa, i64 4
  %i.vt = getelementptr i8, ptr %.033.i322.lcssa, i64 4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %._crit_edge682
  %.238.i324 = phi ptr [ %i.vs, %bb.cz ], [ %.036.i321.lcssa, %bb.cy ], [ %.036.i321.lcssa, %._crit_edge682 ] ; 5 uses
  %.235.i325 = phi ptr [ %i.vt, %bb.cz ], [ %.033.i322.lcssa, %bb.cy ], [ %.033.i322.lcssa, %._crit_edge682 ] ; 4 uses
  %i.vu = icmp ult ptr %.238.i324, %i.sq
  br i1 %i.vu, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %.0.copyload.i369 = load i16, ptr %.235.i325, align 1
  %.0.copyload.i368 = load i16, ptr %.238.i324, align 1
  %i.vv = icmp eq i16 %.0.copyload.i369, %.0.copyload.i368
  br i1 %i.vv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.vw = getelementptr i8, ptr %.238.i324, i64 2
  %i.vx = getelementptr i8, ptr %.235.i325, i64 2
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %.339.i326 = phi ptr [ %i.vw, %bb.dc ], [ %.238.i324, %bb.db ], [ %.238.i324, %bb.da ] ; 4 uses
  %.3.i327 = phi ptr [ %i.vx, %bb.dc ], [ %.235.i325, %bb.db ], [ %.235.i325, %bb.da ]
  %i.vy = icmp ult ptr %.339.i326, %i.sh
  br i1 %i.vy, label %bb.de, label %LZ4_count.exit337

bb.de:                                            ; preds = %bb.dd
  %i.vz = load i8, ptr %.3.i327, align 1
  %i.wa = load i8, ptr %.339.i326, align 1
  %i.wb = icmp eq i8 %i.vz, %i.wa
  %spec.select.i330.idx = zext i1 %i.wb to i64
  %spec.select.i330 = getelementptr i8, ptr %.339.i326, i64 %spec.select.i330.idx
  br label %LZ4_count.exit337

LZ4_count.exit337:                                ; preds = %bb.dd, %bb.de, %.thread478
  %.sink1057 = phi ptr [ %i.vm, %.thread478 ], [ %.339.i326, %bb.dd ], [ %spec.select.i330, %bb.de ]
  %i.wc = ptrtoint ptr %.sink1057 to i64
  %i.wd = ptrtoint ptr %i.vf to i64
  %i.we = sub i64 %i.wc, %i.wd
  %.2.i329.in.fr = freeze i64 %i.we               ; 4 uses
  %.2.i329 = trunc i64 %.2.i329.in.fr to i32      ; 3 uses
  %i.wf = add i64 %.2.i329.in.fr, 4
  %i.wg = and i64 %i.wf, 4294967295
  %i.wh = getelementptr i8, ptr %.2283.i, i64 %i.wg ; 11 uses
  %i.wi = getelementptr i8, ptr %.4264.i, i64 8
  %i.wj = lshr i64 %.2.i329.in.fr, 8
  %i.wk = and i64 %i.wj, 16777215
  %i.wl = getelementptr i8, ptr %i.wi, i64 %i.wk
  %i.wm = icmp ugt ptr %i.wl, %i.ll
  br i1 %i.wm, label %LZ4_compress_generic.exit224, label %bb.df, !prof !22

bb.df:                                            ; preds = %LZ4_count.exit337
  %i.wn = icmp ugt i32 %.2.i329, 14
  %i.wo = load i8, ptr %.0238.i, align 1          ; 2 uses
  br i1 %i.wn, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.wp = add i8 %i.wo, 15
  store i8 %i.wp, ptr %.0238.i, align 1
  %i.wq = add i32 %.2.i329, -15                   ; 2 uses
  store i32 -1, ptr %i.ve, align 1
  %i.wr = icmp ugt i32 %i.wq, 1019
  br i1 %i.wr, label %.lr.ph688.preheader, label %._crit_edge689

.lr.ph688.preheader:                              ; preds = %bb.dg
  %scevgep859 = getelementptr i8, ptr %.4264.i, i64 6 ; 2 uses
  %i.ws = add i32 %.2.i329, -1035                 ; 2 uses
  %i.wt = udiv i32 %i.ws, 1020
  %i.wu = shl nuw nsw i32 %i.wt, 2
  %i.wv = zext nneg i32 %i.wu to i64              ; 2 uses
  %i.ww = add nuw nsw i64 %i.wv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep859, i8 -1, i64 %i.ww, i1 false)
  %scevgep861 = getelementptr i8, ptr %scevgep859, i64 %i.wv
  %i.wx = urem i32 %i.ws, 1020
  br label %._crit_edge689

._crit_edge689:                                   ; preds = %.lr.ph688.preheader, %bb.dg
  %.5265.i.lcssa = phi ptr [ %i.ve, %bb.dg ], [ %scevgep861, %.lr.ph688.preheader ]
  %.2233.i.lcssa = phi i32 [ %i.wq, %bb.dg ], [ %i.wx, %.lr.ph688.preheader ]
  %.lhs.trunc507 = trunc nuw nsw i32 %.2233.i.lcssa to i16 ; 2 uses
  %i.wy = udiv i16 %.lhs.trunc507, 255
  %i.wz = zext nneg i16 %i.wy to i64
  %i.xa = getelementptr i8, ptr %.5265.i.lcssa, i64 %i.wz ; 2 uses
  %i.xb = urem i16 %.lhs.trunc507, 255
  %i.xc = trunc nuw i16 %i.xb to i8
  %i.xd = getelementptr i8, ptr %i.xa, i64 1
  store i8 %i.xc, ptr %i.xa, align 1
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.xe = trunc i64 %.2.i329.in.fr to i8
  %i.xf = add i8 %i.wo, %i.xe
  store i8 %i.xf, ptr %.0238.i, align 1
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %._crit_edge689
  %.7267.i.ph = phi ptr [ %i.ve, %bb.dh ], [ %i.xd, %._crit_edge689 ] ; 6 uses
  %i.xg = icmp ugt ptr %i.wh, %i.sg
  br i1 %i.xg, label %.thread471, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.xh = getelementptr i8, ptr %i.wh, i64 -2     ; 2 uses
  %.0.copyload.i353 = load i64, ptr %i.xh, align 1
  %i.xi = mul i64 %.0.copyload.i353, -3523014627271114752
  %i.xj = lshr i64 %i.xi, 52
  %i.xk = ptrtoint ptr %i.xh to i64
  %i.xl = sub i64 %i.xk, %i.g
  %i.xm = trunc i64 %i.xl to i32
  %i.xn = getelementptr [4 x i8], ptr %0, i64 %i.xj
  store i32 %i.xm, ptr %i.xn, align 4
  %.0.copyload.i340 = load i64, ptr %i.wh, align 1
  %i.xo = mul i64 %.0.copyload.i340, -3523014627271114752
  %i.xp = lshr i64 %i.xo, 52
  %i.xq = getelementptr [4 x i8], ptr %0, i64 %i.xp ; 2 uses
  %i.xr = load i32, ptr %i.xq, align 4
  %i.xs = zext i32 %i.xr to i64
  %.0.i383 = getelementptr i8, ptr %1, i64 %i.xs  ; 3 uses
  %i.xt = ptrtoint ptr %i.wh to i64
  %i.xu = sub i64 %i.xt, %i.g
  %i.xv = trunc i64 %i.xu to i32
  store i32 %i.xv, ptr %i.xq, align 4
  %i.xw = getelementptr i8, ptr %.0.i383, i64 65535
  %.not304.i = icmp ult ptr %i.xw, %i.wh
  br i1 %.not304.i, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.0.copyload.i273 = load i32, ptr %.0.i383, align 1
  %.0.copyload.i272 = load i32, ptr %i.wh, align 1
  %i.xx = icmp eq i32 %.0.copyload.i273, %.0.copyload.i272
  br i1 %i.xx, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.xy = getelementptr i8, ptr %.7267.i.ph, i64 1
  store i8 0, ptr %.7267.i.ph, align 1
  br label %LZ4_wildCopy.exit285

bb.dm:                                            ; preds = %bb.dj, %bb.dk
  %i.xz = getelementptr i8, ptr %i.wh, i64 2      ; 2 uses
  %.not.i655 = icmp ugt ptr %i.xz, %i.sg
  br i1 %.not.i655, label %.thread471, label %.lr.ph659, !prof !21

.thread471:                                       ; preds = %bb.dm, %.critedge.i.backedge, %bb.di, %bb.co
  %.2270.i.ph = phi ptr [ %.0268.i695, %.critedge.i.backedge ], [ %i.wh, %bb.di ], [ %1, %bb.co ], [ %i.wh, %bb.dm ] ; 2 uses
  %.8.i.ph = phi ptr [ %.0260.i696, %.critedge.i.backedge ], [ %.7267.i.ph, %bb.di ], [ %2, %bb.co ], [ %.7267.i.ph, %bb.dm ] ; 6 uses
  %i.ya = ptrtoint ptr %i.sf to i64
  %i.yb = ptrtoint ptr %.2270.i.ph to i64         ; 2 uses
  %i.yc = sub i64 %i.ya, %i.yb                    ; 7 uses
  %i.yd = ptrtoint ptr %.8.i.ph to i64
  %i.ye = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.yf = add i64 %i.yc, 240
  %i.yg = udiv i64 %i.yf, 255
  %reass.sub = sub i64 %i.yd, %i.ye
  %i.yh = add i64 %reass.sub, 1
  %i.yi = add i64 %i.yh, %i.yc
  %i.yj = add i64 %i.yi, %i.yg
  %i.yk = zext i32 %4 to i64
  %i.yl = icmp ugt i64 %i.yj, %i.yk
  br i1 %i.yl, label %LZ4_compress_generic.exit224, label %bb.dn

bb.dn:                                            ; preds = %.thread471
  %i.ym = icmp ugt i64 %i.yc, 14
  br i1 %i.ym, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.yn = add i64 %i.yc, -15                      ; 2 uses
  store i8 -16, ptr %.8.i.ph, align 1
  %.10.i701 = getelementptr i8, ptr %.8.i.ph, i64 1 ; 2 uses
  %i.yo = icmp ugt i64 %i.yn, 254
  br i1 %i.yo, label %.lr.ph705.preheader, label %._crit_edge706

.lr.ph705.preheader:                              ; preds = %bb.do
  %9 = add i64 %i.g, %i.se
  %i.yp = add i64 %9, -270
  %i.yq = sub i64 %i.yp, %i.yb                    ; 2 uses
  %i.yr = udiv i64 %i.yq, 255                     ; 3 uses
  %i.ys = add nuw nsw i64 %i.yr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.10.i701, i8 -1, i64 %i.ys, i1 false)
  %.neg969 = mul i64 %i.yr, -255
  %i.yt = add i64 %.neg969, %i.yq
  %i.yu = getelementptr i8, ptr %.8.i.ph, i64 %i.yr
  %scevgep862 = getelementptr i8, ptr %i.yu, i64 2
  br label %._crit_edge706

._crit_edge706:                                   ; preds = %.lr.ph705.preheader, %bb.do
  %.0.i.lcssa = phi i64 [ %i.yn, %bb.do ], [ %i.yt, %.lr.ph705.preheader ]
  %.10.i.lcssa = phi ptr [ %.10.i701, %bb.do ], [ %scevgep862, %.lr.ph705.preheader ] ; 2 uses
  %i.yv = trunc nuw i64 %.0.i.lcssa to i8
  store i8 %i.yv, ptr %.10.i.lcssa, align 1
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %.tr306.i = trunc nuw nsw i64 %i.yc to i8
  %i.yw = shl nuw i8 %.tr306.i, 4
  store i8 %i.yw, ptr %.8.i.ph, align 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %._crit_edge706
  %.10.pn.i = phi ptr [ %.10.i.lcssa, %._crit_edge706 ], [ %.8.i.ph, %bb.dp ]
  %.11.i = getelementptr i8, ptr %.10.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11.i, ptr align 1 %.2270.i.ph, i64 %i.yc, i1 false)
  %i.yx = getelementptr i8, ptr %.11.i, i64 %i.yc
  %i.yy = ptrtoint ptr %i.yx to i64
  %i.yz = sub i64 %i.yy, %i.ye
  %i.za = trunc i64 %i.yz to i32
  br label %LZ4_compress_generic.exit224

LZ4_compress_generic.exit224:                     ; preds = %.critedge7.i, %LZ4_count.exit337, %.critedge7.i73, %LZ4_count.exit320, %bb.dq, %.thread471, %bb.cn, %bb.cm, %.thread459, %bb.bi, %bb.bg, %bb.ag, %bb.af, %bb.e
  %.0 = phi i32 [ 0, %.thread459 ], [ 0, %bb.e ], [ 0, %bb.ag ], [ %i.ff, %bb.af ], [ %i.lj, %bb.bg ], [ 0, %.thread471 ], [ 0, %bb.bi ], [ %i.sd, %bb.cm ], [ 0, %LZ4_count.exit320 ], [ 0, %bb.cn ], [ %i.za, %bb.dq ], [ 0, %LZ4_count.exit337 ], [ 0, %.critedge7.i73 ], [ 0, %.critedge7.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local i32 @LZ4_compress_default(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 16416)) %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @LZ4_compress_fast_extState(ptr noundef %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1) #7, !srcloc !10
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local i32 @LZ4_compress_destSize(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 16416)) %4) #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16416) %4, i8 0, i64 16416, i1 false)
  %i.a = load i32, ptr %2, align 4                ; 5 uses
  %i.b = icmp ugt i32 %i.a, 2113929216
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = udiv i32 %i.a, 255
  %i.d = add nuw nsw i32 %i.a, 16
  %i.e = add nuw nsw i32 %i.d, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %.not.i = icmp slt i32 %3, %i.f
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc i32 @LZ4_compress_fast_extState(ptr noundef %4, ptr noundef %0, ptr noundef %1, i32 noundef %i.a, i32 noundef %3, i32 noundef 1) #7, !srcloc !23
  br label %LZ4_compress_destSize_extState.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp slt i32 %i.a, 65547
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call fastcc i32 @LZ4_compress_destSize_generic(ptr noundef %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 2) #7, !srcloc !24
  br label %LZ4_compress_destSize_extState.exit

bb.g:                                             ; preds = %bb.e
  %i.j = tail call fastcc i32 @LZ4_compress_destSize_generic(ptr noundef %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1) #7, !srcloc !25
  br label %LZ4_compress_destSize_extState.exit

LZ4_compress_destSize_extState.exit:              ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.g, %bb.d ], [ %i.i, %bb.f ], [ %i.j, %bb.g ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @LZ4_resetStream(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local i32 @LZ4_loadDict(ptr nofree noundef captures(none) initializes((16392, 16400), (16408, 16412)) %0, ptr noundef %1, i32 noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 %i.a       ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 16388
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16384
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ugt i32 %i.f, 1073741824
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ 0, %bb.c ], [ %i.f, %bb.b ]
  %i.i = icmp slt i32 %2, 8
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16392
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 16408
  store i32 0, ptr %i.k, align 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = icmp samesign ugt i32 %2, 65536
  %i.n = getelementptr i8, ptr %i.b, i64 -65536
  %spec.select = select i1 %i.m, ptr %i.n, ptr %1 ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 16384
  %i.p = add nuw nsw i32 %i.h, 65536              ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 16392
  store ptr %spec.select, ptr %i.q, align 8
  %i.r = ptrtoint ptr %spec.select to i64
  %i.s = sub i64 %i.l, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 4 uses
  %i.u = getelementptr i8, ptr %0, i64 16408
  store i32 %i.t, ptr %i.u, align 8
  %i.v = add i32 %i.p, %i.t
  store i32 %i.v, ptr %i.o, align 8
  %i.w = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %.not3132 = icmp ugt ptr %spec.select, %i.w
  br i1 %.not3132, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.x = zext nneg i32 %i.p to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %spec.select, i64 %i.y
  %i.aa = ptrtoint ptr %i.z to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.133 = phi ptr [ %spec.select, %.lr.ph ], [ %i.ah, %bb.g ] ; 3 uses
  %.0.copyload.i = load i64, ptr %.133, align 1
  %i.ab = mul i64 %.0.copyload.i, -3523014627271114752
  %i.ac = lshr i64 %i.ab, 52
  %i.ad = ptrtoint ptr %.133 to i64
  %i.ae = sub i64 %i.ad, %i.aa
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %i.ac
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %.133, i64 3      ; 2 uses
  %.not31 = icmp ugt ptr %i.ah, %i.w
  br i1 %.not31, label %.loopexit, label %bb.g, !llvm.loop !26

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e
  %.030 = phi i32 [ 0, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %bb.g ]
  ret i32 %.030
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 65537) i32 @LZ4_saveDict(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16392      ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 16408      ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.d)
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65536) ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %i.b, i64 %i.e
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.i, i64 %i.g, i1 false)
  store ptr %1, ptr %i.a, align 8
  store i32 %spec.select, ptr %i.c, align 8
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local i32 @LZ4_compress_fast_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 16392      ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16408      ; 6 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %i.b, i64 %i.e     ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 16388
  %i.h = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.fr

bb.b:                                             ; preds = %bb.a
  %.not81 = icmp ne i32 %i.d, 0
  %i.i = icmp ugt ptr %1, %i.f
  %or.cond = select i1 %.not81, i1 %i.i, i1 false
  %.073 = select i1 %or.cond, ptr %i.f, ptr %1
  %i.j = getelementptr i8, ptr %0, i64 16384      ; 4 uses
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %i.l = icmp ugt i32 %i.k, -2147483648
  %i.m = zext i32 %i.k to i64
  %i.n = ptrtoint ptr %.073 to i64
  %i.o = icmp ugt i64 %i.m, %i.n
  %or.cond.i = or i1 %i.l, %i.o
  br i1 %or.cond.i, label %bb.c, label %LZ4_renormDictT.exit

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %i.k, -65536                     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ] ; 3 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %storemerge.i = tail call i32 @llvm.usub.sat.i32(i32 %i.r, i32 %i.p)
  store i32 %storemerge.i, ptr %i.q, align 4
  %i.s = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.t = getelementptr i8, ptr %i.s, i64 4        ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %storemerge.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %i.u, i32 %i.p)
  store i32 %storemerge.i.1, ptr %i.t, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 4096
  br i1 %exitcond.not.i.1, label %bb.e, label %bb.d, !llvm.loop !27

bb.e:                                             ; preds = %bb.d
  store i32 65536, ptr %i.j, align 8
  %i.v = load i32, ptr %i.c, align 8              ; 2 uses
  %i.w = icmp ugt i32 %i.v, 65536
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 65536, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ 65536, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 %i.z    ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8
  br label %LZ4_renormDictT.exit

LZ4_renormDictT.exit:                             ; preds = %bb.b, %bb.g
  %i.ab = phi i32 [ %i.k, %bb.b ], [ 65536, %bb.g ] ; 9 uses
  %i.ac = phi i32 [ %i.d, %bb.b ], [ %i.x, %bb.g ]
  %i.ad = phi ptr [ %i.b, %bb.b ], [ %i.aa, %bb.g ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; 8 uses
  %i.ae = sext i32 %3 to i64                      ; 5 uses
  %i.af = getelementptr i8, ptr %1, i64 %i.ae     ; 21 uses
  %i.ag = icmp ugt ptr %i.af, %i.ad
  %i.ah = icmp ult ptr %i.af, %i.f
  %or.cond83 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond83, label %bb.h, label %bb.i

bb.h:                                             ; preds = %LZ4_renormDictT.exit
  %i.ai = ptrtoint ptr %i.f to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.al, i32 65536)
  %i.am = icmp ult i32 %i.al, 4
  %storemerge82 = select i1 %i.am, i32 0, i32 %spec.select ; 3 uses
  store i32 %storemerge82, ptr %i.c, align 8
  %i.an = zext nneg i32 %storemerge82 to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr i8, ptr %i.f, i64 %i.ao   ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %LZ4_renormDictT.exit
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ %i.ad, %LZ4_renormDictT.exit ] ; 8 uses
  %i.ar = phi i32 [ %storemerge82, %bb.h ], [ %i.ac, %LZ4_renormDictT.exit ] ; 3 uses
  %i.as = icmp eq ptr %i.f, %1
  %i.at = icmp ult i32 %i.ar, 65536
  %i.au = icmp ult i32 %i.ar, %i.ab
  %or.cond1470 = and i1 %i.at, %i.au              ; 2 uses
  %i.av = zext i32 %i.ar to i64                   ; 4 uses
  br i1 %i.as, label %bb.j, label %bb.bu

bb.j:                                             ; preds = %bb.i
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw     ; 6 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 -12    ; 12 uses
  %i.az = getelementptr i8, ptr %i.af, i64 -5     ; 2 uses
  %i.ba = sext i32 %4 to i64
  %i.bb = getelementptr i8, ptr %2, i64 %i.ba     ; 4 uses
  %i.bc = icmp ugt i32 %3, 2113929216             ; 2 uses
  br i1 %or.cond1470, label %bb.k, label %bb.ap

bb.k:                                             ; preds = %bb.j
  br i1 %i.bc, label %LZ4_compress_generic.exit292, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = zext i32 %i.ab to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr i8, ptr %1, i64 %i.be     ; 3 uses
  %i.bg = icmp samesign ult i32 %3, 13
  br i1 %i.bg, label %.thread569, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.copyload.i501 = load i64, ptr %1, align 1
  %i.bh = mul i64 %.0.copyload.i501, -3523014627271114752
  %i.bi = lshr i64 %i.bh, 52
  %i.bj = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bk = getelementptr [4 x i8], ptr %0, i64 %i.bi
  store i32 %i.ab, ptr %i.bk, align 4
  %i.bl = shl i32 %spec.store.select, 6
  %i.bm = or disjoint i32 %i.bl, 1
  %i.bn = and i32 %spec.store.select, 67108863
  %i.bo = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %.not.i2369971036 = icmp ugt ptr %i.bo, %i.ay
  br i1 %.not.i2369971036, label %.thread569, label %.lr.ph1001.lr.ph, !prof !19

.lr.ph1001.lr.ph:                                 ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %i.af, i64 -8
  %i.bq = getelementptr i8, ptr %i.af, i64 -6
  br label %.lr.ph1001

.lr.ph1001:                                       ; preds = %.lr.ph1001.lr.ph, %bb.ak
  %i.br = phi ptr [ %i.bo, %.lr.ph1001.lr.ph ], [ %i.ha, %bb.ak ]
  %.0260.i2261038 = phi ptr [ %2, %.lr.ph1001.lr.ph ], [ %.7267.i279.ph, %bb.ak ] ; 6 uses
  %.0268.i2251037 = phi ptr [ %1, %.lr.ph1001.lr.ph ], [ %i.fi, %bb.ak ] ; 6 uses
  %.0281.i2231039 = getelementptr i8, ptr %.0268.i2251037, i64 1 ; 2 uses
  %.0256.i227.in.in.in1040 = load i64, ptr %.0281.i2231039, align 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph1001, %.critedge.i291.backedge
  %i.bs = phi i32 [ %i.bn, %.lr.ph1001 ], [ %i.ch, %.critedge.i291.backedge ]
  %i.bt = phi i32 [ %i.bm, %.lr.ph1001 ], [ %i.cg, %.critedge.i291.backedge ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %.lr.ph1001 ], [ %i.cf, %.critedge.i291.backedge ] ; 3 uses
  %.0237.i233999 = phi ptr [ %.0281.i2231039, %.lr.ph1001 ], [ %i.bu, %.critedge.i291.backedge ] ; 6 uses
  %.1257.i230.in.in.in998 = phi i64 [ %.0256.i227.in.in.in1040, %.lr.ph1001 ], [ %.0.copyload.i503, %.critedge.i291.backedge ]
  %.1257.i230.in.in = mul i64 %.1257.i230.in.in.in998, -3523014627271114752
  %.1257.i230.in = lshr i64 %.1257.i230.in.in, 52
  %i.bv = getelementptr [4 x i8], ptr %0, i64 %.1257.i230.in ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = zext i32 %i.bw to i64
  %.0.i533 = getelementptr i8, ptr %i.bf, i64 %i.bx ; 6 uses
  %.0.copyload.i503 = load i64, ptr %i.bu, align 1
  %i.by = ptrtoint ptr %.0237.i233999 to i64      ; 2 uses
  %i.bz = sub i64 %i.by, %i.bj
  %i.ca = trunc i64 %i.bz to i32
  store i32 %i.ca, ptr %i.bv, align 4
  %i.cb = icmp ult ptr %.0.i533, %i.ax
  %i.cc = getelementptr i8, ptr %.0.i533, i64 65535
  %i.cd = icmp ult ptr %i.cc, %.0237.i233999
  %or.cond734 = or i1 %i.cb, %i.cd
  br i1 %or.cond734, label %.critedge.i291.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i319 = load i32, ptr %.0.i533, align 1
  %.0.copyload.i318 = load i32, ptr %.0237.i233999, align 1
  %.not300.i244 = icmp eq i32 %.0.copyload.i319, %.0.copyload.i318
  br i1 %.not300.i244, label %.preheader, label %.critedge.i291.backedge

.critedge.i291.backedge:                          ; preds = %bb.o, %bb.n
  %i.ce = zext nneg i32 %i.bs to i64
  %i.cf = getelementptr i8, ptr %i.bu, i64 %i.ce  ; 2 uses
  %i.cg = add i32 %i.bt, 1
  %i.ch = lshr i32 %i.bt, 6
  %.not.i236 = icmp ugt ptr %i.cf, %i.ay
  br i1 %.not.i236, label %.thread569, label %bb.n, !prof !20, !llvm.loop !12

.preheader:                                       ; preds = %bb.o
  %i.ci = icmp ugt ptr %.0237.i233999, %.0268.i2251037
  %i.cj = icmp ugt ptr %.0.i533, %i.ax
  %i.ck = and i1 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph1008, label %.critedge7.i265

.lr.ph1008:                                       ; preds = %.preheader, %bb.p
  %.2241.i2641007 = phi ptr [ %i.cn, %bb.p ], [ %.0.i533, %.preheader ] ; 2 uses
  %.1282.i2631006 = phi ptr [ %i.cl, %bb.p ], [ %.0237.i233999, %.preheader ] ; 2 uses
  %i.cl = getelementptr i8, ptr %.1282.i2631006, i64 -1 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr i8, ptr %.2241.i2641007, i64 -1 ; 4 uses
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.cm, %i.co
  br i1 %i.cp, label %bb.p, label %.critedge7.i265.loopexit

bb.p:                                             ; preds = %.lr.ph1008
  %i.cq = icmp ugt ptr %i.cl, %.0268.i2251037
  %i.cr = icmp ugt ptr %i.cn, %i.ax
  %i.cs = and i1 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph1008, label %.critedge7.i265.loopexit, !llvm.loop !14

.critedge7.i265.loopexit:                         ; preds = %.lr.ph1008, %bb.p
  %.1282.i263.lcssa.ph = phi ptr [ %i.cl, %bb.p ], [ %.1282.i2631006, %.lr.ph1008 ] ; 2 uses
  %.2241.i264.lcssa.ph = phi ptr [ %i.cn, %bb.p ], [ %.2241.i2641007, %.lr.ph1008 ]
  %.pre = ptrtoint ptr %.1282.i263.lcssa.ph to i64
  br label %.critedge7.i265

.critedge7.i265:                                  ; preds = %.critedge7.i265.loopexit, %.preheader
  %.pre-phi = phi i64 [ %.pre, %.critedge7.i265.loopexit ], [ %i.by, %.preheader ] ; 2 uses
  %.1282.i263.lcssa = phi ptr [ %.1282.i263.lcssa.ph, %.critedge7.i265.loopexit ], [ %.0237.i233999, %.preheader ]
  %.2241.i264.lcssa = phi ptr [ %.2241.i264.lcssa.ph, %.critedge7.i265.loopexit ], [ %.0.i533, %.preheader ]
  %i.ct = ptrtoint ptr %.0268.i2251037 to i64     ; 2 uses
  %i.cu = sub i64 %.pre-phi, %i.ct                ; 3 uses
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = getelementptr i8, ptr %.0260.i2261038, i64 1 ; 4 uses
  %i.cx = and i64 %i.cu, 4294967295               ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = udiv i32 %i.cv, 255
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.db
  %i.dd = icmp ugt ptr %i.dc, %i.bb
  br i1 %i.dd, label %LZ4_compress_generic.exit292, label %bb.q, !prof !11

bb.q:                                             ; preds = %.critedge7.i265
  %i.de = icmp ugt i32 %i.cv, 14
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = add i32 %i.cv, -15                      ; 3 uses
  store i8 -16, ptr %.0260.i2261038, align 1
  %i.dg = icmp sgt i32 %i.df, 254
  br i1 %i.dg, label %.lr.ph1017.preheader, label %._crit_edge1018

.lr.ph1017.preheader:                             ; preds = %bb.r
  %i.dh = trunc i64 %.pre-phi to i32              ; 2 uses
  %i.di = add i32 %i.dh, 239
  %i.dj = tail call i32 @llvm.umin.i32(i32 %i.df, i32 509)
  %i.dk = trunc i64 %i.ct to i32                  ; 2 uses
  %i.dl = add i32 %i.dj, %i.dk
  %i.dm = sub i32 %i.di, %i.dl
  %.fr1343 = freeze i32 %i.dm                     ; 3 uses
  %i.dn = udiv i32 %.fr1343, 255
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = add nuw nsw i64 %i.do, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.cw, i8 -1, i64 %i.dp, i1 false)
  %scevgep1210 = getelementptr i8, ptr %.0260.i2261038, i64 2
  %scevgep1212 = getelementptr i8, ptr %scevgep1210, i64 %i.do
  %i.dq = add i32 %i.dh, -270
  %i.dr = sub i32 %i.dq, %i.dk
  %i.ds = urem i32 %.fr1343, 255
  %.neg1344 = sub i32 %i.ds, %.fr1343
  %i.dt = add i32 %.neg1344, %i.dr
  br label %._crit_edge1018

._crit_edge1018:                                  ; preds = %.lr.ph1017.preheader, %bb.r
  %.1261.i289.lcssa = phi ptr [ %i.cw, %bb.r ], [ %scevgep1212, %.lr.ph1017.preheader ] ; 2 uses
  %.0234.i290.lcssa = phi i32 [ %i.df, %bb.r ], [ %i.dt, %.lr.ph1017.preheader ]
  %i.du = trunc i32 %.0234.i290.lcssa to i8
  %i.dv = getelementptr i8, ptr %.1261.i289.lcssa, i64 1
  store i8 %i.du, ptr %.1261.i289.lcssa, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@LZ4_compress_fast_continue:bb.a
  br i1 %i.ea, label %bb.u, label %LZ4_wildCopy.exit, !llvm.loop !15

LZ4_wildCopy.exit:                                ; preds = %bb.u, %bb.aj
  %.2283.i270 = phi ptr [ %i.fi, %bb.aj ], [ %.1282.i263.lcssa, %bb.u ] ; 3 uses
  %.4264.i273 = phi ptr [ %i.gz, %bb.aj ], [ %i.dx, %bb.u ] ; 4 uses
  %.3242.i275 = phi ptr [ %.0.i534, %bb.aj ], [ %.2241.i264.lcssa, %bb.u ] ; 2 uses
  %.0238.i276 = phi ptr [ %.7267.i279.ph, %bb.aj ], [ %.0260.i2261038, %bb.u ] ; 3 uses
  %i.eb = ptrtoint ptr %.2283.i270 to i64
  %i.ec = ptrtoint ptr %.3242.i275 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i16
  store i16 %i.ee, ptr %.4264.i273, align 1
  %i.ef = getelementptr i8, ptr %.4264.i273, i64 2 ; 3 uses
  %i.eg = getelementptr i8, ptr %.2283.i270, i64 4 ; 4 uses
  %i.eh = getelementptr i8, ptr %.3242.i275, i64 4 ; 2 uses
  %i.ei = icmp ult ptr %i.eg, %i.ay
  br i1 %i.ei, label %.lr.ph1023, label %._crit_edge1024, !prof !16

.lr.ph1023:                                       ; preds = %LZ4_wildCopy.exit, %bb.v
  %.033.i1022 = phi ptr [ %i.ep, %bb.v ], [ %i.eh, %LZ4_wildCopy.exit ] ; 2 uses
  %.036.i1021 = phi ptr [ %i.eo, %bb.v ], [ %i.eg, %LZ4_wildCopy.exit ] ; 3 uses
  %.0.copyload.i482 = load i64, ptr %.033.i1022, align 1 ; 2 uses
  %.0.copyload.i481 = load i64, ptr %.036.i1021, align 1 ; 2 uses
  %.not.i343 = icmp eq i64 %.0.copyload.i482, %.0.copyload.i481
  br i1 %.not.i343, label %bb.v, label %.thread553

.thread553:                                       ; preds = %.lr.ph1023
  %i.ej = xor i64 %.0.copyload.i481, %.0.copyload.i482
  %i.ek = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ej) #8, !srcloc !17
  %i.el = lshr i64 %i.ek, 3
  %i.em = and i64 %i.el, 4294967295
  %i.en = getelementptr i8, ptr %.036.i1021, i64 %i.em
  br label %LZ4_count.exit

bb.v:                                             ; preds = %.lr.ph1023
  %i.eo = getelementptr i8, ptr %.036.i1021, i64 8 ; 3 uses
  %i.ep = getelementptr i8, ptr %.033.i1022, i64 8 ; 2 uses
  %i.eq = icmp ult ptr %i.eo, %i.ay
  br i1 %i.eq, label %.lr.ph1023, label %._crit_edge1024, !prof !18

._crit_edge1024:                                  ; preds = %bb.v, %LZ4_wildCopy.exit
  %.036.i.lcssa = phi ptr [ %i.eg, %LZ4_wildCopy.exit ], [ %i.eo, %bb.v ] ; 5 uses
  %.033.i.lcssa = phi ptr [ %i.eh, %LZ4_wildCopy.exit ], [ %i.ep, %bb.v ] ; 4 uses
  %i.er = icmp ult ptr %.036.i.lcssa, %i.bp
  br i1 %i.er, label %bb.w, label %bb.y

bb.w:                                             ; preds = %._crit_edge1024
  %.0.copyload.i41.i = load i32, ptr %.033.i.lcssa, align 1
  %.0.copyload.i.i = load i32, ptr %.036.i.lcssa, align 1
  %i.es = icmp eq i32 %.0.copyload.i41.i, %.0.copyload.i.i
  br i1 %i.es, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.et = getelementptr i8, ptr %.036.i.lcssa, i64 4
  %i.eu = getelementptr i8, ptr %.033.i.lcssa, i64 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge1024
  %.238.i = phi ptr [ %i.et, %bb.x ], [ %.036.i.lcssa, %bb.w ], [ %.036.i.lcssa, %._crit_edge1024 ] ; 5 uses
  %.235.i = phi ptr [ %i.eu, %bb.x ], [ %.033.i.lcssa, %bb.w ], [ %.033.i.lcssa, %._crit_edge1024 ] ; 4 uses
  %i.ev = icmp ult ptr %.238.i, %i.bq
  br i1 %i.ev, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.0.copyload.i532 = load i16, ptr %.235.i, align 1
  %.0.copyload.i531 = load i16, ptr %.238.i, align 1
  %i.ew = icmp eq i16 %.0.copyload.i532, %.0.copyload.i531
  br i1 %i.ew, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ex = getelementptr i8, ptr %.238.i, i64 2
  %i.ey = getelementptr i8, ptr %.235.i, i64 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.339.i = phi ptr [ %i.ex, %bb.aa ], [ %.238.i, %bb.z ], [ %.238.i, %bb.y ] ; 4 uses
  %.3.i = phi ptr [ %i.ey, %bb.aa ], [ %.235.i, %bb.z ], [ %.235.i, %bb.y ]
  %i.ez = icmp ult ptr %.339.i, %i.az
  br i1 %i.ez, label %bb.ac, label %LZ4_count.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fa = load i8, ptr %.3.i, align 1
  %i.fb = load i8, ptr %.339.i, align 1
  %i.fc = icmp eq i8 %i.fa, %i.fb
  %spec.select.i342.idx = zext i1 %i.fc to i64
  %spec.select.i342 = getelementptr i8, ptr %.339.i, i64 %spec.select.i342.idx
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %bb.ab, %bb.ac, %.thread553
  %.sink1472 = phi ptr [ %i.en, %.thread553 ], [ %.339.i, %bb.ab ], [ %spec.select.i342, %bb.ac ]
  %i.fd = ptrtoint ptr %.sink1472 to i64
  %i.fe = ptrtoint ptr %i.eg to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %.2.i.in.fr = freeze i64 %i.ff                  ; 4 uses
  %.2.i = trunc i64 %.2.i.in.fr to i32            ; 3 uses
  %i.fg = add i64 %.2.i.in.fr, 4
  %i.fh = and i64 %i.fg, 4294967295
  %i.fi = getelementptr i8, ptr %.2283.i270, i64 %i.fh ; 11 uses
  %i.fj = getelementptr i8, ptr %.4264.i273, i64 8
  %i.fk = lshr i64 %.2.i.in.fr, 8
  %i.fl = and i64 %i.fk, 16777215
  %i.fm = getelementptr i8, ptr %i.fj, i64 %i.fl
  %i.fn = icmp ugt ptr %i.fm, %i.bb
  br i1 %i.fn, label %LZ4_compress_generic.exit292, label %bb.ad, !prof !22

bb.ad:                                            ; preds = %LZ4_count.exit
  %i.fo = icmp ugt i32 %.2.i, 14
  %i.fp = load i8, ptr %.0238.i276, align 1       ; 2 uses
  br i1 %i.fo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fq = add i8 %i.fp, 15
  store i8 %i.fq, ptr %.0238.i276, align 1
  %i.fr = add i32 %.2.i, -15                      ; 2 uses
  store i32 -1, ptr %i.ef, align 1
  %i.fs = icmp ugt i32 %i.fr, 1019
  br i1 %i.fs, label %.lr.ph1030.preheader, label %._crit_edge1031

.lr.ph1030.preheader:                             ; preds = %bb.ae
  %scevgep1213 = getelementptr i8, ptr %.4264.i273, i64 6 ; 2 uses
  %i.ft = add i32 %.2.i, -1035                    ; 2 uses
  %i.fu = udiv i32 %i.ft, 1020
  %i.fv = shl nuw nsw i32 %i.fu, 2
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = add nuw nsw i64 %i.fw, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep1213, i8 -1, i64 %i.fx, i1 false)
  %scevgep1215 = getelementptr i8, ptr %scevgep1213, i64 %i.fw
  %i.fy = urem i32 %i.ft, 1020
  br label %._crit_edge1031

._crit_edge1031:                                  ; preds = %.lr.ph1030.preheader, %bb.ae
  %.5265.i286.lcssa = phi ptr [ %i.ef, %bb.ae ], [ %scevgep1215, %.lr.ph1030.preheader ]
  %.2233.i287.lcssa = phi i32 [ %i.fr, %bb.ae ], [ %i.fy, %.lr.ph1030.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.2233.i287.lcssa to i16 ; 2 uses
  %i.fz = udiv i16 %.lhs.trunc, 255
  %i.ga = zext nneg i16 %i.fz to i64
  %i.gb = getelementptr i8, ptr %.5265.i286.lcssa, i64 %i.ga ; 2 uses
  %i.gc = urem i16 %.lhs.trunc, 255
  %i.gd = trunc nuw i16 %i.gc to i8
  %i.ge = getelementptr i8, ptr %i.gb, i64 1
  store i8 %i.gd, ptr %i.gb, align 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.gf = trunc i64 %.2.i.in.fr to i8
  %i.gg = add i8 %i.fp, %i.gf
  store i8 %i.gg, ptr %.0238.i276, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge1031
  %.7267.i279.ph = phi ptr [ %i.ef, %bb.af ], [ %i.ge, %._crit_edge1031 ] ; 6 uses
  %i.gh = icmp ugt ptr %i.fi, %i.ay
  br i1 %i.gh, label %.thread569, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = getelementptr i8, ptr %i.fi, i64 -2     ; 2 uses
  %.0.copyload.i504 = load i64, ptr %i.gi, align 1
  %i.gj = mul i64 %.0.copyload.i504, -3523014627271114752
  %i.gk = lshr i64 %i.gj, 52
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gl, %i.bj
  %i.gn = trunc i64 %i.gm to i32
  %i.go = getelementptr [4 x i8], ptr %0, i64 %i.gk
  store i32 %i.gn, ptr %i.go, align 4
  %.0.copyload.i466 = load i64, ptr %i.fi, align 1
  %i.gp = mul i64 %.0.copyload.i466, -3523014627271114752
  %i.gq = lshr i64 %i.gp, 52
  %i.gr = getelementptr [4 x i8], ptr %0, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = zext i32 %i.gs to i64
  %.0.i534 = getelementptr i8, ptr %i.bf, i64 %i.gt ; 4 uses
  %i.gu = ptrtoint ptr %i.fi to i64
  %i.gv = sub i64 %i.gu, %i.bj
  %i.gw = trunc i64 %i.gv to i32
  store i32 %i.gw, ptr %i.gr, align 4
  %.not303.i283 = icmp ult ptr %.0.i534, %i.ax
  %i.gx = getelementptr i8, ptr %.0.i534, i64 65535
  %.not304.i284 = icmp ult ptr %i.gx, %i.fi
  %or.cond321.i285 = or i1 %.not303.i283, %.not304.i284
  br i1 %or.cond321.i285, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.0.copyload.i317 = load i32, ptr %.0.i534, align 1
  %.0.copyload.i = load i32, ptr %i.fi, align 1
  %i.gy = icmp eq i32 %.0.copyload.i317, %.0.copyload.i
  br i1 %i.gy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gz = getelementptr i8, ptr %.7267.i279.ph, i64 1
  store i8 0, ptr %.7267.i279.ph, align 1
  br label %LZ4_wildCopy.exit

bb.ak:                                            ; preds = %bb.ah, %bb.ai
  %i.ha = getelementptr i8, ptr %i.fi, i64 2      ; 2 uses
  %.not.i236997 = icmp ugt ptr %i.ha, %i.ay
  br i1 %.not.i236997, label %.thread569, label %.lr.ph1001, !prof !21

.thread569:                                       ; preds = %bb.ak, %.critedge.i291.backedge, %bb.ag, %bb.m, %bb.l
  %.3271.i254 = phi ptr [ %1, %bb.l ], [ %.0268.i2251037, %.critedge.i291.backedge ], [ %i.fi, %bb.ag ], [ %1, %bb.m ], [ %i.fi, %bb.ak ] ; 2 uses
  %.9.i255 = phi ptr [ %2, %bb.l ], [ %.0260.i2261038, %.critedge.i291.backedge ], [ %.7267.i279.ph, %bb.ag ], [ %2, %bb.m ], [ %.7267.i279.ph, %bb.ak ] ; 6 uses
  %i.hb = ptrtoint ptr %i.af to i64
  %i.hc = ptrtoint ptr %.3271.i254 to i64         ; 2 uses
  %i.hd = sub i64 %i.hb, %i.hc                    ; 7 uses
  %i.he = ptrtoint ptr %.9.i255 to i64
  %i.hf = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.hg = add i64 %i.hd, 240
  %i.hh = udiv i64 %i.hg, 255
  %reass.sub1053 = sub i64 %i.he, %i.hf
  %i.hi = add i64 %reass.sub1053, 1
  %i.hj = add i64 %i.hi, %i.hd
  %i.hk = add i64 %i.hj, %i.hh
  %i.hl = zext i32 %4 to i64
  %i.hm = icmp ugt i64 %i.hk, %i.hl
  br i1 %i.hm, label %LZ4_compress_generic.exit292, label %bb.al

bb.al:                                            ; preds = %.thread569
  %i.hn = icmp ugt i64 %i.hd, 14
  br i1 %i.hn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ho = add i64 %i.hd, -15                      ; 2 uses
  store i8 -16, ptr %.9.i255, align 1
  %.10.i2621043 = getelementptr i8, ptr %.9.i255, i64 1 ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, 254
  br i1 %i.hp, label %.lr.ph1047.preheader, label %._crit_edge1048

.lr.ph1047.preheader:                             ; preds = %bb.am
  %7 = add i64 %6, %i.ae
  %i.hq = add i64 %7, -270
  %i.hr = sub i64 %i.hq, %i.hc                    ; 2 uses
  %i.hs = udiv i64 %i.hr, 255                     ; 3 uses
  %i.ht = add nuw nsw i64 %i.hs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.10.i2621043, i8 -1, i64 %i.ht, i1 false)
  %.neg1346 = mul i64 %i.hs, -255
  %i.hu = add i64 %.neg1346, %i.hr
  %i.hv = getelementptr i8, ptr %.9.i255, i64 %i.hs
  %scevgep1216 = getelementptr i8, ptr %i.hv, i64 2
  br label %._crit_edge1048

._crit_edge1048:                                  ; preds = %.lr.ph1047.preheader, %bb.am
  %.0.i261.lcssa = phi i64 [ %i.ho, %bb.am ], [ %i.hu, %.lr.ph1047.preheader ]
  %.10.i262.lcssa = phi ptr [ %.10.i2621043, %bb.am ], [ %scevgep1216, %.lr.ph1047.preheader ] ; 2 uses
  %i.hw = trunc nuw i64 %.0.i261.lcssa to i8
  store i8 %i.hw, ptr %.10.i262.lcssa, align 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %.tr306.i256 = trunc nuw nsw i64 %i.hd to i8
  %i.hx = shl nuw i8 %.tr306.i256, 4
  store i8 %i.hx, ptr %.9.i255, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge1048
  %.10.pn.i257 = phi ptr [ %.10.i262.lcssa, %._crit_edge1048 ], [ %.9.i255, %bb.an ]
  %.11.i258 = getelementptr i8, ptr %.10.pn.i257, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11.i258, ptr align 1 %.3271.i254, i64 %i.hd, i1 false)
  %i.hy = getelementptr i8, ptr %.11.i258, i64 %i.hd
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = sub i64 %i.hz, %i.hf
  %i.ib = trunc i64 %i.ia to i32
  br label %LZ4_compress_generic.exit292

bb.ap:                                            ; preds = %bb.j
  br i1 %i.bc, label %LZ4_compress_generic.exit292, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ic = zext i32 %i.ab to i64
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = getelementptr i8, ptr %1, i64 %i.id     ; 3 uses
  %i.if = icmp samesign ult i32 %3, 13
  br i1 %i.if, label %.thread605, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.0.copyload.i495 = load i64, ptr %1, align 1
  %i.ig = mul i64 %.0.copyload.i495, -3523014627271114752
  %i.ih = lshr i64 %i.ig, 52
  %i.ii = ptrtoint ptr %i.ie to i64               ; 3 uses
  %i.ij = getelementptr [4 x i8], ptr %0, i64 %i.ih
  store i32 %i.ab, ptr %i.ij, align 4
  %i.ik = shl i32 %spec.store.select, 6
  %i.il = or disjoint i32 %i.ik, 1
  %i.im = and i32 %spec.store.select, 67108863
  %i.in = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %.not.i166943982 = icmp ugt ptr %i.in, %i.ay
  br i1 %.not.i166943982, label %.thread605, label %.lr.ph947.lr.ph, !prof !19

.lr.ph947.lr.ph:                                  ; preds = %bb.ar
  %i.io = getelementptr i8, ptr %i.af, i64 -8
  %i.ip = getelementptr i8, ptr %i.af, i64 -6
  br label %.lr.ph947

.lr.ph947:                                        ; preds = %.lr.ph947.lr.ph, %bb.bp
  %i.iq = phi ptr [ %i.in, %.lr.ph947.lr.ph ], [ %i.ny, %bb.bp ]
  %.0260.i156984 = phi ptr [ %2, %.lr.ph947.lr.ph ], [ %.7267.i209.ph, %bb.bp ] ; 6 uses
  %.0268.i155983 = phi ptr [ %1, %.lr.ph947.lr.ph ], [ %i.mg, %bb.bp ] ; 6 uses
  %.0281.i153985 = getelementptr i8, ptr %.0268.i155983, i64 1 ; 2 uses
  %.0256.i157.in.in.in986 = load i64, ptr %.0281.i153985, align 1
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph947, %.critedge.i221.backedge
  %i.ir = phi i32 [ %i.im, %.lr.ph947 ], [ %i.jf, %.critedge.i221.backedge ]
  %i.is = phi i32 [ %i.il, %.lr.ph947 ], [ %i.je, %.critedge.i221.backedge ] ; 2 uses
  %i.it = phi ptr [ %i.iq, %.lr.ph947 ], [ %i.jd, %.critedge.i221.backedge ] ; 3 uses
  %.0237.i163945 = phi ptr [ %.0281.i153985, %.lr.ph947 ], [ %i.it, %.critedge.i221.backedge ] ; 6 uses
  %.1257.i160.in.in.in944 = phi i64 [ %.0256.i157.in.in.in986, %.lr.ph947 ], [ %.0.copyload.i497, %.critedge.i221.backedge ]
  %.1257.i160.in.in = mul i64 %.1257.i160.in.in.in944, -3523014627271114752
  %.1257.i160.in = lshr i64 %.1257.i160.in.in, 52
  %i.iu = getelementptr [4 x i8], ptr %0, i64 %.1257.i160.in ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = zext i32 %i.iv to i64
  %.0.i535 = getelementptr i8, ptr %i.ie, i64 %i.iw ; 5 uses
  %.0.copyload.i497 = load i64, ptr %i.it, align 1
  %i.ix = ptrtoint ptr %.0237.i163945 to i64      ; 2 uses
  %i.iy = sub i64 %i.ix, %i.ii
  %i.iz = trunc i64 %i.iy to i32
  store i32 %i.iz, ptr %i.iu, align 4
  %i.ja = getelementptr i8, ptr %.0.i535, i64 65535
  %i.jb = icmp ult ptr %i.ja, %.0237.i163945
  br i1 %i.jb, label %.critedge.i221.backedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.0.copyload.i323 = load i32, ptr %.0.i535, align 1
  %.0.copyload.i322 = load i32, ptr %.0237.i163945, align 1
  %.not300.i174 = icmp eq i32 %.0.copyload.i323, %.0.copyload.i322
  br i1 %.not300.i174, label %.preheader743, label %.critedge.i221.backedge

.critedge.i221.backedge:                          ; preds = %bb.at, %bb.as
  %i.jc = zext nneg i32 %i.ir to i64
  %i.jd = getelementptr i8, ptr %i.it, i64 %i.jc  ; 2 uses
  %i.je = add i32 %i.is, 1
  %i.jf = lshr i32 %i.is, 6
  %.not.i166 = icmp ugt ptr %i.jd, %i.ay
  br i1 %.not.i166, label %.thread605, label %bb.as, !prof !20, !llvm.loop !12

.preheader743:                                    ; preds = %bb.at
  %i.jg = icmp ugt ptr %.0237.i163945, %.0268.i155983
  %i.jh = icmp ugt ptr %.0.i535, %i.ax
  %i.ji = and i1 %i.jg, %i.jh
  br i1 %i.ji, label %.lr.ph954, label %.critedge7.i195

.lr.ph954:                                        ; preds = %.preheader743, %bb.au
  %.2241.i194953 = phi ptr [ %i.jl, %bb.au ], [ %.0.i535, %.preheader743 ] ; 2 uses
  %.1282.i193952 = phi ptr [ %i.jj, %bb.au ], [ %.0237.i163945, %.preheader743 ] ; 2 uses
  %i.jj = getelementptr i8, ptr %.1282.i193952, i64 -1 ; 4 uses
  %i.jk = load i8, ptr %i.jj, align 1
  %i.jl = getelementptr i8, ptr %.2241.i194953, i64 -1 ; 4 uses
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = icmp eq i8 %i.jk, %i.jm
  br i1 %i.jn, label %bb.au, label %.critedge7.i195.loopexit

bb.au:                                            ; preds = %.lr.ph954
  %i.jo = icmp ugt ptr %i.jj, %.0268.i155983
  %i.jp = icmp ugt ptr %i.jl, %i.ax
  %i.jq = and i1 %i.jo, %i.jp
  br i1 %i.jq, label %.lr.ph954, label %.critedge7.i195.loopexit, !llvm.loop !14

.critedge7.i195.loopexit:                         ; preds = %.lr.ph954, %bb.au
  %.1282.i193.lcssa.ph = phi ptr [ %i.jj, %bb.au ], [ %.1282.i193952, %.lr.ph954 ] ; 2 uses
  %.2241.i194.lcssa.ph = phi ptr [ %i.jl, %bb.au ], [ %.2241.i194953, %.lr.ph954 ]
  %.pre1217 = ptrtoint ptr %.1282.i193.lcssa.ph to i64
  br label %.critedge7.i195

.critedge7.i195:                                  ; preds = %.critedge7.i195.loopexit, %.preheader743
  %.pre-phi1218 = phi i64 [ %.pre1217, %.critedge7.i195.loopexit ], [ %i.ix, %.preheader743 ] ; 2 uses
  %.1282.i193.lcssa = phi ptr [ %.1282.i193.lcssa.ph, %.critedge7.i195.loopexit ], [ %.0237.i163945, %.preheader743 ]
  %.2241.i194.lcssa = phi ptr [ %.2241.i194.lcssa.ph, %.critedge7.i195.loopexit ], [ %.0.i535, %.preheader743 ]
  %i.jr = ptrtoint ptr %.0268.i155983 to i64      ; 2 uses
  %i.js = sub i64 %.pre-phi1218, %i.jr            ; 3 uses
  %i.jt = trunc i64 %i.js to i32                  ; 3 uses
  %i.ju = getelementptr i8, ptr %.0260.i156984, i64 1 ; 4 uses
  %i.jv = and i64 %i.js, 4294967295               ; 2 uses
  %i.jw = getelementptr i8, ptr %i.ju, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 8
  %i.jy = udiv i32 %i.jt, 255
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr i8, ptr %i.jx, i64 %i.jz
  %i.kb = icmp ugt ptr %i.ka, %i.bb
  br i1 %i.kb, label %LZ4_compress_generic.exit292, label %bb.av, !prof !11

bb.av:                                            ; preds = %.critedge7.i195
  %i.kc = icmp ugt i32 %i.jt, 14
  br i1 %i.kc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kd = add i32 %i.jt, -15                      ; 3 uses
  store i8 -16, ptr %.0260.i156984, align 1
  %i.ke = icmp sgt i32 %i.kd, 254
  br i1 %i.ke, label %.lr.ph963.preheader, label %._crit_edge964

.lr.ph963.preheader:                              ; preds = %bb.aw
  %i.kf = trunc i64 %.pre-phi1218 to i32          ; 2 uses
  %i.kg = add i32 %i.kf, 239
  %i.kh = tail call i32 @llvm.umin.i32(i32 %i.kd, i32 509)
  %i.ki = trunc i64 %i.jr to i32                  ; 2 uses
  %i.kj = add i32 %i.kh, %i.ki
  %i.kk = sub i32 %i.kg, %i.kj
  %.fr1339 = freeze i32 %i.kk                     ; 3 uses
  %i.kl = udiv i32 %.fr1339, 255
  %i.km = zext nneg i32 %i.kl to i64              ; 2 uses
  %i.kn = add nuw nsw i64 %i.km, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.ju, i8 -1, i64 %i.kn, i1 false)
  %scevgep1202 = getelementptr i8, ptr %.0260.i156984, i64 2
  %scevgep1204 = getelementptr i8, ptr %scevgep1202, i64 %i.km
  %i.ko = add i32 %i.kf, -270
  %i.kp = sub i32 %i.ko, %i.ki
  %i.kq = urem i32 %.fr1339, 255
  %.neg1340 = sub i32 %i.kq, %.fr1339
  %i.kr = add i32 %.neg1340, %i.kp
  br label %._crit_edge964

._crit_edge964:                                   ; preds = %.lr.ph963.preheader, %bb.aw
  %.1261.i219.lcssa = phi ptr [ %i.ju, %bb.aw ], [ %scevgep1204, %.lr.ph963.preheader ] ; 2 uses
  %.0234.i220.lcssa = phi i32 [ %i.kd, %bb.aw ], [ %i.kr, %.lr.ph963.preheader ]
  %i.ks = trunc i32 %.0234.i220.lcssa to i8
  %i.kt = getelementptr i8, ptr %.1261.i219.lcssa, i64 1
  store i8 %i.ks, ptr %.1261.i219.lcssa, align 1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %.tr.i196 = trunc i64 %i.js to i8
  %i.ku = shl nuw i8 %.tr.i196, 4
  store i8 %i.ku, ptr %.0260.i156984, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge964
  %.2262.i197 = phi ptr [ %i.kt, %._crit_edge964 ], [ %i.ju, %bb.ax ] ; 2 uses
  %i.kv = getelementptr i8, ptr %.2262.i197, i64 %i.jv ; 2 uses
  br label %bb.az

end_hunk_1
begin_hunk_2_@LZ4_compress_fast_continue:bb.a
  %i.kx = getelementptr i8, ptr %.0.i334, i64 8
  %i.ky = icmp ult ptr %i.kw, %i.kv
  br i1 %i.ky, label %bb.az, label %LZ4_wildCopy.exit335, !llvm.loop !15

LZ4_wildCopy.exit335:                             ; preds = %bb.az, %bb.bo
  %.2283.i200 = phi ptr [ %i.mg, %bb.bo ], [ %.1282.i193.lcssa, %bb.az ] ; 3 uses
  %.4264.i203 = phi ptr [ %i.nx, %bb.bo ], [ %i.kv, %bb.az ] ; 4 uses
  %.3242.i205 = phi ptr [ %.0.i536, %bb.bo ], [ %.2241.i194.lcssa, %bb.az ] ; 2 uses
  %.0238.i206 = phi ptr [ %.7267.i209.ph, %bb.bo ], [ %.0260.i156984, %bb.az ] ; 3 uses
  %i.kz = ptrtoint ptr %.2283.i200 to i64
  %i.la = ptrtoint ptr %.3242.i205 to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = trunc i64 %i.lb to i16
  store i16 %i.lc, ptr %.4264.i203, align 1
  %i.ld = getelementptr i8, ptr %.4264.i203, i64 2 ; 3 uses
  %i.le = getelementptr i8, ptr %.2283.i200, i64 4 ; 4 uses
  %i.lf = getelementptr i8, ptr %.3242.i205, i64 4 ; 2 uses
  %i.lg = icmp ult ptr %i.le, %i.ay
  br i1 %i.lg, label %.lr.ph969, label %._crit_edge970, !prof !16

.lr.ph969:                                        ; preds = %LZ4_wildCopy.exit335, %bb.ba
  %.033.i345968 = phi ptr [ %i.ln, %bb.ba ], [ %i.lf, %LZ4_wildCopy.exit335 ] ; 2 uses
  %.036.i344967 = phi ptr [ %i.lm, %bb.ba ], [ %i.le, %LZ4_wildCopy.exit335 ] ; 3 uses
  %.0.copyload.i480 = load i64, ptr %.033.i345968, align 1 ; 2 uses
  %.0.copyload.i479 = load i64, ptr %.036.i344967, align 1 ; 2 uses
  %.not.i356 = icmp eq i64 %.0.copyload.i480, %.0.copyload.i479
  br i1 %.not.i356, label %bb.ba, label %.thread588

.thread588:                                       ; preds = %.lr.ph969
  %i.lh = xor i64 %.0.copyload.i479, %.0.copyload.i480
  %i.li = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.lh) #8, !srcloc !17
  %i.lj = lshr i64 %i.li, 3
  %i.lk = and i64 %i.lj, 4294967295
  %i.ll = getelementptr i8, ptr %.036.i344967, i64 %i.lk
  br label %LZ4_count.exit360

bb.ba:                                            ; preds = %.lr.ph969
  %i.lm = getelementptr i8, ptr %.036.i344967, i64 8 ; 3 uses
  %i.ln = getelementptr i8, ptr %.033.i345968, i64 8 ; 2 uses
  %i.lo = icmp ult ptr %i.lm, %i.ay
  br i1 %i.lo, label %.lr.ph969, label %._crit_edge970, !prof !18

._crit_edge970:                                   ; preds = %bb.ba, %LZ4_wildCopy.exit335
  %.036.i344.lcssa = phi ptr [ %i.le, %LZ4_wildCopy.exit335 ], [ %i.lm, %bb.ba ] ; 5 uses
  %.033.i345.lcssa = phi ptr [ %i.lf, %LZ4_wildCopy.exit335 ], [ %i.ln, %bb.ba ] ; 4 uses
  %i.lp = icmp ult ptr %.036.i344.lcssa, %i.io
  br i1 %i.lp, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %._crit_edge970
  %.0.copyload.i41.i354 = load i32, ptr %.033.i345.lcssa, align 1
  %.0.copyload.i.i355 = load i32, ptr %.036.i344.lcssa, align 1
  %i.lq = icmp eq i32 %.0.copyload.i41.i354, %.0.copyload.i.i355
  br i1 %i.lq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lr = getelementptr i8, ptr %.036.i344.lcssa, i64 4
  %i.ls = getelementptr i8, ptr %.033.i345.lcssa, i64 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge970
  %.238.i347 = phi ptr [ %i.lr, %bb.bc ], [ %.036.i344.lcssa, %bb.bb ], [ %.036.i344.lcssa, %._crit_edge970 ] ; 5 uses
  %.235.i348 = phi ptr [ %i.ls, %bb.bc ], [ %.033.i345.lcssa, %bb.bb ], [ %.033.i345.lcssa, %._crit_edge970 ] ; 4 uses
  %i.lt = icmp ult ptr %.238.i347, %i.ip
  br i1 %i.lt, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %.0.copyload.i530 = load i16, ptr %.235.i348, align 1
  %.0.copyload.i529 = load i16, ptr %.238.i347, align 1
  %i.lu = icmp eq i16 %.0.copyload.i530, %.0.copyload.i529
  br i1 %i.lu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lv = getelementptr i8, ptr %.238.i347, i64 2
  %i.lw = getelementptr i8, ptr %.235.i348, i64 2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.339.i349 = phi ptr [ %i.lv, %bb.bf ], [ %.238.i347, %bb.be ], [ %.238.i347, %bb.bd ] ; 4 uses
  %.3.i350 = phi ptr [ %i.lw, %bb.bf ], [ %.235.i348, %bb.be ], [ %.235.i348, %bb.bd ]
  %i.lx = icmp ult ptr %.339.i349, %i.az
  br i1 %i.lx, label %bb.bh, label %LZ4_count.exit360

bb.bh:                                            ; preds = %bb.bg
  %i.ly = load i8, ptr %.3.i350, align 1
  %i.lz = load i8, ptr %.339.i349, align 1
  %i.ma = icmp eq i8 %i.ly, %i.lz
  %spec.select.i353.idx = zext i1 %i.ma to i64
  %spec.select.i353 = getelementptr i8, ptr %.339.i349, i64 %spec.select.i353.idx
  br label %LZ4_count.exit360

LZ4_count.exit360:                                ; preds = %bb.bg, %bb.bh, %.thread588
  %.sink1474 = phi ptr [ %i.ll, %.thread588 ], [ %.339.i349, %bb.bg ], [ %spec.select.i353, %bb.bh ]
  %i.mb = ptrtoint ptr %.sink1474 to i64
  %i.mc = ptrtoint ptr %i.le to i64
  %i.md = sub i64 %i.mb, %i.mc
  %.2.i352.in.fr = freeze i64 %i.md               ; 4 uses
  %.2.i352 = trunc i64 %.2.i352.in.fr to i32      ; 3 uses
  %i.me = add i64 %.2.i352.in.fr, 4
  %i.mf = and i64 %i.me, 4294967295
  %i.mg = getelementptr i8, ptr %.2283.i200, i64 %i.mf ; 11 uses
  %i.mh = getelementptr i8, ptr %.4264.i203, i64 8
  %i.mi = lshr i64 %.2.i352.in.fr, 8
  %i.mj = and i64 %i.mi, 16777215
  %i.mk = getelementptr i8, ptr %i.mh, i64 %i.mj
  %i.ml = icmp ugt ptr %i.mk, %i.bb
  br i1 %i.ml, label %LZ4_compress_generic.exit292, label %bb.bi, !prof !22

bb.bi:                                            ; preds = %LZ4_count.exit360
  %i.mm = icmp ugt i32 %.2.i352, 14
  %i.mn = load i8, ptr %.0238.i206, align 1       ; 2 uses
  br i1 %i.mm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mo = add i8 %i.mn, 15
  store i8 %i.mo, ptr %.0238.i206, align 1
  %i.mp = add i32 %.2.i352, -15                   ; 2 uses
  store i32 -1, ptr %i.ld, align 1
  %i.mq = icmp ugt i32 %i.mp, 1019
  br i1 %i.mq, label %.lr.ph976.preheader, label %._crit_edge977

.lr.ph976.preheader:                              ; preds = %bb.bj
  %scevgep1205 = getelementptr i8, ptr %.4264.i203, i64 6 ; 2 uses
  %i.mr = add i32 %.2.i352, -1035                 ; 2 uses
  %i.ms = udiv i32 %i.mr, 1020
  %i.mt = shl nuw nsw i32 %i.ms, 2
  %i.mu = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mv = add nuw nsw i64 %i.mu, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep1205, i8 -1, i64 %i.mv, i1 false)
  %scevgep1207 = getelementptr i8, ptr %scevgep1205, i64 %i.mu
  %i.mw = urem i32 %i.mr, 1020
  br label %._crit_edge977

._crit_edge977:                                   ; preds = %.lr.ph976.preheader, %bb.bj
  %.5265.i216.lcssa = phi ptr [ %i.ld, %bb.bj ], [ %scevgep1207, %.lr.ph976.preheader ]
  %.2233.i217.lcssa = phi i32 [ %i.mp, %bb.bj ], [ %i.mw, %.lr.ph976.preheader ]
  %.lhs.trunc721 = trunc nuw nsw i32 %.2233.i217.lcssa to i16 ; 2 uses
  %i.mx = udiv i16 %.lhs.trunc721, 255
  %i.my = zext nneg i16 %i.mx to i64
  %i.mz = getelementptr i8, ptr %.5265.i216.lcssa, i64 %i.my ; 2 uses
  %i.na = urem i16 %.lhs.trunc721, 255
  %i.nb = trunc nuw i16 %i.na to i8
  %i.nc = getelementptr i8, ptr %i.mz, i64 1
  store i8 %i.nb, ptr %i.mz, align 1
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.nd = trunc i64 %.2.i352.in.fr to i8
  %i.ne = add i8 %i.mn, %i.nd
  store i8 %i.ne, ptr %.0238.i206, align 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge977
  %.7267.i209.ph = phi ptr [ %i.ld, %bb.bk ], [ %i.nc, %._crit_edge977 ] ; 6 uses
  %i.nf = icmp ugt ptr %i.mg, %i.ay
  br i1 %i.nf, label %.thread605, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ng = getelementptr i8, ptr %i.mg, i64 -2     ; 2 uses
  %.0.copyload.i498 = load i64, ptr %i.ng, align 1
  %i.nh = mul i64 %.0.copyload.i498, -3523014627271114752
  %i.ni = lshr i64 %i.nh, 52
  %i.nj = ptrtoint ptr %i.ng to i64
  %i.nk = sub i64 %i.nj, %i.ii
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = getelementptr [4 x i8], ptr %0, i64 %i.ni
  store i32 %i.nl, ptr %i.nm, align 4
  %.0.copyload.i465 = load i64, ptr %i.mg, align 1
  %i.nn = mul i64 %.0.copyload.i465, -3523014627271114752
  %i.no = lshr i64 %i.nn, 52
  %i.np = getelementptr [4 x i8], ptr %0, i64 %i.no ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4
  %i.nr = zext i32 %i.nq to i64
  %.0.i536 = getelementptr i8, ptr %i.ie, i64 %i.nr ; 3 uses
  %i.ns = ptrtoint ptr %i.mg to i64
  %i.nt = sub i64 %i.ns, %i.ii
  %i.nu = trunc i64 %i.nt to i32
  store i32 %i.nu, ptr %i.np, align 4
  %i.nv = getelementptr i8, ptr %.0.i536, i64 65535
  %.not304.i214 = icmp ult ptr %i.nv, %i.mg
  br i1 %.not304.i214, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.0.copyload.i321 = load i32, ptr %.0.i536, align 1
  %.0.copyload.i320 = load i32, ptr %i.mg, align 1
  %i.nw = icmp eq i32 %.0.copyload.i321, %.0.copyload.i320
  br i1 %i.nw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.nx = getelementptr i8, ptr %.7267.i209.ph, i64 1
  store i8 0, ptr %.7267.i209.ph, align 1
  br label %LZ4_wildCopy.exit335

bb.bp:                                            ; preds = %bb.bm, %bb.bn
  %i.ny = getelementptr i8, ptr %i.mg, i64 2      ; 2 uses
  %.not.i166943 = icmp ugt ptr %i.ny, %i.ay
  br i1 %.not.i166943, label %.thread605, label %.lr.ph947, !prof !21

.thread605:                                       ; preds = %bb.bp, %.critedge.i221.backedge, %bb.bl, %bb.ar, %bb.aq
  %.3271.i184 = phi ptr [ %1, %bb.aq ], [ %.0268.i155983, %.critedge.i221.backedge ], [ %i.mg, %bb.bl ], [ %1, %bb.ar ], [ %i.mg, %bb.bp ] ; 2 uses
  %.9.i185 = phi ptr [ %2, %bb.aq ], [ %.0260.i156984, %.critedge.i221.backedge ], [ %.7267.i209.ph, %bb.bl ], [ %2, %bb.ar ], [ %.7267.i209.ph, %bb.bp ] ; 6 uses
  %i.nz = ptrtoint ptr %i.af to i64
  %i.oa = ptrtoint ptr %.3271.i184 to i64         ; 2 uses
  %i.ob = sub i64 %i.nz, %i.oa                    ; 7 uses
  %i.oc = ptrtoint ptr %.9.i185 to i64
  %i.od = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.oe = add i64 %i.ob, 240
  %i.of = udiv i64 %i.oe, 255
  %reass.sub1052 = sub i64 %i.oc, %i.od
  %i.og = add i64 %reass.sub1052, 1
  %i.oh = add i64 %i.og, %i.ob
  %i.oi = add i64 %i.oh, %i.of
  %i.oj = zext i32 %4 to i64
  %i.ok = icmp ugt i64 %i.oi, %i.oj
  br i1 %i.ok, label %LZ4_compress_generic.exit292, label %bb.bq

bb.bq:                                            ; preds = %.thread605
  %i.ol = icmp ugt i64 %i.ob, 14
  br i1 %i.ol, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.om = add i64 %i.ob, -15                      ; 2 uses
  store i8 -16, ptr %.9.i185, align 1
  %.10.i192989 = getelementptr i8, ptr %.9.i185, i64 1 ; 2 uses
  %i.on = icmp ugt i64 %i.om, 254
  br i1 %i.on, label %.lr.ph993.preheader, label %._crit_edge994

.lr.ph993.preheader:                              ; preds = %bb.br
  %8 = add i64 %6, %i.ae
  %i.oo = add i64 %8, -270
  %i.op = sub i64 %i.oo, %i.oa                    ; 2 uses
  %i.oq = udiv i64 %i.op, 255                     ; 3 uses
  %i.or = add nuw nsw i64 %i.oq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.10.i192989, i8 -1, i64 %i.or, i1 false)
  %.neg1342 = mul i64 %i.oq, -255
  %i.os = add i64 %.neg1342, %i.op
  %i.ot = getelementptr i8, ptr %.9.i185, i64 %i.oq
  %scevgep1208 = getelementptr i8, ptr %i.ot, i64 2
  br label %._crit_edge994

._crit_edge994:                                   ; preds = %.lr.ph993.preheader, %bb.br
  %.0.i191.lcssa = phi i64 [ %i.om, %bb.br ], [ %i.os, %.lr.ph993.preheader ]
  %.10.i192.lcssa = phi ptr [ %.10.i192989, %bb.br ], [ %scevgep1208, %.lr.ph993.preheader ] ; 2 uses
  %i.ou = trunc nuw i64 %.0.i191.lcssa to i8
  store i8 %i.ou, ptr %.10.i192.lcssa, align 1
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %.tr306.i186 = trunc nuw nsw i64 %i.ob to i8
  %i.ov = shl nuw i8 %.tr306.i186, 4
  store i8 %i.ov, ptr %.9.i185, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %._crit_edge994
  %.10.pn.i187 = phi ptr [ %.10.i192.lcssa, %._crit_edge994 ], [ %.9.i185, %bb.bs ]
  %.11.i188 = getelementptr i8, ptr %.10.pn.i187, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11.i188, ptr align 1 %.3271.i184, i64 %i.ob, i1 false)
  %i.ow = getelementptr i8, ptr %.11.i188, i64 %i.ob
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = sub i64 %i.ox, %i.od
  %i.oz = trunc i64 %i.oy to i32
  br label %LZ4_compress_generic.exit292

LZ4_compress_generic.exit292:                     ; preds = %.critedge7.i195, %LZ4_count.exit360, %.critedge7.i265, %LZ4_count.exit, %bb.bt, %.thread605, %bb.ap, %bb.ao, %.thread569, %bb.k
  %.072 = phi i32 [ 0, %.thread569 ], [ 0, %.thread605 ], [ 0, %bb.k ], [ %i.ib, %bb.ao ], [ 0, %LZ4_count.exit ], [ 0, %bb.ap ], [ %i.oz, %bb.bt ], [ 0, %LZ4_count.exit360 ], [ 0, %.critedge7.i265 ], [ 0, %.critedge7.i195 ]
  %i.pa = load i32, ptr %i.c, align 8
  %i.pb = add i32 %i.pa, %3
  br label %.sink.split

bb.bu:                                            ; preds = %bb.i
  br i1 %or.cond1470, label %bb.bv, label %bb.dt

bb.bv:                                            ; preds = %bb.bu
  %i.pc = sub nsw i64 0, %i.av
  %i.pd = getelementptr i8, ptr %1, i64 %i.pc     ; 2 uses
  %i.pe = getelementptr i8, ptr %i.aq, i64 %i.av
  %i.pf = ptrtoint ptr %i.pe to i64               ; 2 uses
  %i.pg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ph = sub i64 %i.pf, %i.pg                    ; 2 uses
  %i.pi = getelementptr i8, ptr %i.af, i64 -12    ; 8 uses
  %i.pj = getelementptr i8, ptr %i.af, i64 -5     ; 4 uses
  %i.pk = sext i32 %4 to i64
  %i.pl = getelementptr i8, ptr %2, i64 %i.pk     ; 2 uses
  %i.pm = icmp ugt i32 %3, 2113929216
  br i1 %i.pm, label %LZ4_compress_generic.exit152, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pn = zext i32 %i.ab to i64
  %i.po = sub nsw i64 0, %i.pn
  %i.pp = getelementptr i8, ptr %1, i64 %i.po     ; 3 uses
  %i.pq = icmp samesign ult i32 %3, 13
  br i1 %i.pq, label %.thread657, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.0.copyload.i489 = load i64, ptr %1, align 1
  %i.pr = mul i64 %.0.copyload.i489, -3523014627271114752
  %i.ps = lshr i64 %i.pr, 52
  %i.pt = ptrtoint ptr %i.pp to i64               ; 3 uses
  %i.pu = getelementptr [4 x i8], ptr %0, i64 %i.ps
  store i32 %i.ab, ptr %i.pu, align 4
  %i.pv = shl i32 %spec.store.select, 6
  %i.pw = or disjoint i32 %i.pv, 1
  %i.px = and i32 %spec.store.select, 67108863
  %i.py = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %.not.i97875928 = icmp ugt ptr %i.py, %i.pi
  br i1 %.not.i97875928, label %.thread657, label %.lr.ph879.lr.ph, !prof !19

.lr.ph879.lr.ph:                                  ; preds = %bb.bx
  %i.pz = getelementptr i8, ptr %i.af, i64 -8     ; 2 uses
  %i.qa = getelementptr i8, ptr %i.af, i64 -6     ; 2 uses
  br label %.lr.ph879

.lr.ph879:                                        ; preds = %.lr.ph879.lr.ph, %bb.do
  %i.qb = phi ptr [ %i.py, %.lr.ph879.lr.ph ], [ %i.yg, %bb.do ]
  %.0260.i87930 = phi ptr [ %2, %.lr.ph879.lr.ph ], [ %.7267.i140.ph, %bb.do ] ; 6 uses
  %.0268.i86929 = phi ptr [ %1, %.lr.ph879.lr.ph ], [ %.4285.i138, %bb.do ] ; 6 uses
  %.0281.i84931 = getelementptr i8, ptr %.0268.i86929, i64 1 ; 2 uses
  %.0256.i88.in.in.in932 = load i64, ptr %.0281.i84931, align 1
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph879, %.critedge.i151.backedge
  %i.qc = phi i32 [ %i.px, %.lr.ph879 ], [ %i.qt, %.critedge.i151.backedge ]
  %i.qd = phi i32 [ %i.pw, %.lr.ph879 ], [ %i.qs, %.critedge.i151.backedge ] ; 2 uses
  %i.qe = phi ptr [ %i.qb, %.lr.ph879 ], [ %i.qr, %.critedge.i151.backedge ] ; 3 uses
  %.0237.i94877 = phi ptr [ %.0281.i84931, %.lr.ph879 ], [ %i.qe, %.critedge.i151.backedge ] ; 6 uses
  %.1257.i91.in.in.in876 = phi i64 [ %.0256.i88.in.in.in932, %.lr.ph879 ], [ %.0.copyload.i491, %.critedge.i151.backedge ]
  %.1257.i91.in.in = mul i64 %.1257.i91.in.in.in876, -3523014627271114752
  %.1257.i91.in = lshr i64 %.1257.i91.in.in, 52
  %i.qf = getelementptr [4 x i8], ptr %0, i64 %.1257.i91.in ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4
  %i.qh = zext i32 %i.qg to i64
  %.0.i537 = getelementptr i8, ptr %i.pp, i64 %i.qh ; 7 uses
  %.0.copyload.i491 = load i64, ptr %i.qe, align 1
  %i.qi = ptrtoint ptr %.0237.i94877 to i64       ; 2 uses
  %i.qj = sub i64 %i.qi, %i.pt
  %i.qk = trunc i64 %i.qj to i32
  store i32 %i.qk, ptr %i.qf, align 4
  %i.ql = icmp ult ptr %.0.i537, %i.pd
  %i.qm = getelementptr i8, ptr %.0.i537, i64 65535
  %i.qn = icmp ult ptr %i.qm, %.0237.i94877
  %or.cond736 = or i1 %i.ql, %i.qn
  br i1 %or.cond736, label %.critedge.i151.backedge, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qo = icmp ult ptr %.0.i537, %1               ; 2 uses
  %.307.i99 = select i1 %i.qo, i64 %i.ph, i64 0   ; 5 uses
  %i.qp = getelementptr i8, ptr %.0.i537, i64 %.307.i99
  %.0.copyload.i327 = load i32, ptr %i.qp, align 1
  %.0.copyload.i326 = load i32, ptr %.0237.i94877, align 1
  %.not300.i105 = icmp eq i32 %.0.copyload.i327, %.0.copyload.i326
  br i1 %.not300.i105, label %.preheader747, label %.critedge.i151.backedge

.critedge.i151.backedge:                          ; preds = %bb.bz, %bb.by
  %i.qq = zext nneg i32 %i.qc to i64
  %i.qr = getelementptr i8, ptr %i.qe, i64 %i.qq  ; 2 uses
  %i.qs = add i32 %i.qd, 1
  %i.qt = lshr i32 %i.qd, 6
  %.not.i97 = icmp ugt ptr %i.qr, %i.pi
  br i1 %.not.i97, label %.thread657, label %bb.by, !prof !20, !llvm.loop !12

.preheader747:                                    ; preds = %bb.bz
  %i.qu = getelementptr i8, ptr %.0.i537, i64 %.307.i99
  %..i98.le = select i1 %i.qo, ptr %i.aq, ptr %1  ; 3 uses
  %i.qv = icmp ugt ptr %.0237.i94877, %.0268.i86929
  %i.qw = icmp ugt ptr %i.qu, %..i98.le
  %i.qx = and i1 %i.qv, %i.qw
  br i1 %i.qx, label %.lr.ph886, label %.critedge7.i126

.lr.ph886:                                        ; preds = %.preheader747, %bb.ca
  %.2241.i125885 = phi ptr [ %i.re, %bb.ca ], [ %.0.i537, %.preheader747 ] ; 3 uses
  %.1282.i124884 = phi ptr [ %i.qz, %bb.ca ], [ %.0237.i94877, %.preheader747 ] ; 2 uses
  %i.qy = getelementptr i8, ptr %.2241.i125885, i64 %.307.i99
  %i.qz = getelementptr i8, ptr %.1282.i124884, i64 -1 ; 4 uses
  %i.ra = load i8, ptr %i.qz, align 1
  %i.rb = getelementptr i8, ptr %i.qy, i64 -1
  %i.rc = load i8, ptr %i.rb, align 1
  %i.rd = icmp eq i8 %i.ra, %i.rc
  br i1 %i.rd, label %bb.ca, label %.critedge7.i126.loopexit

bb.ca:                                            ; preds = %.lr.ph886
  %i.re = getelementptr i8, ptr %.2241.i125885, i64 -1 ; 3 uses
  %i.rf = icmp ugt ptr %i.qz, %.0268.i86929
  %i.rg = getelementptr i8, ptr %i.re, i64 %.307.i99
  %i.rh = icmp ugt ptr %i.rg, %..i98.le
  %i.ri = and i1 %i.rf, %i.rh
  br i1 %i.ri, label %.lr.ph886, label %.critedge7.i126.loopexit, !llvm.loop !14

.critedge7.i126.loopexit:                         ; preds = %.lr.ph886, %bb.ca
  %.1282.i124.lcssa.ph = phi ptr [ %i.qz, %bb.ca ], [ %.1282.i124884, %.lr.ph886 ] ; 2 uses
  %.2241.i125.lcssa.ph = phi ptr [ %i.re, %bb.ca ], [ %.2241.i125885, %.lr.ph886 ]
  %.pre1219 = ptrtoint ptr %.1282.i124.lcssa.ph to i64
  br label %.critedge7.i126

.critedge7.i126:                                  ; preds = %.critedge7.i126.loopexit, %.preheader747
  %.pre-phi1220 = phi i64 [ %.pre1219, %.critedge7.i126.loopexit ], [ %i.qi, %.preheader747 ] ; 2 uses
  %.1282.i124.lcssa = phi ptr [ %.1282.i124.lcssa.ph, %.critedge7.i126.loopexit ], [ %.0237.i94877, %.preheader747 ]
  %.2241.i125.lcssa = phi ptr [ %.2241.i125.lcssa.ph, %.critedge7.i126.loopexit ], [ %.0.i537, %.preheader747 ]
  %i.rj = ptrtoint ptr %.0268.i86929 to i64       ; 2 uses
  %i.rk = sub i64 %.pre-phi1220, %i.rj            ; 3 uses
  %i.rl = trunc i64 %i.rk to i32                  ; 3 uses
  %i.rm = getelementptr i8, ptr %.0260.i87930, i64 1 ; 4 uses
  %i.rn = and i64 %i.rk, 4294967295               ; 2 uses
  %i.ro = getelementptr i8, ptr %i.rm, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 8
  %i.rq = udiv i32 %i.rl, 255
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr i8, ptr %i.rp, i64 %i.rr
  %i.rt = icmp ugt ptr %i.rs, %i.pl
  br i1 %i.rt, label %LZ4_compress_generic.exit152, label %bb.cb, !prof !11

bb.cb:                                            ; preds = %.critedge7.i126
  %i.ru = icmp ugt i32 %i.rl, 14
  br i1 %i.ru, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.rv = add i32 %i.rl, -15                      ; 3 uses
  store i8 -16, ptr %.0260.i87930, align 1
  %i.rw = icmp sgt i32 %i.rv, 254
  br i1 %i.rw, label %.lr.ph895.preheader, label %._crit_edge896

.lr.ph895.preheader:                              ; preds = %bb.cc
  %i.rx = trunc i64 %.pre-phi1220 to i32          ; 2 uses
  %i.ry = add i32 %i.rx, 239
  %i.rz = tail call i32 @llvm.umin.i32(i32 %i.rv, i32 509)
  %i.sa = trunc i64 %i.rj to i32                  ; 2 uses
  %i.sb = add i32 %i.rz, %i.sa
  %i.sc = sub i32 %i.ry, %i.sb
  %.fr1335 = freeze i32 %i.sc                     ; 3 uses
  %i.sd = udiv i32 %.fr1335, 255
  %i.se = zext nneg i32 %i.sd to i64              ; 2 uses
  %i.sf = add nuw nsw i64 %i.se, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.rm, i8 -1, i64 %i.sf, i1 false)
  %scevgep1194 = getelementptr i8, ptr %.0260.i87930, i64 2
  %scevgep1196 = getelementptr i8, ptr %scevgep1194, i64 %i.se
  %i.sg = add i32 %i.rx, -270
  %i.sh = sub i32 %i.sg, %i.sa
  %i.si = urem i32 %.fr1335, 255
  %.neg1336 = sub i32 %i.si, %.fr1335
  %i.sj = add i32 %.neg1336, %i.sh
  br label %._crit_edge896

._crit_edge896:                                   ; preds = %.lr.ph895.preheader, %bb.cc
  %.1261.i149.lcssa = phi ptr [ %i.rm, %bb.cc ], [ %scevgep1196, %.lr.ph895.preheader ] ; 2 uses
  %.0234.i150.lcssa = phi i32 [ %i.rv, %bb.cc ], [ %i.sj, %.lr.ph895.preheader ]
  %i.sk = trunc i32 %.0234.i150.lcssa to i8
  %i.sl = getelementptr i8, ptr %.1261.i149.lcssa, i64 1
  store i8 %i.sk, ptr %.1261.i149.lcssa, align 1
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %.tr.i127 = trunc i64 %i.rk to i8
  %i.sm = shl nuw i8 %.tr.i127, 4
  store i8 %i.sm, ptr %.0260.i87930, align 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge896
  %.2262.i128 = phi ptr [ %i.sl, %._crit_edge896 ], [ %i.rm, %bb.cd ] ; 2 uses
  %i.sn = getelementptr i8, ptr %.2262.i128, i64 %i.rn ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %.09.i336 = phi ptr [ %.2262.i128, %bb.ce ], [ %i.so, %bb.cf ] ; 2 uses
  %.0.i337 = phi ptr [ %.0268.i86929, %bb.ce ], [ %i.sp, %bb.cf ] ; 2 uses
  %.0.copyload1.i507 = load i64, ptr %.0.i337, align 1
  store i64 %.0.copyload1.i507, ptr %.09.i336, align 1
  %i.so = getelementptr i8, ptr %.09.i336, i64 8  ; 2 uses
  %i.sp = getelementptr i8, ptr %.0.i337, i64 8
  %i.sq = icmp ult ptr %i.so, %i.sn
  br i1 %i.sq, label %bb.cf, label %LZ4_wildCopy.exit338, !llvm.loop !15

LZ4_wildCopy.exit338:                             ; preds = %bb.cf, %bb.dn
  %.2283.i131 = phi ptr [ %.4285.i138, %bb.dn ], [ %.1282.i124.lcssa, %bb.cf ] ; 6 uses
  %.5277.i132 = phi ptr [ %.318.i142, %bb.dn ], [ %..i98.le, %bb.cf ]
  %.4264.i134 = phi ptr [ %i.yf, %bb.dn ], [ %i.sn, %bb.cf ] ; 4 uses
  %.4253.i135 = phi i64 [ %.319.i143, %bb.dn ], [ %.307.i99, %bb.cf ]
  %.3242.i136 = phi ptr [ %.0.i538, %bb.dn ], [ %.2241.i125.lcssa, %bb.cf ] ; 3 uses
  %.0238.i137 = phi ptr [ %.7267.i140.ph, %bb.dn ], [ %.0260.i87930, %bb.cf ] ; 3 uses
  %i.sr = ptrtoint ptr %.2283.i131 to i64
end_hunk_2
begin_hunk_3_@LZ4_compress_fast_continue:bb.a
  %i.vj = getelementptr i8, ptr %i.uh, i64 %i.vi
  br label %bb.dg

bb.cx:                                            ; preds = %LZ4_wildCopy.exit338
  %i.vk = getelementptr i8, ptr %.2283.i131, i64 4 ; 4 uses
  %i.vl = getelementptr i8, ptr %.3242.i136, i64 4 ; 2 uses
  %i.vm = icmp ult ptr %i.vk, %i.pi
  br i1 %i.vm, label %.lr.ph902, label %._crit_edge903, !prof !16

.lr.ph902:                                        ; preds = %bb.cx, %bb.cy
  %.033.i396900 = phi ptr [ %i.vt, %bb.cy ], [ %i.vl, %bb.cx ] ; 2 uses
  %.036.i395899 = phi ptr [ %i.vs, %bb.cy ], [ %i.vk, %bb.cx ] ; 3 uses
  %.0.copyload.i474 = load i64, ptr %.033.i396900, align 1 ; 2 uses
  %.0.copyload.i473 = load i64, ptr %.036.i395899, align 1 ; 2 uses
  %.not.i407 = icmp eq i64 %.0.copyload.i474, %.0.copyload.i473
  br i1 %.not.i407, label %bb.cy, label %.thread638

.thread638:                                       ; preds = %.lr.ph902
  %i.vn = xor i64 %.0.copyload.i473, %.0.copyload.i474
  %i.vo = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.vn) #8, !srcloc !17
  %i.vp = lshr i64 %i.vo, 3
  %i.vq = and i64 %i.vp, 4294967295
  %i.vr = getelementptr i8, ptr %.036.i395899, i64 %i.vq
  br label %LZ4_count.exit411

bb.cy:                                            ; preds = %.lr.ph902
  %i.vs = getelementptr i8, ptr %.036.i395899, i64 8 ; 3 uses
  %i.vt = getelementptr i8, ptr %.033.i396900, i64 8 ; 2 uses
  %i.vu = icmp ult ptr %i.vs, %i.pi
  br i1 %i.vu, label %.lr.ph902, label %._crit_edge903, !prof !18

._crit_edge903:                                   ; preds = %bb.cy, %bb.cx
  %.036.i395.lcssa = phi ptr [ %i.vk, %bb.cx ], [ %i.vs, %bb.cy ] ; 5 uses
  %.033.i396.lcssa = phi ptr [ %i.vl, %bb.cx ], [ %i.vt, %bb.cy ] ; 4 uses
  %i.vv = icmp ult ptr %.036.i395.lcssa, %i.pz
  br i1 %i.vv, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %._crit_edge903
  %.0.copyload.i41.i405 = load i32, ptr %.033.i396.lcssa, align 1
  %.0.copyload.i.i406 = load i32, ptr %.036.i395.lcssa, align 1
  %i.vw = icmp eq i32 %.0.copyload.i41.i405, %.0.copyload.i.i406
  br i1 %i.vw, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.vx = getelementptr i8, ptr %.036.i395.lcssa, i64 4
  %i.vy = getelementptr i8, ptr %.033.i396.lcssa, i64 4
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %._crit_edge903
  %.238.i398 = phi ptr [ %i.vx, %bb.da ], [ %.036.i395.lcssa, %bb.cz ], [ %.036.i395.lcssa, %._crit_edge903 ] ; 5 uses
  %.235.i399 = phi ptr [ %i.vy, %bb.da ], [ %.033.i396.lcssa, %bb.cz ], [ %.033.i396.lcssa, %._crit_edge903 ] ; 4 uses
  %i.vz = icmp ult ptr %.238.i398, %i.qa
  br i1 %i.vz, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %.0.copyload.i524 = load i16, ptr %.235.i399, align 1
  %.0.copyload.i523 = load i16, ptr %.238.i398, align 1
  %i.wa = icmp eq i16 %.0.copyload.i524, %.0.copyload.i523
  br i1 %i.wa, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.wb = getelementptr i8, ptr %.238.i398, i64 2
  %i.wc = getelementptr i8, ptr %.235.i399, i64 2
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %.339.i400 = phi ptr [ %i.wb, %bb.dd ], [ %.238.i398, %bb.dc ], [ %.238.i398, %bb.db ] ; 4 uses
  %.3.i401 = phi ptr [ %i.wc, %bb.dd ], [ %.235.i399, %bb.dc ], [ %.235.i399, %bb.db ]
  %i.wd = icmp ult ptr %.339.i400, %i.pj
  br i1 %i.wd, label %bb.df, label %LZ4_count.exit411

bb.df:                                            ; preds = %bb.de
  %i.we = load i8, ptr %.3.i401, align 1
  %i.wf = load i8, ptr %.339.i400, align 1
  %i.wg = icmp eq i8 %i.we, %i.wf
  %spec.select.i404.idx = zext i1 %i.wg to i64
  %spec.select.i404 = getelementptr i8, ptr %.339.i400, i64 %spec.select.i404.idx
  br label %LZ4_count.exit411

LZ4_count.exit411:                                ; preds = %bb.de, %bb.df, %.thread638
  %.sink1481 = phi ptr [ %i.vr, %.thread638 ], [ %.339.i400, %bb.de ], [ %spec.select.i404, %bb.df ]
  %i.wh = ptrtoint ptr %.sink1481 to i64
  %i.wi = ptrtoint ptr %i.vk to i64
  %i.wj = sub i64 %i.wh, %i.wi                    ; 2 uses
  %.2.i403 = trunc i64 %i.wj to i32
  %i.wk = add i64 %i.wj, 4
  %i.wl = and i64 %i.wk, 4294967295
  %i.wm = getelementptr i8, ptr %.2283.i131, i64 %i.wl
  br label %bb.dg

bb.dg:                                            ; preds = %LZ4_count.exit411, %LZ4_count.exit377, %LZ4_count.exit394
  %.4285.i138 = phi ptr [ %i.wm, %LZ4_count.exit411 ], [ %i.vj, %LZ4_count.exit377 ], [ %i.uh, %LZ4_count.exit394 ] ; 11 uses
  %.1232.i139 = phi i32 [ %.2.i403, %LZ4_count.exit411 ], [ %i.vh, %LZ4_count.exit377 ], [ %.2.i386, %LZ4_count.exit394 ]
  %.1232.i139.fr = freeze i32 %.1232.i139         ; 5 uses
  %i.wn = getelementptr i8, ptr %.4264.i134, i64 8
  %i.wo = lshr i32 %.1232.i139.fr, 8
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr i8, ptr %i.wn, i64 %i.wp
  %i.wr = icmp ugt ptr %i.wq, %i.pl
  br i1 %i.wr, label %LZ4_compress_generic.exit152, label %bb.dh, !prof !22

bb.dh:                                            ; preds = %bb.dg
  %i.ws = icmp ugt i32 %.1232.i139.fr, 14
  %i.wt = load i8, ptr %.0238.i137, align 1       ; 2 uses
  br i1 %i.ws, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.wu = add i8 %i.wt, 15
  store i8 %i.wu, ptr %.0238.i137, align 1
  %i.wv = add i32 %.1232.i139.fr, -15             ; 2 uses
  store i32 -1, ptr %i.sv, align 1
  %i.ww = icmp ugt i32 %i.wv, 1019
  br i1 %i.ww, label %.lr.ph922.preheader, label %._crit_edge923

.lr.ph922.preheader:                              ; preds = %bb.di
  %scevgep1197 = getelementptr i8, ptr %.4264.i134, i64 6 ; 2 uses
  %i.wx = add i32 %.1232.i139.fr, -1035           ; 2 uses
  %i.wy = udiv i32 %i.wx, 1020
  %i.wz = shl nuw nsw i32 %i.wy, 2
  %i.xa = zext nneg i32 %i.wz to i64              ; 2 uses
  %i.xb = add nuw nsw i64 %i.xa, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep1197, i8 -1, i64 %i.xb, i1 false)
  %scevgep1199 = getelementptr i8, ptr %scevgep1197, i64 %i.xa
  %i.xc = urem i32 %i.wx, 1020
  br label %._crit_edge923

._crit_edge923:                                   ; preds = %.lr.ph922.preheader, %bb.di
  %.5265.i146.lcssa = phi ptr [ %i.sv, %bb.di ], [ %scevgep1199, %.lr.ph922.preheader ]
  %.2233.i147.lcssa = phi i32 [ %i.wv, %bb.di ], [ %i.xc, %.lr.ph922.preheader ]
  %.lhs.trunc725 = trunc nuw nsw i32 %.2233.i147.lcssa to i16 ; 2 uses
  %i.xd = udiv i16 %.lhs.trunc725, 255
  %i.xe = zext nneg i16 %i.xd to i64
  %i.xf = getelementptr i8, ptr %.5265.i146.lcssa, i64 %i.xe ; 2 uses
  %i.xg = urem i16 %.lhs.trunc725, 255
  %i.xh = trunc nuw i16 %i.xg to i8
  %i.xi = getelementptr i8, ptr %i.xf, i64 1
  store i8 %i.xh, ptr %i.xf, align 1
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.xj = trunc nuw nsw i32 %.1232.i139.fr to i8
  %i.xk = add i8 %i.wt, %i.xj
  store i8 %i.xk, ptr %.0238.i137, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %._crit_edge923
  %.7267.i140.ph = phi ptr [ %i.sv, %bb.dj ], [ %i.xi, %._crit_edge923 ] ; 6 uses
  %i.xl = icmp ugt ptr %.4285.i138, %i.pi
  br i1 %i.xl, label %.thread657, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.xm = getelementptr i8, ptr %.4285.i138, i64 -2 ; 2 uses
  %.0.copyload.i492 = load i64, ptr %i.xm, align 1
  %i.xn = mul i64 %.0.copyload.i492, -3523014627271114752
  %i.xo = lshr i64 %i.xn, 52
  %i.xp = ptrtoint ptr %i.xm to i64
  %i.xq = sub i64 %i.xp, %i.pt
  %i.xr = trunc i64 %i.xq to i32
  %i.xs = getelementptr [4 x i8], ptr %0, i64 %i.xo
  store i32 %i.xr, ptr %i.xs, align 4
  %.0.copyload.i464 = load i64, ptr %.4285.i138, align 1
  %i.xt = mul i64 %.0.copyload.i464, -3523014627271114752
  %i.xu = lshr i64 %i.xt, 52
  %i.xv = getelementptr [4 x i8], ptr %0, i64 %i.xu ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 4
  %i.xx = zext i32 %i.xw to i64
  %.0.i538 = getelementptr i8, ptr %i.pp, i64 %i.xx ; 5 uses
  %i.xy = icmp ult ptr %.0.i538, %1               ; 2 uses
  %.318.i142 = select i1 %i.xy, ptr %i.aq, ptr %1
  %.319.i143 = select i1 %i.xy, i64 %i.ph, i64 0  ; 2 uses
  %i.xz = ptrtoint ptr %.4285.i138 to i64
  %i.ya = sub i64 %i.xz, %i.pt
  %i.yb = trunc i64 %i.ya to i32
  store i32 %i.yb, ptr %i.xv, align 4
  %.not303.i144 = icmp ult ptr %.0.i538, %i.pd
  %i.yc = getelementptr i8, ptr %.0.i538, i64 65535
  %.not304.i145 = icmp ult ptr %i.yc, %.4285.i138
  %or.cond321.i = select i1 %.not303.i144, i1 true, i1 %.not304.i145
  br i1 %or.cond321.i, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.yd = getelementptr i8, ptr %.0.i538, i64 %.319.i143
  %.0.copyload.i325 = load i32, ptr %i.yd, align 1
  %.0.copyload.i324 = load i32, ptr %.4285.i138, align 1
  %i.ye = icmp eq i32 %.0.copyload.i325, %.0.copyload.i324
  br i1 %i.ye, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.yf = getelementptr i8, ptr %.7267.i140.ph, i64 1
  store i8 0, ptr %.7267.i140.ph, align 1
  br label %LZ4_wildCopy.exit338

bb.do:                                            ; preds = %bb.dl, %bb.dm
  %i.yg = getelementptr i8, ptr %.4285.i138, i64 2 ; 2 uses
  %.not.i97875 = icmp ugt ptr %i.yg, %i.pi
  br i1 %.not.i97875, label %.thread657, label %.lr.ph879, !prof !21

.thread657:                                       ; preds = %bb.do, %.critedge.i151.backedge, %bb.dk, %bb.bx, %bb.bw
  %.3271.i115 = phi ptr [ %1, %bb.bw ], [ %.0268.i86929, %.critedge.i151.backedge ], [ %.4285.i138, %bb.dk ], [ %1, %bb.bx ], [ %.4285.i138, %bb.do ] ; 2 uses
  %.9.i116 = phi ptr [ %2, %bb.bw ], [ %.0260.i87930, %.critedge.i151.backedge ], [ %.7267.i140.ph, %bb.dk ], [ %2, %bb.bx ], [ %.7267.i140.ph, %bb.do ] ; 6 uses
  %i.yh = ptrtoint ptr %i.af to i64
  %i.yi = ptrtoint ptr %.3271.i115 to i64         ; 2 uses
  %i.yj = sub i64 %i.yh, %i.yi                    ; 7 uses
  %i.yk = ptrtoint ptr %.9.i116 to i64
  %i.yl = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ym = add i64 %i.yj, 240
  %i.yn = udiv i64 %i.ym, 255
  %reass.sub1051 = sub i64 %i.yk, %i.yl
  %i.yo = add i64 %reass.sub1051, 1
  %i.yp = add i64 %i.yo, %i.yj
  %i.yq = add i64 %i.yp, %i.yn
  %i.yr = zext i32 %4 to i64
  %i.ys = icmp ugt i64 %i.yq, %i.yr
  br i1 %i.ys, label %LZ4_compress_generic.exit152, label %bb.dp

bb.dp:                                            ; preds = %.thread657
  %i.yt = icmp ugt i64 %i.yj, 14
  br i1 %i.yt, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.yu = add i64 %i.yj, -15                      ; 2 uses
  store i8 -16, ptr %.9.i116, align 1
  %.10.i123935 = getelementptr i8, ptr %.9.i116, i64 1 ; 2 uses
  %i.yv = icmp ugt i64 %i.yu, 254
  br i1 %i.yv, label %.lr.ph939.preheader, label %._crit_edge940

.lr.ph939.preheader:                              ; preds = %bb.dq
  %9 = add i64 %i.pg, %i.ae
  %i.yw = add i64 %9, -270
  %i.yx = sub i64 %i.yw, %i.yi                    ; 2 uses
  %i.yy = udiv i64 %i.yx, 255                     ; 3 uses
  %i.yz = add nuw nsw i64 %i.yy, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.10.i123935, i8 -1, i64 %i.yz, i1 false)
  %.neg1338 = mul i64 %i.yy, -255
  %i.za = add i64 %.neg1338, %i.yx
  %i.zb = getelementptr i8, ptr %.9.i116, i64 %i.yy
  %scevgep1200 = getelementptr i8, ptr %i.zb, i64 2
  br label %._crit_edge940

._crit_edge940:                                   ; preds = %.lr.ph939.preheader, %bb.dq
  %.0.i122.lcssa = phi i64 [ %i.yu, %bb.dq ], [ %i.za, %.lr.ph939.preheader ]
  %.10.i123.lcssa = phi ptr [ %.10.i123935, %bb.dq ], [ %scevgep1200, %.lr.ph939.preheader ] ; 2 uses
  %i.zc = trunc nuw i64 %.0.i122.lcssa to i8
  store i8 %i.zc, ptr %.10.i123.lcssa, align 1
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %.tr306.i117 = trunc nuw nsw i64 %i.yj to i8
  %i.zd = shl nuw i8 %.tr306.i117, 4
  store i8 %i.zd, ptr %.9.i116, align 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge940
  %.10.pn.i118 = phi ptr [ %.10.i123.lcssa, %._crit_edge940 ], [ %.9.i116, %bb.dr ]
  %.11.i119 = getelementptr i8, ptr %.10.pn.i118, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11.i119, ptr align 1 %.3271.i115, i64 %i.yj, i1 false)
  %i.ze = getelementptr i8, ptr %.11.i119, i64 %i.yj
  %i.zf = ptrtoint ptr %i.ze to i64
  %i.zg = sub i64 %i.zf, %i.yl
  %i.zh = trunc i64 %i.zg to i32
  br label %LZ4_compress_generic.exit152

bb.dt:                                            ; preds = %bb.bu
  %i.zi = getelementptr i8, ptr %i.aq, i64 %i.av
  %i.zj = ptrtoint ptr %i.zi to i64               ; 2 uses
  %i.zk = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.zl = sub i64 %i.zj, %i.zk                    ; 2 uses
  %i.zm = getelementptr i8, ptr %i.af, i64 -12    ; 8 uses
  %i.zn = getelementptr i8, ptr %i.af, i64 -5     ; 4 uses
  %i.zo = sext i32 %4 to i64
  %i.zp = getelementptr i8, ptr %2, i64 %i.zo     ; 2 uses
  %i.zq = icmp ugt i32 %3, 2113929216
  br i1 %i.zq, label %LZ4_compress_generic.exit152, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.zr = zext i32 %i.ab to i64
  %i.zs = sub nsw i64 0, %i.zr
  %i.zt = getelementptr i8, ptr %1, i64 %i.zs     ; 3 uses
  %i.zu = icmp samesign ult i32 %3, 13
  br i1 %i.zu, label %.thread711, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.0.copyload.i483 = load i64, ptr %1, align 1
  %i.zv = mul i64 %.0.copyload.i483, -3523014627271114752
  %i.zw = lshr i64 %i.zv, 52
  %i.zx = ptrtoint ptr %i.zt to i64               ; 3 uses
  %i.zy = getelementptr [4 x i8], ptr %0, i64 %i.zw
  store i32 %i.ab, ptr %i.zy, align 4
  %i.zz = shl i32 %spec.store.select, 6
  %i.aaa = or disjoint i32 %i.zz, 1
  %i.aab = and i32 %spec.store.select, 67108863
  %i.aac = getelementptr i8, ptr %1, i64 2        ; 2 uses
  %.not.i811859 = icmp ugt ptr %i.aac, %i.zm
  br i1 %.not.i811859, label %.thread711, label %.lr.ph.lr.ph, !prof !19

.lr.ph.lr.ph:                                     ; preds = %bb.dv
  %i.aad = getelementptr i8, ptr %i.af, i64 -8    ; 2 uses
  %i.aae = getelementptr i8, ptr %i.af, i64 -6    ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.fm
  %i.aaf = phi ptr [ %i.aac, %.lr.ph.lr.ph ], [ %i.aij, %bb.fm ]
  %.0260.i861 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.7267.i.ph, %bb.fm ] ; 6 uses
  %.0268.i860 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.4285.i, %bb.fm ] ; 6 uses
  %.0281.i862 = getelementptr i8, ptr %.0268.i860, i64 1 ; 2 uses
  %.0256.i.in.in.in863 = load i64, ptr %.0281.i862, align 1
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph, %.critedge.i.backedge
  %i.aag = phi i32 [ %i.aab, %.lr.ph ], [ %i.aaw, %.critedge.i.backedge ]
  %i.aah = phi i32 [ %i.aaa, %.lr.ph ], [ %i.aav, %.critedge.i.backedge ] ; 2 uses
  %i.aai = phi ptr [ %i.aaf, %.lr.ph ], [ %i.aau, %.critedge.i.backedge ] ; 3 uses
  %.0237.i813 = phi ptr [ %.0281.i862, %.lr.ph ], [ %i.aai, %.critedge.i.backedge ] ; 6 uses
  %.1257.i.in.in.in812 = phi i64 [ %.0256.i.in.in.in863, %.lr.ph ], [ %.0.copyload.i485, %.critedge.i.backedge ]
  %.1257.i.in.in = mul i64 %.1257.i.in.in.in812, -3523014627271114752
  %.1257.i.in = lshr i64 %.1257.i.in.in, 52
  %i.aaj = getelementptr [4 x i8], ptr %0, i64 %.1257.i.in ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 4
  %i.aal = zext i32 %i.aak to i64
  %.0.i539 = getelementptr i8, ptr %i.zt, i64 %i.aal ; 6 uses
  %.0.copyload.i485 = load i64, ptr %i.aai, align 1
  %i.aam = ptrtoint ptr %.0237.i813 to i64        ; 2 uses
  %i.aan = sub i64 %i.aam, %i.zx
  %i.aao = trunc i64 %i.aan to i32
  store i32 %i.aao, ptr %i.aaj, align 4
  %i.aap = getelementptr i8, ptr %.0.i539, i64 65535
  %i.aaq = icmp ult ptr %i.aap, %.0237.i813
  br i1 %i.aaq, label %.critedge.i.backedge, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aar = icmp ult ptr %.0.i539, %1              ; 2 uses
  %.307.i = select i1 %i.aar, i64 %i.zl, i64 0    ; 5 uses
  %i.aas = getelementptr i8, ptr %.0.i539, i64 %.307.i
  %.0.copyload.i331 = load i32, ptr %i.aas, align 1
  %.0.copyload.i330 = load i32, ptr %.0237.i813, align 1
  %.not300.i = icmp eq i32 %.0.copyload.i331, %.0.copyload.i330
  br i1 %.not300.i, label %.preheader752, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %bb.dx, %bb.dw
  %i.aat = zext nneg i32 %i.aag to i64
  %i.aau = getelementptr i8, ptr %i.aai, i64 %i.aat ; 2 uses
  %i.aav = add i32 %i.aah, 1
  %i.aaw = lshr i32 %i.aah, 6
  %.not.i = icmp ugt ptr %i.aau, %i.zm
  br i1 %.not.i, label %.thread711, label %bb.dw, !prof !20, !llvm.loop !12

.preheader752:                                    ; preds = %bb.dx
  %i.aax = getelementptr i8, ptr %.0.i539, i64 %.307.i
  %..i.le = select i1 %i.aar, ptr %i.aq, ptr %1   ; 3 uses
  %i.aay = icmp ugt ptr %.0237.i813, %.0268.i860
  %i.aaz = icmp ugt ptr %i.aax, %..i.le
  %i.aba = and i1 %i.aay, %i.aaz
  br i1 %i.aba, label %.lr.ph819, label %.critedge7.i

.lr.ph819:                                        ; preds = %.preheader752, %bb.dy
  %.2241.i818 = phi ptr [ %i.abh, %bb.dy ], [ %.0.i539, %.preheader752 ] ; 3 uses
  %.1282.i817 = phi ptr [ %i.abc, %bb.dy ], [ %.0237.i813, %.preheader752 ] ; 2 uses
  %i.abb = getelementptr i8, ptr %.2241.i818, i64 %.307.i
  %i.abc = getelementptr i8, ptr %.1282.i817, i64 -1 ; 4 uses
  %i.abd = load i8, ptr %i.abc, align 1
  %i.abe = getelementptr i8, ptr %i.abb, i64 -1
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = icmp eq i8 %i.abd, %i.abf
  br i1 %i.abg, label %bb.dy, label %.critedge7.i.loopexit

bb.dy:                                            ; preds = %.lr.ph819
  %i.abh = getelementptr i8, ptr %.2241.i818, i64 -1 ; 3 uses
  %i.abi = icmp ugt ptr %i.abc, %.0268.i860
  %i.abj = getelementptr i8, ptr %i.abh, i64 %.307.i
  %i.abk = icmp ugt ptr %i.abj, %..i.le
  %i.abl = and i1 %i.abi, %i.abk
  br i1 %i.abl, label %.lr.ph819, label %.critedge7.i.loopexit, !llvm.loop !14

.critedge7.i.loopexit:                            ; preds = %.lr.ph819, %bb.dy
  %.1282.i.lcssa.ph = phi ptr [ %i.abc, %bb.dy ], [ %.1282.i817, %.lr.ph819 ] ; 2 uses
  %.2241.i.lcssa.ph = phi ptr [ %i.abh, %bb.dy ], [ %.2241.i818, %.lr.ph819 ]
  %.pre1221 = ptrtoint ptr %.1282.i.lcssa.ph to i64
  br label %.critedge7.i

.critedge7.i:                                     ; preds = %.critedge7.i.loopexit, %.preheader752
  %.pre-phi1222 = phi i64 [ %.pre1221, %.critedge7.i.loopexit ], [ %i.aam, %.preheader752 ] ; 2 uses
  %.1282.i.lcssa = phi ptr [ %.1282.i.lcssa.ph, %.critedge7.i.loopexit ], [ %.0237.i813, %.preheader752 ]
  %.2241.i.lcssa = phi ptr [ %.2241.i.lcssa.ph, %.critedge7.i.loopexit ], [ %.0.i539, %.preheader752 ]
  %i.abm = ptrtoint ptr %.0268.i860 to i64        ; 2 uses
  %i.abn = sub i64 %.pre-phi1222, %i.abm          ; 3 uses
  %i.abo = trunc i64 %i.abn to i32                ; 3 uses
  %i.abp = getelementptr i8, ptr %.0260.i861, i64 1 ; 4 uses
  %i.abq = and i64 %i.abn, 4294967295             ; 2 uses
  %i.abr = getelementptr i8, ptr %i.abp, i64 %i.abq
  %i.abs = getelementptr i8, ptr %i.abr, i64 8
  %i.abt = udiv i32 %i.abo, 255
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = getelementptr i8, ptr %i.abs, i64 %i.abu
  %i.abw = icmp ugt ptr %i.abv, %i.zp
  br i1 %i.abw, label %LZ4_compress_generic.exit152, label %bb.dz, !prof !11

bb.dz:                                            ; preds = %.critedge7.i
  %i.abx = icmp ugt i32 %i.abo, 14
  br i1 %i.abx, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.aby = add i32 %i.abo, -15                    ; 3 uses
  store i8 -16, ptr %.0260.i861, align 1
  %i.abz = icmp sgt i32 %i.aby, 254
  br i1 %i.abz, label %.lr.ph827.preheader, label %._crit_edge

.lr.ph827.preheader:                              ; preds = %bb.ea
  %i.aca = trunc i64 %.pre-phi1222 to i32         ; 2 uses
  %i.acb = add i32 %i.aca, 239
  %i.acc = tail call i32 @llvm.umin.i32(i32 %i.aby, i32 509)
  %i.acd = trunc i64 %i.abm to i32                ; 2 uses
  %i.ace = add i32 %i.acc, %i.acd
  %i.acf = sub i32 %i.acb, %i.ace
  %.fr = freeze i32 %i.acf                        ; 3 uses
  %i.acg = udiv i32 %.fr, 255
  %i.ach = zext nneg i32 %i.acg to i64            ; 2 uses
  %i.aci = add nuw nsw i64 %i.ach, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.abp, i8 -1, i64 %i.aci, i1 false)
  %scevgep = getelementptr i8, ptr %.0260.i861, i64 2
  %scevgep1188 = getelementptr i8, ptr %scevgep, i64 %i.ach
  %i.acj = add i32 %i.aca, -270
  %i.ack = sub i32 %i.acj, %i.acd
  %i.acl = urem i32 %.fr, 255
  %.neg = sub i32 %i.acl, %.fr
  %i.acm = add i32 %.neg, %i.ack
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph827.preheader, %bb.ea
  %.1261.i.lcssa = phi ptr [ %i.abp, %bb.ea ], [ %scevgep1188, %.lr.ph827.preheader ] ; 2 uses
  %.0234.i.lcssa = phi i32 [ %i.aby, %bb.ea ], [ %i.acm, %.lr.ph827.preheader ]
  %i.acn = trunc i32 %.0234.i.lcssa to i8
  %i.aco = getelementptr i8, ptr %.1261.i.lcssa, i64 1
  store i8 %i.acn, ptr %.1261.i.lcssa, align 1
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %.tr.i = trunc i64 %i.abn to i8
  %i.acp = shl nuw i8 %.tr.i, 4
  store i8 %i.acp, ptr %.0260.i861, align 1
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %._crit_edge
  %.2262.i = phi ptr [ %i.aco, %._crit_edge ], [ %i.abp, %bb.eb ] ; 2 uses
  %i.acq = getelementptr i8, ptr %.2262.i, i64 %i.abq ; 2 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %bb.ec
  %.09.i339 = phi ptr [ %.2262.i, %bb.ec ], [ %i.acr, %bb.ed ] ; 2 uses
  %.0.i340 = phi ptr [ %.0268.i860, %bb.ec ], [ %i.acs, %bb.ed ] ; 2 uses
  %.0.copyload1.i = load i64, ptr %.0.i340, align 1
  store i64 %.0.copyload1.i, ptr %.09.i339, align 1
  %i.acr = getelementptr i8, ptr %.09.i339, i64 8 ; 2 uses
  %i.acs = getelementptr i8, ptr %.0.i340, i64 8
  %i.act = icmp ult ptr %i.acr, %i.acq
  br i1 %i.act, label %bb.ed, label %LZ4_wildCopy.exit341, !llvm.loop !15

LZ4_wildCopy.exit341:                             ; preds = %bb.ed, %bb.fl
  %.2283.i = phi ptr [ %.4285.i, %bb.fl ], [ %.1282.i.lcssa, %bb.ed ] ; 6 uses
  %.5277.i = phi ptr [ %.318.i, %bb.fl ], [ %..i.le, %bb.ed ]
  %.4264.i = phi ptr [ %i.aii, %bb.fl ], [ %i.acq, %bb.ed ] ; 4 uses
  %.4253.i = phi i64 [ %.319.i, %bb.fl ], [ %.307.i, %bb.ed ]
  %.3242.i = phi ptr [ %.0.i540, %bb.fl ], [ %.2241.i.lcssa, %bb.ed ] ; 3 uses
  %.0238.i = phi ptr [ %.7267.i.ph, %bb.fl ], [ %.0260.i861, %bb.ed ] ; 3 uses
  %i.acu = ptrtoint ptr %.2283.i to i64
  %i.acv = ptrtoint ptr %.3242.i to i64
  %i.acw = sub i64 %i.acu, %i.acv
end_hunk_3
begin_hunk_4_@LZ4_compress_fast_continue:bb.a
  %i.afk = add i32 %.2.i420, %.2.i437
  %i.afl = and i64 %i.afj, 4294967295
  %i.afm = getelementptr i8, ptr %i.aek, i64 %i.afl
  br label %bb.fe

bb.ev:                                            ; preds = %LZ4_wildCopy.exit341
  %i.afn = getelementptr i8, ptr %.2283.i, i64 4  ; 4 uses
  %i.afo = getelementptr i8, ptr %.3242.i, i64 4  ; 2 uses
  %i.afp = icmp ult ptr %i.afn, %i.zm
  br i1 %i.afp, label %.lr.ph833, label %._crit_edge834, !prof !16

.lr.ph833:                                        ; preds = %bb.ev, %bb.ew
  %.033.i447831 = phi ptr [ %i.afw, %bb.ew ], [ %i.afo, %bb.ev ] ; 2 uses
  %.036.i446830 = phi ptr [ %i.afv, %bb.ew ], [ %i.afn, %bb.ev ] ; 3 uses
  %.0.copyload.i468 = load i64, ptr %.033.i447831, align 1 ; 2 uses
  %.0.copyload.i467 = load i64, ptr %.036.i446830, align 1 ; 2 uses
  %.not.i458 = icmp eq i64 %.0.copyload.i468, %.0.copyload.i467
  br i1 %.not.i458, label %bb.ew, label %.thread692

.thread692:                                       ; preds = %.lr.ph833
  %i.afq = xor i64 %.0.copyload.i467, %.0.copyload.i468
  %i.afr = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.afq) #8, !srcloc !17
  %i.afs = lshr i64 %i.afr, 3
  %i.aft = and i64 %i.afs, 4294967295
  %i.afu = getelementptr i8, ptr %.036.i446830, i64 %i.aft
  br label %LZ4_count.exit462

bb.ew:                                            ; preds = %.lr.ph833
  %i.afv = getelementptr i8, ptr %.036.i446830, i64 8 ; 3 uses
  %i.afw = getelementptr i8, ptr %.033.i447831, i64 8 ; 2 uses
  %i.afx = icmp ult ptr %i.afv, %i.zm
  br i1 %i.afx, label %.lr.ph833, label %._crit_edge834, !prof !18

._crit_edge834:                                   ; preds = %bb.ew, %bb.ev
  %.036.i446.lcssa = phi ptr [ %i.afn, %bb.ev ], [ %i.afv, %bb.ew ] ; 5 uses
  %.033.i447.lcssa = phi ptr [ %i.afo, %bb.ev ], [ %i.afw, %bb.ew ] ; 4 uses
  %i.afy = icmp ult ptr %.036.i446.lcssa, %i.aad
  br i1 %i.afy, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %._crit_edge834
  %.0.copyload.i41.i456 = load i32, ptr %.033.i447.lcssa, align 1
  %.0.copyload.i.i457 = load i32, ptr %.036.i446.lcssa, align 1
  %i.afz = icmp eq i32 %.0.copyload.i41.i456, %.0.copyload.i.i457
  br i1 %i.afz, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.aga = getelementptr i8, ptr %.036.i446.lcssa, i64 4
  %i.agb = getelementptr i8, ptr %.033.i447.lcssa, i64 4
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %._crit_edge834
  %.238.i449 = phi ptr [ %i.aga, %bb.ey ], [ %.036.i446.lcssa, %bb.ex ], [ %.036.i446.lcssa, %._crit_edge834 ] ; 5 uses
  %.235.i450 = phi ptr [ %i.agb, %bb.ey ], [ %.033.i447.lcssa, %bb.ex ], [ %.033.i447.lcssa, %._crit_edge834 ] ; 4 uses
  %i.agc = icmp ult ptr %.238.i449, %i.aae
  br i1 %i.agc, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %.0.copyload.i518 = load i16, ptr %.235.i450, align 1
  %.0.copyload.i517 = load i16, ptr %.238.i449, align 1
  %i.agd = icmp eq i16 %.0.copyload.i518, %.0.copyload.i517
  br i1 %i.agd, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.age = getelementptr i8, ptr %.238.i449, i64 2
  %i.agf = getelementptr i8, ptr %.235.i450, i64 2
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.339.i451 = phi ptr [ %i.age, %bb.fb ], [ %.238.i449, %bb.fa ], [ %.238.i449, %bb.ez ] ; 4 uses
  %.3.i452 = phi ptr [ %i.agf, %bb.fb ], [ %.235.i450, %bb.fa ], [ %.235.i450, %bb.ez ]
  %i.agg = icmp ult ptr %.339.i451, %i.zn
  br i1 %i.agg, label %bb.fd, label %LZ4_count.exit462

bb.fd:                                            ; preds = %bb.fc
  %i.agh = load i8, ptr %.3.i452, align 1
  %i.agi = load i8, ptr %.339.i451, align 1
  %i.agj = icmp eq i8 %i.agh, %i.agi
  %spec.select.i455.idx = zext i1 %i.agj to i64
  %spec.select.i455 = getelementptr i8, ptr %.339.i451, i64 %spec.select.i455.idx
  br label %LZ4_count.exit462

LZ4_count.exit462:                                ; preds = %bb.fc, %bb.fd, %.thread692
  %.sink1487 = phi ptr [ %i.afu, %.thread692 ], [ %.339.i451, %bb.fc ], [ %spec.select.i455, %bb.fd ]
  %i.agk = ptrtoint ptr %.sink1487 to i64
  %i.agl = ptrtoint ptr %i.afn to i64
  %i.agm = sub i64 %i.agk, %i.agl                 ; 2 uses
  %.2.i454 = trunc i64 %i.agm to i32
  %i.agn = add i64 %i.agm, 4
  %i.ago = and i64 %i.agn, 4294967295
  %i.agp = getelementptr i8, ptr %.2283.i, i64 %i.ago
  br label %bb.fe

bb.fe:                                            ; preds = %LZ4_count.exit462, %LZ4_count.exit428, %LZ4_count.exit445
  %.4285.i = phi ptr [ %i.agp, %LZ4_count.exit462 ], [ %i.afm, %LZ4_count.exit428 ], [ %i.aek, %LZ4_count.exit445 ] ; 11 uses
  %.1232.i = phi i32 [ %.2.i454, %LZ4_count.exit462 ], [ %i.afk, %LZ4_count.exit428 ], [ %.2.i437, %LZ4_count.exit445 ]
  %.1232.i.fr = freeze i32 %.1232.i               ; 5 uses
  %i.agq = getelementptr i8, ptr %.4264.i, i64 8
  %i.agr = lshr i32 %.1232.i.fr, 8
  %i.ags = zext nneg i32 %i.agr to i64
  %i.agt = getelementptr i8, ptr %i.agq, i64 %i.ags
  %i.agu = icmp ugt ptr %i.agt, %i.zp
  br i1 %i.agu, label %LZ4_compress_generic.exit152, label %bb.ff, !prof !22

bb.ff:                                            ; preds = %bb.fe
  %i.agv = icmp ugt i32 %.1232.i.fr, 14
  %i.agw = load i8, ptr %.0238.i, align 1         ; 2 uses
  br i1 %i.agv, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.agx = add i8 %i.agw, 15
  store i8 %i.agx, ptr %.0238.i, align 1
  %i.agy = add i32 %.1232.i.fr, -15               ; 2 uses
  store i32 -1, ptr %i.acy, align 1
  %i.agz = icmp ugt i32 %i.agy, 1019
  br i1 %i.agz, label %.lr.ph853.preheader, label %._crit_edge854

.lr.ph853.preheader:                              ; preds = %bb.fg
  %scevgep1189 = getelementptr i8, ptr %.4264.i, i64 6 ; 2 uses
  %i.aha = add i32 %.1232.i.fr, -1035             ; 2 uses
  %i.ahb = udiv i32 %i.aha, 1020
  %i.ahc = shl nuw nsw i32 %i.ahb, 2
  %i.ahd = zext nneg i32 %i.ahc to i64            ; 2 uses
  %i.ahe = add nuw nsw i64 %i.ahd, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep1189, i8 -1, i64 %i.ahe, i1 false)
  %scevgep1191 = getelementptr i8, ptr %scevgep1189, i64 %i.ahd
  %i.ahf = urem i32 %i.aha, 1020
  br label %._crit_edge854

._crit_edge854:                                   ; preds = %.lr.ph853.preheader, %bb.fg
  %.5265.i.lcssa = phi ptr [ %i.acy, %bb.fg ], [ %scevgep1191, %.lr.ph853.preheader ]
  %.2233.i.lcssa = phi i32 [ %i.agy, %bb.fg ], [ %i.ahf, %.lr.ph853.preheader ]
  %.lhs.trunc729 = trunc nuw nsw i32 %.2233.i.lcssa to i16 ; 2 uses
  %i.ahg = udiv i16 %.lhs.trunc729, 255
  %i.ahh = zext nneg i16 %i.ahg to i64
  %i.ahi = getelementptr i8, ptr %.5265.i.lcssa, i64 %i.ahh ; 2 uses
  %i.ahj = urem i16 %.lhs.trunc729, 255
  %i.ahk = trunc nuw i16 %i.ahj to i8
  %i.ahl = getelementptr i8, ptr %i.ahi, i64 1
  store i8 %i.ahk, ptr %i.ahi, align 1
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %i.ahm = trunc nuw nsw i32 %.1232.i.fr to i8
  %i.ahn = add i8 %i.agw, %i.ahm
  store i8 %i.ahn, ptr %.0238.i, align 1
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %._crit_edge854
  %.7267.i.ph = phi ptr [ %i.acy, %bb.fh ], [ %i.ahl, %._crit_edge854 ] ; 6 uses
  %i.aho = icmp ugt ptr %.4285.i, %i.zm
  br i1 %i.aho, label %.thread711, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ahp = getelementptr i8, ptr %.4285.i, i64 -2 ; 2 uses
  %.0.copyload.i486 = load i64, ptr %i.ahp, align 1
  %i.ahq = mul i64 %.0.copyload.i486, -3523014627271114752
  %i.ahr = lshr i64 %i.ahq, 52
  %i.ahs = ptrtoint ptr %i.ahp to i64
  %i.aht = sub i64 %i.ahs, %i.zx
  %i.ahu = trunc i64 %i.aht to i32
  %i.ahv = getelementptr [4 x i8], ptr %0, i64 %i.ahr
  store i32 %i.ahu, ptr %i.ahv, align 4
  %.0.copyload.i463 = load i64, ptr %.4285.i, align 1
  %i.ahw = mul i64 %.0.copyload.i463, -3523014627271114752
  %i.ahx = lshr i64 %i.ahw, 52
  %i.ahy = getelementptr [4 x i8], ptr %0, i64 %i.ahx ; 2 uses
  %i.ahz = load i32, ptr %i.ahy, align 4
  %i.aia = zext i32 %i.ahz to i64
  %.0.i540 = getelementptr i8, ptr %i.zt, i64 %i.aia ; 4 uses
  %i.aib = icmp ult ptr %.0.i540, %1              ; 2 uses
  %.318.i = select i1 %i.aib, ptr %i.aq, ptr %1
  %.319.i = select i1 %i.aib, i64 %i.zl, i64 0    ; 2 uses
  %i.aic = ptrtoint ptr %.4285.i to i64
  %i.aid = sub i64 %i.aic, %i.zx
  %i.aie = trunc i64 %i.aid to i32
  store i32 %i.aie, ptr %i.ahy, align 4
  %i.aif = getelementptr i8, ptr %.0.i540, i64 65535
  %.not304.i = icmp ult ptr %i.aif, %.4285.i
  br i1 %.not304.i, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aig = getelementptr i8, ptr %.0.i540, i64 %.319.i
  %.0.copyload.i329 = load i32, ptr %i.aig, align 1
  %.0.copyload.i328 = load i32, ptr %.4285.i, align 1
  %i.aih = icmp eq i32 %.0.copyload.i329, %.0.copyload.i328
  br i1 %i.aih, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aii = getelementptr i8, ptr %.7267.i.ph, i64 1
  store i8 0, ptr %.7267.i.ph, align 1
  br label %LZ4_wildCopy.exit341

bb.fm:                                            ; preds = %bb.fj, %bb.fk
  %i.aij = getelementptr i8, ptr %.4285.i, i64 2  ; 2 uses
  %.not.i811 = icmp ugt ptr %i.aij, %i.zm
  br i1 %.not.i811, label %.thread711, label %.lr.ph, !prof !21

.thread711:                                       ; preds = %bb.fm, %.critedge.i.backedge, %bb.fi, %bb.dv, %bb.du
  %.3271.i = phi ptr [ %1, %bb.du ], [ %.0268.i860, %.critedge.i.backedge ], [ %.4285.i, %bb.fi ], [ %1, %bb.dv ], [ %.4285.i, %bb.fm ] ; 2 uses
  %.9.i = phi ptr [ %2, %bb.du ], [ %.0260.i861, %.critedge.i.backedge ], [ %.7267.i.ph, %bb.fi ], [ %2, %bb.dv ], [ %.7267.i.ph, %bb.fm ] ; 6 uses
  %i.aik = ptrtoint ptr %i.af to i64
  %i.ail = ptrtoint ptr %.3271.i to i64           ; 2 uses
  %i.aim = sub i64 %i.aik, %i.ail                 ; 7 uses
  %i.ain = ptrtoint ptr %.9.i to i64
  %i.aio = ptrtoint ptr %2 to i64                 ; 2 uses
  %i.aip = add i64 %i.aim, 240
  %i.aiq = udiv i64 %i.aip, 255
  %reass.sub = sub i64 %i.ain, %i.aio
  %i.air = add i64 %reass.sub, 1
  %i.ais = add i64 %i.air, %i.aim
  %i.ait = add i64 %i.ais, %i.aiq
  %i.aiu = zext i32 %4 to i64
  %i.aiv = icmp ugt i64 %i.ait, %i.aiu
  br i1 %i.aiv, label %LZ4_compress_generic.exit152, label %bb.fn

bb.fn:                                            ; preds = %.thread711
  %i.aiw = icmp ugt i64 %i.aim, 14
  br i1 %i.aiw, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.aix = add i64 %i.aim, -15                    ; 2 uses
  store i8 -16, ptr %.9.i, align 1
  %.10.i866 = getelementptr i8, ptr %.9.i, i64 1  ; 2 uses
  %i.aiy = icmp ugt i64 %i.aix, 254
  br i1 %i.aiy, label %.lr.ph870.preheader, label %._crit_edge871

.lr.ph870.preheader:                              ; preds = %bb.fo
  %10 = add i64 %i.zk, %i.ae
  %i.aiz = add i64 %10, -270
  %i.aja = sub i64 %i.aiz, %i.ail                 ; 2 uses
  %i.ajb = udiv i64 %i.aja, 255                   ; 3 uses
  %i.ajc = add nuw nsw i64 %i.ajb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.10.i866, i8 -1, i64 %i.ajc, i1 false)
  %.neg1334 = mul i64 %i.ajb, -255
  %i.ajd = add i64 %.neg1334, %i.aja
  %i.aje = getelementptr i8, ptr %.9.i, i64 %i.ajb
  %scevgep1192 = getelementptr i8, ptr %i.aje, i64 2
  br label %._crit_edge871

._crit_edge871:                                   ; preds = %.lr.ph870.preheader, %bb.fo
  %.0.i.lcssa = phi i64 [ %i.aix, %bb.fo ], [ %i.ajd, %.lr.ph870.preheader ]
  %.10.i.lcssa = phi ptr [ %.10.i866, %bb.fo ], [ %scevgep1192, %.lr.ph870.preheader ] ; 2 uses
  %i.ajf = trunc nuw i64 %.0.i.lcssa to i8
  store i8 %i.ajf, ptr %.10.i.lcssa, align 1
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %.tr306.i = trunc nuw nsw i64 %i.aim to i8
  %i.ajg = shl nuw i8 %.tr306.i, 4
  store i8 %i.ajg, ptr %.9.i, align 1
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %._crit_edge871
  %.10.pn.i = phi ptr [ %.10.i.lcssa, %._crit_edge871 ], [ %.9.i, %bb.fp ]
  %.11.i = getelementptr i8, ptr %.10.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11.i, ptr align 1 %.3271.i, i64 %i.aim, i1 false)
  %i.ajh = getelementptr i8, ptr %.11.i, i64 %i.aim
  %i.aji = ptrtoint ptr %i.ajh to i64
  %i.ajj = sub i64 %i.aji, %i.aio
  %i.ajk = trunc i64 %i.ajj to i32
  br label %LZ4_compress_generic.exit152

LZ4_compress_generic.exit152:                     ; preds = %.critedge7.i, %bb.fe, %.critedge7.i126, %bb.dg, %bb.fq, %.thread711, %bb.dt, %bb.ds, %.thread657, %bb.bv
  %.0 = phi i32 [ 0, %.thread657 ], [ 0, %.thread711 ], [ 0, %bb.bv ], [ %i.zh, %bb.ds ], [ 0, %bb.dg ], [ 0, %bb.dt ], [ %i.ajk, %bb.fq ], [ 0, %bb.fe ], [ 0, %.critedge7.i126 ], [ 0, %.critedge7.i ]
  store ptr %1, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %LZ4_compress_generic.exit292, %LZ4_compress_generic.exit152
  %.sink = phi i32 [ %3, %LZ4_compress_generic.exit152 ], [ %i.pb, %LZ4_compress_generic.exit292 ]
  %.074.ph = phi i32 [ %.0, %LZ4_compress_generic.exit152 ], [ %.072, %LZ4_compress_generic.exit292 ]
  store i32 %.sink, ptr %i.c, align 8
  %i.ajl = load i32, ptr %i.j, align 8
  %i.ajm = add i32 %i.ajl, %3
  store i32 %i.ajm, ptr %i.j, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %.sink.split, %bb.a
  %.074 = phi i32 [ 0, %bb.a ], [ %.074.ph, %.sink.split ]
  ret i32 %.074
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @LZ4_compress_destSize_generic(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 -2147483648, 2122219150) %4, i32 noundef range(i32 1, 3) %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 4 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -12      ; 6 uses
  %i.e = getelementptr i8, ptr %i.c, i64 -5
  %i.f = sext i32 %4 to i64
  %i.g = getelementptr i8, ptr %2, i64 %i.f       ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -11
  %i.i = getelementptr i8, ptr %i.g, i64 -6       ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 -12
  %i.k = icmp slt i32 %4, 1
  %i.l = icmp ugt i32 %i.a, 2113929216
  %or.cond218 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond218, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %5, 2                        ; 3 uses
  %i.n = icmp samesign ugt i32 %i.a, 65546
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.a, 13
  br i1 %i.o, label %LZ4_hashPosition.exit225.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4
  %i.p = icmp eq i32 %5, 1                        ; 4 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i249 = load i64, ptr %1, align 1
  %i.q = mul i64 %.0.copyload.i249, -3523014627271114752
  %i.r = lshr i64 %i.q, 52
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.r
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %.0.copyload.i244 = load i64, ptr %i.t, align 1
  %i.u = mul i64 %.0.copyload.i244, -3523014627271114752
  %i.v = lshr i64 %i.u, 52
  %i.w = trunc nuw nsw i64 %i.v to i32
  br label %LZ4_hashPosition.exit229

bb.f:                                             ; preds = %bb.d
  %.0.copyload.i234 = load i32, ptr %1, align 1
  %i.x = mul i32 %.0.copyload.i234, -1640531535
  %i.y = lshr i32 %i.x, 19
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr [2 x i8], ptr %0, i64 %i.z
  store i16 0, ptr %i.aa, align 2
  %i.ab = getelementptr i8, ptr %1, i64 1         ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ab, align 1
  %i.ac = mul i32 %.0.copyload.i, -1640531535
  %i.ad = lshr i32 %i.ac, 19
  br label %LZ4_hashPosition.exit229

LZ4_hashPosition.exit229:                         ; preds = %bb.e, %bb.f
  %i.ae = phi ptr [ %i.t, %bb.e ], [ %i.ab, %bb.f ]
  %.0.i228 = phi i32 [ %i.w, %bb.e ], [ %i.ad, %bb.f ]
  %i.af = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %.not324348 = icmp ugt ptr %i.af, %i.d
  br i1 %.not324348, label %LZ4_hashPosition.exit225.thread, label %.lr.ph.lr.ph, !prof !19

.lr.ph.lr.ph:                                     ; preds = %LZ4_hashPosition.exit229
  %i.ag = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.ah = getelementptr i8, ptr %i.c, i64 -8
  %i.ai = getelementptr i8, ptr %i.c, i64 -6
  %i.aj = ptrtoint ptr %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %LZ4_hashPosition.exit225
  %i.ak = phi ptr [ %i.af, %.lr.ph.lr.ph ], [ %i.hg, %LZ4_hashPosition.exit225 ]
  %.0187352 = phi i32 [ %.0.i228, %.lr.ph.lr.ph ], [ %.3190, %LZ4_hashPosition.exit225 ]
  %.0191351 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.6, %LZ4_hashPosition.exit225 ] ; 7 uses
  %.0195350 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.es, %LZ4_hashPosition.exit225 ] ; 7 uses
  %.0198349 = phi ptr [ %i.ae, %.lr.ph.lr.ph ], [ %i.ha, %LZ4_hashPosition.exit225 ]
  %.0195350387 = ptrtoaddr ptr %.0195350 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.al = phi i32 [ 1, %.lr.ph ], [ %i.br, %.critedge.backedge ]
  %i.am = phi i32 [ 65, %.lr.ph ], [ %i.bq, %.critedge.backedge ] ; 2 uses
  %i.an = phi ptr [ %i.ak, %.lr.ph ], [ %i.bp, %.critedge.backedge ] ; 4 uses
  %.0179326 = phi ptr [ %.0198349, %.lr.ph ], [ %i.an, %.critedge.backedge ] ; 8 uses
  %.1188325 = phi i32 [ %.0187352, %.lr.ph ], [ %.1188.be, %.critedge.backedge ]
  %i.ao = zext nneg i32 %.1188325 to i64          ; 3 uses
  br i1 %i.p, label %LZ4_hashPosition.exit227.thread, label %LZ4_hashPosition.exit227

LZ4_hashPosition.exit227.thread:                  ; preds = %bb.g
  %i.ap = getelementptr [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %.0.i252261 = getelementptr i8, ptr %1, i64 %i.ar
  %.0.copyload.i245 = load i64, ptr %i.an, align 1
  %i.as = mul i64 %.0.copyload.i245, -3523014627271114752
  %i.at = lshr i64 %i.as, 52
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = ptrtoint ptr %.0179326 to i64
  %i.aw = sub i64 %i.av, %i.ag
  br label %bb.h

LZ4_hashPosition.exit227:                         ; preds = %bb.g
  %i.ax = getelementptr [2 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i64
  %.0.i252 = getelementptr i8, ptr %1, i64 %i.az  ; 2 uses
  %.0.copyload.i230 = load i32, ptr %i.an, align 1
  %i.ba = mul i32 %.0.copyload.i230, -1640531535
  %i.bb = lshr i32 %i.ba, 19                      ; 2 uses
  %i.bc = ptrtoint ptr %.0179326 to i64
  %i.bd = sub i64 %i.bc, %i.ag                    ; 2 uses
  br i1 %i.m, label %.thread, label %bb.h

.thread:                                          ; preds = %LZ4_hashPosition.exit227
  %i.be = trunc i64 %i.bd to i16
  store i16 %i.be, ptr %i.ax, align 2
  br label %bb.i

bb.h:                                             ; preds = %LZ4_hashPosition.exit227, %LZ4_hashPosition.exit227.thread
  %i.bf = phi i64 [ %i.aw, %LZ4_hashPosition.exit227.thread ], [ %i.bd, %LZ4_hashPosition.exit227 ]
  %.0.i226269 = phi i32 [ %i.au, %LZ4_hashPosition.exit227.thread ], [ %i.bb, %LZ4_hashPosition.exit227 ] ; 2 uses
  %.0.i252262267 = phi ptr [ %.0.i252261, %LZ4_hashPosition.exit227.thread ], [ %.0.i252, %LZ4_hashPosition.exit227 ] ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %i.ao
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %.0.i252262267, i64 65535
  %.not433 = icmp ult ptr %i.bi, %.0179326
  br i1 %.not433, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.1182.ph282 = phi ptr [ %.0.i252, %.thread ], [ %.0.i252262267, %bb.h ] ; 4 uses
  %.2189.ph281 = phi i32 [ %i.bb, %.thread ], [ %.0.i226269, %bb.h ]
  %.0.copyload.i238 = load i32, ptr %.1182.ph282, align 1
  %.0.copyload.i237 = load i32, ptr %.0179326, align 1
  %.not211 = icmp eq i32 %.0.copyload.i238, %.0.copyload.i237
  br i1 %.not211, label %LZ4_putPositionOnHash.exit253.preheader, label %.critedge.backedge

LZ4_putPositionOnHash.exit253.preheader:          ; preds = %bb.i
  %.0179326.lcssa388390 = ptrtoaddr ptr %.0179326 to i64
  %i.bj = trunc i64 %.0195350387 to i32
  %i.bk = trunc i64 %.0179326.lcssa388390 to i32  ; 2 uses
  %reass.sub = sub i32 %i.bk, %i.bj
  %i.bl = add i32 %reass.sub, -270                ; 2 uses
  %i.bm = icmp ugt ptr %.0179326, %.0195350
  %i.bn = icmp ugt ptr %.1182.ph282, %1
end_hunk_4
