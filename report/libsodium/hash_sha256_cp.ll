Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/hash_sha256_cp?download=true
inline.NumInlined: 167
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_hash_sha256_state = type { [8 x i32], i64, [64 x i8] }

@crypto_hash_sha256_init.sha256_initial_state = internal constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@Krnd = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@PAD = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define dso_local noundef i32 @crypto_hash_sha256_init(ptr noundef nonnull initializes((32, 40)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @crypto_hash_sha256_init.sha256_initial_state, i64 noundef 32, i1 noundef false) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha256_update(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.c = alloca [72 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 2 uses
  %i.h = and i64 %i.g, 63                         ; 7 uses
  %i.i = shl i64 %2, 3
  %i.j = add i64 %i.f, %i.i
  store i64 %i.j, ptr %i.e, align 8
  %i.k = sub nuw nsw i64 64, %i.h                 ; 9 uses
  %i.l = icmp ult i64 %2, %i.k
  %i.m = getelementptr i8, ptr %0, i64 40         ; 9 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.h     ; 22 uses
  br i1 %i.l, label %iter.check114, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp samesign ugt i64 %i.h, 60
  br i1 %min.iters.check, label %.preheader47.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.o = add i64 %i.h, %i.b
  %i.p = sub i64 %i.o, %i.a
  %i.q = add i64 %i.p, 39
  %diff.check = icmp ult i64 %i.q, 31
  br i1 %diff.check, label %.preheader47.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check63 = icmp samesign ugt i64 %i.h, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.k, 28
  %n.vec = and i64 %i.k, 96                       ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load64 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr i8, ptr %i.n, i64 16
  store <16 x i8> %wide.load, ptr %i.n, align 1
  store <16 x i8> %wide.load64, ptr %i.t, align 1
  %i.u = icmp eq i64 %n.vec, 32
  br i1 %i.u, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.v = getelementptr i8, ptr %1, i64 32
  %i.w = getelementptr i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.v, align 1
  %wide.load64.1 = load <16 x i8>, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %i.n, i64 32
  %i.y = getelementptr i8, ptr %i.n, i64 48
  store <16 x i8> %wide.load.1, ptr %i.x, align 1
  store <16 x i8> %wide.load64.1, ptr %i.y, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit127, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.preheader47.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.k, 124                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr i8, ptr %1, i64 %index66
  %wide.load67 = load <4 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %i.n, i64 %index66
  store <4 x i8> %wide.load67, ptr %i.aa, align 1
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.k, %n.vec65
  br i1 %cmp.n69, label %.loopexit127, label %.preheader47.preheader

.preheader47.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.148.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ] ; 3 uses
  %i.ac = sub nsw i64 0, %i.g
  %i.ad = add nuw nsw i64 %.148.ph, %i.h
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader47.prol.loopexit, label %.preheader47.prol

.preheader47.prol:                                ; preds = %.preheader47.preheader, %.preheader47.prol
  %.148.prol = phi i64 [ %i.ah, %.preheader47.prol ], [ %.148.ph, %.preheader47.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader47.prol ], [ 0, %.preheader47.preheader ]
  %i.ae = getelementptr i8, ptr %1, i64 %.148.prol
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr i8, ptr %i.n, i64 %.148.prol
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = add nuw nsw i64 %.148.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader47.prol.loopexit, label %.preheader47.prol, !llvm.loop !5

.preheader47.prol.loopexit:                       ; preds = %.preheader47.prol, %.preheader47.preheader
  %.148.unr = phi i64 [ %.148.ph, %.preheader47.preheader ], [ %i.ah, %.preheader47.prol ]
  %i.ai = add nsw i64 %i.ad, -61
  %i.aj = icmp ult i64 %i.ai, 3
  br i1 %i.aj, label %.loopexit127, label %.preheader47

iter.check114:                                    ; preds = %bb.b
  %min.iters.check101 = icmp ult i64 %2, 4
  br i1 %min.iters.check101, label %.preheader.preheader, label %vector.memcheck99

vector.memcheck99:                                ; preds = %iter.check114
  %i.ak = add i64 %i.h, %i.b
  %i.al = sub i64 %i.ak, %i.a
  %i.am = add i64 %i.al, 39
  %diff.check100 = icmp ult i64 %i.am, 15
  br i1 %diff.check100, label %.preheader.preheader, label %vector.main.loop.iter.check102

vector.main.loop.iter.check102:                   ; preds = %vector.memcheck99
  %min.iters.check103 = icmp ult i64 %2, 16
  br i1 %min.iters.check103, label %vec.epilog.ph118, label %vector.ph104

vector.ph104:                                     ; preds = %vector.main.loop.iter.check102
  %i.an = and i64 %2, 12
  %n.vec105 = and i64 %2, -16                     ; 5 uses
  %i.ao = getelementptr i8, ptr %1, i64 8
  %wide.load108 = load <8 x i8>, ptr %1, align 1
  %wide.load109 = load <8 x i8>, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %i.n, i64 8
  store <8 x i8> %wide.load108, ptr %i.n, align 1
  store <8 x i8> %wide.load109, ptr %i.ap, align 1
  %i.aq = icmp eq i64 %n.vec105, 16
  br i1 %i.aq, label %middle.block111, label %vector.body106.1

vector.body106.1:                                 ; preds = %vector.ph104
  %i.ar = getelementptr i8, ptr %1, i64 16
  %i.as = getelementptr i8, ptr %1, i64 24
  %wide.load108.1 = load <8 x i8>, ptr %i.ar, align 1
  %wide.load109.1 = load <8 x i8>, ptr %i.as, align 1
  %i.at = getelementptr i8, ptr %i.n, i64 16
  %i.au = getelementptr i8, ptr %i.n, i64 24
  store <8 x i8> %wide.load108.1, ptr %i.at, align 1
  store <8 x i8> %wide.load109.1, ptr %i.au, align 1
  %i.av = icmp eq i64 %n.vec105, 32
  br i1 %i.av, label %middle.block111, label %vector.body106.2

vector.body106.2:                                 ; preds = %vector.body106.1
  %i.aw = getelementptr i8, ptr %1, i64 32
  %i.ax = getelementptr i8, ptr %1, i64 40
  %wide.load108.2 = load <8 x i8>, ptr %i.aw, align 1
  %wide.load109.2 = load <8 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %i.n, i64 32
  %i.az = getelementptr i8, ptr %i.n, i64 40
  store <8 x i8> %wide.load108.2, ptr %i.ay, align 1
  store <8 x i8> %wide.load109.2, ptr %i.az, align 1
  br label %middle.block111

middle.block111:                                  ; preds = %vector.body106.2, %vector.body106.1, %vector.ph104
  %cmp.n112 = icmp eq i64 %2, %n.vec105
  br i1 %cmp.n112, label %.loopexit, label %vec.epilog.iter.check116

vec.epilog.iter.check116:                         ; preds = %middle.block111
  %min.epilog.iters.check117 = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check117, label %.preheader.preheader, label %vec.epilog.ph118, !prof !20

vec.epilog.ph118:                                 ; preds = %vector.main.loop.iter.check102, %vec.epilog.iter.check116
  %vec.epilog.resume.val113 = phi i64 [ %n.vec105, %vec.epilog.iter.check116 ], [ 0, %vector.main.loop.iter.check102 ]
  %n.vec119 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body120

vec.epilog.vector.body120:                        ; preds = %vec.epilog.vector.body120, %vec.epilog.ph118
  %index121 = phi i64 [ %vec.epilog.resume.val113, %vec.epilog.ph118 ], [ %index.next123, %vec.epilog.vector.body120 ] ; 3 uses
  %i.ba = getelementptr i8, ptr %1, i64 %index121
  %wide.load122 = load <4 x i8>, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %i.n, i64 %index121
  store <4 x i8> %wide.load122, ptr %i.bb, align 1
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next123, %n.vec119
  br i1 %i.bc, label %vec.epilog.middle.block124, label %vec.epilog.vector.body120, !llvm.loop !6

vec.epilog.middle.block124:                       ; preds = %vec.epilog.vector.body120
  %cmp.n125 = icmp eq i64 %2, %n.vec119
  br i1 %cmp.n125, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check114, %vector.memcheck99, %vec.epilog.iter.check116, %vec.epilog.middle.block124
  %.054.ph = phi i64 [ 0, %iter.check114 ], [ 0, %vector.memcheck99 ], [ %n.vec105, %vec.epilog.iter.check116 ], [ %n.vec119, %vec.epilog.middle.block124 ] ; 3 uses
  %xtraiter132 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.054.prol = phi i64 [ %i.bg, %.preheader.prol ], [ %.054.ph, %.preheader.preheader ] ; 3 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.bd = getelementptr i8, ptr %1, i64 %.054.prol
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = getelementptr i8, ptr %i.n, i64 %.054.prol
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = add nuw nsw i64 %.054.prol, 1           ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !7

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.054.unr = phi i64 [ %.054.ph, %.preheader.preheader ], [ %i.bg, %.preheader.prol ]
  %i.bh = sub i64 %.054.ph, %2
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.054 = phi i64 [ %i.by, %.preheader ], [ %.054.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr i8, ptr %1, i64 %.054
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr i8, ptr %i.n, i64 %.054
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = add nuw nsw i64 %.054, 1                ; 2 uses
  %i.bn = getelementptr i8, ptr %1, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr i8, ptr %i.n, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = add nuw nsw i64 %.054, 2                ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr i8, ptr %i.n, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = add nuw nsw i64 %.054, 3                ; 2 uses
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr i8, ptr %i.n, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = add nuw nsw i64 %.054, 4                ; 2 uses
  %exitcond57.not.3 = icmp eq i64 %i.by, %2
  br i1 %exitcond57.not.3, label %.loopexit, label %.preheader, !llvm.loop !8

.preheader47:                                     ; preds = %.preheader47.prol.loopexit, %.preheader47
  %.148 = phi i64 [ %i.co, %.preheader47 ], [ %.148.unr, %.preheader47.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr i8, ptr %1, i64 %.148
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr i8, ptr %i.n, i64 %.148
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = add nuw nsw i64 %.148, 1                ; 2 uses
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr i8, ptr %i.n, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = add nuw nsw i64 %.148, 2                ; 2 uses
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr i8, ptr %i.n, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nuw nsw i64 %.148, 3                ; 2 uses
  %i.cl = getelementptr i8, ptr %1, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr i8, ptr %i.n, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = add nuw nsw i64 %.148, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.co, %i.k
  br i1 %exitcond.not.3, label %.loopexit127, label %.preheader47, !llvm.loop !9

.loopexit127:                                     ; preds = %.preheader47.prol.loopexit, %.preheader47, %vec.epilog.middle.block, %middle.block
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  call fastcc void @SHA256_Transform(ptr noundef %0, ptr noundef %i.m, ptr noundef %i.c, ptr noundef nonnull %i.cp)
  %i.cq = getelementptr i8, ptr %1, i64 %i.k      ; 2 uses
  %i.cr = sub nuw i64 %2, %i.k                    ; 3 uses
  %i.cs = icmp ugt i64 %i.cr, 63
  br i1 %i.cs, label %.lr.ph, label %.preheader46

.preheader46:                                     ; preds = %.lr.ph, %.loopexit127
  %.042.lcssa = phi ptr [ %i.cq, %.loopexit127 ], [ %i.dk, %.lr.ph ] ; 8 uses
  %.041.lcssa = phi i64 [ %i.cr, %.loopexit127 ], [ %i.dl, %.lr.ph ] ; 11 uses
  %.042.lcssa71 = ptrtoaddr ptr %.042.lcssa to i64
  %.not = icmp eq i64 %.041.lcssa, 0
  br i1 %.not, label %._crit_edge, label %iter.check86

iter.check86:                                     ; preds = %.preheader46
  %min.iters.check73 = icmp samesign ult i64 %.041.lcssa, 4
  br i1 %min.iters.check73, label %.lr.ph53.preheader, label %vector.memcheck70

vector.memcheck70:                                ; preds = %iter.check86
  %i.ct = sub i64 %i.b, %.042.lcssa71
  %i.cu = add i64 %i.ct, 39
  %diff.check72 = icmp ult i64 %i.cu, 31
  br i1 %diff.check72, label %.lr.ph53.preheader, label %vector.main.loop.iter.check74

vector.main.loop.iter.check74:                    ; preds = %vector.memcheck70
  %min.iters.check75 = icmp samesign ult i64 %.041.lcssa, 32
  br i1 %min.iters.check75, label %vec.epilog.ph90, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check74
  %i.cv = and i64 %.041.lcssa, 28
  %n.vec77 = and i64 %.041.lcssa, 32              ; 4 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.ph76, %vector.body78
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next82, %vector.body78 ] ; 3 uses
  %i.cw = getelementptr i8, ptr %.042.lcssa, i64 %index79 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %wide.load80 = load <16 x i8>, ptr %i.cw, align 1
  %wide.load81 = load <16 x i8>, ptr %i.cx, align 1
  %i.cy = getelementptr i8, ptr %i.m, i64 %index79 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  store <16 x i8> %wide.load80, ptr %i.cy, align 1
  store <16 x i8> %wide.load81, ptr %i.cz, align 1
  %index.next82 = add nuw i64 %index79, 32        ; 2 uses
  %i.da = icmp eq i64 %index.next82, %n.vec77
  br i1 %i.da, label %middle.block83, label %vector.body78, !llvm.loop !10

middle.block83:                                   ; preds = %vector.body78
  %cmp.n84 = icmp eq i64 %.041.lcssa, %n.vec77
  br i1 %cmp.n84, label %._crit_edge, label %vec.epilog.iter.check88

vec.epilog.iter.check88:                          ; preds = %middle.block83
  %min.epilog.iters.check89 = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check89, label %.lr.ph53.preheader, label %vec.epilog.ph90, !prof !15

vec.epilog.ph90:                                  ; preds = %vector.main.loop.iter.check74, %vec.epilog.iter.check88
  %vec.epilog.resume.val85 = phi i64 [ %n.vec77, %vec.epilog.iter.check88 ], [ 0, %vector.main.loop.iter.check74 ]
  %n.vec91 = and i64 %.041.lcssa, 60              ; 3 uses
  br label %vec.epilog.vector.body92

vec.epilog.vector.body92:                         ; preds = %vec.epilog.vector.body92, %vec.epilog.ph90
  %index93 = phi i64 [ %vec.epilog.resume.val85, %vec.epilog.ph90 ], [ %index.next95, %vec.epilog.vector.body92 ] ; 3 uses
  %i.db = getelementptr i8, ptr %.042.lcssa, i64 %index93
  %wide.load94 = load <4 x i8>, ptr %i.db, align 1
  %i.dc = getelementptr i8, ptr %i.m, i64 %index93
  store <4 x i8> %wide.load94, ptr %i.dc, align 1
  %index.next95 = add nuw i64 %index93, 4         ; 2 uses
  %i.dd = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.dd, label %vec.epilog.middle.block96, label %vec.epilog.vector.body92, !llvm.loop !11

vec.epilog.middle.block96:                        ; preds = %vec.epilog.vector.body92
  %cmp.n97 = icmp eq i64 %.041.lcssa, %n.vec91
  br i1 %cmp.n97, label %._crit_edge, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %iter.check86, %vector.memcheck70, %vec.epilog.iter.check88, %vec.epilog.middle.block96
  %.252.ph = phi i64 [ 0, %iter.check86 ], [ 0, %vector.memcheck70 ], [ %n.vec77, %vec.epilog.iter.check88 ], [ %n.vec91, %vec.epilog.middle.block96 ] ; 3 uses
  %xtraiter129 = and i64 %.041.lcssa, 3           ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph53.prol.loopexit, label %.lr.ph53.prol

.lr.ph53.prol:                                    ; preds = %.lr.ph53.preheader, %.lr.ph53.prol
  %.252.prol = phi i64 [ %i.dh, %.lr.ph53.prol ], [ %.252.ph, %.lr.ph53.preheader ] ; 3 uses
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph53.prol ], [ 0, %.lr.ph53.preheader ]
  %i.de = getelementptr i8, ptr %.042.lcssa, i64 %.252.prol
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = getelementptr i8, ptr %i.m, i64 %.252.prol
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = add nuw nsw i64 %.252.prol, 1           ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph53.prol.loopexit, label %.lr.ph53.prol, !llvm.loop !12

.lr.ph53.prol.loopexit:                           ; preds = %.lr.ph53.prol, %.lr.ph53.preheader
  %.252.unr = phi i64 [ %.252.ph, %.lr.ph53.preheader ], [ %i.dh, %.lr.ph53.prol ]
  %i.di = sub nsw i64 %.252.ph, %.041.lcssa
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %._crit_edge, label %.lr.ph53

.lr.ph:                                           ; preds = %.loopexit127, %.lr.ph
  %.04150 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cr, %.loopexit127 ]
  %.04249 = phi ptr [ %i.dk, %.lr.ph ], [ %i.cq, %.loopexit127 ] ; 2 uses
  call fastcc void @SHA256_Transform(ptr noundef %0, ptr noundef %.04249, ptr noundef %i.c, ptr noundef nonnull %i.cp)
  %i.dk = getelementptr i8, ptr %.04249, i64 64   ; 2 uses
  %i.dl = add i64 %.04150, -64                    ; 3 uses
  %i.dm = icmp ugt i64 %i.dl, 63
  br i1 %i.dm, label %.lr.ph, label %.preheader46, !llvm.loop !13

.lr.ph53:                                         ; preds = %.lr.ph53.prol.loopexit, %.lr.ph53
  %.252 = phi i64 [ %i.ec, %.lr.ph53 ], [ %.252.unr, %.lr.ph53.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr i8, ptr %.042.lcssa, i64 %.252
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr i8, ptr %i.m, i64 %.252
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = add nuw nsw i64 %.252, 1                ; 2 uses
  %i.dr = getelementptr i8, ptr %.042.lcssa, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = getelementptr i8, ptr %i.m, i64 %i.dq
  store i8 %i.ds, ptr %i.dt, align 1
  %i.du = add nuw nsw i64 %.252, 2                ; 2 uses
  %i.dv = getelementptr i8, ptr %.042.lcssa, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = getelementptr i8, ptr %i.m, i64 %i.du
  store i8 %i.dw, ptr %i.dx, align 1
  %i.dy = add nuw nsw i64 %.252, 3                ; 2 uses
  %i.dz = getelementptr i8, ptr %.042.lcssa, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = getelementptr i8, ptr %i.m, i64 %i.dy
  store i8 %i.ea, ptr %i.eb, align 1
  %i.ec = add nuw nsw i64 %.252, 4                ; 2 uses
  %exitcond56.not.3 = icmp eq i64 %i.ec, %.041.lcssa
  br i1 %exitcond56.not.3, label %._crit_edge, label %.lr.ph53, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph53.prol.loopexit, %.lr.ph53, %middle.block83, %vec.epilog.middle.block96, %.preheader46
  call void @sodium_memzero(ptr noundef nonnull %i.c, i64 noundef 288) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block111, %vec.epilog.middle.block124, %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal fastcc void @SHA256_Transform(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((0, 64)) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = or disjoint i32 %i.g, %i.c
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 16
  %i.m = or disjoint i32 %i.h, %i.l
  %i.n = load i8, ptr %1, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw i32 %i.o, 24
  %i.q = or disjoint i32 %i.m, %i.p
  store i32 %i.q, ptr %2, align 4
  %i.r = getelementptr i8, ptr %1, i64 4
  %i.s = getelementptr i8, ptr %1, i64 7
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr i8, ptr %1, i64 6
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = or disjoint i32 %i.y, %i.u
  %i.aa = getelementptr i8, ptr %1, i64 5
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = or disjoint i32 %i.z, %i.ad
  %i.af = load i8, ptr %i.r, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw i32 %i.ag, 24
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %2, i64 4
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = getelementptr i8, ptr %1, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %1, i64 10
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ar, %i.an
  %i.at = getelementptr i8, ptr %1, i64 9
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = or disjoint i32 %i.as, %i.aw
  %i.ay = load i8, ptr %i.ak, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw i32 %i.az, 24
  %i.bb = or disjoint i32 %i.ax, %i.ba
  %i.bc = getelementptr i8, ptr %2, i64 8
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %1, i64 12
  %i.be = getelementptr i8, ptr %1, i64 15
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr i8, ptr %1, i64 14
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = or disjoint i32 %i.bk, %i.bg
  %i.bm = getelementptr i8, ptr %1, i64 13
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 16
  %i.bq = or disjoint i32 %i.bl, %i.bp
  %i.br = load i8, ptr %i.bd, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 24
  %i.bu = or disjoint i32 %i.bq, %i.bt
  %i.bv = getelementptr i8, ptr %2, i64 12
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr i8, ptr %1, i64 16
  %i.bx = getelementptr i8, ptr %1, i64 19
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = getelementptr i8, ptr %1, i64 18
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = or disjoint i32 %i.cd, %i.bz
  %i.cf = getelementptr i8, ptr %1, i64 17
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 16
  %i.cj = or disjoint i32 %i.ce, %i.ci
  %i.ck = load i8, ptr %i.bw, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw i32 %i.cl, 24
  %i.cn = or disjoint i32 %i.cj, %i.cm
  %i.co = getelementptr i8, ptr %2, i64 16
  store i32 %i.cn, ptr %i.co, align 4
  %i.cp = getelementptr i8, ptr %1, i64 20
  %i.cq = getelementptr i8, ptr %1, i64 23
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32
  %i.ct = getelementptr i8, ptr %1, i64 22
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = or disjoint i32 %i.cw, %i.cs
  %i.cy = getelementptr i8, ptr %1, i64 21
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 16
  %i.dc = or disjoint i32 %i.cx, %i.db
  %i.dd = load i8, ptr %i.cp, align 1
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw i32 %i.de, 24
  %i.dg = or disjoint i32 %i.dc, %i.df
  %i.dh = getelementptr i8, ptr %2, i64 20
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr i8, ptr %1, i64 24
  %i.dj = getelementptr i8, ptr %1, i64 27
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr i8, ptr %1, i64 26
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = or disjoint i32 %i.dp, %i.dl
  %i.dr = getelementptr i8, ptr %1, i64 25
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 16
  %i.dv = or disjoint i32 %i.dq, %i.du
  %i.dw = load i8, ptr %i.di, align 1
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw i32 %i.dx, 24
  %i.dz = or disjoint i32 %i.dv, %i.dy
  %i.ea = getelementptr i8, ptr %2, i64 24
  store i32 %i.dz, ptr %i.ea, align 4
  %i.eb = getelementptr i8, ptr %1, i64 28
  %i.ec = getelementptr i8, ptr %1, i64 31
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i32
  %i.ef = getelementptr i8, ptr %1, i64 30
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 8
  %i.ej = or disjoint i32 %i.ei, %i.ee
  %i.ek = getelementptr i8, ptr %1, i64 29
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 16
  %i.eo = or disjoint i32 %i.ej, %i.en
  %i.ep = load i8, ptr %i.eb, align 1
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw i32 %i.eq, 24
  %i.es = or disjoint i32 %i.eo, %i.er
  %i.et = getelementptr i8, ptr %2, i64 28
  store i32 %i.es, ptr %i.et, align 4
  %i.eu = getelementptr i8, ptr %1, i64 32
  %i.ev = getelementptr i8, ptr %1, i64 35
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr i8, ptr %1, i64 34
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i32
  %i.fb = shl nuw nsw i32 %i.fa, 8
  %i.fc = or disjoint i32 %i.fb, %i.ex
  %i.fd = getelementptr i8, ptr %1, i64 33
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 16
  %i.fh = or disjoint i32 %i.fc, %i.fg
  %i.fi = load i8, ptr %i.eu, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 24
  %i.fl = or disjoint i32 %i.fh, %i.fk
  %i.fm = getelementptr i8, ptr %2, i64 32
  store i32 %i.fl, ptr %i.fm, align 4
  %i.fn = getelementptr i8, ptr %1, i64 36
  %i.fo = getelementptr i8, ptr %1, i64 39
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr i8, ptr %1, i64 38
  %i.fs = load i8, ptr %i.fr, align 1
end_hunk_0
begin_hunk_1_@crypto_hash_sha256_final:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call fastcc void @SHA256_Transform(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 noundef 0, i64 noundef 56, i1 noundef false) #6
  br label %SHA256_Pad.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = zext nneg i32 %i.f to i64
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep32.i = getelementptr i8, ptr %i.o, i64 40
  %narrow.i = sub nuw nsw i32 56, %i.f
  %i.p = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep32.i, ptr nonnull align 16 @PAD, i64 %i.p, i1 false)
  br label %SHA256_Pad.exit

SHA256_Pad.exit:                                  ; preds = %.preheader28.i, %.lr.ph.i
  %i.q = getelementptr i8, ptr %0, i64 40
  %i.r = getelementptr i8, ptr %0, i64 96
  %i.s = load <8 x i8>, ptr %i.b, align 8
  %i.t = shufflevector <8 x i8> %i.s, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call fastcc void @SHA256_Transform(ptr noundef nonnull %0, ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u)
  %i.v = load i32, ptr %0, align 8                ; 4 uses
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr i8, ptr %1, i64 3
  store i8 %i.w, ptr %i.x, align 1
  %i.y = lshr i32 %i.v, 8
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr i8, ptr %1, i64 2
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = lshr i32 %i.v, 16
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr i8, ptr %1, i64 1
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = lshr i32 %i.v, 24
  %i.af = trunc nuw i32 %i.ae to i8
  store i8 %i.af, ptr %1, align 1
  %i.ag = getelementptr i8, ptr %1, i64 4
  %i.ah = getelementptr i8, ptr %0, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 4 uses
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr i8, ptr %1, i64 7
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = lshr i32 %i.ai, 8
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr i8, ptr %1, i64 6
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = lshr i32 %i.ai, 16
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr i8, ptr %1, i64 5
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = lshr i32 %i.ai, 24
  %i.as = trunc nuw i32 %i.ar to i8
  store i8 %i.as, ptr %i.ag, align 1
  %i.at = getelementptr i8, ptr %1, i64 8
  %i.au = getelementptr i8, ptr %0, i64 8
  %i.av = load i32, ptr %i.au, align 8            ; 4 uses
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr i8, ptr %1, i64 11
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = lshr i32 %i.av, 8
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr i8, ptr %1, i64 10
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = lshr i32 %i.av, 16
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr i8, ptr %1, i64 9
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = lshr i32 %i.av, 24
  %i.bf = trunc nuw i32 %i.be to i8
  store i8 %i.bf, ptr %i.at, align 1
  %i.bg = getelementptr i8, ptr %1, i64 12
  %i.bh = getelementptr i8, ptr %0, i64 12
  %i.bi = load i32, ptr %i.bh, align 4            ; 4 uses
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr i8, ptr %1, i64 15
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = lshr i32 %i.bi, 8
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr i8, ptr %1, i64 14
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = lshr i32 %i.bi, 16
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr i8, ptr %1, i64 13
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = lshr i32 %i.bi, 24
  %i.bs = trunc nuw i32 %i.br to i8
  store i8 %i.bs, ptr %i.bg, align 1
  %i.bt = getelementptr i8, ptr %1, i64 16
  %i.bu = getelementptr i8, ptr %0, i64 16
  %i.bv = load i32, ptr %i.bu, align 8            ; 4 uses
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr i8, ptr %1, i64 19
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = lshr i32 %i.bv, 8
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr i8, ptr %1, i64 18
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = lshr i32 %i.bv, 16
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr i8, ptr %1, i64 17
  store i8 %i.cc, ptr %i.cd, align 1
  %i.ce = lshr i32 %i.bv, 24
  %i.cf = trunc nuw i32 %i.ce to i8
  store i8 %i.cf, ptr %i.bt, align 1
  %i.cg = getelementptr i8, ptr %1, i64 20
  %i.ch = getelementptr i8, ptr %0, i64 20
  %i.ci = load i32, ptr %i.ch, align 4            ; 4 uses
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr i8, ptr %1, i64 23
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = lshr i32 %i.ci, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr i8, ptr %1, i64 22
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = lshr i32 %i.ci, 16
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr i8, ptr %1, i64 21
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = lshr i32 %i.ci, 24
  %i.cs = trunc nuw i32 %i.cr to i8
  store i8 %i.cs, ptr %i.cg, align 1
  %i.ct = getelementptr i8, ptr %1, i64 24
  %i.cu = getelementptr i8, ptr %0, i64 24
  %i.cv = load i32, ptr %i.cu, align 8            ; 4 uses
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr i8, ptr %1, i64 27
  store i8 %i.cw, ptr %i.cx, align 1
  %i.cy = lshr i32 %i.cv, 8
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr i8, ptr %1, i64 26
  store i8 %i.cz, ptr %i.da, align 1
  %i.db = lshr i32 %i.cv, 16
  %i.dc = trunc i32 %i.db to i8
  %i.dd = getelementptr i8, ptr %1, i64 25
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = lshr i32 %i.cv, 24
  %i.df = trunc nuw i32 %i.de to i8
  store i8 %i.df, ptr %i.ct, align 1
  %i.dg = getelementptr i8, ptr %1, i64 28
  %i.dh = getelementptr i8, ptr %0, i64 28
  %i.di = load i32, ptr %i.dh, align 4            ; 4 uses
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr i8, ptr %1, i64 31
  store i8 %i.dj, ptr %i.dk, align 1
  %i.dl = lshr i32 %i.di, 8
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr i8, ptr %1, i64 30
  store i8 %i.dm, ptr %i.dn, align 1
  %i.do = lshr i32 %i.di, 16
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr i8, ptr %1, i64 29
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = lshr i32 %i.di, 24
  %i.ds = trunc nuw i32 %i.dr to i8
  store i8 %i.ds, ptr %i.dg, align 1
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 288) #6
  call void @sodium_memzero(ptr noundef nonnull %0, i64 noundef 104) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha256(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.crypto_hash_sha256_state, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) @crypto_hash_sha256_init.sha256_initial_state, i64 noundef 32, i1 noundef false) #6
  %i.b = call i32 @crypto_hash_sha256_update(ptr noundef %3, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.c = call i32 @crypto_hash_sha256_final(ptr noundef %3, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !16, !17, !18}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !16, !17, !18}
!7 = distinct !{!7, !19}
!8 = distinct !{!8, !16, !17}
!9 = distinct !{!9, !16, !17}
!10 = distinct !{!10, !16, !17, !18}
!11 = distinct !{!11, !16, !17, !18}
!12 = distinct !{!12, !19}
!13 = distinct !{!13, !16}
!14 = distinct !{!14, !16, !17}
!15 = !{!"branch_weights", i32 4, i32 28}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
end_hunk_1
