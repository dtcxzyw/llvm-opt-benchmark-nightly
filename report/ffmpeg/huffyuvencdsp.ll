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
  %5 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %0 to i64                    ; 4 uses
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 3
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %4, 3
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.d = zext nneg i32 %4 to i64
  %invariant.op = add nsw i64 %i.d, -3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.063 = phi i64 [ %i.av, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.e = or disjoint i64 %.063, 3                 ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.063
  %i.g = load i16, ptr %i.f, align 2, !tbaa !10
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.063
  %i.j = load i16, ptr %i.i, align 2, !tbaa !10
  %i.k = zext i16 %i.j to i32
  %i.l = sub nsw i32 %i.h, %i.k
  %i.m = and i32 %i.l, %3
  %i.n = trunc i32 %i.m to i16
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.063
  store i16 %i.n, ptr %i.o, align 2, !tbaa !10
  %i.p = or disjoint i64 %.063, 1                 ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10
  %i.s = zext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.p
  %i.u = load i16, ptr %i.t, align 2, !tbaa !10
  %i.v = zext i16 %i.u to i32
  %i.w = sub nsw i32 %i.s, %i.v
  %i.x = and i32 %i.w, %3
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p
  store i16 %i.y, ptr %i.z, align 2, !tbaa !10
  %i.aa = or disjoint i64 %.063, 2                ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !10
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aa
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !10
  %i.ag = zext i16 %i.af to i32
  %i.ah = sub nsw i32 %i.ad, %i.ag
  %i.ai = and i32 %i.ah, %3
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !10
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.e
  %i.am = load i16, ptr %i.al, align 2, !tbaa !10
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.e
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.an, %i.aq
  %i.as = and i32 %i.ar, %3
  %i.at = trunc i32 %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.e
  store i16 %i.at, ptr %i.au, align 2, !tbaa !10
  %i.av = add nuw nsw i64 %.063, 4                ; 3 uses
  %i.aw = icmp slt i64 %i.av, %invariant.op
  br i1 %i.aw, label %.lr.ph, label %.loopexit, !llvm.loop !18

bb.b:                                             ; preds = %bb.a
  %i.ax = lshr i32 %3, 1
  %i.ay = mul i32 %i.ax, 65537                    ; 3 uses
  %i.az = add i32 %i.ay, 65537                    ; 3 uses
  %i.ba = add i32 %4, -2                          ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.not6164 = icmp slt i32 %4, 2
  br i1 %.not6164, label %.loopexit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %bb.b
  %i.bc = lshr i64 %i.bb, 1
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ba, 14
  br i1 %min.iters.check, label %.lr.ph66.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader
  %i.be = sub i64 %5, %6
  %diff.check = icmp ugt i64 %i.be, -32
  %i.bf = sub i64 %i.a, %6
  %diff.check77 = icmp ugt i64 %i.bf, -32
  %conflict.rdx = or i1 %diff.check, %diff.check77
  br i1 %conflict.rdx, label %.lr.ph66.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4294967288              ; 3 uses
  %i.bg = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl nuw i64 %index, 1                   ; 3 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !24 ; 2 uses
  %wide.load80 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !24 ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bh ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load81 = load <4 x i32>, ptr %i.bk, align 1, !tbaa !24 ; 2 uses
  %wide.load82 = load <4 x i32>, ptr %i.bl, align 1, !tbaa !24 ; 2 uses
  %i.bm = or <4 x i32> %wide.load, %broadcast.splat
  %i.bn = or <4 x i32> %wide.load80, %broadcast.splat
  %i.bo = and <4 x i32> %wide.load81, %broadcast.splat79
  %i.bp = and <4 x i32> %wide.load82, %broadcast.splat79
  %i.bq = sub <4 x i32> %i.bm, %i.bo
  %i.br = sub <4 x i32> %i.bn, %i.bp
  %i.bs = xor <4 x i32> %wide.load, %wide.load81
  %i.bt = xor <4 x i32> %wide.load80, %wide.load82
  %i.bu = xor <4 x i32> %i.bs, splat (i32 -1)
  %i.bv = xor <4 x i32> %i.bt, splat (i32 -1)
  %i.bw = and <4 x i32> %broadcast.splat, %i.bu
  %i.bx = and <4 x i32> %broadcast.splat, %i.bv
  %i.by = xor <4 x i32> %i.bq, %i.bw
  %i.bz = xor <4 x i32> %i.br, %i.bx
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bh ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x i32> %i.by, ptr %i.ca, align 4, !tbaa !24
  store <4 x i32> %i.bz, ptr %i.cb, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph66.preheader113

.lr.ph66.preheader113:                            ; preds = %vector.memcheck, %.lr.ph66.preheader, %middle.block
  %.165.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph66.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader113, %.lr.ph66
  %.165 = phi i64 [ %i.cp, %.lr.ph66 ], [ %.165.ph, %.lr.ph66.preheader113 ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.165
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !24 ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.165
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !24 ; 2 uses
  %i.ch = or i32 %i.ce, %i.az
  %i.ci = and i32 %i.cg, %i.ay
  %i.cj = sub i32 %i.ch, %i.ci
  %i.ck = xor i32 %i.ce, %i.cg
  %i.cl = xor i32 %i.ck, -1
  %i.cm = and i32 %i.az, %i.cl
  %i.cn = xor i32 %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.165
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !24
  %i.cp = add nuw nsw i64 %.165, 2                ; 3 uses
  %.not61 = icmp samesign ugt i64 %i.cp, %i.bb
  br i1 %.not61, label %.loopexit, label %.lr.ph66, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph66, %middle.block, %.preheader, %bb.b
  %.2 = phi i64 [ %i.cp, %.lr.ph66 ], [ 0, %bb.b ], [ 0, %.preheader ], [ %i.bg, %middle.block ], [ %i.av, %.lr.ph ] ; 8 uses
  %i.cq = sext i32 %4 to i64                      ; 5 uses
  %i.cr = icmp slt i64 %.2, %i.cq
  br i1 %i.cr, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.cs = sub i64 %i.cq, %.2                      ; 7 uses
  %min.iters.check88 = icmp ult i64 %i.cs, 4
  br i1 %min.iters.check88, label %.lr.ph69.preheader, label %vector.memcheck83

vector.memcheck83:                                ; preds = %iter.check
  %i.ct = sub i64 %5, %6
  %diff.check84 = icmp ugt i64 %i.ct, -32
  %i.cu = sub i64 %i.a, %6
  %diff.check85 = icmp ugt i64 %i.cu, -32
  %conflict.rdx86 = or i1 %diff.check84, %diff.check85
  br i1 %conflict.rdx86, label %.lr.ph69.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck83
  %min.iters.check89 = icmp ult i64 %i.cs, 16
  br i1 %min.iters.check89, label %vec.epilog.ph, label %vector.ph90

vector.ph90:                                      ; preds = %vector.main.loop.iter.check
  %i.cv = and i64 %i.cs, 12
  %n.vec91 = and i64 %i.cs, -16                   ; 4 uses
  %i.cw = add i64 %.2, %n.vec91
  %broadcast.splatinsert92 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat93 = shufflevector <8 x i32> %broadcast.splatinsert92, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.ph90, %vector.body94
  %index95 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %i.cx = add nuw i64 %.2, %index95               ; 3 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load96 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !10
  %wide.load97 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !10
  %i.da = zext <8 x i16> %wide.load96 to <8 x i32>
  %i.db = zext <8 x i16> %wide.load97 to <8 x i32>
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cx ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load98 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !10
  %wide.load99 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !10
  %i.de = zext <8 x i16> %wide.load98 to <8 x i32>
  %i.df = zext <8 x i16> %wide.load99 to <8 x i32>
  %i.dg = sub nsw <8 x i32> %i.da, %i.de
  %i.dh = sub nsw <8 x i32> %i.db, %i.df
  %i.di = and <8 x i32> %i.dg, %broadcast.splat93
  %i.dj = and <8 x i32> %i.dh, %broadcast.splat93
  %i.dk = trunc <8 x i32> %i.di to <8 x i16>
  %i.dl = trunc <8 x i32> %i.dj to <8 x i16>
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cx ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <8 x i16> %i.dk, ptr %i.dm, align 2, !tbaa !10
  store <8 x i16> %i.dl, ptr %i.dn, align 2, !tbaa !10
  %index.next100 = add nuw i64 %index95, 16       ; 2 uses
  %i.do = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.do, label %middle.block101, label %vector.body94, !llvm.loop !21

middle.block101:                                  ; preds = %vector.body94
  %cmp.n102 = icmp eq i64 %i.cs, %n.vec91
  br i1 %cmp.n102, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block101
  %min.epilog.iters.check = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph69.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec91, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %i.cs, -4                   ; 3 uses
  %i.dp = add i64 %.2, %n.vec104
  %broadcast.splatinsert105 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat106 = shufflevector <4 x i32> %broadcast.splatinsert105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %i.dq = add nuw i64 %.2, %index107              ; 3 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dq
  %wide.load108 = load <4 x i16>, ptr %i.dr, align 2, !tbaa !10
  %i.ds = zext <4 x i16> %wide.load108 to <4 x i32>
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.dq
  %wide.load109 = load <4 x i16>, ptr %i.dt, align 2, !tbaa !10
  %i.du = zext <4 x i16> %wide.load109 to <4 x i32>
  %i.dv = sub nsw <4 x i32> %i.ds, %i.du
  %i.dw = and <4 x i32> %i.dv, %broadcast.splat106
  %i.dx = trunc <4 x i32> %i.dw to <4 x i16>
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dq
  store <4 x i16> %i.dx, ptr %i.dy, align 2, !tbaa !10
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next110, %n.vec104
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.cs, %n.vec104
  br i1 %cmp.n111, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %iter.check, %vector.memcheck83, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.368.ph = phi i64 [ %.2, %iter.check ], [ %.2, %vector.memcheck83 ], [ %i.cw, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ] ; 7 uses
  %i.ea = sub i64 %i.cq, %.368.ph
  %xtraiter = and i64 %i.ea, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.368.ph
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !10
  %i.ed = zext i16 %i.ec to i32
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.368.ph
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !10
  %i.eg = zext i16 %i.ef to i32
  %i.eh = sub nsw i32 %i.ed, %i.eg
  %i.ei = and i32 %i.eh, %3
  %i.ej = trunc i32 %i.ei to i16
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.368.ph
  store i16 %i.ej, ptr %i.ek, align 2, !tbaa !10
  %i.el = add nuw nsw i64 %.368.ph, 1
  br label %.lr.ph69.prol.loopexit

.lr.ph69.prol.loopexit:                           ; preds = %.lr.ph69.prol, %.lr.ph69.preheader
  %.368.unr = phi i64 [ %.368.ph, %.lr.ph69.preheader ], [ %i.el, %.lr.ph69.prol ]
  %i.em = add nsw i64 %i.cq, -1
  %i.en = icmp eq i64 %.368.ph, %i.em
  br i1 %i.en, label %._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69
  %.368 = phi i64 [ %i.fj, %.lr.ph69 ], [ %.368.unr, %.lr.ph69.prol.loopexit ] ; 5 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.368
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !10
  %i.eq = zext i16 %i.ep to i32
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.368
  %i.es = load i16, ptr %i.er, align 2, !tbaa !10
  %i.et = zext i16 %i.es to i32
  %i.eu = sub nsw i32 %i.eq, %i.et
  %i.ev = and i32 %i.eu, %3
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.368
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !10
  %i.ey = add nuw nsw i64 %.368, 1                ; 3 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !10
  %i.fb = zext i16 %i.fa to i32
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ey
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !10
  %i.fe = zext i16 %i.fd to i32
  %i.ff = sub nsw i32 %i.fb, %i.fe
  %i.fg = and i32 %i.ff, %3
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ey
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !10
  %i.fj = add nuw nsw i64 %.368, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.fj, %i.cq
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph69, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69, %middle.block101, %vec.epilog.middle.block, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sub_hfyu_median_pred_int16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) #1 {
bb.a:
  %7 = ptrtoaddr ptr %2 to i64
  %8 = ptrtoaddr ptr %1 to i64
  %9 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.a = load i32, ptr %5, align 4, !tbaa !28     ; 2 uses
  %i.b = load i32, ptr %6, align 4, !tbaa !28     ; 2 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = and i32 %i.a, 65535
  %.pre32 = and i32 %i.b, 65535
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = trunc i32 %i.b to i16                    ; 3 uses
  %i.e = trunc i32 %i.a to i16                    ; 3 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = sub i64 %8, %9
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %7, %9
  %diff.check36 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <8 x i16> poison, i16 %i.d, i64 7
  %vector.recur.init37 = insertelement <8 x i16> poison, i16 %i.e, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %vector.recur38 = phi <8 x i16> [ %vector.recur.init37, %vector.ph ], [ %wide.load39, %vector.body ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !10 ; 4 uses
  %i.i = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.j = zext <8 x i16> %wide.load to <8 x i32>   ; 4 uses
  %i.k = zext <8 x i16> %i.i to <8 x i32>
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load39 = load <8 x i16>, ptr %i.l, align 2, !tbaa !10 ; 4 uses
  %i.m = shufflevector <8 x i16> %vector.recur38, <8 x i16> %wide.load39, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.n = zext <8 x i16> %i.m to <8 x i32>         ; 3 uses
  %i.o = sub nsw <8 x i32> %i.n, %i.k
  %i.p = add nsw <8 x i32> %i.o, %i.j
  %i.q = and <8 x i32> %i.p, %broadcast.splat
  %i.r = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.n, <8 x i32> %i.j)
  %i.s = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.n, <8 x i32> %i.j)
  %i.t = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.q, <8 x i32> %i.r)
  %i.u = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.t, <8 x i32> %i.s)
  %i.v = zext <8 x i16> %wide.load39 to <8 x i32> ; 2 uses
  %i.w = sub nsw <8 x i32> %i.v, %i.u
  %i.x = and <8 x i32> %i.w, %broadcast.splat
  %i.y = trunc <8 x i32> %i.x to <8 x i16>
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.y, ptr %i.z, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load, i64 7
  %vector.recur.extract40 = extractelement <8 x i16> %wide.load39, i64 7
  %i.ab = extractelement <8 x i32> %i.j, i64 7
  %i.ac = extractelement <8 x i32> %i.v, i64 7
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02528.ph = phi i16 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.02627.ph = phi i16 [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %vector.recur.extract40, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader42 ] ; 4 uses
  %.02528 = phi i16 [ %i.af, %.lr.ph ], [ %.02528.ph, %.lr.ph.preheader42 ]
  %.02627 = phi i16 [ %i.ao, %.lr.ph ], [ %.02627.ph, %.lr.ph.preheader42 ]
  %i.ad = zext i16 %.02627 to i32                 ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !10 ; 2 uses
  %i.ag = zext i16 %i.af to i32                   ; 4 uses
  %i.ah = zext i16 %.02528 to i32
  %i.ai = sub nsw i32 %i.ad, %i.ah
  %i.aj = add nsw i32 %i.ai, %i.ag
  %i.ak = and i32 %i.aj, %3
  %..i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 65536) %i.ad, i32 range(i32 0, 65536) %i.ag)
  %.20.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.ad, i32 range(i32 0, 65536) %i.ag)
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %..i)
  %i.am = tail call range(i32 0, 65536) i32 @llvm.smax.i32(i32 %i.al, i32 %.20.i)
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !10 ; 2 uses
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = sub nsw i32 %i.ap, %i.am
  %i.ar = and i32 %i.aq, %3
  %i.as = trunc i32 %i.ar to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.as, ptr %i.at, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.._crit_edge_crit_edge
  %.pre-phi33 = phi i32 [ %.pre32, %.._crit_edge_crit_edge ], [ %i.ab, %middle.block ], [ %i.ag, %.lr.ph ]
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ac, %middle.block ], [ %i.ap, %.lr.ph ]
  store i32 %.pre-phi, ptr %5, align 4, !tbaa !28
  store i32 %.pre-phi33, ptr %6, align 4, !tbaa !28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"HuffYUVEncDSPContext", !14, i64 0, !14, i64 8}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 8}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12, !13}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12}
!24 = !{!5, !5, i64 0}
!25 = !{!"branch_weights", i32 4, i32 12}
!26 = distinct !{!26, !11, !12, !13}
!27 = distinct !{!27, !11, !12}
!28 = !{!6, !6, i64 0}
end_hunk_0
