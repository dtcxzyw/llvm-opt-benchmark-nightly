Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/codecs?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"b64_pos <= b64_len\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"sodium/codecs.c\00", align 1
@__PRETTY_FUNCTION__.sodium_bin2base64 = private unnamed_addr constant [104 x i8] c"char *sodium_bin2base64(char *const, const size_t, const unsigned char *const, const size_t, const int)\00", align 1

; Function Attrs: nounwind ssp uwtable
define dso_local noundef nonnull ptr @sodium_bin2hex(ptr nofree noundef nonnull returned writeonly captures(ret: address, provenance) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %3, 9223372036854775807
  %i.b = shl i64 %3, 1                            ; 2 uses
  %.not = icmp ugt i64 %1, %i.b
  %or.cond = and i1 %i.a, %.not
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not25 = icmp eq i64 %3, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep26 = getelementptr i8, ptr %2, i64 %3
  %bound0 = icmp ult ptr %0, %scevgep26
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775800        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr i8, ptr %2, i64 %index
  %wide.load = load <8 x i8>, ptr %i.c, align 1, !alias.scope !12 ; 2 uses
  %.inner = and <8 x i8> %wide.load, splat (i8 15)
  %i.d = zext nneg <8 x i8> %.inner to <8 x i32>  ; 2 uses
  %i.e = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.f = zext nneg <8 x i8> %i.e to <8 x i32>     ; 2 uses
  %i.g = add nuw nsw <8 x i32> %i.d, splat (i32 65526)
  %i.h = shl nuw nsw <8 x i32> %i.d, splat (i32 8)
  %i.i = add nuw nsw <8 x i32> %i.h, splat (i32 22272)
  %i.j = and <8 x i32> %i.g, splat (i32 55552)
  %i.k = add nuw nsw <8 x i32> %i.i, %i.j
  %i.l = add nuw nsw <8 x i32> %i.f, splat (i32 87)
  %i.m = add nuw nsw <8 x i32> %i.f, splat (i32 65526)
  %i.n = lshr <8 x i32> %i.m, splat (i32 8)
  %i.o = and <8 x i32> %i.n, splat (i32 217)
  %i.p = add nuw nsw <8 x i32> %i.l, %i.o
  %i.q = shl nuw i64 %index, 1
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = lshr exact <8 x i32> %i.k, splat (i32 8)
  %i.t = shufflevector <8 x i32> %i.p, <8 x i32> %i.s, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i32> %i.t to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.r, align 1, !alias.scope !13, !noalias !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.024.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #13
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %.024 = phi i64 [ %i.ap, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader27 ] ; 3 uses
  %i.v = getelementptr i8, ptr %2, i64 %.024
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 15                         ; 2 uses
  %i.z = lshr i32 %i.x, 4                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.y, 65526
  %i.ab = shl nuw nsw i32 %i.y, 8
  %i.ac = add nuw nsw i32 %i.ab, 22272
  %.mask = and i32 %i.aa, 55552
  %i.ad = add nuw nsw i32 %i.ac, %.mask
  %i.ae = add nuw nsw i32 %i.z, 87
  %i.af = add nuw nsw i32 %i.z, 65526
  %i.ag = lshr i32 %i.af, 8
  %i.ah = and i32 %i.ag, 217
  %i.ai = add nuw nsw i32 %i.ae, %i.ah
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = shl nuw i64 %.024, 1
  %i.al = getelementptr i8, ptr %0, i64 %i.ak     ; 2 uses
  store i8 %i.aj, ptr %i.al, align 1
  %i.am = lshr exact i32 %i.ad, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr i8, ptr %i.al, i64 1
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = add nuw nsw i64 %.024, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %i.aq = shl nuw i64 %3, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.aq, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.ar = getelementptr i8, ptr %0, i64 %.0.lcssa
  store i8 0, ptr %i.ar, align 1
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @sodium_misuse() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind ssp memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @sodium_hex2bin(ptr nofree noundef nonnull writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #3 {
bb.a:
  %.not145 = icmp eq i64 %3, 0
  br i1 %.not145, label %.thread63.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %.not146 = icmp eq ptr %4, null
  br i1 %.not146, label %.lr.ph, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %.outer.us
  %.0.ph120.us = phi i8 [ %.093.us.lcssa200208, %.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 4 uses
  %.044.ph119.us = phi i8 [ %.1.us, %.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 2 uses
  %.047.ph118.us = phi i64 [ %i.az, %.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 7 uses
  %.049.ph117.us = phi i64 [ %.150.us, %.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 11 uses
  %i.a = add nuw i64 %.047.ph118.us, 1            ; 4 uses
  %i.b = getelementptr i8, ptr %2, i64 %.047.ph118.us
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = zext i8 %i.c to i32
  %i.e = xor i8 %i.c, 48
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 65526
  %i.h = lshr i32 %i.g, 8                         ; 2 uses
  %i.i = and i8 %i.c, -33
  %i.j = add i8 %i.i, -55
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  %i.l = add nuw nsw i32 %i.k, 65526
  %i.m = add nuw nsw i32 %i.k, 65520
  %i.n = xor i32 %i.l, %i.m
  %i.o = lshr i32 %i.n, 8                         ; 2 uses
  %i.p = or i32 %i.o, %i.h
  %i.q = and i32 %i.p, 255
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.b, label %.split.us124

bb.b:                                             ; preds = %.lr.ph.us
  %i.s = icmp eq i8 %.0.ph120.us, 0
  br i1 %i.s, label %bb.c, label %.thread71

bb.c:                                             ; preds = %bb.b
  %i.t = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.d) #14
  %.not55.us.peel = icmp eq ptr %i.t, null
  br i1 %.not55.us.peel, label %.thread63, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i64 %i.a, %3
  br i1 %i.u, label %.peel.next, label %.thread63

.peel.next:                                       ; preds = %bb.d, %10
  %.04792.us = phi i64 [ %11, %10 ], [ %i.a, %bb.d ] ; 5 uses
  %i.v = getelementptr i8, ptr %2, i64 %.04792.us
  %i.w = load i8, ptr %i.v, align 1               ; 3 uses
  %i.x = xor i8 %i.w, 48
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = add nuw nsw i32 %i.y, 65526
  %i.aa = lshr i32 %i.z, 8                        ; 2 uses
  %i.ab = and i8 %i.w, -33
  %i.ac = add i8 %i.ab, -55
  %i.ad = zext i8 %i.ac to i32                    ; 3 uses
  %i.ae = add nuw nsw i32 %i.ad, 65526
  %i.af = add nuw nsw i32 %i.ad, 65520
  %i.ag = xor i32 %i.ae, %i.af
  %i.ah = lshr i32 %i.ag, 8                       ; 2 uses
  %i.ai = or i32 %i.ah, %i.aa
  %i.aj = and i32 %i.ai, 255
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %7, label %.split.us124.thread

7:                                                ; preds = %.peel.next
  %8 = zext i8 %i.w to i32
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %8) #14
  %.not55.us = icmp eq ptr %9, null
  br i1 %.not55.us, label %.thread63, label %10

10:                                               ; preds = %7
  %11 = add nuw i64 %.04792.us, 1                 ; 2 uses
  %12 = icmp ult i64 %11, %3
  br i1 %12, label %.peel.next, label %.thread63.loopexit.split.loop.exit275, !llvm.loop !14

.split.us124:                                     ; preds = %.lr.ph.us
  %i.al = and i32 %i.h, %i.f
  %i.am = and i32 %i.o, %i.k
  %i.an = or i32 %i.am, %i.al                     ; 2 uses
  %.not.us = icmp ult i64 %.049.ph117.us, %1
  br i1 %.not.us, label %bb.e, label %.split141.us

.split.us124.thread:                              ; preds = %.peel.next
  %i.ao = and i32 %i.aa, %i.y
  %i.ap = and i32 %i.ah, %i.ad
  %i.aq = or i32 %i.ap, %i.ao
  %.not.us199 = icmp ult i64 %.049.ph117.us, %1
  br i1 %.not.us199, label %.thread, label %.split141.us

bb.e:                                             ; preds = %.split.us124
  %i.ar = icmp eq i8 %.0.ph120.us, 0
  br i1 %i.ar, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = trunc nuw i32 %i.an to i8
  %i.at = or i8 %.044.ph119.us, %i.as
  %i.au = add nuw i64 %.049.ph117.us, 1
  %i.av = getelementptr i8, ptr %0, i64 %.049.ph117.us
  store i8 %i.at, ptr %i.av, align 1
  %i.aw = xor i8 %.0.ph120.us, -1
  br label %.outer.us

.thread:                                          ; preds = %.split.us124.thread, %bb.e
  %.04792.us.lcssa202207 = phi i64 [ %.047.ph118.us, %bb.e ], [ %.04792.us, %.split.us124.thread ]
  %i.ax = phi i32 [ %i.an, %bb.e ], [ %i.aq, %.split.us124.thread ]
  %.tr.us = trunc nuw i32 %i.ax to i8
  %i.ay = shl i8 %.tr.us, 4
  br label %.outer.us

.outer.us:                                        ; preds = %.thread, %bb.f
  %.093.us.lcssa200208 = phi i8 [ -1, %.thread ], [ %i.aw, %bb.f ] ; 2 uses
  %.04792.us.lcssa202206 = phi i64 [ %.04792.us.lcssa202207, %.thread ], [ %.047.ph118.us, %bb.f ]
  %.150.us = phi i64 [ %.049.ph117.us, %.thread ], [ %i.au, %bb.f ] ; 2 uses
  %.1.us = phi i8 [ %i.ay, %.thread ], [ %.044.ph119.us, %bb.f ]
  %i.az = add nuw i64 %.04792.us.lcssa202206, 1   ; 3 uses
  %i.ba = icmp ult i64 %i.az, %3
  br i1 %i.ba, label %.lr.ph.us, label %.loopexit, !llvm.loop !15

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.0.ph120 = phi i8 [ %i.ca, %.outer ], [ 0, %.lr.ph.lr.ph ] ; 4 uses
  %.044.ph119 = phi i8 [ %.1, %.outer ], [ 0, %.lr.ph.lr.ph ] ; 2 uses
  %.047.ph118 = phi i64 [ %i.cb, %.outer ], [ 0, %.lr.ph.lr.ph ] ; 4 uses
  %.049.ph117 = phi i64 [ %.150, %.outer ], [ 0, %.lr.ph.lr.ph ] ; 6 uses
  %i.bb = getelementptr i8, ptr %2, i64 %.047.ph118
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = xor i8 %i.bc, 48
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = add nuw nsw i32 %i.be, 65526
  %i.bg = lshr i32 %i.bf, 8                       ; 2 uses
  %i.bh = and i8 %i.bc, -33
  %i.bi = add i8 %i.bh, -55
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %i.bk = add nuw nsw i32 %i.bj, 65526
  %i.bl = add nuw nsw i32 %i.bj, 65520
  %i.bm = xor i32 %i.bk, %i.bl
  %i.bn = lshr i32 %i.bm, 8                       ; 2 uses
  %i.bo = or i32 %i.bn, %i.bg
  %i.bp = and i32 %i.bo, 255
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.loopexit, label %.split.us

.split.us:                                        ; preds = %.lr.ph
  %.not = icmp ult i64 %.049.ph117, %1
  br i1 %.not, label %bb.g, label %.split141.us

.split141.us:                                     ; preds = %.split.us124, %.split.us124.thread, %.split.us
  %.us-phi142 = phi i64 [ %.049.ph117, %.split.us ], [ %.049.ph117.us, %.split.us124.thread ], [ %.049.ph117.us, %.split.us124 ]
  %.us-phi143 = phi i64 [ %.047.ph118, %.split.us ], [ %.04792.us, %.split.us124.thread ], [ %.047.ph118.us, %.split.us124 ]
  %.us-phi144 = phi i8 [ %.0.ph120, %.split.us ], [ 0, %.split.us124.thread ], [ %.0.ph120.us, %.split.us124 ]
  %i.br = tail call ptr @__errno_location() #15
  store i32 34, ptr %i.br, align 4
  br label %.loopexit

bb.g:                                             ; preds = %.split.us
  %i.bs = and i32 %i.bn, %i.bj
  %i.bt = and i32 %i.bg, %i.be
  %i.bu = or i32 %i.bs, %i.bt
  %i.bv = icmp eq i8 %.0.ph120, 0
  %.tr = trunc nuw i32 %i.bu to i8                ; 2 uses
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = shl i8 %.tr, 4
  br label %.outer

bb.i:                                             ; preds = %bb.g
  %i.bx = or i8 %.044.ph119, %.tr
  %i.by = add nuw i64 %.049.ph117, 1
  %i.bz = getelementptr i8, ptr %0, i64 %.049.ph117
  store i8 %i.bx, ptr %i.bz, align 1
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.h
  %.150 = phi i64 [ %.049.ph117, %bb.h ], [ %i.by, %bb.i ] ; 2 uses
  %.1 = phi i8 [ %i.bw, %bb.h ], [ %.044.ph119, %bb.i ]
  %i.ca = xor i8 %.0.ph120, -1                    ; 2 uses
  %i.cb = add nuw i64 %.047.ph118, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %.outer.us, %.outer, %.lr.ph, %.split141.us
  %.049.ph91 = phi i64 [ %.us-phi142, %.split141.us ], [ %.150, %.outer ], [ %.049.ph117, %.lr.ph ], [ %.150.us, %.outer.us ]
  %.04781 = phi i64 [ %.us-phi143, %.split141.us ], [ %3, %.outer ], [ %.047.ph118, %.lr.ph ], [ %i.az, %.outer.us ] ; 2 uses
  %.078 = phi i8 [ %.us-phi144, %.split141.us ], [ %i.ca, %.outer ], [ %.0.ph120, %.lr.ph ], [ %.093.us.lcssa200208, %.outer.us ]
  %.not57 = phi i1 [ false, %.split141.us ], [ true, %.outer ], [ true, %.lr.ph ], [ true, %.outer.us ] ; 2 uses
  %.not56 = icmp eq i8 %.078, 0
  br i1 %.not56, label %bb.j, label %.thread71

.thread71:                                        ; preds = %bb.b, %.loopexit
  %.04781224 = phi i64 [ %.04781, %.loopexit ], [ %.047.ph118.us, %bb.b ]
  %i.cc = add i64 %.04781224, -1
  %i.cd = tail call ptr @__errno_location() #15
  store i32 22, ptr %i.cd, align 4
  br label %.thread63

bb.j:                                             ; preds = %.loopexit
  %not..not57 = xor i1 %.not57, true
  %spec.select = sext i1 %not..not57 to i32
  %spec.select283 = select i1 %.not57, i64 %.049.ph91, i64 0
  br label %.thread63

.thread63.loopexit.split.loop.exit275:            ; preds = %10
  %umax.le = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.a)
  br label %.thread63

.thread63:                                        ; preds = %bb.c, %bb.d, %7, %bb.j, %.thread63.loopexit.split.loop.exit275, %.thread71
  %.14669 = phi i32 [ -1, %.thread71 ], [ 0, %.thread63.loopexit.split.loop.exit275 ], [ 0, %7 ], [ %spec.select, %bb.j ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.14867 = phi i64 [ %i.cc, %.thread71 ], [ %umax.le, %.thread63.loopexit.split.loop.exit275 ], [ %.04792.us, %7 ], [ %.04781, %bb.j ], [ %i.a, %bb.d ], [ %.047.ph118.us, %bb.c ] ; 2 uses
  %i.ce = phi i64 [ 0, %.thread71 ], [ %.049.ph117.us, %.thread63.loopexit.split.loop.exit275 ], [ %.049.ph117.us, %7 ], [ %spec.select283, %bb.j ], [ %.049.ph117.us, %bb.d ], [ %.049.ph117.us, %bb.c ] ; 3 uses
  %.not58 = icmp eq ptr %6, null
  br i1 %.not58, label %bb.l, label %bb.k

.thread63.thread:                                 ; preds = %bb.a
  %.not58238 = icmp eq ptr %6, null
  br i1 %.not58238, label %.thread243, label %bb.k

bb.k:                                             ; preds = %.thread63.thread, %.thread63
  %i.cf = phi i64 [ 0, %.thread63.thread ], [ %i.ce, %.thread63 ]
  %.14867241 = phi i64 [ 0, %.thread63.thread ], [ %.14867, %.thread63 ]
  %.14669239 = phi i32 [ 0, %.thread63.thread ], [ %.14669, %.thread63 ]
  %i.cg = getelementptr i8, ptr %2, i64 %.14867241
  store ptr %i.cg, ptr %6, align 8
  br label %.thread243

bb.l:                                             ; preds = %.thread63
  %.not59 = icmp eq i64 %.14867, %3
  br i1 %.not59, label %.thread243, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = tail call ptr @__errno_location() #15
  store i32 22, ptr %i.ch, align 4
  br label %.thread243

.thread243:                                       ; preds = %.thread63.thread, %bb.l, %bb.m, %bb.k
  %i.ci = phi i64 [ %i.cf, %bb.k ], [ %i.ce, %bb.m ], [ %i.ce, %bb.l ], [ 0, %.thread63.thread ]
  %.2 = phi i32 [ %.14669239, %bb.k ], [ -1, %bb.m ], [ %.14669, %bb.l ], [ 0, %.thread63.thread ]
  %.not60 = icmp eq ptr %5, null
  br i1 %.not60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread243
  store i64 %i.ci, ptr %5, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread243
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define dso_local i64 @sodium_base64_encoded_len(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -7
  %.not.i = icmp eq i32 %i.a, 1
  br i1 %.not.i, label %sodium_base64_check_variant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #13
  unreachable

sodium_base64_check_variant.exit:                 ; preds = %bb.a
  %i.b = icmp ugt i64 %0, -4611686018427387908
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sodium_base64_check_variant.exit
  tail call void @sodium_misuse() #13
  unreachable

bb.d:                                             ; preds = %sodium_base64_check_variant.exit
  %i.c = udiv i64 %0, 3                           ; 2 uses
  %i.d = shl nuw i64 %i.c, 2
  %.neg = mul i64 %i.c, -3
  %i.e = add i64 %.neg, %0                        ; 2 uses
  %i.f = and i64 %i.e, 3
  %.not = icmp eq i64 %i.f, 0
  %i.g = sub i64 3, %i.e
  %i.h = shl i32 %1, 30
  %i.i = ashr i32 %i.h, 31
  %i.j = zext i32 %i.i to i64
  %i.k = and i64 %i.g, %i.j
  %i.l = sub nsw i64 4, %i.k
  %i.m = select i1 %.not, i64 0, i64 %i.l
  %i.n = or disjoint i64 %i.d, 1
  %i.o = add i64 %i.n, %i.m
  ret i64 %i.o
}

; Function Attrs: nounwind ssp uwtable
define dso_local noundef nonnull ptr @sodium_bin2base64(ptr nofree noundef nonnull returned writeonly captures(ret: address, provenance) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %4, -7
  %.not.i = icmp eq i32 %i.a, 1
  br i1 %.not.i, label %sodium_base64_check_variant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #13
  unreachable

sodium_base64_check_variant.exit:                 ; preds = %bb.a
  %i.b = icmp ugt i64 %3, -4611686018427387908
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sodium_base64_check_variant.exit
  tail call void @sodium_misuse() #13
  unreachable

bb.d:                                             ; preds = %sodium_base64_check_variant.exit
  %i.c = udiv i64 %3, 3                           ; 2 uses
  %.neg = mul i64 %i.c, -3
  %i.d = add i64 %.neg, %3                        ; 2 uses
  %i.e = shl nuw i64 %i.c, 2                      ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = and i32 %4, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw i64 %i.e, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = lshr i64 %i.d, 1
  %i.j = or disjoint i64 %i.e, 2
  %i.k = add i64 %i.j, %i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.062 = phi i64 [ %i.h, %bb.f ], [ %i.k, %bb.g ], [ %i.e, %bb.d ] ; 5 uses
  %.not70 = icmp ugt i64 %1, %.062
  br i1 %.not70, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @sodium_misuse() #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not71 = icmp samesign ult i32 %4, 4
  %.not108 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not71, label %.preheader82, label %.preheader84

.preheader84:                                     ; preds = %bb.j
  br i1 %.not108, label %.preheader81, label %iter.check

.preheader82:                                     ; preds = %bb.j
  br i1 %.not108, label %.preheader81, label %iter.check223

.loopexit83:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa184 = phi i64 [ %i.bo, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %i.da, %vec.epilog.scalar.ph ] ; 3 uses
  %.lcssa183 = phi i64 [ %i.bm, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.eg, %vec.epilog.scalar.ph ] ; 3 uses
  %i.l = add nuw i64 %.05889, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %3
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !17

iter.check:                                       ; preds = %.preheader84, %.loopexit83
  %.090 = phi i32 [ %i.q, %.loopexit83 ], [ 0, %.preheader84 ]
  %.05889 = phi i64 [ %i.l, %.loopexit83 ], [ 0, %.preheader84 ] ; 2 uses
  %.06088 = phi i64 [ %.lcssa183, %.loopexit83 ], [ 0, %.preheader84 ] ; 5 uses
  %.06387 = phi i64 [ %.lcssa184, %.loopexit83 ], [ 0, %.preheader84 ] ; 3 uses
  %i.m = shl i32 %.090, 8
  %i.n = getelementptr i8, ptr %2, i64 %.05889
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = or disjoint i64 %.06387, 8               ; 5 uses
  %i.s = add i64 %.06387, 7
  %i.t = add i64 %.06387, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.t, i64 5)
  %i.u = sub i64 %i.s, %umin                      ; 3 uses
  %i.v = udiv i64 %i.u, 6
  %i.w = add nuw nsw i64 %i.v, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.u, 18
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check
end_hunk_0
begin_hunk_1_@sodium_bin2base64:bb.a
  %vec.ind236 = phi <4 x i64> [ %induction233, %vec.epilog.ph227 ], [ %vec.ind.next238, %vec.epilog.vector.body234 ] ; 2 uses
  %i.go = trunc <4 x i64> %vec.ind236 to <4 x i32>
  %i.gp = add <4 x i32> %i.go, splat (i32 -6)
  %i.gq = lshr <4 x i32> %broadcast.splat230, %i.gp
  %i.gr = and <4 x i32> %i.gq, splat (i32 63)     ; 8 uses
  %i.gs = add nuw nsw <4 x i32> %i.gr, splat (i32 65510)
  %i.gt = lshr <4 x i32> %i.gs, splat (i32 8)     ; 2 uses
  %i.gu = add nuw nsw <4 x i32> %i.gr, splat (i32 65)
  %i.gv = and <4 x i32> %i.gt, %i.gu
  %i.gw = xor <4 x i32> %i.gt, splat (i32 -1)
  %i.gx = add nuw nsw <4 x i32> %i.gr, splat (i32 65484)
  %i.gy = lshr <4 x i32> %i.gx, splat (i32 8)     ; 2 uses
  %i.gz = add nuw nsw <4 x i32> %i.gr, splat (i32 71)
  %i.ha = and <4 x i32> %i.gz, %i.gw
  %i.hb = and <4 x i32> %i.ha, %i.gy
  %i.hc = or <4 x i32> %i.hb, %i.gv
  %i.hd = xor <4 x i32> %i.gy, splat (i32 -1)
  %i.he = add nuw nsw <4 x i32> %i.gr, splat (i32 65474)
  %i.hf = lshr <4 x i32> %i.he, splat (i32 8)
  %i.hg = add nuw nsw <4 x i32> %i.gr, splat (i32 252)
  %i.hh = and <4 x i32> %i.hf, %i.hg
  %i.hi = and <4 x i32> %i.hh, %i.hd
  %i.hj = xor <4 x i32> %i.gr, splat (i32 16321)
  %i.hk = add nuw nsw <4 x i32> %i.hj, splat (i32 1)
  %i.hl = lshr <4 x i32> %i.hk, splat (i32 8)
  %i.hm = and <4 x i32> %i.hl, splat (i32 43)
  %i.hn = xor <4 x i32> %i.hm, splat (i32 43)
  %i.ho = add nuw nsw <4 x i32> %i.gr, splat (i32 16321)
  %i.hp = lshr <4 x i32> %i.ho, splat (i32 8)
  %i.hq = and <4 x i32> %i.hp, splat (i32 47)
  %i.hr = xor <4 x i32> %i.hq, splat (i32 47)
  %i.hs = or <4 x i32> %i.hc, %i.hr
  %i.ht = or <4 x i32> %i.hs, %i.hi
  %i.hu = or <4 x i32> %i.ht, %i.hn
  %i.hv = trunc <4 x i32> %i.hu to <4 x i8>
  %i.hw = getelementptr i8, ptr %i.gn, i64 %index235
  store <4 x i8> %i.hv, ptr %i.hw, align 1
  %index.next237 = add nuw i64 %index235, 4       ; 2 uses
  %vec.ind.next238 = add <4 x i64> %vec.ind236, splat (i64 -24)
  %i.hx = icmp eq i64 %index.next237, %n.vec228
  br i1 %i.hx, label %vec.epilog.middle.block239, label %vec.epilog.vector.body234, !llvm.loop !23

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body234
  %cmp.n240 = icmp eq i64 %i.eu, %n.vec228
  br i1 %cmp.n240, label %.loopexit, label %vec.epilog.scalar.ph224.preheader

vec.epilog.scalar.ph224.preheader:                ; preds = %iter.check223, %vec.epilog.iter.check225, %vec.epilog.middle.block239
  %.394.ph = phi i64 [ %.296, %iter.check223 ], [ %i.ew, %vec.epilog.iter.check225 ], [ %i.gk, %vec.epilog.middle.block239 ]
  %.36693.ph = phi i64 [ %i.ep, %iter.check223 ], [ %i.ey, %vec.epilog.iter.check225 ], [ %i.gm, %vec.epilog.middle.block239 ]
  br label %vec.epilog.scalar.ph224

vec.epilog.scalar.ph224:                          ; preds = %vec.epilog.scalar.ph224.preheader, %vec.epilog.scalar.ph224
  %.394 = phi i64 [ %i.je, %vec.epilog.scalar.ph224 ], [ %.394.ph, %vec.epilog.scalar.ph224.preheader ] ; 2 uses
  %.36693 = phi i64 [ %i.hy, %vec.epilog.scalar.ph224 ], [ %.36693.ph, %vec.epilog.scalar.ph224.preheader ]
  %i.hy = add i64 %.36693, -6                     ; 4 uses
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = lshr i32 %i.eo, %i.hz
  %i.ib = and i32 %i.ia, 63                       ; 8 uses
  %i.ic = add nuw nsw i32 %i.ib, 65510
  %i.id = lshr i32 %i.ic, 8                       ; 2 uses
  %i.ie = add nuw nsw i32 %i.ib, 65
  %i.if = and i32 %i.id, %i.ie
  %i.ig = xor i32 %i.id, -1
  %i.ih = add nuw nsw i32 %i.ib, 65484
  %i.ii = lshr i32 %i.ih, 8                       ; 2 uses
  %i.ij = add nuw nsw i32 %i.ib, 71
  %i.ik = and i32 %i.ij, %i.ig
  %i.il = and i32 %i.ik, %i.ii
  %i.im = or i32 %i.il, %i.if
  %i.in = xor i32 %i.ii, -1
  %i.io = add nuw nsw i32 %i.ib, 65474
  %i.ip = lshr i32 %i.io, 8
  %i.iq = add nuw nsw i32 %i.ib, 252
  %i.ir = and i32 %i.ip, %i.iq
  %i.is = and i32 %i.ir, %i.in
  %i.it = xor i32 %i.ib, 16321
  %.neg.i77 = add nuw nsw i32 %i.it, 1
  %i.iu = lshr i32 %.neg.i77, 8
  %i.iv = and i32 %i.iu, 43
  %i.iw = xor i32 %i.iv, 43
  %.neg10.i78 = add nuw nsw i32 %i.ib, 16321
  %i.ix = lshr i32 %.neg10.i78, 8
  %i.iy = and i32 %i.ix, 47
  %i.iz = xor i32 %i.iy, 47
  %i.ja = or i32 %i.im, %i.iz
  %i.jb = or i32 %i.ja, %i.is
  %i.jc = or i32 %i.jb, %i.iw
  %i.jd = trunc i32 %i.jc to i8
  %i.je = add i64 %.394, 1                        ; 2 uses
  %i.jf = getelementptr i8, ptr %0, i64 %.394
  store i8 %i.jd, ptr %i.jf, align 1
  %i.jg = icmp ugt i64 %i.hy, 5
  br i1 %i.jg, label %vec.epilog.scalar.ph224, label %.loopexit, !llvm.loop !24

._crit_edge100:                                   ; preds = %.loopexit
  %.not72 = icmp eq i64 %.lcssa181, 0
  br i1 %.not72, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge100, %._crit_edge
  %.lcssa134.lcssa.sink = phi i64 [ %.lcssa184, %._crit_edge ], [ %.lcssa181, %._crit_edge100 ]
  %.lcssa135.sink = phi i32 [ %i.q, %._crit_edge ], [ %i.eo, %._crit_edge100 ]
  %.sink155 = phi i32 [ 45, %._crit_edge ], [ 43, %._crit_edge100 ]
  %.sink151 = phi i32 [ 32705, %._crit_edge ], [ 16321, %._crit_edge100 ]
  %.sink149 = phi i32 [ 95, %._crit_edge ], [ 47, %._crit_edge100 ]
  %.lcssa.lcssa.sink140 = phi i64 [ %.lcssa183, %._crit_edge ], [ %.lcssa, %._crit_edge100 ] ; 2 uses
  %i.jh = trunc nuw nsw i64 %.lcssa134.lcssa.sink to i32
  %i.ji = sub nuw nsw i32 6, %i.jh
  %i.jj = shl i32 %.lcssa135.sink, %i.ji
  %i.jk = and i32 %i.jj, 63                       ; 8 uses
  %i.jl = add nuw nsw i32 %i.jk, 65510
  %i.jm = lshr i32 %i.jl, 8                       ; 2 uses
  %i.jn = add nuw nsw i32 %i.jk, 65
  %i.jo = and i32 %i.jm, %i.jn
  %i.jp = xor i32 %i.jm, -1
  %i.jq = add nuw nsw i32 %i.jk, 65484
  %i.jr = lshr i32 %i.jq, 8                       ; 2 uses
  %i.js = add nuw nsw i32 %i.jk, 71
  %i.jt = and i32 %i.js, %i.jp
  %i.ju = and i32 %i.jt, %i.jr
  %i.jv = or i32 %i.ju, %i.jo
  %i.jw = xor i32 %i.jr, -1
  %i.jx = add nuw nsw i32 %i.jk, 65474
  %i.jy = lshr i32 %i.jx, 8
  %i.jz = add nuw nsw i32 %i.jk, 252
  %i.ka = and i32 %i.jy, %i.jz
  %i.kb = and i32 %i.ka, %i.jw
  %i.kc = xor i32 %i.jk, 16321
  %.neg.i79 = add nuw nsw i32 %i.kc, 1
  %i.kd = lshr i32 %.neg.i79, 8
  %i.ke = xor i32 %i.kd, -1
  %i.kf = and i32 %.sink155, %i.ke
  %.neg10.i80 = add nuw nsw i32 %i.jk, %.sink151
  %i.kg = lshr i32 %.neg10.i80, 8
  %i.kh = xor i32 %i.kg, -1
  %i.ki = and i32 %.sink149, %i.kh
  %i.kj = or i32 %i.jv, %i.ki
  %i.kk = or i32 %i.kj, %i.kb
  %i.kl = or i32 %i.kk, %i.kf
  %i.km = trunc i32 %i.kl to i8
  %i.kn = add i64 %.lcssa.lcssa.sink140, 1
  %i.ko = getelementptr i8, ptr %0, i64 %.lcssa.lcssa.sink140
  store i8 %i.km, ptr %i.ko, align 1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %._crit_edge100, %._crit_edge
  %.4 = phi i64 [ %.lcssa, %._crit_edge100 ], [ %.lcssa183, %._crit_edge ], [ %i.kn, %.sink.split ] ; 2 uses
  %.not74 = icmp ugt i64 %.4, %.062
  br i1 %.not74, label %bb.l, label %.preheader81

.preheader81:                                     ; preds = %.preheader82, %.preheader84, %bb.k
  %.4133 = phi i64 [ %.4, %bb.k ], [ 0, %.preheader84 ], [ 0, %.preheader82 ] ; 4 uses
  %i.kp = icmp ult i64 %.4133, %.062
  br i1 %i.kp, label %.lr.ph105.preheader, label %.preheader

.lr.ph105.preheader:                              ; preds = %.preheader81
  %scevgep = getelementptr i8, ptr %0, i64 %.4133
  %i.kq = sub nuw i64 %.062, %.4133
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 61, i64 %i.kq, i1 false)
  br label %.preheader

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 239, ptr noundef nonnull @__PRETTY_FUNCTION__.sodium_bin2base64) #13
  unreachable

.preheader:                                       ; preds = %.lr.ph105.preheader, %.preheader81
  %.5.lcssa = phi i64 [ %.4133, %.preheader81 ], [ %.062, %.lr.ph105.preheader ] ; 3 uses
  %scevgep116 = getelementptr i8, ptr %0, i64 %.5.lcssa
  %i.kr = add i64 %.5.lcssa, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.kr)
  %i.ks = sub i64 %umax, %.5.lcssa
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep116, i8 0, i64 %i.ks, i1 false)
  ret ptr %0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @sodium_base642bin(ptr nofree noundef nonnull writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %7, -7
  %.not.i = icmp eq i32 %i.a, 1
  br i1 %.not.i, label %sodium_base64_check_variant.exit.preheader, label %bb.e

sodium_base64_check_variant.exit.preheader:       ; preds = %bb.a
  %.not171 = icmp eq i64 %3, 0
  br i1 %.not171, label %.loopexit94.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %sodium_base64_check_variant.exit.preheader
  %.not = icmp samesign ult i32 %7, 4
  %.not60 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %sodium_base64_check_variant.exit.outer.us
  %.043.ph139.us = phi i32 [ %i.bd, %sodium_base64_check_variant.exit.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 4 uses
  %.046.ph138.us = phi i64 [ %.147.us, %sodium_base64_check_variant.exit.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 8 uses
  %.049.ph137.us = phi i64 [ %.150.us, %sodium_base64_check_variant.exit.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 6 uses
  %.082.ph136.us = phi i64 [ %16, %sodium_base64_check_variant.exit.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %sodium_base64_check_variant.exit.us.us, %.lr.ph.us
  %.082106.us.us = phi i64 [ %.082.ph136.us, %.lr.ph.us ], [ %i.ba, %sodium_base64_check_variant.exit.us.us ] ; 5 uses
  %i.b = getelementptr i8, ptr %2, i64 %.082106.us.us
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i32                      ; 3 uses
  %i.e = and i32 %i.d, 255                        ; 6 uses
  %i.f = add nsw i32 %i.e, -65                    ; 2 uses
  %i.g = lshr i32 %i.f, 8
  %i.h = xor i32 %i.g, -1
  %i.i = sub nsw i32 90, %i.e
  %i.j = lshr i32 %i.i, 8
  %i.k = and i32 %i.j, 255
  %i.l = xor i32 %i.k, 255
  %i.m = and i32 %i.l, %i.h
  %i.n = and i32 %i.m, %i.f
  %i.o = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.p = shufflevector <2 x i32> %i.o, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = add nuw nsw <2 x i32> %i.p, <i32 65439, i32 65488>
  %i.r = lshr <2 x i32> %i.q, splat (i32 8)
  %i.s = xor <2 x i32> %i.r, splat (i32 -1)
  %i.t = sub nsw <2 x i32> <i32 122, i32 57>, %i.p
  %i.u = lshr <2 x i32> %i.t, splat (i32 8)
  %i.v = and <2 x i32> %i.u, splat (i32 255)
  %i.w = xor <2 x i32> %i.v, splat (i32 255)
  %i.x = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %i.y = shufflevector <2 x i32> %i.x, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.z = add nsw <2 x i32> %i.y, <i32 185, i32 4>
  %i.aa = and <2 x i32> %i.z, %i.s
  %i.ab = and <2 x i32> %i.aa, %i.w               ; 2 uses
  %i.ac = xor i32 %i.e, 16340
  %.neg.i70.us.us = add nuw nsw i32 %i.ac, 1
  %i.ad = lshr i32 %.neg.i70.us.us, 8
  %i.ae = and i32 %i.ad, 62
  %i.af = xor i32 %i.ae, 62
  %i.ag = xor i32 %i.e, 16336
  %.neg15.i71.us.us = add nuw nsw i32 %i.ag, 1
  %i.ah = lshr i32 %.neg15.i71.us.us, 8
  %i.ai = and i32 %i.ah, 63
  %i.aj = xor i32 %i.ai, 63
  %i.ak = or i32 %i.aj, %i.af
  %i.al = extractelement <2 x i32> %i.ab, i64 0
  %i.am = or i32 %i.ak, %i.al
  %i.an = extractelement <2 x i32> %i.ab, i64 1
  %i.ao = or i32 %i.am, %i.an
  %i.ap = or i32 %i.ao, %i.n                      ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 255
  %i.at = xor i32 %i.as, 255
  %i.au = xor i32 %i.e, 65470
  %.neg16.i72.us.us = add nuw nsw i32 %i.au, 1
  %i.av = lshr i32 %.neg16.i72.us.us, 8
  %i.aw = and i32 %i.at, %i.av
  %i.ax = or i32 %i.aw, %i.ap                     ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 255
  br i1 %i.ay, label %bb.c, label %.split.us.us

bb.c:                                             ; preds = %bb.b
  br i1 %.not60, label %.loopexit94, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.d) #14
  %.not61.us.us = icmp eq ptr %i.az, null
  br i1 %.not61.us.us, label %.loopexit94, label %sodium_base64_check_variant.exit.us.us

sodium_base64_check_variant.exit.us.us:           ; preds = %bb.d
  %i.ba = add nuw i64 %.082106.us.us, 1           ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %3
  br i1 %i.bb, label %bb.b, label %.loopexit94.loopexit.split.loop.exit299, !llvm.loop !26

.split.us.us:                                     ; preds = %bb.b
  %i.bc = shl i32 %.043.ph139.us, 6
  %i.bd = add i32 %i.ax, %i.bc                    ; 4 uses
  %i.be = add nuw nsw i64 %.049.ph137.us, 6
  %i.bf = icmp ugt i64 %.049.ph137.us, 1
  br i1 %i.bf, label %8, label %sodium_base64_check_variant.exit.outer.us

8:                                                ; preds = %.split.us.us
  %9 = add nsw i64 %.049.ph137.us, -2             ; 3 uses
  %.not59.us = icmp ult i64 %.046.ph138.us, %1
  br i1 %.not59.us, label %10, label %.split145.us

10:                                               ; preds = %8
  %11 = trunc nuw nsw i64 %9 to i32
  %12 = lshr i32 %i.bd, %11
  %13 = trunc i32 %12 to i8
  %14 = add nuw i64 %.046.ph138.us, 1
  %15 = getelementptr i8, ptr %0, i64 %.046.ph138.us
  store i8 %13, ptr %15, align 1
  br label %sodium_base64_check_variant.exit.outer.us

sodium_base64_check_variant.exit.outer.us:        ; preds = %10, %.split.us.us
  %.150.us = phi i64 [ %9, %10 ], [ %i.be, %.split.us.us ] ; 2 uses
  %.147.us = phi i64 [ %14, %10 ], [ %.046.ph138.us, %.split.us.us ] ; 2 uses
  %16 = add nuw i64 %.082106.us.us, 1             ; 3 uses
  %17 = icmp ult i64 %16, %3
  br i1 %17, label %.lr.ph.us, label %.loopexit94, !llvm.loop !26

bb.e:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #13
  unreachable

bb.f:                                             ; preds = %.lr.ph, %sodium_base64_check_variant.exit
  %.082106 = phi i64 [ %.082.ph136, %.lr.ph ], [ %i.df, %sodium_base64_check_variant.exit ] ; 5 uses
  %i.bg = getelementptr i8, ptr %2, i64 %.082106
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = sext i8 %i.bh to i32                    ; 3 uses
  %i.bj = and i32 %i.bi, 255                      ; 6 uses
  %i.bk = add nsw i32 %i.bj, -65                  ; 2 uses
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = xor i32 %i.bl, -1
  %i.bn = sub nsw i32 90, %i.bj
  %i.bo = lshr i32 %i.bn, 8
  %i.bp = and i32 %i.bo, 255
  %i.bq = xor i32 %i.bp, 255
  %i.br = and i32 %i.bq, %i.bm
  %i.bs = and i32 %i.br, %i.bk
  %i.bt = insertelement <2 x i32> poison, i32 %i.bj, i64 0
  %i.bu = shufflevector <2 x i32> %i.bt, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = add nuw nsw <2 x i32> %i.bu, <i32 65439, i32 65488>
  %i.bw = lshr <2 x i32> %i.bv, splat (i32 8)
  %i.bx = xor <2 x i32> %i.bw, splat (i32 -1)
  %i.by = sub nsw <2 x i32> <i32 122, i32 57>, %i.bu
  %i.bz = lshr <2 x i32> %i.by, splat (i32 8)
  %i.ca = and <2 x i32> %i.bz, splat (i32 255)
  %i.cb = xor <2 x i32> %i.ca, splat (i32 255)
  %i.cc = insertelement <2 x i32> poison, i32 %i.bi, i64 0
  %i.cd = shufflevector <2 x i32> %i.cc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ce = add nsw <2 x i32> %i.cd, <i32 185, i32 4>
  %i.cf = and <2 x i32> %i.ce, %i.bx
  %i.cg = and <2 x i32> %i.cf, %i.cb              ; 2 uses
  %i.ch = xor i32 %i.bj, 16338
  %.neg.i = add nuw nsw i32 %i.ch, 1
  %i.ci = lshr i32 %.neg.i, 8
  %i.cj = and i32 %i.ci, 62
  %i.ck = xor i32 %i.cj, 62
  %i.cl = xor i32 %i.bj, 16288
  %.neg15.i = add nuw nsw i32 %i.cl, 1
  %i.cm = lshr i32 %.neg15.i, 8
  %i.cn = and i32 %i.cm, 63
  %i.co = xor i32 %i.cn, 63
  %i.cp = or i32 %i.co, %i.ck
  %i.cq = extractelement <2 x i32> %i.cg, i64 0
  %i.cr = or i32 %i.cp, %i.cq
  %i.cs = extractelement <2 x i32> %i.cg, i64 1
  %i.ct = or i32 %i.cr, %i.cs
  %i.cu = or i32 %i.ct, %i.bs                     ; 2 uses
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = and i32 %i.cw, 255
  %i.cy = xor i32 %i.cx, 255
  %i.cz = xor i32 %i.bj, 65470
  %.neg16.i = add nuw nsw i32 %i.cz, 1
  %i.da = lshr i32 %.neg16.i, 8
  %i.db = and i32 %i.cy, %i.da
  %i.dc = or i32 %i.db, %i.cu                     ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 255
  br i1 %i.dd, label %bb.g, label %.split

bb.g:                                             ; preds = %bb.f
  br i1 %.not60, label %.loopexit94, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.bi) #14
  %.not61 = icmp eq ptr %i.de, null
  br i1 %.not61, label %.loopexit94, label %sodium_base64_check_variant.exit

sodium_base64_check_variant.exit:                 ; preds = %bb.h
  %i.df = add nuw i64 %.082106, 1                 ; 2 uses
  %i.dg = icmp ult i64 %i.df, %3
  br i1 %i.dg, label %bb.f, label %.loopexit94.loopexit250.split.loop.exit287, !llvm.loop !26

.split:                                           ; preds = %bb.f
  %i.dh = shl i32 %.043.ph139, 6
  %i.di = add i32 %i.dc, %i.dh                    ; 4 uses
  %i.dj = add nuw nsw i64 %.049.ph137, 6
  %i.dk = icmp ugt i64 %.049.ph137, 1
  br i1 %i.dk, label %bb.i, label %sodium_base64_check_variant.exit.outer

bb.i:                                             ; preds = %.split
  %i.dl = add nsw i64 %.049.ph137, -2             ; 3 uses
  %.not59 = icmp ult i64 %.046.ph138, %1
  br i1 %.not59, label %bb.j, label %.split145.us

.split145.us:                                     ; preds = %bb.i, %8
  %.us-phi146 = phi i64 [ %.046.ph138.us, %8 ], [ %.046.ph138, %bb.i ]
  %.us-phi147 = phi i64 [ %9, %8 ], [ %i.dl, %bb.i ]
  %.us-phi148 = phi i32 [ %i.bd, %8 ], [ %i.di, %bb.i ]
  %.us-phi149 = phi i64 [ %.082106.us.us, %8 ], [ %.082106, %bb.i ]
  %i.dm = tail call ptr @__errno_location() #15
  store i32 34, ptr %i.dm, align 4
  br label %.loopexit94

bb.j:                                             ; preds = %bb.i
  %i.dn = trunc nuw nsw i64 %i.dl to i32
  %i.do = lshr i32 %i.di, %i.dn
  %i.dp = trunc i32 %i.do to i8
  %i.dq = add nuw i64 %.046.ph138, 1
  %i.dr = getelementptr i8, ptr %0, i64 %.046.ph138
  store i8 %i.dp, ptr %i.dr, align 1
  br label %sodium_base64_check_variant.exit.outer

sodium_base64_check_variant.exit.outer:           ; preds = %bb.j, %.split
  %.150 = phi i64 [ %i.dl, %bb.j ], [ %i.dj, %.split ] ; 2 uses
  %.147 = phi i64 [ %i.dq, %bb.j ], [ %.046.ph138, %.split ] ; 2 uses
  %i.ds = add nuw i64 %.082106, 1                 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, %3
  br i1 %i.dt, label %.lr.ph, label %.loopexit94, !llvm.loop !26

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %sodium_base64_check_variant.exit.outer
  %.043.ph139 = phi i32 [ %i.di, %sodium_base64_check_variant.exit.outer ], [ 0, %.lr.ph.lr.ph ] ; 4 uses
  %.046.ph138 = phi i64 [ %.147, %sodium_base64_check_variant.exit.outer ], [ 0, %.lr.ph.lr.ph ] ; 8 uses
  %.049.ph137 = phi i64 [ %.150, %sodium_base64_check_variant.exit.outer ], [ 0, %.lr.ph.lr.ph ] ; 6 uses
  %.082.ph136 = phi i64 [ %i.ds, %sodium_base64_check_variant.exit.outer ], [ 0, %.lr.ph.lr.ph ] ; 3 uses
  br label %bb.f

.loopexit94.loopexit.split.loop.exit299:          ; preds = %sodium_base64_check_variant.exit.us.us
  %i.du = add nuw i64 %.082.ph136.us, 1
  %umax211.le = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.du)
  br label %.loopexit94

.loopexit94.loopexit250.split.loop.exit287:       ; preds = %sodium_base64_check_variant.exit
  %i.dv = add nuw i64 %.082.ph136, 1
  %umax.le = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.dv)
  br label %.loopexit94

.loopexit94:                                      ; preds = %sodium_base64_check_variant.exit.outer, %bb.g, %bb.h, %sodium_base64_check_variant.exit.outer.us, %bb.c, %bb.d, %.loopexit94.loopexit250.split.loop.exit287, %.loopexit94.loopexit.split.loop.exit299, %.split145.us
  %.046.ph104 = phi i64 [ %.us-phi146, %.split145.us ], [ %.147.us, %sodium_base64_check_variant.exit.outer.us ], [ %.046.ph138.us, %bb.c ], [ %.046.ph138, %.loopexit94.loopexit250.split.loop.exit287 ], [ %.046.ph138, %bb.g ], [ %.046.ph138.us, %.loopexit94.loopexit.split.loop.exit299 ], [ %.046.ph138.us, %bb.d ], [ %.046.ph138, %bb.h ], [ %.147, %sodium_base64_check_variant.exit.outer ]
  %.08299 = phi i64 [ %.us-phi149, %.split145.us ], [ %16, %sodium_base64_check_variant.exit.outer.us ], [ %.082.ph136.us, %bb.c ], [ %umax.le, %.loopexit94.loopexit250.split.loop.exit287 ], [ %.082106, %bb.h ], [ %umax211.le, %.loopexit94.loopexit.split.loop.exit299 ], [ %.082106.us.us, %bb.d ], [ %.082.ph136, %bb.g ], [ %i.ds, %sodium_base64_check_variant.exit.outer ] ; 2 uses
  %.251 = phi i64 [ %.us-phi147, %.split145.us ], [ %.150.us, %sodium_base64_check_variant.exit.outer.us ], [ %.049.ph137.us, %bb.c ], [ %.049.ph137, %.loopexit94.loopexit250.split.loop.exit287 ], [ %.049.ph137, %bb.g ], [ %.049.ph137.us, %.loopexit94.loopexit.split.loop.exit299 ], [ %.049.ph137.us, %bb.d ], [ %.049.ph137, %bb.h ], [ %.150, %sodium_base64_check_variant.exit.outer ] ; 2 uses
  %.not69 = phi i1 [ true, %.split145.us ], [ false, %sodium_base64_check_variant.exit.outer.us ], [ false, %bb.c ], [ false, %.loopexit94.loopexit250.split.loop.exit287 ], [ false, %bb.g ], [ false, %.loopexit94.loopexit.split.loop.exit299 ], [ false, %bb.d ], [ false, %bb.h ], [ false, %sodium_base64_check_variant.exit.outer ]
  %.1 = phi i32 [ %.us-phi148, %.split145.us ], [ %i.bd, %sodium_base64_check_variant.exit.outer.us ], [ %.043.ph139.us, %bb.c ], [ %.043.ph139, %.loopexit94.loopexit250.split.loop.exit287 ], [ %.043.ph139, %bb.g ], [ %.043.ph139.us, %.loopexit94.loopexit.split.loop.exit299 ], [ %.043.ph139.us, %bb.d ], [ %.043.ph139, %bb.h ], [ %i.di, %sodium_base64_check_variant.exit.outer ]
  %i.dw = icmp ugt i64 %.251, 4
  br i1 %i.dw, label %.critedge, label %.loopexit94.thread

.loopexit94.thread:                               ; preds = %sodium_base64_check_variant.exit.preheader, %.loopexit94
  %.1245 = phi i32 [ %.1, %.loopexit94 ], [ 0, %sodium_base64_check_variant.exit.preheader ]
  %.not69244 = phi i1 [ %.not69, %.loopexit94 ], [ false, %sodium_base64_check_variant.exit.preheader ]
  %.251243 = phi i64 [ %.251, %.loopexit94 ], [ 0, %sodium_base64_check_variant.exit.preheader ] ; 2 uses
  %.08299242 = phi i64 [ %.08299, %.loopexit94 ], [ 0, %sodium_base64_check_variant.exit.preheader ] ; 13 uses
  %.046.ph104241 = phi i64 [ %.046.ph104, %.loopexit94 ], [ 0, %sodium_base64_check_variant.exit.preheader ] ; 5 uses
  %i.dx = trunc nuw nsw i64 %.251243 to i32
  %notmask = shl nsw i32 -1, %i.dx
  %i.dy = xor i32 %notmask, -1
  %i.dz = and i32 %.1245, %i.dy
  %.not62 = icmp ne i32 %i.dz, 0
  %brmerge = or i1 %.not69244, %.not62
  br i1 %brmerge, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.loopexit94.thread
  %i.ea = and i32 %7, 2
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ec = lshr i64 %.251243, 1                    ; 3 uses
  %.not15.i = icmp eq i64 %i.ec, 0
  br i1 %.not15.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ed = icmp eq ptr %4, null
  br i1 %i.ed, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %umax212 = tail call i64 @llvm.umax.i64(i64 %.08299242, i64 %3) ; 3 uses
  %exitcond.not355.not = icmp ult i64 %.08299242, %3
  br i1 %exitcond.not355.not, label %.lr.ph358, label %.loopexit.sink.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.ee = icmp eq i64 %i.ec, 1
  %umax213 = tail call i64 @llvm.umax.i64(i64 %.08299242, i64 %3)
  %exitcond214.peel.not.not = icmp ult i64 %.08299242, %3
  br i1 %exitcond214.peel.not.not, label %bb.m, label %.loopexit.sink.split.i

bb.m:                                             ; preds = %.lr.ph.split.us.preheader.i
  fence acquire
  %i.ef = getelementptr i8, ptr %2, i64 %.08299242
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = icmp eq i8 %i.eg, 61
  br i1 %i.eh, label %bb.n, label %.loopexit.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.ei = add nuw i64 %.08299242, 1               ; 4 uses
  br i1 %i.ee, label %.critedge, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.n
  %exitcond214.not = icmp eq i64 %3, %i.ei
  br i1 %exitcond214.not, label %.loopexit.sink.split.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.us.i
  fence acquire
  %i.ej = getelementptr i8, ptr %2, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = icmp eq i8 %i.ek, 61
  br i1 %i.el, label %.loopexit.loopexit.loopexit, label %.loopexit.sink.split.i

.lr.ph.split.i:                                   ; preds = %bb.r
  %exitcond.not = icmp eq i64 %i.et, %umax212
end_hunk_1
begin_hunk_2_@sodium_bin2ip:bb.a
  %.2100109 = phi ptr [ %.4101, %bb.ak ], [ %i.c, %.split.preheader ] ; 6 uses
  %i.kl = icmp eq i32 %.266110, %.4.fr
  br i1 %i.kl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.split
  %i.km = getelementptr i8, ptr %.2100109, i64 1
  store i8 58, ptr %.2100109, align 1
  %i.kn = getelementptr i8, ptr %.2100109, i64 2
  store i8 58, ptr %i.km, align 1
  br label %bb.ak

bb.ae:                                            ; preds = %.split
  %.not72 = icmp eq i32 %.266110, 0
  %.not73 = icmp eq i32 %.266110, %i.hv
  %or.cond = select i1 %.not72, i1 true, i1 %.not73
  br i1 %or.cond, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ko = getelementptr i8, ptr %.2100109, i64 1
  store i8 58, ptr %.2100109, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3 = phi ptr [ %.2100109, %bb.ae ], [ %i.ko, %bb.af ] ; 5 uses
  %i.kp = shl nuw nsw i32 %.266110, 1
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = getelementptr i8, ptr %2, i64 %i.kq     ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1             ; 4 uses
  %i.kt = getelementptr i8, ptr %i.kr, i64 1
  %i.ku = load i8, ptr %i.kt, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.kv = zext i8 %i.ks to i32                    ; 3 uses
  %i.kw = shl nuw nsw i32 %i.kv, 8
  %i.kx = zext i8 %i.ku to i32                    ; 3 uses
  %i.ky = or disjoint i32 %i.kw, %i.kx
  %i.kz = and i32 %i.kx, 15                       ; 3 uses
  %i.la = icmp samesign ult i32 %i.kz, 10
  %i.lb = or disjoint i32 %i.kz, 48
  %i.lc = add nuw nsw i32 %i.kz, 87
  %i.ld = select i1 %i.la, i32 %i.lb, i32 %i.lc
  %i.le = trunc nuw nsw i32 %i.ld to i8
  store i8 %i.le, ptr %i.a, align 1
  %.not.i83 = icmp samesign ult i32 %i.ky, 16
  br i1 %.not.i83, label %.lr.ph.i87, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lf = lshr i32 %i.kx, 4                       ; 2 uses
  %i.lg = icmp ult i8 %i.ku, -96
  %i.lh = or disjoint i32 %i.lf, 48
  %i.li = add nuw nsw i32 %i.lf, 87
  %i.lj = select i1 %i.lg, i32 %i.lh, i32 %i.li
  %i.lk = trunc nuw nsw i32 %i.lj to i8
  store i8 %i.lk, ptr %i.ib, align 1
  %.not.i83.1 = icmp eq i8 %i.ks, 0
  br i1 %.not.i83.1, label %.lr.ph.i87, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ll = and i32 %i.kv, 15                       ; 3 uses
  %i.lm = icmp samesign ult i32 %i.ll, 10
  %i.ln = or disjoint i32 %i.ll, 48
  %i.lo = add nuw nsw i32 %i.ll, 87
  %i.lp = select i1 %i.lm, i32 %i.ln, i32 %i.lo
  %i.lq = trunc nuw nsw i32 %i.lp to i8
  store i8 %i.lq, ptr %i.ic, align 1
  %.not.i83.2 = icmp ult i8 %i.ks, 16
  br i1 %.not.i83.2, label %.lr.ph.i87, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lr = lshr i32 %i.kv, 4                       ; 2 uses
  %i.ls = icmp ult i8 %i.ks, -96
  %i.lt = or disjoint i32 %i.lr, 48
  %i.lu = add nuw nsw i32 %i.lr, 87
  %i.lv = select i1 %i.ls, i32 %i.lt, i32 %i.lu
  %i.lw = trunc nuw nsw i32 %i.lv to i8
  store i8 %i.lw, ptr %i.id, align 1
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.lx = phi i1 [ false, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %bb.aj ]
  %i.ly = phi i1 [ false, %bb.ag ], [ false, %bb.ah ], [ true, %bb.ai ], [ true, %bb.aj ]
  %i.lz = phi i1 [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ true, %bb.aj ]
  %indvars.iv.i80.lcssa = phi i64 [ 1, %bb.ag ], [ 2, %bb.ah ], [ 3, %bb.ai ], [ 4, %bb.aj ] ; 4 uses
  %i.ma = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.lcssa
  %i.mb = getelementptr i8, ptr %i.ma, i64 -1
  %i.mc = load i8, ptr %i.mb, align 1
  %i.md = getelementptr i8, ptr %.3, i64 1        ; 2 uses
  store i8 %i.mc, ptr %.3, align 1
  br i1 %i.lx, label %.lr.ph.i87.1, label %ip_write_num.exit90

.lr.ph.i87.1:                                     ; preds = %.lr.ph.i87
  %i.me = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.lcssa
  %i.mf = getelementptr i8, ptr %i.me, i64 -2
  %i.mg = load i8, ptr %i.mf, align 1
  %i.mh = getelementptr i8, ptr %.3, i64 2        ; 2 uses
  store i8 %i.mg, ptr %i.md, align 1
  br i1 %i.ly, label %.lr.ph.i87.2, label %ip_write_num.exit90

.lr.ph.i87.2:                                     ; preds = %.lr.ph.i87.1
  %i.mi = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.lcssa
  %i.mj = getelementptr i8, ptr %i.mi, i64 -3
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = getelementptr i8, ptr %.3, i64 3        ; 2 uses
  store i8 %i.mk, ptr %i.mh, align 1
  br i1 %i.lz, label %.lr.ph.i87.3, label %ip_write_num.exit90

.lr.ph.i87.3:                                     ; preds = %.lr.ph.i87.2
  %i.mm = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.lcssa
  %i.mn = getelementptr i8, ptr %i.mm, i64 -4
  %i.mo = load i8, ptr %i.mn, align 1
  %i.mp = getelementptr i8, ptr %.3, i64 4
  store i8 %i.mo, ptr %i.ml, align 1
  br label %ip_write_num.exit90

ip_write_num.exit90:                              ; preds = %.lr.ph.i87, %.lr.ph.i87.1, %.lr.ph.i87.2, %.lr.ph.i87.3
  %.lcssa290 = phi ptr [ %i.md, %.lr.ph.i87 ], [ %i.mh, %.lr.ph.i87.1 ], [ %i.ml, %.lr.ph.i87.2 ], [ %i.mp, %.lr.ph.i87.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ak

bb.ak:                                            ; preds = %ip_write_num.exit90, %bb.ad
  %.4101 = phi ptr [ %i.kn, %bb.ad ], [ %.lcssa290, %ip_write_num.exit90 ] ; 2 uses
  %.367 = phi i32 [ %i.hx, %bb.ad ], [ %.266110, %ip_write_num.exit90 ] ; 2 uses
  %i.mq = add nsw i32 %.367, 1
  %i.mr = icmp slt i32 %.367, 7
  br i1 %i.mr, label %.split, label %.split112.us, !llvm.loop !55

.split112.us:                                     ; preds = %bb.ac, %bb.ak
  %.us-phi = phi ptr [ %.4101, %bb.ak ], [ %.4101.us, %bb.ac ]
  %i.ms = ptrtoint ptr %.us-phi to i64
  %i.mt = ptrtoint ptr %i.c to i64
  %i.mu = sub i64 %i.ms, %i.mt                    ; 3 uses
  %.not = icmp ult i64 %i.mu, %1
  br i1 %.not, label %.sink.split, label %bb.al

.sink.split:                                      ; preds = %.split112.us, %bb.g
  %.sink = phi i64 [ %i.fh, %bb.g ], [ %i.mu, %.split112.us ]
  %.sink139 = phi i64 [ %i.fg, %bb.g ], [ %i.mu, %.split112.us ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 16 %i.c, i64 noundef %.sink, i1 noundef false) #16
  %i.mv = getelementptr i8, ptr %0, i64 %.sink139
  store i8 0, ptr %i.mv, align 1
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %.split112.us, %ip_write_num.exit.3, %bb.a
  %.068 = phi ptr [ null, %ip_write_num.exit.3 ], [ null, %bb.a ], [ null, %.split112.us ], [ %0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind ssp memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind ssp memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = !{!"llvm.loop.unroll.runtime.disable"}
!7 = distinct !{!7, !"LVerDomain"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !4, !5, !6}
!11 = distinct !{!11, !4, !5}
!12 = !{!8}
!13 = !{!9}
!14 = distinct !{!14, !4, !16}
!15 = distinct !{!15, !4}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4, !5, !6}
!19 = distinct !{!19, !4, !5, !6}
!20 = distinct !{!20, !4, !6, !5}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4, !5, !6}
!23 = distinct !{!23, !4, !5, !6}
!24 = distinct !{!24, !4, !6, !5}
!25 = !{!"branch_weights", i32 4, i32 12}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4, !5, !6}
!35 = distinct !{!35, !4, !5, !6}
!36 = distinct !{!36, !4, !6, !5}
!37 = distinct !{!37, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !4, !5, !6}
!41 = distinct !{!41, !4, !5, !6}
!42 = distinct !{!42, !4, !5}
!43 = distinct !{!43, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !4, !5, !6}
!47 = distinct !{!47, !4, !5, !6}
!48 = distinct !{!48, !4, !5}
!49 = distinct !{!49, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !4, !5, !6}
!53 = distinct !{!53, !4, !5, !6}
!54 = distinct !{!54, !4, !5}
!55 = distinct !{!55, !4}
!56 = !{!"branch_weights", i32 8, i32 24}
!57 = !{!38}
!58 = !{!39}
!59 = !{!44}
!60 = !{!45}
!61 = !{!50}
!62 = !{!51}
end_hunk_2
