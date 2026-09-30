Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/huffyuvencdsp?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_huffyuvencdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  store ptr @diff_int16_c, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @sub_hfyu_median_pred_int16_c, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @diff_int16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.d = and i64 %i.c, 3
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %4, 3
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = zext nneg i32 %4 to i64
  %invariant.op = add nsw i64 %i.f, -3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.063 = phi i64 [ %i.ax, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.g = or disjoint i64 %.063, 3                 ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.063
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.063
  %i.l = load i16, ptr %i.k, align 2, !tbaa !10
  %i.m = zext i16 %i.l to i32
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = and i32 %i.n, %3
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.063
  store i16 %i.p, ptr %i.q, align 2, !tbaa !10
  %i.r = or disjoint i64 %.063, 1                 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !10
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.r
  %i.w = load i16, ptr %i.v, align 2, !tbaa !10
  %i.x = zext i16 %i.w to i32
  %i.y = sub nsw i32 %i.u, %i.x
  %i.z = and i32 %i.y, %3
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.r
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !10
  %i.ac = or disjoint i64 %.063, 2                ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !10
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ac
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !10
  %i.ai = zext i16 %i.ah to i32
  %i.aj = sub nsw i32 %i.af, %i.ai
  %i.ak = and i32 %i.aj, %3
  %i.al = trunc i32 %i.ak to i16
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.al, ptr %i.am, align 2, !tbaa !10
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.g
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !10
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.g
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !10
  %i.as = zext i16 %i.ar to i32
  %i.at = sub nsw i32 %i.ap, %i.as
  %i.au = and i32 %i.at, %3
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !10
  %i.ax = add nuw nsw i64 %.063, 4                ; 3 uses
  %i.ay = icmp slt i64 %i.ax, %invariant.op
  br i1 %i.ay, label %.lr.ph, label %.loopexit, !llvm.loop !18

bb.b:                                             ; preds = %bb.a
  %i.az = lshr i32 %3, 1
  %i.ba = mul i32 %i.az, 65537                    ; 3 uses
  %i.bb = add i32 %i.ba, 65537                    ; 3 uses
  %i.bc = add i32 %4, -2                          ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %.not6164 = icmp slt i32 %4, 2
  br i1 %.not6164, label %.loopexit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %bb.b
  %i.be = lshr i64 %i.bd, 1
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bc, 14
  br i1 %min.iters.check, label %.lr.ph66.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader
  %i.bg = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bg, -32
  %i.bh = sub i64 %i.c, %i.b
  %diff.check77 = icmp ugt i64 %i.bh, -32
  %conflict.rdx = or i1 %diff.check, %diff.check77
  br i1 %conflict.rdx, label %.lr.ph66.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4294967288              ; 3 uses
  %i.bi = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl nuw i64 %index, 1                   ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <4 x i32>, ptr %i.bk, align 4, !tbaa !24 ; 2 uses
  %wide.load80 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !24 ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bj ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load81 = load <4 x i32>, ptr %i.bm, align 1, !tbaa !24 ; 2 uses
  %wide.load82 = load <4 x i32>, ptr %i.bn, align 1, !tbaa !24 ; 2 uses
  %i.bo = or <4 x i32> %wide.load, %broadcast.splat
  %i.bp = or <4 x i32> %wide.load80, %broadcast.splat
  %i.bq = and <4 x i32> %wide.load81, %broadcast.splat79
  %i.br = and <4 x i32> %wide.load82, %broadcast.splat79
  %i.bs = sub <4 x i32> %i.bo, %i.bq
  %i.bt = sub <4 x i32> %i.bp, %i.br
  %i.bu = xor <4 x i32> %wide.load, %wide.load81
  %i.bv = xor <4 x i32> %wide.load80, %wide.load82
  %i.bw = xor <4 x i32> %i.bu, splat (i32 -1)
  %i.bx = xor <4 x i32> %i.bv, splat (i32 -1)
  %i.by = and <4 x i32> %broadcast.splat, %i.bw
  %i.bz = and <4 x i32> %broadcast.splat, %i.bx
  %i.ca = xor <4 x i32> %i.bs, %i.by
  %i.cb = xor <4 x i32> %i.bt, %i.bz
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bj ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <4 x i32> %i.ca, ptr %i.cc, align 4, !tbaa !24
  store <4 x i32> %i.cb, ptr %i.cd, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph66.preheader113

.lr.ph66.preheader113:                            ; preds = %vector.memcheck, %.lr.ph66.preheader, %middle.block
  %.165.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph66.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader113, %.lr.ph66
  %.165 = phi i64 [ %i.cr, %.lr.ph66 ], [ %.165.ph, %.lr.ph66.preheader113 ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.165
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !24 ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.165
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !24 ; 2 uses
  %i.cj = or i32 %i.cg, %i.bb
  %i.ck = and i32 %i.ci, %i.ba
  %i.cl = sub i32 %i.cj, %i.ck
  %i.cm = xor i32 %i.cg, %i.ci
  %i.cn = xor i32 %i.cm, -1
  %i.co = and i32 %i.bb, %i.cn
  %i.cp = xor i32 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.165
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !24
  %i.cr = add nuw nsw i64 %.165, 2                ; 3 uses
  %.not61 = icmp samesign ugt i64 %i.cr, %i.bd
  br i1 %.not61, label %.loopexit, label %.lr.ph66, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph66, %middle.block, %.preheader, %bb.b
  %.2 = phi i64 [ %i.cr, %.lr.ph66 ], [ 0, %bb.b ], [ 0, %.preheader ], [ %i.bi, %middle.block ], [ %i.ax, %.lr.ph ] ; 8 uses
  %i.cs = sext i32 %4 to i64                      ; 5 uses
  %i.ct = icmp slt i64 %.2, %i.cs
  br i1 %i.ct, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.cu = sub i64 %i.cs, %.2                      ; 7 uses
  %min.iters.check88 = icmp ult i64 %i.cu, 4
  br i1 %min.iters.check88, label %.lr.ph69.preheader, label %vector.memcheck83

vector.memcheck83:                                ; preds = %iter.check
  %i.cv = sub i64 %i.a, %i.b
  %diff.check84 = icmp ugt i64 %i.cv, -32
  %i.cw = sub i64 %i.c, %i.b
  %diff.check85 = icmp ugt i64 %i.cw, -32
  %conflict.rdx86 = or i1 %diff.check84, %diff.check85
  br i1 %conflict.rdx86, label %.lr.ph69.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck83
  %min.iters.check89 = icmp ult i64 %i.cu, 16
  br i1 %min.iters.check89, label %vec.epilog.ph, label %vector.ph90

vector.ph90:                                      ; preds = %vector.main.loop.iter.check
  %i.cx = and i64 %i.cu, 12
  %n.vec91 = and i64 %i.cu, -16                   ; 4 uses
  %i.cy = add i64 %.2, %n.vec91
  %broadcast.splatinsert92 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat93 = shufflevector <8 x i32> %broadcast.splatinsert92, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.ph90, %vector.body94
  %index95 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %i.cz = add nuw i64 %.2, %index95               ; 3 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load96 = load <8 x i16>, ptr %i.da, align 2, !tbaa !10
  %wide.load97 = load <8 x i16>, ptr %i.db, align 2, !tbaa !10
  %i.dc = zext <8 x i16> %wide.load96 to <8 x i32>
  %i.dd = zext <8 x i16> %wide.load97 to <8 x i32>
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cz ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load98 = load <8 x i16>, ptr %i.de, align 2, !tbaa !10
  %wide.load99 = load <8 x i16>, ptr %i.df, align 2, !tbaa !10
  %i.dg = zext <8 x i16> %wide.load98 to <8 x i32>
  %i.dh = zext <8 x i16> %wide.load99 to <8 x i32>
  %i.di = sub nsw <8 x i32> %i.dc, %i.dg
  %i.dj = sub nsw <8 x i32> %i.dd, %i.dh
  %i.dk = and <8 x i32> %i.di, %broadcast.splat93
  %i.dl = and <8 x i32> %i.dj, %broadcast.splat93
  %i.dm = trunc <8 x i32> %i.dk to <8 x i16>
  %i.dn = trunc <8 x i32> %i.dl to <8 x i16>
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cz ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <8 x i16> %i.dm, ptr %i.do, align 2, !tbaa !10
  store <8 x i16> %i.dn, ptr %i.dp, align 2, !tbaa !10
  %index.next100 = add nuw i64 %index95, 16       ; 2 uses
  %i.dq = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.dq, label %middle.block101, label %vector.body94, !llvm.loop !21

middle.block101:                                  ; preds = %vector.body94
  %cmp.n102 = icmp eq i64 %i.cu, %n.vec91
  br i1 %cmp.n102, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block101
  %min.epilog.iters.check = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph69.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec91, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %i.cu, -4                   ; 3 uses
  %i.dr = add i64 %.2, %n.vec104
  %broadcast.splatinsert105 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat106 = shufflevector <4 x i32> %broadcast.splatinsert105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %i.ds = add nuw i64 %.2, %index107              ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ds
  %wide.load108 = load <4 x i16>, ptr %i.dt, align 2, !tbaa !10
  %i.du = zext <4 x i16> %wide.load108 to <4 x i32>
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ds
  %wide.load109 = load <4 x i16>, ptr %i.dv, align 2, !tbaa !10
  %i.dw = zext <4 x i16> %wide.load109 to <4 x i32>
  %i.dx = sub nsw <4 x i32> %i.du, %i.dw
  %i.dy = and <4 x i32> %i.dx, %broadcast.splat106
  %i.dz = trunc <4 x i32> %i.dy to <4 x i16>
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ds
  store <4 x i16> %i.dz, ptr %i.ea, align 2, !tbaa !10
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next110, %n.vec104
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.cu, %n.vec104
  br i1 %cmp.n111, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %iter.check, %vector.memcheck83, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.368.ph = phi i64 [ %.2, %iter.check ], [ %.2, %vector.memcheck83 ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ] ; 7 uses
  %i.ec = sub i64 %i.cs, %.368.ph
  %xtraiter = and i64 %i.ec, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader
end_hunk_0
