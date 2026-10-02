Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/TarIn?download=true
inline.NumInlined: 58
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CStringBase = type { ptr, i32, i32 }

$_ZN11CStringBaseIcEC2Ev = comdat any

$_ZN11CStringBaseIcEaSERKS0_ = comdat any

$_ZNK8NArchive4NTar5CItem7IsMagicEv = comdat any

$_ZplIcE11CStringBaseIT_ERKS2_S4_ = comdat any

$_ZN11CStringBaseIcEC2Ec = comdat any

$_ZN11CStringBaseIcEpLERKS0_ = comdat any

@_ZN8NArchive4NTar11NFileHeader9kLongLinkE = external local_unnamed_addr global ptr, align 8
@_ZN8NArchive4NTar11NFileHeader10kLongLink2E = external local_unnamed_addr global ptr, align 8
@_ZN8NArchive4NTar11NFileHeader15kCheckSumBlanksE = external local_unnamed_addr global ptr, align 8
@_ZN8NArchive4NTar11NFileHeader6NMagic6kUsTarE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE(ptr noundef %0, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(124) initializes((120, 124)) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN11CStringBaseIcEC2Ev.exit:
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 13 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca [32 x i8], align 16               ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca [32 x i8], align 16               ; 13 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca [32 x i8], align 16               ; 13 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca [32 x i8], align 16               ; 13 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca [512 x i8], align 16              ; 61 uses
  %i.p = alloca i64, align 8                      ; 9 uses
  %4 = alloca %class.CStringBase, align 8         ; 9 uses
  %5 = alloca %class.CStringBase, align 8         ; 7 uses
  %6 = alloca %class.CStringBase, align 8         ; 7 uses
  %7 = alloca %class.CStringBase, align 8         ; 7 uses
  %.sroa.0173 = alloca ptr, align 8               ; 8 uses
  %.sroa.10176 = alloca i32, align 8              ; 6 uses
  %.sroa.17178 = alloca i32, align 4              ; 5 uses
  %.sroa.0 = alloca ptr, align 8                  ; 8 uses
  %.sroa.10 = alloca i32, align 8                 ; 6 uses
  %.sroa.17 = alloca i32, align 4                 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 5 uses
  store i32 0, ptr %i.q, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0173)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10176)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17178)
  store i32 0, ptr %.sroa.10176, align 8
  %i.r = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #9 ; 2 uses
  store ptr %i.r, ptr %.sroa.0173, align 8, !tbaa !14
  store i8 0, ptr %i.r, align 1, !tbaa !15
  store i32 4, ptr %.sroa.17178, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  store i32 0, ptr %.sroa.10, align 8
  %i.s = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #9
          to label %_ZN11CStringBaseIcEC2Ev.exit88 unwind label %bb.cr ; 2 uses

_ZN11CStringBaseIcEC2Ev.exit88:                   ; preds = %_ZN11CStringBaseIcEC2Ev.exit
  store ptr %i.s, ptr %.sroa.0, align 8, !tbaa !14
  store i8 0, ptr %i.s, align 1, !tbaa !15
  store i32 4, ptr %.sroa.17, align 4, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 116
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 124 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 148 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 157
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 257
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 265
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 297
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 329 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 105
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 337 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 106
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 345
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 101
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 102
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 105
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 106
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 107
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 109
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 110
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 111
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 113
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 114
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 115
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 117
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 118
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 119
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 121
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 122
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 123
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 149
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 150
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 151
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 153
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 154
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 155
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 330
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 331
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 332
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 333
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 334
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.du = getelementptr inbounds nuw i8, ptr %i.o, i64 335
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 336
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  br label %bb.a

bb.a:                                             ; preds = %bb.dg, %_ZN11CStringBaseIcEC2Ev.exit88
  %.059 = phi i8 [ 0, %_ZN11CStringBaseIcEC2Ev.exit88 ], [ %.160, %bb.dg ] ; 3 uses
  %.056 = phi i8 [ 0, %_ZN11CStringBaseIcEC2Ev.exit88 ], [ %.157, %bb.dg ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  store i32 0, ptr %i.t, align 8, !tbaa !17
  %i.dy = load ptr, ptr %3, align 8, !tbaa !14
  store i8 0, ptr %i.dy, align 1, !tbaa !15
  store i8 0, ptr %1, align 1, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  store i64 512, ptr %i.p, align 8, !tbaa !57
  %i.dz = invoke noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef %0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p)
          to label %.noexc92 unwind label %.loopexit.split-lp ; 2 uses

.noexc92:                                         ; preds = %bb.a
  %.not256.i = icmp eq i32 %i.dz, 0
  br i1 %.not256.i, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %.noexc92, %.noexc95
  %.097257.i = phi i1 [ true, %.noexc95 ], [ false, %.noexc92 ] ; 2 uses
  %i.ea = load i64, ptr %i.p, align 8, !tbaa !57
  switch i64 %i.ea, label %bb.f [
    i64 0, label %bb.b
    i64 512, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph.i
  br i1 %.097257.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.t, align 8, !tbaa !17
  %i.eb = load ptr, ptr %3, align 8, !tbaa !14
  store i8 0, ptr %i.eb, align 1, !tbaa !15
  %i.ec = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.ed = icmp eq i32 %i.ec, 42
  br i1 %i.ed, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i.i, label %bb.d

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i.i: ; preds = %bb.c
  %.pre5.i.i = load ptr, ptr %3, align 8, !tbaa !14
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ee = invoke noalias noundef nonnull dereferenceable(42) ptr @_Znam(i64 noundef 42) #9
          to label %.noexc93 unwind label %.loopexit.split-lp ; 11 uses

.noexc93:                                         ; preds = %bb.d
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %i.eg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.eh = icmp sgt i32 %i.eg, 0
  %.pre4.i.i = load i32, ptr %i.t, align 8, !tbaa !17 ; 6 uses
  br i1 %i.eh, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %.noexc93
  %i.ei = icmp sgt i32 %.pre4.i.i, 0
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !14 ; 10 uses
  br i1 %i.ei, label %iter.check430, label %._crit_edge.i.i.i

iter.check430:                                    ; preds = %.preheader.i.i.i
  %.pre.i.i.i415 = ptrtoaddr ptr %.pre.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre4.i.i to i64 ; 8 uses
  %min.iters.check417 = icmp ult i32 %.pre4.i.i, 4
  %i.ej = sub i64 %.pre.i.i.i415, %i.ef
  %diff.check416 = icmp ugt i64 %i.ej, -32
  %or.cond538 = select i1 %min.iters.check417, i1 true, i1 %diff.check416
  br i1 %or.cond538, label %vec.epilog.scalar.ph431.preheader, label %vector.main.loop.iter.check418

vector.main.loop.iter.check418:                   ; preds = %iter.check430
  %min.iters.check419 = icmp ult i32 %.pre4.i.i, 32
  br i1 %min.iters.check419, label %vec.epilog.ph434, label %vector.ph420

vector.ph420:                                     ; preds = %vector.main.loop.iter.check418
  %i.ek = and i64 %wide.trip.count.i.i.i, 28
  %n.vec421 = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  br label %vector.body422

vector.body422:                                   ; preds = %vector.ph420, %vector.body422
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next426, %vector.body422 ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index423 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load424 = load <16 x i8>, ptr %i.el, align 1, !tbaa !15
  %wide.load425 = load <16 x i8>, ptr %i.em, align 1, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 %index423 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <16 x i8> %wide.load424, ptr %i.en, align 1, !tbaa !15
  store <16 x i8> %wide.load425, ptr %i.eo, align 1, !tbaa !15
  %index.next426 = add nuw i64 %index423, 32      ; 2 uses
  %i.ep = icmp eq i64 %index.next426, %n.vec421
  br i1 %i.ep, label %middle.block427, label %vector.body422, !llvm.loop !24

middle.block427:                                  ; preds = %vector.body422
  %cmp.n428 = icmp eq i64 %n.vec421, %wide.trip.count.i.i.i
  br i1 %cmp.n428, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check432

vec.epilog.iter.check432:                         ; preds = %middle.block427
  %min.epilog.iters.check433 = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check433, label %vec.epilog.scalar.ph431.preheader, label %vec.epilog.ph434, !prof !21

vec.epilog.ph434:                                 ; preds = %vector.main.loop.iter.check418, %vec.epilog.iter.check432
  %vec.epilog.resume.val429 = phi i64 [ %n.vec421, %vec.epilog.iter.check432 ], [ 0, %vector.main.loop.iter.check418 ]
  %n.vec435 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body436

vec.epilog.vector.body436:                        ; preds = %vec.epilog.vector.body436, %vec.epilog.ph434
  %index437 = phi i64 [ %vec.epilog.resume.val429, %vec.epilog.ph434 ], [ %index.next439, %vec.epilog.vector.body436 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE:_ZN11CStringBaseIcEC2Ev.exit
  br i1 %.not.i.i.i.i.6, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jn = load i8, ptr %i.bs, align 1, !tbaa !15
  store i8 %i.jn, ptr %i.bt, align 1, !tbaa !15
  br label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i.i

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i.i:   ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %.noexc97
  store i8 0, ptr %i.v, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i.i
  %indvars.iv.i.i150.i = phi i64 [ %indvars.iv.next.i.i151.i, %bb.x ], [ 0, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i.i ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.i150.i
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !15
  %i.jq = icmp eq i8 %i.jp, 32
  %indvars.iv.next.i.i151.i = add nuw nsw i64 %indvars.iv.i.i150.i, 1
  br i1 %i.jq, label %bb.x, label %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i.i, !llvm.loop !0

_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i.i: ; preds = %bb.x
  %i.jr = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.i150.i
  %i.js = invoke noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef nonnull %i.jr, ptr noundef nonnull %i.n)
          to label %.noexc98 unwind label %.loopexit.split-lp ; 2 uses

.noexc98:                                         ; preds = %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i.i
  %i.jt = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !15
  %i.jv = and i8 %i.ju, -33
  %spec.select.i.i.i = icmp eq i8 %i.jv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  br i1 %spec.select.i.i.i, label %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit.i, label %.thread

_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit.i: ; preds = %.noexc98
  %i.jw = trunc i64 %i.js to i32
  store i32 %i.jw, ptr %i.w, align 8, !tbaa !10
  %i.jx = icmp ult i64 %i.js, 4294967296
  br i1 %i.jx, label %bb.y, label %.thread

bb.y:                                             ; preds = %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.jy = load i8, ptr %i.x, align 4, !tbaa !15   ; 2 uses
  store i8 %i.jy, ptr %i.k, align 16, !tbaa !15
  %.not.i.i.i153.i = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i153.i, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jz = load i8, ptr %i.bu, align 1, !tbaa !15  ; 2 uses
  store i8 %i.jz, ptr %i.bv, align 1, !tbaa !15
  %.not.i.i.i153.i.1 = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i.i153.i.1, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ka = load i8, ptr %i.bw, align 2, !tbaa !15  ; 2 uses
  store i8 %i.ka, ptr %i.bx, align 2, !tbaa !15
  %.not.i.i.i153.i.2 = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i153.i.2, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kb = load i8, ptr %i.by, align 1, !tbaa !15  ; 2 uses
  store i8 %i.kb, ptr %i.bz, align 1, !tbaa !15
  %.not.i.i.i153.i.3 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i153.i.3, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kc = load i8, ptr %i.ca, align 16, !tbaa !15 ; 2 uses
  store i8 %i.kc, ptr %i.cb, align 4, !tbaa !15
  %.not.i.i.i153.i.4 = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i153.i.4, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kd = load i8, ptr %i.cc, align 1, !tbaa !15  ; 2 uses
  store i8 %i.kd, ptr %i.cd, align 1, !tbaa !15
  %.not.i.i.i153.i.5 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i153.i.5, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ke = load i8, ptr %i.ce, align 2, !tbaa !15  ; 2 uses
  store i8 %i.ke, ptr %i.cf, align 2, !tbaa !15
  %.not.i.i.i153.i.6 = icmp eq i8 %i.ke, 0
  br i1 %.not.i.i.i153.i.6, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kf = load i8, ptr %i.cg, align 1, !tbaa !15
  store i8 %i.kf, ptr %i.ch, align 1, !tbaa !15
  br label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  store i8 0, ptr %i.y, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i
  %indvars.iv.i.i158.i = phi i64 [ %indvars.iv.next.i.i159.i, %bb.ag ], [ 0, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i157.i ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i.i158.i
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !15
  %i.ki = icmp eq i8 %i.kh, 32
  %indvars.iv.next.i.i159.i = add nuw nsw i64 %indvars.iv.i.i158.i, 1
  br i1 %i.ki, label %bb.ag, label %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i160.i, !llvm.loop !0

_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i160.i: ; preds = %bb.ag
  %i.kj = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i.i158.i
  %i.kk = invoke noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef nonnull %i.kj, ptr noundef nonnull %i.l)
          to label %.noexc99 unwind label %.loopexit.split-lp ; 2 uses

.noexc99:                                         ; preds = %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i160.i
  %i.kl = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !15
  %i.kn = and i8 %i.km, -33
  %spec.select.i.i161.i = icmp eq i8 %i.kn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  %i.ko = trunc i64 %i.kk to i32
  %i.kp = icmp ult i64 %i.kk, 4294967296
  %or.cond.i = and i1 %i.kp, %spec.select.i.i161.i
  %storemerge.i = select i1 %or.cond.i, i32 %i.ko, i32 0
  store i32 %storemerge.i, ptr %i.z, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.kq = load i8, ptr %i.aa, align 4, !tbaa !15  ; 2 uses
  store i8 %i.kq, ptr %i.i, align 16, !tbaa !15
  %.not.i.i.i165.i = icmp eq i8 %i.kq, 0
  br i1 %.not.i.i.i165.i, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc99
  %i.kr = load i8, ptr %i.ci, align 1, !tbaa !15  ; 2 uses
  store i8 %i.kr, ptr %i.cj, align 1, !tbaa !15
  %.not.i.i.i165.i.1 = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i165.i.1, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ks = load i8, ptr %i.ck, align 2, !tbaa !15  ; 2 uses
  store i8 %i.ks, ptr %i.cl, align 2, !tbaa !15
  %.not.i.i.i165.i.2 = icmp eq i8 %i.ks, 0
  br i1 %.not.i.i.i165.i.2, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kt = load i8, ptr %i.cm, align 1, !tbaa !15  ; 2 uses
  store i8 %i.kt, ptr %i.cn, align 1, !tbaa !15
  %.not.i.i.i165.i.3 = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i165.i.3, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ku = load i8, ptr %i.co, align 8, !tbaa !15  ; 2 uses
  store i8 %i.ku, ptr %i.cp, align 4, !tbaa !15
  %.not.i.i.i165.i.4 = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i.i165.i.4, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kv = load i8, ptr %i.cq, align 1, !tbaa !15  ; 2 uses
  store i8 %i.kv, ptr %i.cr, align 1, !tbaa !15
  %.not.i.i.i165.i.5 = icmp eq i8 %i.kv, 0
  br i1 %.not.i.i.i165.i.5, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kw = load i8, ptr %i.cs, align 2, !tbaa !15  ; 2 uses
  store i8 %i.kw, ptr %i.ct, align 2, !tbaa !15
  %.not.i.i.i165.i.6 = icmp eq i8 %i.kw, 0
  br i1 %.not.i.i.i165.i.6, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kx = load i8, ptr %i.cu, align 1, !tbaa !15
  store i8 %i.kx, ptr %i.cv, align 1, !tbaa !15
  br label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.noexc99
  store i8 0, ptr %i.ab, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i
  %indvars.iv.i.i170.i = phi i64 [ %indvars.iv.next.i.i171.i, %bb.ao ], [ 0, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i169.i ] ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i170.i
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !15
  %i.la = icmp eq i8 %i.kz, 32
  %indvars.iv.next.i.i171.i = add nuw nsw i64 %indvars.iv.i.i170.i, 1
  br i1 %i.la, label %bb.ao, label %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i172.i, !llvm.loop !0

_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i172.i: ; preds = %bb.ao
  %i.lb = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i170.i
  %i.lc = invoke noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef nonnull %i.lb, ptr noundef nonnull %i.j)
          to label %.noexc100 unwind label %.loopexit.split-lp ; 2 uses

.noexc100:                                        ; preds = %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i172.i
  %i.ld = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !15
  %i.lf = and i8 %i.le, -33
  %spec.select.i.i173.i = icmp eq i8 %i.lf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  %i.lg = trunc i64 %i.lc to i32
  %i.lh = icmp ult i64 %i.lc, 4294967296
  %or.cond542 = and i1 %spec.select.i.i173.i, %i.lh
  %storemerge = select i1 %or.cond542, i32 %i.lg, i32 0
  store i32 %storemerge, ptr %i.ac, align 8, !tbaa !10
  %i.li = load i32, ptr %i.ad, align 4
  %i.lj = icmp eq i32 %i.li, 128
  br i1 %i.lj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.noexc100
  %8 = load i64, ptr %i.ag, align 16
  %op.rdx = call i64 @llvm.bswap.i64(i64 %8)
  store i64 %op.rdx, ptr %i.af, align 8, !tbaa !58
  br label %bb.at

bb.aq:                                            ; preds = %.noexc100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv.i.i176.i = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next.i.i178.i, %bb.ar ] ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv.i.i176.i
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !15  ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i176.i
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !15
  %.not.i.i177.i = icmp eq i8 %i.ll, 0
  %indvars.iv.next.i.i178.i = add nuw nsw i64 %indvars.iv.i.i176.i, 1 ; 2 uses
  %exitcond.not.i.i179.i = icmp eq i64 %indvars.iv.next.i.i178.i, 12
  %or.cond.i.i.i = select i1 %.not.i.i177.i, i1 true, i1 %exitcond.not.i.i179.i
  br i1 %or.cond.i.i.i, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i, label %bb.ar, !llvm.loop !1

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i:     ; preds = %bb.ar
  store i8 0, ptr %i.ae, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i
  %indvars.iv.i180.i = phi i64 [ %indvars.iv.next.i181.i, %bb.as ], [ 0, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i ] ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i180.i
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !15
  %i.lp = icmp eq i8 %i.lo, 32
  %indvars.iv.next.i181.i = add nuw nsw i64 %indvars.iv.i180.i, 1
  br i1 %i.lp, label %bb.as, label %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i, !llvm.loop !0

_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i:  ; preds = %bb.as
  %i.lq = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i180.i
  %i.lr = invoke noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef nonnull %i.lq, ptr noundef nonnull %i.h)
          to label %.noexc101 unwind label %.loopexit.split-lp

.noexc101:                                        ; preds = %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i
  store i64 %i.lr, ptr %i.af, align 8, !tbaa !59
  %i.ls = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !15
  %i.lu = and i8 %i.lt, -33
  %spec.select.i.i = icmp eq i8 %i.lu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br i1 %spec.select.i.i, label %bb.at, label %.thread

bb.at:                                            ; preds = %.noexc101, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.i.i.i182.i = phi i64 [ 0, %bb.at ], [ %indvars.iv.next.i.i.i184.i, %bb.au ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.i.i.i182.i
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !15  ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i.i182.i
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !15
  %.not.i.i.i183.i = icmp eq i8 %i.lw, 0
  %indvars.iv.next.i.i.i184.i = add nuw nsw i64 %indvars.iv.i.i.i182.i, 1 ; 2 uses
  %exitcond.not.i.i.i185.i = icmp eq i64 %indvars.iv.next.i.i.i184.i, 12
  %or.cond.i.i.i186.i = select i1 %.not.i.i.i183.i, i1 true, i1 %exitcond.not.i.i.i185.i
  br i1 %or.cond.i.i.i186.i, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i187.i, label %bb.au, !llvm.loop !1

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i187.i: ; preds = %bb.au
  store i8 0, ptr %i.ai, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i187.i
  %indvars.iv.i.i188.i = phi i64 [ %indvars.iv.next.i.i189.i, %bb.av ], [ 0, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i187.i ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i188.i
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !15
  %i.ma = icmp eq i8 %i.lz, 32
  %indvars.iv.next.i.i189.i = add nuw nsw i64 %indvars.iv.i.i188.i, 1
  br i1 %i.ma, label %bb.av, label %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i190.i, !llvm.loop !0

_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i190.i: ; preds = %bb.av
  %i.mb = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i188.i
  %i.mc = invoke noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef nonnull %i.mb, ptr noundef nonnull %i.f)
          to label %.noexc102 unwind label %.loopexit.split-lp ; 2 uses

.noexc102:                                        ; preds = %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i190.i
  %i.md = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.me = load i8, ptr %i.md, align 1, !tbaa !15
  %i.mf = and i8 %i.me, -33
  %spec.select.i.i191.i = icmp eq i8 %i.mf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br i1 %spec.select.i.i191.i, label %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit193.i, label %.thread

_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit193.i: ; preds = %.noexc102
  %i.mg = trunc i64 %i.mc to i32
  store i32 %i.mg, ptr %i.aj, align 4, !tbaa !10
  %i.mh = icmp ult i64 %i.mc, 4294967296
  br i1 %i.mh, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit193.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.mi = load i8, ptr %i.ak, align 4, !tbaa !15  ; 2 uses
  store i8 %i.mi, ptr %i.c, align 16, !tbaa !15
  %.not.i.i.i195.i = icmp eq i8 %i.mi, 0
  br i1 %.not.i.i.i195.i, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mj = load i8, ptr %i.cw, align 1, !tbaa !15  ; 2 uses
  store i8 %i.mj, ptr %i.cx, align 1, !tbaa !15
  %.not.i.i.i195.i.1 = icmp eq i8 %i.mj, 0
  br i1 %.not.i.i.i195.i.1, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mk = load i8, ptr %i.cy, align 2, !tbaa !15  ; 2 uses
  store i8 %i.mk, ptr %i.cz, align 2, !tbaa !15
  %.not.i.i.i195.i.2 = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i195.i.2, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ml = load i8, ptr %i.da, align 1, !tbaa !15  ; 2 uses
  store i8 %i.ml, ptr %i.db, align 1, !tbaa !15
  %.not.i.i.i195.i.3 = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i.i195.i.3, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mm = load i8, ptr %i.dc, align 8, !tbaa !15  ; 2 uses
  store i8 %i.mm, ptr %i.dd, align 4, !tbaa !15
  %.not.i.i.i195.i.4 = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i195.i.4, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mn = load i8, ptr %i.de, align 1, !tbaa !15  ; 2 uses
  store i8 %i.mn, ptr %i.df, align 1, !tbaa !15
  %.not.i.i.i195.i.5 = icmp eq i8 %i.mn, 0
  br i1 %.not.i.i.i195.i.5, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mo = load i8, ptr %i.dg, align 2, !tbaa !15  ; 2 uses
  store i8 %i.mo, ptr %i.dh, align 2, !tbaa !15
  %.not.i.i.i195.i.6 = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i195.i.6, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mp = load i8, ptr %i.di, align 1, !tbaa !15
  store i8 %i.mp, ptr %i.dj, align 1, !tbaa !15
  br label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw
  store i8 0, ptr %i.al, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i
  %indvars.iv.i.i200.i = phi i64 [ %indvars.iv.next.i.i201.i, %bb.be ], [ 0, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i199.i ] ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i200.i
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !15
  %i.ms = icmp eq i8 %i.mr, 32
  %indvars.iv.next.i.i201.i = add nuw nsw i64 %indvars.iv.i.i200.i, 1
  br i1 %i.ms, label %bb.be, label %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i202.i, !llvm.loop !0

_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i202.i: ; preds = %bb.be
  %i.mt = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i200.i
  %i.mu = invoke noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef nonnull %i.mt, ptr noundef nonnull %i.d)
          to label %.noexc103 unwind label %.loopexit.split-lp ; 2 uses

.noexc103:                                        ; preds = %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i202.i
  %i.mv = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !15
  %i.mx = and i8 %i.mw, -33
  %spec.select.i.i203.i = icmp eq i8 %i.mx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br i1 %spec.select.i.i203.i, label %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit205.i, label %.thread

_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit205.i: ; preds = %.noexc103
  %i.my = trunc nuw i64 %i.mu to i32
  %i.mz = icmp ult i64 %i.mu, 4294967296
  br i1 %i.mz, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit205.i
  %i.na = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader15kCheckSumBlanksE, align 8, !tbaa !23
  %i.nb = load i64, ptr %i.na, align 1
  store i64 %i.nb, ptr %i.ak, align 4
  %i.nc = load i8, ptr %i.am, align 4, !tbaa !15
  store i8 %i.nc, ptr %i.ao, align 8, !tbaa !60
  invoke fastcc void @_ZN8NArchive4NTarL10ReadStringEPKciR11CStringBaseIcE(ptr noundef %i.an, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(16) %i.ap)
          to label %.noexc104 unwind label %.loopexit.split-lp

.noexc104:                                        ; preds = %bb.bf
  %i.nd = load i64, ptr %i.aq, align 1
  store i64 %i.nd, ptr %i.ar, align 8
  invoke fastcc void @_ZN8NArchive4NTarL10ReadStringEPKciR11CStringBaseIcE(ptr noundef %i.as, i32 noundef 32, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.noexc105 unwind label %.loopexit.split-lp

.noexc105:                                        ; preds = %.noexc104
  invoke fastcc void @_ZN8NArchive4NTarL10ReadStringEPKciR11CStringBaseIcE(ptr noundef %i.au, i32 noundef 32, ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %.noexc105
  %i.ne = load i8, ptr %i.aw, align 1, !tbaa !15
  %i.nf = icmp ne i8 %i.ne, 0
  %i.ng = zext i1 %i.nf to i8
  store i8 %i.ng, ptr %i.ax, align 1, !tbaa !61
end_hunk_1
begin_hunk_2_@_ZN11CStringBaseIcEpLERKS0_:bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = xor i32 %i.f, -1
  %i.h = add i32 %i.d, %i.g                       ; 3 uses
  %.not.i = icmp sgt i32 %i.b, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIcE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.d, 64
  %i.j = lshr i32 %i.d, 1
  %i.k = icmp sgt i32 %i.d, 8
  %..i = select i1 %i.k, i32 16, i32 4
  %.0.i = select i1 %i.i, i32 %i.j, i32 %..i      ; 2 uses
  %i.l = add nsw i32 %.0.i, %i.h
  %i.m = icmp slt i32 %i.l, %i.b
  %i.n = sub nsw i32 %i.b, %i.h
  %.1.i = select i1 %i.m, i32 %i.n, i32 %.0.i
  %i.o = add i32 %i.d, 1
  %i.p = add i32 %i.o, %.1.i                      ; 3 uses
  %i.q = icmp eq i32 %i.p, %i.d
  br i1 %i.q, label %_ZN11CStringBaseIcE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sext i32 %i.p to i64
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #9 ; 10 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = load i32, ptr %i.c, align 4, !tbaa !16
  %i.v = icmp sgt i32 %i.u, 0
  %.pre12.i = load i32, ptr %i.e, align 8, !tbaa !17 ; 6 uses
  br i1 %i.v, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.w = icmp sgt i32 %.pre12.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !14 ; 10 uses
  br i1 %i.w, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i8 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre12.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre12.i, 4
  %i.x = sub i64 %.pre.i.i8, %i.t
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i32 %.pre12.i, 32
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !15
  %wide.load10 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <16 x i8> %wide.load, ptr %i.ab, align 1, !tbaa !15
  store <16 x i8> %wide.load10, ptr %i.ac, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index12
  %wide.load13 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %index12
  store <4 x i8> %wide.load13, ptr %i.af, align 1, !tbaa !15
  %index.next14 = add nuw i64 %index12, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next14, %n.vec11
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %n.vec11, %wide.trip.count.i.i
  br i1 %cmp.n15, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i.i.prol
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !15
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !83

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.am = icmp eq ptr %.pre.i.i, null
  br i1 %i.am, label %bb.d, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !15
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next.i.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !15
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !15
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next.i.i.2
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !15
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !84

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #11
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.az = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre12.i, %._crit_edge.i.i ], [ %.pre12.i, %bb.c ] ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !14
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.s, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !15
  store i32 %i.p, ptr %i.c, align 4, !tbaa !16
  br label %_ZN11CStringBaseIcE10GrowLengthEi.exit

_ZN11CStringBaseIcE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.bc = phi i32 [ %i.f, %bb.a ], [ %i.f, %bb.b ], [ %i.az, %bb.d ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !14
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %1, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIcE10GrowLengthEi.exit
  %.04.i = phi ptr [ %i.bf, %_ZN11CStringBaseIcE10GrowLengthEi.exit ], [ %i.bj, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %i.bg, %_ZN11CStringBaseIcE10GrowLengthEi.exit ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i4, i64 1
  %i.bi = load i8, ptr %.0.i4, align 1, !tbaa !15 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  store i8 %i.bi, ptr %.04.i, align 1, !tbaa !15
  %.not.i5 = icmp eq i8 %i.bi, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !2

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !17
  %i.bl = load i32, ptr %i.e, align 8, !tbaa !17
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.e, align 8, !tbaa !17
  ret ptr %0
}

declare noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTS11CStringBaseIcE", !12, i64 0, !9, i64 8, !9, i64 12}
!14 = !{!13, !12, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!13, !9, i64 12}
!17 = !{!13, !9, i64 8}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"branch_weights", i32 4, i32 28}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!12, !12, i64 0}
!24 = distinct !{!24, !18, !19, !20}
!25 = distinct !{!25, !18, !19, !20}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !18, !19}
!28 = distinct !{!28, !18, !19, !20}
!29 = distinct !{!29, !18, !19, !20}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !18, !19}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18, !19, !20}
!34 = distinct !{!34, !18, !19, !20}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !18, !19}
!37 = distinct !{!37, !18, !19, !20}
!38 = distinct !{!38, !18, !19, !20}
!39 = distinct !{!39, !18, !19, !20}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !18, !19}
!42 = distinct !{!42, !18, !19, !20}
!43 = distinct !{!43, !18, !19, !20}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !18, !19}
!46 = distinct !{!46, !18, !19, !20}
!47 = distinct !{!47, !18, !19, !20}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !18, !19}
!50 = !{!"long long", !8, i64 0}
!51 = !{!"bool", !8, i64 0}
!52 = !{!"_ZTSN8NArchive4NTar5CItemE", !13, i64 0, !50, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !13, i64 48, !13, i64 64, !13, i64 80, !8, i64 96, !8, i64 104, !51, i64 105, !51, i64 106}
!53 = !{!"_ZTSN8NArchive4NTar7CItemExE", !52, i64 0, !50, i64 112, !9, i64 120}
!54 = !{!53, !9, i64 120}
!55 = !{!51, !51, i64 0}
!56 = !{!"long", !8, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!52, !50, i64 16}
!59 = !{!50, !50, i64 0}
!60 = !{!52, !8, i64 104}
!61 = !{!52, !51, i64 105}
!62 = !{!52, !51, i64 106}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = distinct !{!65, !18, !19, !20}
!66 = distinct !{!66, !18, !19, !20}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !18, !19}
!69 = distinct !{!69, !18, !19, !20}
!70 = distinct !{!70, !18, !19, !20}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !18, !19}
!73 = distinct !{!73, !18, !19, !20}
!74 = distinct !{!74, !18, !19, !20}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !18, !19}
!77 = distinct !{!77, !18, !19, !20}
!78 = distinct !{!78, !18, !19, !20}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !18, !19}
!81 = distinct !{!81, !18, !19, !20}
!82 = distinct !{!82, !18, !19, !20}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !18, !19}
end_hunk_2
