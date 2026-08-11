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
  store ptr @diff_int16_c, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @sub_hfyu_median_pred_int16_c, ptr %i.a, align 8, !tbaa !12
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
  %i.i = load i16, ptr %i.h, align 2, !tbaa !13
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.063
  %i.l = load i16, ptr %i.k, align 2, !tbaa !13
  %i.m = zext i16 %i.l to i32
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = and i32 %i.n, %3
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.063
  store i16 %i.p, ptr %i.q, align 2, !tbaa !13
  %i.r = or disjoint i64 %.063, 1                 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !13
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.r
  %i.w = load i16, ptr %i.v, align 2, !tbaa !13
  %i.x = zext i16 %i.w to i32
  %i.y = sub nsw i32 %i.u, %i.x
  %i.z = and i32 %i.y, %3
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.r
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !13
  %i.ac = or disjoint i64 %.063, 2                ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !13
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ac
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !13
  %i.ai = zext i16 %i.ah to i32
  %i.aj = sub nsw i32 %i.af, %i.ai
  %i.ak = and i32 %i.aj, %3
  %i.al = trunc i32 %i.ak to i16
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.al, ptr %i.am, align 2, !tbaa !13
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.g
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !13
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.g
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !13
  %i.as = zext i16 %i.ar to i32
  %i.at = sub nsw i32 %i.ap, %i.as
  %i.au = and i32 %i.at, %3
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !13
  %i.ax = add nuw nsw i64 %.063, 4                ; 3 uses
  %i.ay = icmp slt i64 %i.ax, %invariant.op
  br i1 %i.ay, label %.lr.ph, label %.loopexit, !llvm.loop !15

bb.b:                                             ; preds = %bb.a
  %i.az = lshr i32 %3, 1
  %i.ba = mul i32 %i.az, 65537                    ; 3 uses
  %i.bb = add i32 %i.ba, 65537                    ; 3 uses
  %i.bc = add i32 %4, -2                          ; 2 uses
  %5 = sext i32 %i.bc to i64                      ; 2 uses
  %.not6164 = icmp slt i32 %4, 2
  br i1 %.not6164, label %.loopexit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %bb.b
  %6 = tail call i64 @llvm.smax.i64(i64 %5, i64 1)
  %i.bd = lshr i64 %6, 1
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp slt i32 %i.bc, 14
  br i1 %min.iters.check, label %.lr.ph66.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader
  %i.bf = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bf, -32
  %i.bg = sub i64 %i.c, %i.b
  %diff.check77 = icmp ugt i64 %i.bg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check77
  br i1 %conflict.rdx, label %.lr.ph66.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 2147483640              ; 3 uses
  %i.bh = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl nuw i64 %index, 1                   ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <4 x i32>, ptr %i.bj, align 4, !tbaa !17 ; 2 uses
  %wide.load80 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !17 ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bi ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load81 = load <4 x i32>, ptr %i.bl, align 1, !tbaa !17 ; 2 uses
  %wide.load82 = load <4 x i32>, ptr %i.bm, align 1, !tbaa !17 ; 2 uses
  %i.bn = or <4 x i32> %wide.load, %broadcast.splat
  %i.bo = or <4 x i32> %wide.load80, %broadcast.splat
  %i.bp = and <4 x i32> %wide.load81, %broadcast.splat79
  %i.bq = and <4 x i32> %wide.load82, %broadcast.splat79
  %i.br = sub <4 x i32> %i.bn, %i.bp
  %i.bs = sub <4 x i32> %i.bo, %i.bq
  %i.bt = xor <4 x i32> %wide.load, %wide.load81
  %i.bu = xor <4 x i32> %wide.load80, %wide.load82
  %i.bv = xor <4 x i32> %i.bt, splat (i32 -1)
  %i.bw = xor <4 x i32> %i.bu, splat (i32 -1)
  %i.bx = and <4 x i32> %broadcast.splat, %i.bv
  %i.by = and <4 x i32> %broadcast.splat, %i.bw
  %i.bz = xor <4 x i32> %i.br, %i.bx
  %i.ca = xor <4 x i32> %i.bs, %i.by
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <4 x i32> %i.bz, ptr %i.cb, align 4, !tbaa !17
  store <4 x i32> %i.ca, ptr %i.cc, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph66.preheader113

.lr.ph66.preheader113:                            ; preds = %vector.memcheck, %.lr.ph66.preheader, %middle.block
  %.165.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph66.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader113, %.lr.ph66
  %.165 = phi i64 [ %i.cq, %.lr.ph66 ], [ %.165.ph, %.lr.ph66.preheader113 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.165
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !17 ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.165
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !17 ; 2 uses
  %i.ci = or i32 %i.cf, %i.bb
  %i.cj = and i32 %i.ch, %i.ba
  %i.ck = sub i32 %i.ci, %i.cj
  %i.cl = xor i32 %i.cf, %i.ch
  %i.cm = xor i32 %i.cl, -1
  %i.cn = and i32 %i.bb, %i.cm
  %i.co = xor i32 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.165
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !17
  %i.cq = add nuw nsw i64 %.165, 2                ; 3 uses
  %.not61 = icmp sgt i64 %i.cq, %5
  br i1 %.not61, label %.loopexit, label %.lr.ph66, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph66, %middle.block, %.preheader, %bb.b
  %.2 = phi i64 [ %i.cq, %.lr.ph66 ], [ 0, %bb.b ], [ 0, %.preheader ], [ %i.bh, %middle.block ], [ %i.ax, %.lr.ph ] ; 8 uses
  %i.cr = sext i32 %4 to i64                      ; 5 uses
  %i.cs = icmp slt i64 %.2, %i.cr
  br i1 %i.cs, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.ct = sub i64 %i.cr, %.2                      ; 7 uses
  %min.iters.check88 = icmp ult i64 %i.ct, 4
  br i1 %min.iters.check88, label %.lr.ph69.preheader, label %vector.memcheck83

vector.memcheck83:                                ; preds = %iter.check
  %i.cu = sub i64 %i.a, %i.b
  %diff.check84 = icmp ugt i64 %i.cu, -32
  %i.cv = sub i64 %i.c, %i.b
  %diff.check85 = icmp ugt i64 %i.cv, -32
  %conflict.rdx86 = or i1 %diff.check84, %diff.check85
  br i1 %conflict.rdx86, label %.lr.ph69.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck83
  %min.iters.check89 = icmp ult i64 %i.ct, 16
  br i1 %min.iters.check89, label %vec.epilog.ph, label %vector.ph90

vector.ph90:                                      ; preds = %vector.main.loop.iter.check
  %i.cw = and i64 %i.ct, 12
  %n.vec91 = and i64 %i.ct, -16                   ; 4 uses
  %i.cx = add i64 %.2, %n.vec91
  %broadcast.splatinsert92 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat93 = shufflevector <8 x i32> %broadcast.splatinsert92, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph90
  %index95 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %i.cy = add nuw i64 %.2, %index95               ; 3 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load96 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !13
  %wide.load97 = load <8 x i16>, ptr %i.da, align 2, !tbaa !13
  %i.db = zext <8 x i16> %wide.load96 to <8 x i32>
  %i.dc = zext <8 x i16> %wide.load97 to <8 x i32>
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cy ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load98 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !13
  %wide.load99 = load <8 x i16>, ptr %i.de, align 2, !tbaa !13
  %i.df = zext <8 x i16> %wide.load98 to <8 x i32>
  %i.dg = zext <8 x i16> %wide.load99 to <8 x i32>
  %i.dh = sub nsw <8 x i32> %i.db, %i.df
  %i.di = sub nsw <8 x i32> %i.dc, %i.dg
  %i.dj = and <8 x i32> %i.dh, %broadcast.splat93
  %i.dk = and <8 x i32> %i.di, %broadcast.splat93
  %i.dl = trunc <8 x i32> %i.dj to <8 x i16>
  %i.dm = trunc <8 x i32> %i.dk to <8 x i16>
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <8 x i16> %i.dl, ptr %i.dn, align 2, !tbaa !13
  store <8 x i16> %i.dm, ptr %i.do, align 2, !tbaa !13
  %index.next100 = add nuw i64 %index95, 16       ; 2 uses
  %i.dp = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.dp, label %middle.block101, label %vector.body94, !llvm.loop !22

middle.block101:                                  ; preds = %vector.body94
  %cmp.n102 = icmp eq i64 %i.ct, %n.vec91
  br i1 %cmp.n102, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block101
  %min.epilog.iters.check = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph69.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec91, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %i.ct, -4                   ; 3 uses
  %i.dq = add i64 %.2, %n.vec104
  %broadcast.splatinsert105 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat106 = shufflevector <4 x i32> %broadcast.splatinsert105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = add nuw i64 %.2, %index107              ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dr
  %wide.load108 = load <4 x i16>, ptr %i.ds, align 2, !tbaa !13
  %i.dt = zext <4 x i16> %wide.load108 to <4 x i32>
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.dr
  %wide.load109 = load <4 x i16>, ptr %i.du, align 2, !tbaa !13
  %i.dv = zext <4 x i16> %wide.load109 to <4 x i32>
  %i.dw = sub nsw <4 x i32> %i.dt, %i.dv
  %i.dx = and <4 x i32> %i.dw, %broadcast.splat106
  %i.dy = trunc <4 x i32> %i.dx to <4 x i16>
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dr
  store <4 x i16> %i.dy, ptr %i.dz, align 2, !tbaa !13
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next110, %n.vec104
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.ct, %n.vec104
  br i1 %cmp.n111, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %vector.memcheck83, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.368.ph = phi i64 [ %.2, %iter.check ], [ %.2, %vector.memcheck83 ], [ %i.cx, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ] ; 7 uses
  %i.eb = sub i64 %i.cr, %.368.ph
  %xtraiter = and i64 %i.eb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.368.ph
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !13
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.368.ph
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !13
  %i.eh = zext i16 %i.eg to i32
  %i.ei = sub nsw i32 %i.ee, %i.eh
  %i.ej = and i32 %i.ei, %3
  %i.ek = trunc i32 %i.ej to i16
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.368.ph
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !13
  %i.em = add nuw nsw i64 %.368.ph, 1
  br label %.lr.ph69.prol.loopexit

.lr.ph69.prol.loopexit:                           ; preds = %.lr.ph69.prol, %.lr.ph69.preheader
  %.368.unr = phi i64 [ %.368.ph, %.lr.ph69.preheader ], [ %i.em, %.lr.ph69.prol ]
  %i.en = add nsw i64 %i.cr, -1
  %i.eo = icmp eq i64 %.368.ph, %i.en
  br i1 %i.eo, label %._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69
  %.368 = phi i64 [ %i.fk, %.lr.ph69 ], [ %.368.unr, %.lr.ph69.prol.loopexit ] ; 5 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.368
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !13
  %i.er = zext i16 %i.eq to i32
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.368
  %i.et = load i16, ptr %i.es, align 2, !tbaa !13
  %i.eu = zext i16 %i.et to i32
  %i.ev = sub nsw i32 %i.er, %i.eu
  %i.ew = and i32 %i.ev, %3
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.368
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !13
  %i.ez = add nuw nsw i64 %.368, 1                ; 3 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !13
  %i.fc = zext i16 %i.fb to i32
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ez
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !13
  %i.ff = zext i16 %i.fe to i32
  %i.fg = sub nsw i32 %i.fc, %i.ff
  %i.fh = and i32 %i.fg, %3
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ez
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !13
  %i.fk = add nuw nsw i64 %.368, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.fk, %i.cr
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph69, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69, %middle.block101, %vec.epilog.middle.block, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sub_hfyu_median_pred_int16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = load i32, ptr %5, align 4, !tbaa !26     ; 2 uses
  %i.e = load i32, ptr %6, align 4, !tbaa !26     ; 2 uses
  %i.f = icmp sgt i32 %4, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = and i32 %i.d, 65535
  %.pre32 = and i32 %i.e, 65535
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = trunc i32 %i.e to i16                    ; 3 uses
  %i.h = trunc i32 %i.d to i16                    ; 3 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.i = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.i, -16
  %i.j = sub i64 %i.a, %i.c
  %diff.check36 = icmp ugt i64 %i.j, -16
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <8 x i16> poison, i16 %i.g, i64 7
  %vector.recur.init37 = insertelement <8 x i16> poison, i16 %i.h, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %vector.recur38 = phi <8 x i16> [ %vector.recur.init37, %vector.ph ], [ %wide.load39, %vector.body ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !tbaa !13 ; 4 uses
  %i.l = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.m = zext <8 x i16> %wide.load to <8 x i32>   ; 4 uses
  %i.n = zext <8 x i16> %i.l to <8 x i32>
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load39 = load <8 x i16>, ptr %i.o, align 2, !tbaa !13 ; 4 uses
  %i.p = shufflevector <8 x i16> %vector.recur38, <8 x i16> %wide.load39, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.q = zext <8 x i16> %i.p to <8 x i32>         ; 3 uses
  %i.r = sub nsw <8 x i32> %i.q, %i.n
  %i.s = add nsw <8 x i32> %i.r, %i.m
  %i.t = and <8 x i32> %i.s, %broadcast.splat
  %i.u = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.q, <8 x i32> %i.m)
  %i.v = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.q, <8 x i32> %i.m)
  %i.w = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.t, <8 x i32> %i.v)
  %i.x = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.w, <8 x i32> %i.u)
  %i.y = zext <8 x i16> %wide.load39 to <8 x i32> ; 2 uses
  %i.z = sub nsw <8 x i32> %i.y, %i.x
  %i.aa = and <8 x i32> %i.z, %broadcast.splat
  %i.ab = trunc <8 x i32> %i.aa to <8 x i16>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load, i64 7
  %vector.recur.extract40 = extractelement <8 x i16> %wide.load39, i64 7
  %i.ae = extractelement <8 x i32> %i.m, i64 7
  %i.af = extractelement <8 x i32> %i.y, i64 7
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02528.ph = phi i16 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.02627.ph = phi i16 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %vector.recur.extract40, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader42 ] ; 4 uses
  %.02528 = phi i16 [ %i.ai, %.lr.ph ], [ %.02528.ph, %.lr.ph.preheader42 ]
  %.02627 = phi i16 [ %i.ar, %.lr.ph ], [ %.02627.ph, %.lr.ph.preheader42 ]
  %i.ag = zext i16 %.02627 to i32                 ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !13 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 4 uses
  %i.ak = zext i16 %.02528 to i32
  %i.al = sub nsw i32 %i.ag, %i.ak
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = and i32 %i.am, %3
  %..i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.ag, i32 range(i32 0, 65536) %i.aj)
  %.20.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 65536) %i.ag, i32 range(i32 0, 65536) %i.aj)
  %i.ao = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.20.i)
  %i.ap = tail call range(i32 0, 65536) i32 @llvm.smax.i32(i32 %i.ao, i32 %..i)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !13 ; 2 uses
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = sub nsw i32 %i.as, %i.ap
  %i.au = and i32 %i.at, %3
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.._crit_edge_crit_edge
  %.pre-phi33 = phi i32 [ %.pre32, %.._crit_edge_crit_edge ], [ %i.ae, %middle.block ], [ %i.aj, %.lr.ph ]
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.af, %middle.block ], [ %i.as, %.lr.ph ]
  store i32 %.pre-phi, ptr %5, align 4, !tbaa !26
  store i32 %.pre-phi33, ptr %6, align 4, !tbaa !26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"HuffYUVEncDSPContext", !11, i64 0, !11, i64 8}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !16, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !16, !19}
!22 = distinct !{!22, !16, !19, !20}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = distinct !{!24, !16, !19, !20}
!25 = distinct !{!25, !16, !19}
!26 = !{!6, !6, i64 0}
!27 = distinct !{!27, !16, !19, !20}
!28 = distinct !{!28, !16, !19}
end_hunk_0
