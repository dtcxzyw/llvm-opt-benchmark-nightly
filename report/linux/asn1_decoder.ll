Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/asn1_decoder?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_asn1_ber_decoder: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad asn1_ber_decoder ; .previous"

@asn1_op_lengths = internal unnamed_addr constant [41 x i8] c"\02\02\03\03\03\03\00\00\01\01\02\02\00\00\00\00\00\02\00\03\00\03\00\00\01\01\02\02\01\01\02\02\01\01\02\02\02\02\03\03\01", align 16
@.str = private unnamed_addr constant [64 x i8] c"\013ASN.1 decoder error: Stacks not empty at completion (%u, %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\013ASN.1 decoder error: Found reserved opcode (%u) pc=%zu\0A\00", align 1
@__UNIQUE_ID_addressable_asn1_ber_decoder_428 = internal global ptr @asn1_ber_decoder, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_429 = internal constant [74 x i8] c"asn1_decoder.description=Decoder for ASN.1 BER/DER/CER encoded bytestream\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_430 = internal constant [35 x i8] c"asn1_decoder.file=lib/asn1_decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_431 = internal constant [25 x i8] c"asn1_decoder.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_addressable_asn1_ber_decoder_428, ptr @__UNIQUE_ID_modinfo_429, ptr @__UNIQUE_ID_modinfo_430, ptr @__UNIQUE_ID_modinfo_431], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @asn1_ber_decoder(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [10 x i16], align 16              ; 5 uses
  %i.b = alloca [10 x i16], align 16              ; 5 uses
  %i.c = alloca [10 x i8], align 1                ; 5 uses
  %i.d = alloca [10 x i8], align 1                ; 5 uses
  %i.e = load ptr, ptr %0, align 8                ; 7 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.d, i8 0, i64 10, i1 false), !annotation !13
  %i.j = icmp ugt i64 %3, 65535
  br i1 %i.j, label %asn1_find_indefinite_length.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not424.not = icmp eq i64 %i.i, 0
  br i1 %.not424.not, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph435.preheader, !prof !14

.lr.ph435.preheader:                              ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !annotation !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 0, i64 20, i1 false), !annotation !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.c, i8 0, i64 10, i1 false), !annotation !13
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %.backedge
  %.0183434 = phi i64 [ %.0183.be, %.backedge ], [ %3, %.lr.ph435.preheader ] ; 12 uses
  %.0190433 = phi i8 [ %.0190.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 2 uses
  %.0193432 = phi i8 [ %.0193.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 7 uses
  %.0198431 = phi i8 [ %.0198.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 16 uses
  %.0200430 = phi i8 [ %.0200.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 2 uses
  %.0205429 = phi i64 [ %.0205.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 15 uses
  %.0208428 = phi i64 [ %.0208.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 7 uses
  %.0219427 = phi i8 [ %.0219.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 3 uses
  %.0224426 = phi i64 [ %.0224.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 3 uses
  %.0273425 = phi i64 [ %.0273.be, %.backedge ], [ 0, %.lr.ph435.preheader ] ; 3 uses
  %i.k = getelementptr i8, ptr %i.e, i64 %.0205429 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 6 uses
  %i.m = zext i8 %i.l to i32                      ; 8 uses
  %i.n = zext i8 %i.l to i64
  %i.o = getelementptr i8, ptr @asn1_op_lengths, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = zext i8 %i.p to i64                      ; 6 uses
  %i.r = add i64 %.0205429, %i.q                  ; 3 uses
  %i.s = icmp ugt i64 %i.r, %i.i
  br i1 %i.s, label %asn1_find_indefinite_length.exit.thread, label %bb.b, !prof !15

bb.b:                                             ; preds = %.lr.ph435
  %i.t = icmp ult i8 %i.l, 28
  br i1 %i.t, label %bb.c, label %.thread299

bb.c:                                             ; preds = %bb.b
  %.not238 = icmp samesign ult i8 %i.l, 16
  %i.u = and i8 %.0219427, 2
  %.not239 = icmp eq i8 %i.u, 0
  %or.cond = select i1 %.not238, i1 true, i1 %.not239
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not240 = trunc i8 %i.l to i1                  ; 2 uses
  %i.v = icmp eq i64 %.0208428, %.0183434
  %or.cond260 = select i1 %.not240, i1 %i.v, i1 false
  br i1 %or.cond260, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = and i8 %.0219427, 123
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.x = sub i64 %.0183434, %.0208428
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %asn1_find_indefinite_length.exit.thread, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %2, i64 %.0208428  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 5 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = and i32 %i.ab, 31
  %i.ad = icmp eq i32 %i.ac, 31
  br i1 %i.ad, label %asn1_find_indefinite_length.exit.thread, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %i.m, 8
  %.not241 = icmp eq i32 %i.ae, 0
  br i1 %.not241, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.k, i64 1
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = and i8 %i.ag, 32                        ; 3 uses
  %i.ai = xor i8 %i.ag, %i.aa
  %i.aj = xor i8 %i.ah, -1
  %i.ak = and i8 %i.ai, %i.aj
  %.not242 = icmp eq i8 %i.ak, 0
  br i1 %.not242, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not240, label %.backedge, label %asn1_find_indefinite_length.exit.thread

bb.k:                                             ; preds = %bb.h, %bb.i
  %.1220 = phi i8 [ %i.ah, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.al = or disjoint i8 %.1220, 2                ; 2 uses
  %i.am = add i64 %.0208428, 2                    ; 7 uses
  %i.an = getelementptr i8, ptr %i.z, i64 1
  %i.ao = load i8, ptr %i.an, align 1             ; 7 uses
  %i.ap = icmp slt i8 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i8 %i.ao, -128
  br i1 %i.aq, label %bb.m, label %bb.o, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.ar = and i32 %i.ab, 32
  %.not243 = icmp eq i32 %i.ar, 0
  br i1 %.not243, label %asn1_find_indefinite_length.exit.thread, label %bb.n, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.as = or disjoint i8 %.1220, 3
  %i.at = sub i64 %.0183434, %i.am
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %asn1_find_indefinite_length.exit.thread, label %bb.q, !prof !15

bb.o:                                             ; preds = %bb.l
  %i.av = zext i8 %i.ao to i32                    ; 3 uses
  %i.aw = add nsw i32 %i.av, -128
  %i.ax = icmp samesign ugt i8 %i.ao, -126
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = sub i64 %.0183434, %i.am
  %i.ba = icmp ult i64 %i.az, %i.ay
  %or.cond379 = select i1 %i.ax, i1 true, i1 %i.ba, !prof !16
  br i1 %or.cond379, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph.preheader, !prof !16

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.bb = add i8 %i.ao, -126
  %xtraiter = and i32 %i.av, 3                    ; 3 uses
  %i.bc = add nsw i8 %i.ao, 127
  %i.bd = icmp ult i8 %i.bc, 3
  br i1 %i.bd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.av, 124
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.1209421 = phi i64 [ %i.am, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph ] ; 5 uses
  %.1274420 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.be = getelementptr i8, ptr %2, i64 %.1209421
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl i64 %.1274420, 16
  %i.bi = shl nuw nsw i64 %i.bg, 8
  %i.bj = or disjoint i64 %i.bh, %i.bi
  %i.bk = getelementptr i8, ptr %2, i64 %.1209421
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = or disjoint i64 %i.bj, %i.bn
  %i.bp = getelementptr i8, ptr %2, i64 %.1209421
  %i.bq = getelementptr i8, ptr %i.bp, i64 2
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl i64 %i.bo, 16
  %i.bu = shl nuw nsw i64 %i.bs, 8
  %i.bv = or disjoint i64 %i.bt, %i.bu
  %i.bw = add i64 %.1209421, 4                    ; 3 uses
  %i.bx = getelementptr i8, ptr %2, i64 %.1209421
  %i.by = getelementptr i8, ptr %i.bx, i64 3
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = or disjoint i64 %i.bv, %i.ca            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !10

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.1209421.epil.init = phi i64 [ %i.am, %.lr.ph.preheader ], [ %i.bw, %._crit_edge.unr-lcssa ]
  %.1274420.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cb, %._crit_edge.unr-lcssa ]
  %lcmp.mod668 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod668)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.1209421.epil = phi i64 [ %i.cd, %.lr.ph.epil ], [ %.1209421.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.1274420.epil = phi i64 [ %i.ch, %.lr.ph.epil ], [ %.1274420.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.cc = shl i64 %.1274420.epil, 8
  %i.cd = add i64 %.1209421.epil, 1               ; 2 uses
  %i.ce = getelementptr i8, ptr %2, i64 %.1209421.epil
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = or disjoint i64 %i.cc, %i.cg            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa629.a = phi i64 [ %i.bw, %._crit_edge.unr-lcssa ], [ %i.cd, %.lr.ph.epil ] ; 2 uses
  %.lcssa = phi i64 [ %i.cb, %._crit_edge.unr-lcssa ], [ %i.ch, %.lr.ph.epil ] ; 2 uses
  %i.ci = sub i64 %.0183434, %.lcssa629.a
  %.not381 = icmp ugt i64 %.lcssa, %i.ci
  br i1 %.not381, label %asn1_find_indefinite_length.exit.thread, label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.cj = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.ck = sub i64 %.0183434, %i.am
  %i.cl = icmp ult i64 %i.ck, %i.cj
  br i1 %i.cl, label %asn1_find_indefinite_length.exit.thread, label %bb.q, !prof !15

bb.q:                                             ; preds = %bb.p, %bb.n, %._crit_edge
  %.3276 = phi i64 [ 128, %bb.n ], [ %.lcssa, %._crit_edge ], [ %i.cj, %bb.p ] ; 3 uses
  %.2221 = phi i8 [ %i.as, %bb.n ], [ %i.al, %._crit_edge ], [ %i.al, %bb.p ] ; 3 uses
  %.3211 = phi i64 [ %i.am, %bb.n ], [ %.lcssa629.a, %._crit_edge ], [ %i.am, %bb.p ] ; 6 uses
  %.2202 = phi i8 [ 2, %bb.n ], [ %i.bb, %._crit_edge ], [ 2, %bb.p ] ; 3 uses
  %i.cm = zext nneg i8 %.2221 to i32              ; 2 uses
  %i.cn = and i32 %i.cm, 32
  %.not244 = icmp eq i32 %i.cn, 0
  br i1 %.not244, label %.thread299, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = icmp ugt i8 %.0193432, 9
  br i1 %i.co, label %asn1_find_indefinite_length.exit.thread, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %.3211 to i16
  %i.cq = zext nneg i8 %.0193432 to i64           ; 3 uses
  %i.cr = getelementptr [2 x i8], ptr %i.a, i64 %i.cq
  store i16 %i.cp, ptr %i.cr, align 2
  %i.cs = getelementptr i8, ptr %i.c, i64 %i.cq
  store i8 %.2202, ptr %i.cs, align 1
  %i.ct = and i32 %i.cm, 1
  %.not245 = icmp eq i32 %i.ct, 0                 ; 2 uses
  %i.cu = trunc i64 %.0183434 to i16
  %i.cv = add i64 %.3211, %.3276
  %.sink = select i1 %.not245, i16 %i.cu, i16 0
  %.1184 = select i1 %.not245, i64 %i.cv, i64 %.0183434
  %i.cw = getelementptr [2 x i8], ptr %i.b, i64 %i.cq
  store i16 %.sink, ptr %i.cw, align 2
  %i.cx = add nuw nsw i8 %.0193432, 1
  br label %.thread299

.backedge:                                        ; preds = %bb.j, %bb.e, %bb.ag, %bb.ai, %bb.ak, %bb.at, %bb.ax, %bb.bb, %bb.bd, %bb.bf, %bb.bh
  %.0273.be = phi i64 [ %.0273425, %bb.j ], [ %.6279, %bb.ag ], [ %.5278, %bb.ai ], [ %.5278, %bb.ak ], [ %storemerge, %bb.bb ], [ %.4187, %bb.at ], [ %.4187, %bb.ax ], [ %.5278, %bb.bd ], [ %.5278, %bb.bf ], [ %.5278, %bb.bh ], [ %.0273425, %bb.e ]
  %.0224.be = phi i64 [ %.0224426, %bb.j ], [ %.2226, %bb.ag ], [ %.2226, %bb.ai ], [ %.2226, %bb.ak ], [ %i.hq, %bb.bb ], [ %i.hq, %bb.at ], [ %i.hq, %bb.ax ], [ %.2226, %bb.bd ], [ %.2226, %bb.bf ], [ %.2226, %bb.bh ], [ %.0224426, %bb.e ]
  %.0219.be = phi i8 [ %i.ah, %bb.j ], [ %.4223, %bb.ag ], [ %.4223, %bb.ai ], [ %.4223, %bb.ak ], [ %.4223, %bb.bb ], [ %.4223, %bb.at ], [ %.4223, %bb.ax ], [ %.4223, %bb.bd ], [ %.4223, %bb.bf ], [ %i.jt, %bb.bh ], [ %i.w, %bb.e ]
  %.0208.be = phi i64 [ %.0208428, %bb.j ], [ %.6, %bb.ag ], [ %.5213, %bb.ai ], [ %.5213, %bb.ak ], [ %.7, %bb.bb ], [ %.5213, %bb.at ], [ %.5213, %bb.ax ], [ %.5213, %bb.bd ], [ %.5213, %bb.bf ], [ %.5213, %bb.bh ], [ %.0208428, %bb.e ]
  %.0205.be = phi i64 [ %i.r, %bb.j ], [ %i.gr, %bb.ag ], [ %i.hb, %bb.ai ], [ %i.hd, %bb.ak ], [ %i.iz, %bb.bb ], [ %i.if, %bb.at ], [ %i.io, %bb.ax ], [ %i.jb, %bb.bd ], [ %i.jm, %bb.bf ], [ %i.js, %bb.bh ], [ %i.r, %bb.e ] ; 2 uses
  %.0200.be = phi i8 [ 2, %bb.j ], [ %.4204, %bb.ag ], [ %.4204, %bb.ai ], [ %.4204, %bb.ak ], [ %i.hs, %bb.bb ], [ %i.hs, %bb.at ], [ %i.hs, %bb.ax ], [ %.4204, %bb.bd ], [ %.4204, %bb.bf ], [ %.4204, %bb.bh ], [ %.0200430, %bb.e ]
  %.0198.be = phi i8 [ %.0198431, %bb.j ], [ %.0198431, %bb.ag ], [ %i.gv, %bb.ai ], [ %.0198431, %bb.ak ], [ %.0198431, %bb.bb ], [ %.0198431, %bb.at ], [ %.0198431, %bb.ax ], [ %.0198431, %bb.bd ], [ %.0198431, %bb.bf ], [ %i.jo, %bb.bh ], [ %.0198431, %bb.e ]
  %.0193.be = phi i8 [ %.0193432, %bb.j ], [ %.3196, %bb.ag ], [ %.3196, %bb.ai ], [ %.3196, %bb.ak ], [ %i.hm, %bb.bb ], [ %.3196, %bb.at ], [ %.3196, %bb.ax ], [ %.3196, %bb.bd ], [ %.3196, %bb.bf ], [ %.3196, %bb.bh ], [ %.0193432, %bb.e ]
  %.0190.be = phi i8 [ %i.aa, %bb.j ], [ %.2192, %bb.ag ], [ %.2192, %bb.ai ], [ %.2192, %bb.ak ], [ %.2192, %bb.bb ], [ %.2192, %bb.at ], [ %.2192, %bb.ax ], [ %.2192, %bb.bd ], [ %.2192, %bb.bf ], [ %.2192, %bb.bh ], [ %.0190433, %bb.e ]
  %.0183.be = phi i64 [ %.0183434, %bb.j ], [ %.4187, %bb.ag ], [ %.4187, %bb.ai ], [ %.4187, %bb.ak ], [ %.5188, %bb.bb ], [ %.4187, %bb.at ], [ %.4187, %bb.ax ], [ %.4187, %bb.bd ], [ %.4187, %bb.bf ], [ %.4187, %bb.bh ], [ %.0183434, %bb.e ]
  %.not = icmp ult i64 %.0205.be, %i.i
  br i1 %.not, label %.lr.ph435, label %asn1_find_indefinite_length.exit.thread, !prof !19

.thread299:                                       ; preds = %bb.q, %bb.s, %bb.b
  %.5278 = phi i64 [ %.3276, %bb.q ], [ %.0273425, %bb.b ], [ %.3276, %bb.s ] ; 7 uses
  %.2226 = phi i64 [ %.3211, %bb.q ], [ %.0224426, %bb.b ], [ %.3211, %bb.s ] ; 7 uses
  %.4223 = phi i8 [ %.2221, %bb.q ], [ %.0219427, %bb.b ], [ %.2221, %bb.s ] ; 13 uses
  %.5213 = phi i64 [ %.3211, %bb.q ], [ %.0208428, %bb.b ], [ %.3211, %bb.s ] ; 19 uses
  %.4204 = phi i8 [ %.2202, %bb.q ], [ %.0200430, %bb.b ], [ %.2202, %bb.s ] ; 8 uses
  %.3196 = phi i8 [ %.0193432, %bb.q ], [ %.0193432, %bb.b ], [ %i.cx, %bb.s ] ; 13 uses
  %.2192 = phi i8 [ %i.aa, %bb.q ], [ %.0190433, %bb.b ], [ %i.aa, %bb.s ] ; 11 uses
  %.4187 = phi i64 [ %.0183434, %bb.q ], [ %.0183434, %bb.b ], [ %.1184, %bb.s ] ; 21 uses
  switch i8 %i.l, label %bb.bi [
    i8 0, label %bb.t
    i8 1, label %bb.t
    i8 2, label %bb.t
    i8 3, label %bb.t
    i8 8, label %bb.t
    i8 9, label %bb.t
    i8 10, label %bb.t
    i8 11, label %bb.t
    i8 17, label %bb.t
    i8 19, label %bb.t
    i8 24, label %bb.t
    i8 25, label %bb.t
    i8 26, label %bb.t
    i8 27, label %bb.t
    i8 4, label %bb.ah
    i8 5, label %bb.ah
    i8 21, label %bb.ah
    i8 28, label %bb.aj
    i8 29, label %bb.al
    i8 33, label %bb.an
    i8 37, label %bb.an
    i8 32, label %bb.ao
    i8 35, label %bb.ao
    i8 34, label %bb.ao
    i8 36, label %bb.ao
    i8 39, label %bb.ao
    i8 38, label %bb.ao
    i8 31, label %bb.bc
    i8 30, label %bb.be
    i8 40, label %bb.bg
  ]

bb.t:                                             ; preds = %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299
  %i.cy = zext nneg i8 %.4223 to i32              ; 2 uses
  %i.cz = and i32 %i.cy, 32
  %.not256.not = icmp eq i32 %i.cz, 0
  %i.da = and i32 %i.cy, 33
  %or.cond264.not = icmp eq i32 %i.da, 1
  br i1 %or.cond264.not, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.db = sub i64 %.4187, %.5213
  %i.dc = icmp ult i64 %i.db, 2
  br i1 %i.dc, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph94.i, !prof !14

.lr.ph94.i:                                       ; preds = %bb.u, %.outer.backedge.i
  %.0.ph98.i = phi i32 [ %.0.ph.be.i, %.outer.backedge.i ], [ 1, %bb.u ] ; 2 uses
  %.053.ph97.i = phi i64 [ %.053.ph.be.i, %.outer.backedge.i ], [ %.5213, %bb.u ]
  br label %bb.v

.loopexit.thread.i:                               ; preds = %.loopexit.i, %.preheader.i
  %.1135.i = phi i64 [ %.1.i, %.loopexit.i ], [ 0, %.preheader.i ]
  %.4134.i = phi i64 [ %.4.i, %.loopexit.i ], [ %i.eb, %.preheader.i ]
  %i.dd = add i64 %.4134.i, %.1135.i              ; 2 uses
  %i.de = sub i64 %.4187, %i.dd
  %i.df = icmp ult i64 %i.de, 2
  br i1 %i.df, label %asn1_find_indefinite_length.exit.thread, label %bb.v, !prof !20

bb.v:                                             ; preds = %.loopexit.thread.i, %.lr.ph94.i
  %.05393.i = phi i64 [ %.053.ph97.i, %.lr.ph94.i ], [ %i.dd, %.loopexit.thread.i ] ; 3 uses
  %i.dg = add i64 %.05393.i, 1                    ; 4 uses
  %i.dh = getelementptr i8, ptr %2, i64 %.05393.i
  %i.di = load i8, ptr %i.dh, align 1             ; 2 uses
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = icmp eq i8 %i.di, 0
  br i1 %i.dk, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr i8, ptr %2, i64 %i.dg
  %i.dm = load i8, ptr %i.dl, align 1
  %.not62.i = icmp eq i8 %i.dm, 0
  br i1 %.not62.i, label %bb.x, label %asn1_find_indefinite_length.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dn = add i64 %.05393.i, 2                    ; 2 uses
  %i.do = add i32 %.0.ph98.i, -1                  ; 2 uses
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %asn1_find_indefinite_length.exit, label %.outer.backedge.i

.outer.backedge.i:                                ; preds = %bb.ab, %bb.x
  %.053.ph.be.i = phi i64 [ %i.eb, %bb.ab ], [ %i.dn, %bb.x ] ; 2 uses
  %.0.ph.be.i = phi i32 [ %i.ej, %bb.ab ], [ %i.do, %bb.x ]
  %i.dq = sub i64 %.4187, %.053.ph.be.i
  %i.dr = icmp ult i64 %i.dq, 2
  br i1 %i.dr, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph94.i, !prof !21

bb.y:                                             ; preds = %bb.v
  %i.ds = and i32 %i.dj, 31
  %i.dt = icmp eq i32 %i.ds, 31
  br i1 %i.dt, label %.preheader63.i.preheader, label %.loopexit65.i, !prof !15

.preheader63.i.preheader:                         ; preds = %bb.y
  %i.du = sub i64 %.4187, %i.dg
  %i.dv = icmp ult i64 %i.du, 2
  br i1 %i.dv, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph625, !prof !14

.preheader63.i:                                   ; preds = %.lr.ph625
  %i.dw = sub i64 %.4187, %i.dy
  %i.dx = icmp ult i64 %i.dw, 2
  br i1 %i.dx, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph625, !prof !20, !llvm.loop !12

.lr.ph625:                                        ; preds = %.preheader63.i.preheader, %.preheader63.i
  %.154.i624 = phi i64 [ %i.dy, %.preheader63.i ], [ %i.dg, %.preheader63.i.preheader ] ; 2 uses
  %i.dy = add i64 %.154.i624, 1                   ; 3 uses
  %i.dz = getelementptr i8, ptr %2, i64 %.154.i624
  %i.ea = load i8, ptr %i.dz, align 1
  %.not.i = icmp sgt i8 %i.ea, -1
  br i1 %.not.i, label %.loopexit65.i, label %.preheader63.i, !llvm.loop !12

.loopexit65.i:                                    ; preds = %.lr.ph625, %bb.y
  %.2.i = phi i64 [ %i.dg, %bb.y ], [ %i.dy, %.lr.ph625 ] ; 9 uses
  %i.eb = add i64 %.2.i, 1                        ; 5 uses
  %i.ec = getelementptr i8, ptr %2, i64 %.2.i
  %i.ed = load i8, ptr %i.ec, align 1             ; 10 uses
  %i.ee = zext i8 %i.ed to i64                    ; 3 uses
  %i.ef = icmp sgt i8 %i.ed, -1
  br i1 %i.ef, label %.loopexit.i, label %bb.z

bb.z:                                             ; preds = %.loopexit65.i
  %i.eg = icmp eq i8 %i.ed, -128
  br i1 %i.eg, label %bb.aa, label %bb.ac, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.eh = and i32 %i.dj, 32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %asn1_find_indefinite_length.exit.thread, label %bb.ab, !prof !15

bb.ab:                                            ; preds = %bb.aa
  %i.ej = add i32 %.0.ph98.i, 1
  br label %.outer.backedge.i

bb.ac:                                            ; preds = %bb.z
  %i.ek = icmp samesign ugt i8 %i.ed, -121
  br i1 %i.ek, label %asn1_find_indefinite_length.exit.thread, label %bb.ad, !prof !15

bb.ad:                                            ; preds = %bb.ac
  %i.el = add nsw i64 %i.ee, -128                 ; 2 uses
  %i.em = sub i64 %.4187, %i.eb
  %i.en = icmp ugt i64 %i.el, %i.em
  br i1 %i.en, label %asn1_find_indefinite_length.exit.thread, label %.preheader.i, !prof !15

.preheader.i:                                     ; preds = %bb.ad
  %.not6188.i = icmp eq i64 %i.el, 0
  br i1 %.not6188.i, label %.loopexit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.eo = getelementptr i8, ptr %2, i64 %i.eb
  %i.ep = load i8, ptr %i.eo, align 1
end_hunk_0
