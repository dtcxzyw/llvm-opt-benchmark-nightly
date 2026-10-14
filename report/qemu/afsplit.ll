Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/afsplit?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iovec = type { ptr, i64 }

@.str = private unnamed_addr constant [20 x i8] c"outlen == digestlen\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"../crypto/afsplit.c\00", align 1
@__PRETTY_FUNCTION__.qcrypto_afsplit_hash = private unnamed_addr constant [71 x i8] c"int qcrypto_afsplit_hash(QCryptoHashAlgo, size_t, uint8_t *, Error **)\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @qcrypto_afsplit_encode(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = tail call noalias ptr @g_malloc0(i64 noundef %1) #6 ; 13 uses
  %i.d = add i32 %2, -1                           ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %1, 4
  %min.iters.check59 = icmp ult i64 %1, 32
  %i.f = and i64 %1, 28
  %n.vec = and i64 %1, -32                        ; 4 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec63 = and i64 %1, -4                       ; 3 uses
  %cmp.n68 = icmp eq i64 %1, %n.vec63
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.044.us = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph ]
  %i.g = tail call i32 @qcrypto_random_bytes(ptr noundef %4, i64 noundef 0, ptr noundef %5) #7
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %qcrypto_afsplit_xor.exit39, label %qcrypto_afsplit_xor.exit.us

qcrypto_afsplit_xor.exit.us:                      ; preds = %.lr.ph.split.us
  %i.i = tail call fastcc i32 @qcrypto_afsplit_hash(i32 noundef %0, i64 noundef 0, ptr noundef %i.c, ptr noundef %5)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %qcrypto_afsplit_xor.exit39, label %bb.b

bb.b:                                             ; preds = %qcrypto_afsplit_xor.exit.us
  %i.k = add nuw nsw i64 %.044.us, 1              ; 2 uses
  %exitcond49.not = icmp eq i64 %i.k, %i.e
  br i1 %exitcond49.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !12

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.c
  %.044 = phi i64 [ %i.ai, %bb.c ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %i.l = mul i64 %.044, %1
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %i.l ; 4 uses
  %i.n = tail call i32 @qcrypto_random_bytes(ptr noundef %i.m, i64 noundef %1, ptr noundef %5) #7
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %qcrypto_afsplit_xor.exit39, label %iter.check

iter.check:                                       ; preds = %.lr.ph.split
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %wide.load60 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.load61 = load <16 x i8>, ptr %i.r, align 1
  %wide.load62 = load <16 x i8>, ptr %i.s, align 1
  %i.t = xor <16 x i8> %wide.load61, %wide.load
  %i.u = xor <16 x i8> %wide.load62, %wide.load60
  store <16 x i8> %i.t, ptr %i.r, align 1
  store <16 x i8> %i.u, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %qcrypto_afsplit_xor.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %index64
  %wide.load65 = load <4 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %index64 ; 2 uses
  %wide.load66 = load <4 x i8>, ptr %i.x, align 1
  %i.y = xor <4 x i8> %wide.load66, %wide.load65
  store <4 x i8> %i.y, ptr %i.x, align 1
  %index.next67 = add nuw i64 %index64, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next67, %n.vec63
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n68, label %qcrypto_afsplit_xor.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec63, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i64 [ %i.af, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %.08.i
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %.08.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = xor i8 %i.ad, %i.ab
  store i8 %i.ae, ptr %i.ac, align 1
  %i.af = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %1
  br i1 %exitcond.not.i, label %qcrypto_afsplit_xor.exit.loopexit, label %.lr.ph.i, !llvm.loop !15

qcrypto_afsplit_xor.exit.loopexit:                ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.ag = tail call fastcc i32 @qcrypto_afsplit_hash(i32 noundef %0, i64 noundef %1, ptr noundef nonnull %i.c, ptr noundef %5)
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %qcrypto_afsplit_xor.exit39, label %bb.c

bb.c:                                             ; preds = %qcrypto_afsplit_xor.exit.loopexit
  %i.ai = add nuw nsw i64 %.044, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.e
  br i1 %exitcond.not, label %iter.check84, label %.lr.ph.split, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.i35 = icmp eq i64 %1, 0
  br i1 %.not.i35, label %qcrypto_afsplit_xor.exit39, label %iter.check84

iter.check84:                                     ; preds = %bb.c, %._crit_edge
  %.pn = mul i64 %1, %i.e                         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 %.pn ; 7 uses
  %min.iters.check69 = icmp ult i64 %1, 4
  br i1 %min.iters.check69, label %.lr.ph.i36.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check84
  %i.ak = add i64 %.pn, %i.b
  %i.al = sub i64 %i.a, %i.ak
  %diff.check = icmp ugt i64 %i.al, -32
  br i1 %diff.check, label %.lr.ph.i36.preheader, label %vector.main.loop.iter.check70

vector.main.loop.iter.check70:                    ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i64 %1, 32
  br i1 %min.iters.check71, label %vec.epilog.ph88, label %vector.ph72

vector.ph72:                                      ; preds = %vector.main.loop.iter.check70
  %i.am = and i64 %1, 28
  %n.vec73 = and i64 %1, -32                      ; 4 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.ph72, %vector.body74
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next80, %vector.body74 ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %index75 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load76 = load <16 x i8>, ptr %i.an, align 1
  %wide.load77 = load <16 x i8>, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %index75 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load78 = load <16 x i8>, ptr %i.ap, align 1
  %wide.load79 = load <16 x i8>, ptr %i.aq, align 1
  %i.ar = xor <16 x i8> %wide.load78, %wide.load76
  %i.as = xor <16 x i8> %wide.load79, %wide.load77
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index75 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <16 x i8> %i.ar, ptr %i.at, align 1
  store <16 x i8> %i.as, ptr %i.au, align 1
  %index.next80 = add nuw i64 %index75, 32        ; 2 uses
  %i.av = icmp eq i64 %index.next80, %n.vec73
  br i1 %i.av, label %middle.block81, label %vector.body74, !llvm.loop !16

middle.block81:                                   ; preds = %vector.body74
  %cmp.n82 = icmp eq i64 %1, %n.vec73
  br i1 %cmp.n82, label %qcrypto_afsplit_xor.exit39, label %vec.epilog.iter.check86

vec.epilog.iter.check86:                          ; preds = %middle.block81
  %min.epilog.iters.check87 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check87, label %.lr.ph.i36.preheader, label %vec.epilog.ph88, !prof !10

vec.epilog.ph88:                                  ; preds = %vector.main.loop.iter.check70, %vec.epilog.iter.check86
  %vec.epilog.resume.val83 = phi i64 [ %n.vec73, %vec.epilog.iter.check86 ], [ 0, %vector.main.loop.iter.check70 ]
  %n.vec89 = and i64 %1, -4                       ; 3 uses
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph88
  %index91 = phi i64 [ %vec.epilog.resume.val83, %vec.epilog.ph88 ], [ %index.next94, %vec.epilog.vector.body90 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %index91
  %wide.load92 = load <4 x i8>, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 %index91
  %wide.load93 = load <4 x i8>, ptr %i.ax, align 1
  %i.ay = xor <4 x i8> %wide.load93, %wide.load92
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index91
  store <4 x i8> %i.ay, ptr %i.az, align 1
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.ba, label %vec.epilog.middle.block95, label %vec.epilog.vector.body90, !llvm.loop !17

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body90
  %cmp.n96 = icmp eq i64 %1, %n.vec89
  br i1 %cmp.n96, label %qcrypto_afsplit_xor.exit39, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %iter.check84, %vector.memcheck, %vec.epilog.iter.check86, %vec.epilog.middle.block95
  %.08.i37.ph = phi i64 [ 0, %iter.check84 ], [ 0, %vector.memcheck ], [ %n.vec73, %vec.epilog.iter.check86 ], [ %n.vec89, %vec.epilog.middle.block95 ] ; 3 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol

.lr.ph.i36.prol:                                  ; preds = %.lr.ph.i36.preheader, %.lr.ph.i36.prol
  %.08.i37.prol = phi i64 [ %i.bh, %.lr.ph.i36.prol ], [ %.08.i37.ph, %.lr.ph.i36.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i36.prol ], [ 0, %.lr.ph.i36.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %.08.i37.prol
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %.08.i37.prol
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = xor i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.08.i37.prol
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.08.i37.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol, !llvm.loop !18

.lr.ph.i36.prol.loopexit:                         ; preds = %.lr.ph.i36.prol, %.lr.ph.i36.preheader
  %.08.i37.unr = phi i64 [ %.08.i37.ph, %.lr.ph.i36.preheader ], [ %i.bh, %.lr.ph.i36.prol ]
  %i.bi = sub i64 %.08.i37.ph, %1
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %qcrypto_afsplit_xor.exit39, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36
  %.08.i37 = phi i64 [ %i.cl, %.lr.ph.i36 ], [ %.08.i37.unr, %.lr.ph.i36.prol.loopexit ] ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %.08.i37
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.08.i37
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = xor i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.08.i37
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = add nuw i64 %.08.i37, 1                 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = xor i8 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bq
  store i8 %i.bv, ptr %i.bw, align 1
  %i.bx = add nuw i64 %.08.i37, 2                 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = xor i8 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bx
  store i8 %i.cc, ptr %i.cd, align 1
  %i.ce = add nuw i64 %.08.i37, 3                 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ce
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = xor i8 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ce
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = add nuw i64 %.08.i37, 4                 ; 2 uses
  %exitcond.not.i38.3 = icmp eq i64 %i.cl, %1
  br i1 %exitcond.not.i38.3, label %qcrypto_afsplit_xor.exit39, label %.lr.ph.i36, !llvm.loop !19

qcrypto_afsplit_xor.exit39:                       ; preds = %.lr.ph.split, %qcrypto_afsplit_xor.exit.loopexit, %qcrypto_afsplit_xor.exit.us, %.lr.ph.split.us, %.lr.ph.i36.prol.loopexit, %.lr.ph.i36, %middle.block81, %vec.epilog.middle.block95, %._crit_edge
  %.033 = phi i32 [ 0, %._crit_edge ], [ -1, %qcrypto_afsplit_xor.exit.us ], [ 0, %middle.block81 ], [ 0, %.lr.ph.i36.prol.loopexit ], [ 0, %vec.epilog.middle.block95 ], [ 0, %.lr.ph.i36 ], [ -1, %.lr.ph.split.us ], [ -1, %qcrypto_afsplit_xor.exit.loopexit ], [ -1, %.lr.ph.split ]
  tail call void @g_free(ptr noundef %i.c) #7
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @qcrypto_random_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @qcrypto_afsplit_hash(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %4 = alloca [2 x %struct.iovec], align 16       ; 12 uses
  %i.d = tail call i64 @qcrypto_hash_digest_len(i32 noundef %0) #7
  %.fr39 = freeze i64 %i.d                        ; 9 uses
  %i.e = udiv i64 %1, %.fr39
  %i.f = urem i64 %1, %.fr39                      ; 2 uses
  %.not = icmp ne i64 %i.f, 0                     ; 2 uses
  %i.g = zext i1 %.not to i64
  %.032 = add i64 %i.e, %i.g                      ; 4 uses
  %.not38 = icmp eq i64 %.032, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.k = add i64 %.032, -1
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %i.l = phi i64 [ %i.v, %bb.c ], [ 0, %.lr.ph ]
  %.03037.us = phi i32 [ %i.u, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.m = call noundef i32 @llvm.bswap.i32(i32 %.03037.us)
  store i32 %i.m, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %i.c, ptr %4, align 16
  store i64 4, ptr %i.h, align 8
  %i.n = mul i64 %i.l, %.fr39
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.i, align 16
  store i64 %.fr39, ptr %i.j, align 8
  %i.p = call i32 @qcrypto_hash_bytesv(i32 noundef %0, ptr noundef nonnull %4, i64 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %3) #7
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.r = load i64, ptr %i.b, align 8
  %i.s = icmp eq i64 %i.r, %.fr39
  br i1 %i.s, label %bb.c, label %.split.us

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.o, ptr noundef nonnull align 1 %i.t, i64 noundef %.fr39, i1 noundef false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @g_free(ptr noundef nonnull %i.t) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.u = add i32 %.03037.us, 1                    ; 2 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp ugt i64 %.032, %i.v
  br i1 %i.w, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %i.x = phi i64 [ %i.ai, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %.03037 = phi i32 [ %i.ah, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.y = call noundef i32 @llvm.bswap.i32(i32 %.03037)
  store i32 %i.y, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %i.c, ptr %4, align 16
  store i64 4, ptr %i.h, align 8
  %i.z = mul i64 %i.x, %.fr39
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.z ; 2 uses
  store ptr %i.aa, ptr %i.i, align 16
  %i.ab = icmp eq i64 %i.k, %i.x
  %spec.select = select i1 %i.ab, i64 %i.f, i64 %.fr39 ; 2 uses
  store i64 %spec.select, ptr %i.j, align 8
  %i.ac = call i32 @qcrypto_hash_bytesv(i32 noundef %0, ptr noundef nonnull %4, i64 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %3) #7
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.split
  %i.ae = load i64, ptr %i.b, align 8
  %i.af = icmp eq i64 %i.ae, %.fr39
  br i1 %i.af, label %bb.e, label %.split.us

.split.us:                                        ; preds = %bb.b, %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.qcrypto_afsplit_hash) #8
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aa, ptr noundef nonnull align 1 %i.ag, i64 noundef %spec.select, i1 noundef false) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @g_free(ptr noundef nonnull %i.ag) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ah = add i32 %.03037, 1                      ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp ugt i64 %.032, %i.ai
  br i1 %i.aj, label %.lr.ph.split, label %.loopexit, !llvm.loop !20

.critedge:                                        ; preds = %.lr.ph.split.us, %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.val = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %.val) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.a, %.critedge
  %.2 = phi i32 [ -1, %.critedge ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @qcrypto_afsplit_decode(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = tail call noalias ptr @g_malloc0(i64 noundef %1) #6 ; 13 uses
  %i.d = add i32 %2, -1                           ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %qcrypto_afsplit_xor.exit.us, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %1, 4
  %min.iters.check54 = icmp ult i64 %1, 32
  %i.f = and i64 %1, 28
  %n.vec = and i64 %1, -32                        ; 4 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  %n.vec58 = and i64 %1, -4                       ; 3 uses
  %cmp.n63 = icmp eq i64 %1, %n.vec58
  br label %iter.check

qcrypto_afsplit_xor.exit.us:                      ; preds = %.lr.ph, %bb.b
  %.039.us = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph ]
  %i.g = tail call fastcc i32 @qcrypto_afsplit_hash(i32 noundef %0, i64 noundef 0, ptr noundef %i.c, ptr noundef %5)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %qcrypto_afsplit_xor.exit34, label %bb.b

bb.b:                                             ; preds = %qcrypto_afsplit_xor.exit.us
  %i.i = add nuw nsw i64 %.039.us, 1              ; 2 uses
  %exitcond44.not = icmp eq i64 %i.i, %i.e
  br i1 %exitcond44.not, label %._crit_edge, label %qcrypto_afsplit_xor.exit.us, !llvm.loop !21

iter.check:                                       ; preds = %iter.check.preheader, %bb.c
  %.039 = phi i64 [ %i.ae, %bb.c ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.j = mul i64 %.039, %1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.j ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 1
  %wide.load55 = load <16 x i8>, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %wide.load56 = load <16 x i8>, ptr %i.n, align 1
  %wide.load57 = load <16 x i8>, ptr %i.o, align 1
  %i.p = xor <16 x i8> %wide.load56, %wide.load
  %i.q = xor <16 x i8> %wide.load57, %wide.load55
  store <16 x i8> %i.p, ptr %i.n, align 1
  store <16 x i8> %i.q, ptr %i.o, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %qcrypto_afsplit_xor.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %index59
  %wide.load60 = load <4 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %index59 ; 2 uses
  %wide.load61 = load <4 x i8>, ptr %i.t, align 1
  %i.u = xor <4 x i8> %wide.load61, %wide.load60
  store <4 x i8> %i.u, ptr %i.t, align 1
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next62, %n.vec58
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n63, label %qcrypto_afsplit_xor.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %.08.i
  %i.x = load i8, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %.08.i ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = xor i8 %i.z, %i.x
  store i8 %i.aa, ptr %i.y, align 1
  %i.ab = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %1
  br i1 %exitcond.not.i, label %qcrypto_afsplit_xor.exit.loopexit, label %.lr.ph.i, !llvm.loop !24

qcrypto_afsplit_xor.exit.loopexit:                ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.ac = tail call fastcc i32 @qcrypto_afsplit_hash(i32 noundef %0, i64 noundef %1, ptr noundef nonnull %i.c, ptr noundef %5)
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %qcrypto_afsplit_xor.exit34, label %bb.c

bb.c:                                             ; preds = %qcrypto_afsplit_xor.exit.loopexit
  %i.ae = add nuw nsw i64 %.039, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.e
  br i1 %exitcond.not, label %iter.check79, label %iter.check, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.i30 = icmp eq i64 %1, 0
  br i1 %.not.i30, label %qcrypto_afsplit_xor.exit34, label %iter.check79

iter.check79:                                     ; preds = %bb.c, %._crit_edge
  %.pn = mul i64 %1, %i.e                         ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.pn ; 7 uses
  %min.iters.check64 = icmp ult i64 %1, 4
  br i1 %min.iters.check64, label %.lr.ph.i31.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check79
  %i.ag = add i64 %.pn, %i.a
  %i.ah = sub i64 %i.ag, %i.b
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.i31.preheader, label %vector.main.loop.iter.check65

vector.main.loop.iter.check65:                    ; preds = %vector.memcheck
  %min.iters.check66 = icmp ult i64 %1, 32
  br i1 %min.iters.check66, label %vec.epilog.ph83, label %vector.ph67

vector.ph67:                                      ; preds = %vector.main.loop.iter.check65
  %i.ai = and i64 %1, 28
  %n.vec68 = and i64 %1, -32                      ; 4 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.ph67, %vector.body69
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %index70 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load71 = load <16 x i8>, ptr %i.aj, align 1
  %wide.load72 = load <16 x i8>, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %index70 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load73 = load <16 x i8>, ptr %i.al, align 1
  %wide.load74 = load <16 x i8>, ptr %i.am, align 1
  %i.an = xor <16 x i8> %wide.load73, %wide.load71
  %i.ao = xor <16 x i8> %wide.load74, %wide.load72
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 %index70 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1
  store <16 x i8> %i.ao, ptr %i.aq, align 1
  %index.next75 = add nuw i64 %index70, 32        ; 2 uses
  %i.ar = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.ar, label %middle.block76, label %vector.body69, !llvm.loop !25

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %1, %n.vec68
  br i1 %cmp.n77, label %qcrypto_afsplit_xor.exit34, label %vec.epilog.iter.check81

vec.epilog.iter.check81:                          ; preds = %middle.block76
  %min.epilog.iters.check82 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check82, label %.lr.ph.i31.preheader, label %vec.epilog.ph83, !prof !10

vec.epilog.ph83:                                  ; preds = %vector.main.loop.iter.check65, %vec.epilog.iter.check81
  %vec.epilog.resume.val78 = phi i64 [ %n.vec68, %vec.epilog.iter.check81 ], [ 0, %vector.main.loop.iter.check65 ]
  %n.vec84 = and i64 %1, -4                       ; 3 uses
  br label %vec.epilog.vector.body85

vec.epilog.vector.body85:                         ; preds = %vec.epilog.vector.body85, %vec.epilog.ph83
  %index86 = phi i64 [ %vec.epilog.resume.val78, %vec.epilog.ph83 ], [ %index.next89, %vec.epilog.vector.body85 ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %index86
  %wide.load87 = load <4 x i8>, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %index86
  %wide.load88 = load <4 x i8>, ptr %i.at, align 1
  %i.au = xor <4 x i8> %wide.load88, %wide.load87
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %index86
  store <4 x i8> %i.au, ptr %i.av, align 1
  %index.next89 = add nuw i64 %index86, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.aw, label %vec.epilog.middle.block90, label %vec.epilog.vector.body85, !llvm.loop !26

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body85
  %cmp.n91 = icmp eq i64 %1, %n.vec84
  br i1 %cmp.n91, label %qcrypto_afsplit_xor.exit34, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %iter.check79, %vector.memcheck, %vec.epilog.iter.check81, %vec.epilog.middle.block90
  %.08.i32.ph = phi i64 [ 0, %iter.check79 ], [ 0, %vector.memcheck ], [ %n.vec68, %vec.epilog.iter.check81 ], [ %n.vec84, %vec.epilog.middle.block90 ] ; 3 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol

.lr.ph.i31.prol:                                  ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31.prol
  %.08.i32.prol = phi i64 [ %i.bd, %.lr.ph.i31.prol ], [ %.08.i32.ph, %.lr.ph.i31.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i31.prol ], [ 0, %.lr.ph.i31.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 %.08.i32.prol
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %.08.i32.prol
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = xor i8 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.08.i32.prol
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add nuw i64 %.08.i32.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol, !llvm.loop !27

.lr.ph.i31.prol.loopexit:                         ; preds = %.lr.ph.i31.prol, %.lr.ph.i31.preheader
  %.08.i32.unr = phi i64 [ %.08.i32.ph, %.lr.ph.i31.preheader ], [ %i.bd, %.lr.ph.i31.prol ]
  %i.be = sub i64 %.08.i32.ph, %1
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %qcrypto_afsplit_xor.exit34, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31
  %.08.i32 = phi i64 [ %i.ch, %.lr.ph.i31 ], [ %.08.i32.unr, %.lr.ph.i31.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %.08.i32
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %.08.i32
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = xor i8 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %.08.i32
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = add nuw i64 %.08.i32, 1                 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bm
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = xor i8 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 %i.bm
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = add nuw i64 %.08.i32, 2                 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bt
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = xor i8 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = add nuw i64 %.08.i32, 3                 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ca
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = xor i8 %i.ce, %i.cc
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ca
  store i8 %i.cf, ptr %i.cg, align 1
  %i.ch = add nuw i64 %.08.i32, 4                 ; 2 uses
  %exitcond.not.i33.3 = icmp eq i64 %i.ch, %1
  br i1 %exitcond.not.i33.3, label %qcrypto_afsplit_xor.exit34, label %.lr.ph.i31, !llvm.loop !28

qcrypto_afsplit_xor.exit34:                       ; preds = %qcrypto_afsplit_xor.exit.loopexit, %qcrypto_afsplit_xor.exit.us, %.lr.ph.i31.prol.loopexit, %.lr.ph.i31, %middle.block76, %vec.epilog.middle.block90, %._crit_edge
  %.028 = phi i32 [ -1, %qcrypto_afsplit_xor.exit.us ], [ 0, %._crit_edge ], [ 0, %middle.block76 ], [ 0, %.lr.ph.i31.prol.loopexit ], [ 0, %vec.epilog.middle.block90 ], [ 0, %.lr.ph.i31 ], [ -1, %qcrypto_afsplit_xor.exit.loopexit ]
  tail call void @g_free(ptr noundef %i.c) #7
  ret i32 %.028
}

declare void @g_free(ptr noundef) local_unnamed_addr #3

declare i64 @qcrypto_hash_digest_len(i32 noundef) local_unnamed_addr #3

declare i32 @qcrypto_hash_bytesv(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", i32 4, i32 28}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7, !8, !9}
!14 = distinct !{!14, !7, !8, !9}
!15 = distinct !{!15, !7, !9, !8}
!16 = distinct !{!16, !7, !8, !9}
!17 = distinct !{!17, !7, !8, !9}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !7, !8}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7, !8, !9}
!23 = distinct !{!23, !7, !8, !9}
!24 = distinct !{!24, !7, !9, !8}
!25 = distinct !{!25, !7, !8, !9}
!26 = distinct !{!26, !7, !8, !9}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !7, !8}
end_hunk_0
