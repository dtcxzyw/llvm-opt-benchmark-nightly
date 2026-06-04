begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { [2 x i64] }

; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_cbc128_encrypt(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef captures(address) %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.d, label %.preheader62

.preheader62:                                     ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 15
  br i1 %i.b, label %.preheader61, label %iter.check

.preheader61:                                     ; preds = %.preheader62, %.preheader61
  %.067 = phi ptr [ %.05365, %.preheader61 ], [ %4, %.preheader62 ] ; 2 uses
  %.05166 = phi ptr [ %i.m, %.preheader61 ], [ %0, %.preheader62 ] ; 3 uses
  %.05365 = phi ptr [ %i.n, %.preheader61 ], [ %1, %.preheader62 ] ; 8 uses
  %.05564 = phi i64 [ %i.l, %.preheader61 ], [ %2, %.preheader62 ]
  %i.c = load i64, ptr %.05166, align 1, !tbaa !9
  %i.d = load i64, ptr %.067, align 1, !tbaa !9
  %i.e = xor i64 %i.d, %i.c
  store i64 %i.e, ptr %.05365, align 1, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %.05166, i64 8
  %i.g = load i64, ptr %i.f, align 1, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.i = load i64, ptr %i.h, align 1, !tbaa !9
  %i.j = xor i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %.05365, i64 8
  store i64 %i.j, ptr %i.k, align 1, !tbaa !9
  tail call void %5(ptr noundef nonnull %.05365, ptr noundef nonnull %.05365, ptr noundef %3) #2
  %i.l = add i64 %.05564, -16                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05166, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05365, i64 16 ; 2 uses
  %i.o = icmp ugt i64 %i.l, 15
  br i1 %i.o, label %.preheader61, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.preheader61
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %iter.check

iter.check:                                       ; preds = %.preheader62, %._crit_edge
  %.0.lcssa89 = phi ptr [ %.05365, %._crit_edge ], [ %4, %.preheader62 ] ; 17 uses
  %.051.lcssa88 = phi ptr [ %i.m, %._crit_edge ], [ %0, %.preheader62 ] ; 8 uses
  %.053.lcssa87 = phi ptr [ %i.n, %._crit_edge ], [ %1, %.preheader62 ] ; 20 uses
  %.055.lcssa86 = phi i64 [ %i.l, %._crit_edge ], [ %2, %.preheader62 ] ; 16 uses
  %.053.lcssa8794 = ptrtoaddr ptr %.053.lcssa87 to i64 ; 3 uses
  %.0.lcssa8996 = ptrtoaddr ptr %.0.lcssa89 to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.055.lcssa86, 4
  br i1 %min.iters.check, label %.preheader60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.051.lcssa8895 = ptrtoaddr ptr %.051.lcssa88 to i64
  %i.p = sub i64 %.053.lcssa8794, %.051.lcssa8895
  %diff.check = icmp ult i64 %i.p, 32
  %i.q = sub i64 %.053.lcssa8794, %.0.lcssa8996
  %diff.check97 = icmp ult i64 %i.q, 32
  %conflict.rdx = or i1 %diff.check, %diff.check97
  br i1 %conflict.rdx, label %.preheader60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %.055.lcssa86, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !13
  %wide.load99 = load <16 x i8>, ptr %i.s, align 1, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load100 = load <16 x i8>, ptr %i.t, align 1, !tbaa !13
  %wide.load101 = load <16 x i8>, ptr %i.u, align 1, !tbaa !13
  %i.v = xor <16 x i8> %wide.load100, %wide.load
  %i.w = xor <16 x i8> %wide.load101, %wide.load99
  %i.x = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %i.v, ptr %i.x, align 1, !tbaa !13
  store <16 x i8> %i.w, ptr %i.y, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec103 = and i64 %.055.lcssa86, 12           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index104 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %index104
  %wide.load105 = load <4 x i8>, ptr %i.z, align 1, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %index104
  %wide.load106 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !13
  %i.ab = xor <4 x i8> %wide.load106, %wide.load105
  %i.ac = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %index104
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !13
  %index.next107 = add nuw i64 %index104, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next107, %n.vec103
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n108 = icmp eq i64 %.055.lcssa86, %n.vec103
  br i1 %cmp.n108, label %iter.check126, label %.preheader60.preheader

.preheader60.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.14971.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec103, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.055.lcssa86, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader60.prol.loopexit, label %.preheader60.prol

.preheader60.prol:                                ; preds = %.preheader60.preheader, %.preheader60.prol
  %.14971.prol = phi i64 [ %i.ak, %.preheader60.prol ], [ %.14971.ph, %.preheader60.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader60.prol ], [ 0, %.preheader60.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %.14971.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.14971.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = xor i8 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.14971.prol
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !13
  %i.ak = add nuw nsw i64 %.14971.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader60.prol.loopexit, label %.preheader60.prol, !llvm.loop !18

.preheader60.prol.loopexit:                       ; preds = %.preheader60.prol, %.preheader60.preheader
  %.14971.unr = phi i64 [ %.14971.ph, %.preheader60.preheader ], [ %i.ak, %.preheader60.prol ]
  %i.al = sub nsw i64 %.14971.ph, %.055.lcssa86
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %iter.check126, label %.preheader60

.preheader60:                                     ; preds = %.preheader60.prol.loopexit, %.preheader60
  %.14971 = phi i64 [ %i.bo, %.preheader60 ], [ %.14971.unr, %.preheader60.prol.loopexit ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %.14971
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.14971
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.14971
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !13
  %i.at = add nuw nsw i64 %.14971, 1              ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.at
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = xor i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.at
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !13
  %i.ba = add nuw nsw i64 %.14971, 2              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = xor i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.ba
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !13
  %i.bh = add nuw nsw i64 %.14971, 3              ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = xor i8 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.bh
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !13
  %i.bo = add nuw nsw i64 %.14971, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bo, %.055.lcssa86
  br i1 %exitcond.not.3, label %iter.check126, label %.preheader60, !llvm.loop !20

iter.check126:                                    ; preds = %.preheader60.prol.loopexit, %.preheader60, %vec.epilog.middle.block
  %i.bp = sub nuw nsw i64 16, %.055.lcssa86       ; 2 uses
  %min.iters.check111 = icmp ugt i64 %.055.lcssa86, 12
  %i.bq = sub i64 %.053.lcssa8794, %.0.lcssa8996
  %diff.check110 = icmp ult i64 %i.bq, 32
  %or.cond = select i1 %min.iters.check111, i1 true, i1 %diff.check110
  br i1 %or.cond, label %.lr.ph.preheader, label %vec.epilog.ph130

vec.epilog.ph130:                                 ; preds = %iter.check126
  %n.vec132 = and i64 %i.bp, 28                   ; 5 uses
  %i.br = add nuw nsw i64 %.055.lcssa86, %n.vec132
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.055.lcssa86
  %wide.load135 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.055.lcssa86
  store <4 x i8> %wide.load135, ptr %i.bt, align 1, !tbaa !13
  %i.bu = icmp eq i64 %n.vec132, 4
  br i1 %i.bu, label %vec.epilog.middle.block137, label %vec.epilog.vector.body133.1

vec.epilog.vector.body133.1:                      ; preds = %vec.epilog.ph130
  %6 = add nuw nsw i64 %.055.lcssa86, 4           ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %6
  %wide.load135.1 = load <4 x i8>, ptr %7, align 1, !tbaa !13
  %8 = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %6
  store <4 x i8> %wide.load135.1, ptr %8, align 1, !tbaa !13
  %9 = icmp eq i64 %n.vec132, 8
  br i1 %9, label %vec.epilog.middle.block137, label %vec.epilog.vector.body133.2

vec.epilog.vector.body133.2:                      ; preds = %vec.epilog.vector.body133.1
  %10 = add nuw nsw i64 %.055.lcssa86, 8          ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %10
  %wide.load135.2 = load <4 x i8>, ptr %11, align 1, !tbaa !13
  %12 = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %10
  store <4 x i8> %wide.load135.2, ptr %12, align 1, !tbaa !13
  %13 = icmp eq i64 %n.vec132, 12
  br i1 %13, label %vec.epilog.middle.block137, label %vec.epilog.vector.body133.3

vec.epilog.vector.body133.3:                      ; preds = %vec.epilog.vector.body133.2
  %i.bv = add nuw nsw i64 %.055.lcssa86, 12       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.bv
  %wide.load135.3 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.bv
  store <4 x i8> %wide.load135.3, ptr %i.bx, align 1, !tbaa !13
  br label %vec.epilog.middle.block137

vec.epilog.middle.block137:                       ; preds = %vec.epilog.vector.body133.3, %vec.epilog.vector.body133.2, %vec.epilog.vector.body133.1, %vec.epilog.ph130
  %cmp.n138 = icmp eq i64 %i.bp, %n.vec132
  br i1 %cmp.n138, label %._crit_edge73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check126, %vec.epilog.middle.block137
  %.25072.ph = phi i64 [ %.055.lcssa86, %iter.check126 ], [ %i.br, %vec.epilog.middle.block137 ] ; 4 uses
  %i.by = sub i64 0, %.25072.ph
  %xtraiter142 = and i64 %i.by, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.25072.prol = phi i64 [ %i.cc, %.lr.ph.prol ], [ %.25072.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.25072.prol
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.25072.prol
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !13
  %i.cc = add i64 %.25072.prol, 1                 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.25072.unr = phi i64 [ %.25072.ph, %.lr.ph.preheader ], [ %i.cc, %.lr.ph.prol ]
  %i.cd = add i64 %.25072.ph, -13
  %i.ce = icmp ult i64 %i.cd, 3
  br i1 %i.ce, label %._crit_edge73, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.25072 = phi i64 [ %i.cu, %.lr.ph ], [ %.25072.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.25072
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.25072
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !13
  %i.ci = add i64 %.25072, 1                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !13
  %i.cm = add i64 %.25072, 2                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !13
  %i.cq = add i64 %.25072, 3                      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !13
  %i.cu = add i64 %.25072, 4                      ; 2 uses
  %exitcond78.not.3 = icmp eq i64 %i.cu, 16
  br i1 %exitcond78.not.3, label %._crit_edge73, label %.lr.ph, !llvm.loop !22

._crit_edge73:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block137
  tail call void %5(ptr noundef nonnull %.053.lcssa87, ptr noundef nonnull %.053.lcssa87, ptr noundef %3) #2
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge73, %._crit_edge
  %.2 = phi ptr [ %.053.lcssa87, %._crit_edge73 ], [ %.05365, %._crit_edge ] ; 2 uses
  %.not59 = icmp eq ptr %4, %.2
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.2, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef captures(address) %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %6 = alloca %union.anon, align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  %i.c = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %.not, label %.preheader99, label %.preheader101

.preheader101:                                    ; preds = %bb.b
  br i1 %i.c, label %.lr.ph, label %iter.check

.preheader99:                                     ; preds = %bb.b
  br i1 %i.c, label %.lr.ph114.preheader, label %iter.check

.lr.ph114.preheader:                              ; preds = %.preheader99
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph114

.lr.ph:                                           ; preds = %.preheader101, %.lr.ph
  %.0106 = phi ptr [ %i.o, %.lr.ph ], [ %0, %.preheader101 ] ; 5 uses
  %.075105 = phi ptr [ %i.p, %.lr.ph ], [ %1, %.preheader101 ] ; 5 uses
  %.080104 = phi i64 [ %i.n, %.lr.ph ], [ %2, %.preheader101 ]
  %.090103 = phi ptr [ %.0106, %.lr.ph ], [ %4, %.preheader101 ] ; 2 uses
  tail call void %5(ptr noundef %.0106, ptr noundef %.075105, ptr noundef %3) #2
  %i.f = load i64, ptr %.090103, align 1, !tbaa !9
  %i.g = load i64, ptr %.075105, align 1, !tbaa !9
  %i.h = xor i64 %i.g, %i.f
  store i64 %i.h, ptr %.075105, align 1, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %.090103, i64 8
  %i.j = load i64, ptr %i.i, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %.075105, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 1, !tbaa !9
  %i.m = xor i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 1, !tbaa !9
  %i.n = add i64 %.080104, -16                    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0106, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.075105, i64 16 ; 3 uses
  %i.q = icmp ugt i64 %i.n, 15
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph
  %.not97 = icmp eq ptr %4, %.0106
  br i1 %.not97, label %.loopexit100, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.0106, i64 16, i1 false)
  br label %.loopexit100

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph114
  %.1113 = phi ptr [ %i.ac, %.lr.ph114 ], [ %0, %.lr.ph114.preheader ] ; 4 uses
  %.176112 = phi ptr [ %i.ad, %.lr.ph114 ], [ %1, %.lr.ph114.preheader ] ; 3 uses
  %.181111 = phi i64 [ %i.ab, %.lr.ph114 ], [ %2, %.lr.ph114.preheader ]
  call void %5(ptr noundef %.1113, ptr noundef nonnull %6, ptr noundef %3) #2
  %i.r = load i64, ptr %.1113, align 1, !tbaa !9
  %i.s = load i64, ptr %6, align 8, !tbaa !13
  %i.t = load i64, ptr %4, align 1, !tbaa !9
  %i.u = xor i64 %i.t, %i.s
  store i64 %i.u, ptr %.176112, align 1, !tbaa !9
  store i64 %i.r, ptr %4, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.1113, i64 8
  %i.w = load i64, ptr %i.v, align 1, !tbaa !9
  %i.x = load i64, ptr %i.d, align 8, !tbaa !13
  %i.y = load i64, ptr %i.e, align 1, !tbaa !9
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.176112, i64 8
  store i64 %i.z, ptr %i.aa, align 1, !tbaa !9
  store i64 %i.w, ptr %i.e, align 1, !tbaa !9
  %i.ab = add i64 %.181111, -16                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1113, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.176112, i64 16 ; 2 uses
  %i.ae = icmp ugt i64 %i.ab, 15
  br i1 %i.ae, label %.lr.ph114, label %.loopexit100, !llvm.loop !24

.loopexit100:                                     ; preds = %.lr.ph114, %bb.c, %._crit_edge
  %.282 = phi i64 [ %i.n, %._crit_edge ], [ %i.n, %bb.c ], [ %i.ab, %.lr.ph114 ] ; 2 uses
  %.277 = phi ptr [ %i.p, %._crit_edge ], [ %i.p, %bb.c ], [ %i.ad, %.lr.ph114 ]
  %.2 = phi ptr [ %i.o, %._crit_edge ], [ %i.o, %bb.c ], [ %i.ac, %.lr.ph114 ]
  %.not98 = icmp eq i64 %.282, 0
  br i1 %.not98, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader101, %.preheader99, %.loopexit100
  %.2146 = phi ptr [ %.2, %.loopexit100 ], [ %0, %.preheader99 ], [ %0, %.preheader101 ] ; 17 uses
  %.277145 = phi ptr [ %.277, %.loopexit100 ], [ %1, %.preheader99 ], [ %1, %.preheader101 ] ; 9 uses
  %.282144 = phi i64 [ %.282, %.loopexit100 ], [ %2, %.preheader99 ], [ %2, %.preheader101 ] ; 21 uses
  %.2146193 = ptrtoaddr ptr %.2146 to i64
  call void %5(ptr noundef %.2146, ptr noundef nonnull %6, ptr noundef %3) #2
  %i.af = sub nuw nsw i64 17, %.282144            ; 4 uses
  %min.iters.check = icmp ult i64 %.282144, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.277145, i64 %.282144 ; 3 uses
  %scevgep157 = getelementptr i8, ptr %4, i64 %.282144 ; 3 uses
  %scevgep158 = getelementptr i8, ptr %.2146, i64 %.282144 ; 2 uses
  %scevgep159 = getelementptr i8, ptr %6, i64 %.282144 ; 2 uses
  %bound0 = icmp ult ptr %.277145, %scevgep157
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0160 = icmp ult ptr %.277145, %scevgep158
  %bound1161 = icmp ult ptr %.2146, %scevgep
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx = or i1 %found.conflict, %found.conflict162
  %bound0163 = icmp ult ptr %.277145, %scevgep159
  %bound1164 = icmp ult ptr %6, %scevgep
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx166 = or i1 %conflict.rdx, %found.conflict165
  %bound0167 = icmp ult ptr %4, %scevgep158
  %bound1168 = icmp ult ptr %.2146, %scevgep157
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx166, %found.conflict169
  %bound0171 = icmp ult ptr %4, %scevgep159
  %bound1172 = icmp ult ptr %6, %scevgep157
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  br i1 %conflict.rdx174, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check175 = icmp ult i64 %.282144, 32
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.282144, 28
  %n.vec = and i64 %.282144, -32                  ; 5 uses
  %i.ag = or disjoint i64 %i.af, %n.vec           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.2146, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !13, !alias.scope !25
  %wide.load176 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !13, !alias.scope !25
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load177 = load <16 x i8>, ptr %i.aj, align 8, !tbaa !13, !alias.scope !28
  %wide.load178 = load <16 x i8>, ptr %i.ak, align 8, !tbaa !13, !alias.scope !28
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load179 = load <16 x i8>, ptr %i.al, align 1, !tbaa !13, !alias.scope !30, !noalias !32
  %wide.load180 = load <16 x i8>, ptr %i.am, align 1, !tbaa !13, !alias.scope !30, !noalias !32
  %i.an = xor <16 x i8> %wide.load179, %wide.load177
  %i.ao = xor <16 x i8> %wide.load180, %wide.load178
  %i.ap = getelementptr inbounds nuw i8, ptr %.277145, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !13, !alias.scope !33, !noalias !35
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !13, !alias.scope !33, !noalias !35
  store <16 x i8> %wide.load, ptr %i.al, align 1, !tbaa !13, !alias.scope !30, !noalias !32
  store <16 x i8> %wide.load176, ptr %i.am, align 1, !tbaa !13, !alias.scope !30, !noalias !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.ag, -1
  %cmp.n = icmp eq i64 %.282144, %n.vec
  br i1 %cmp.n, label %iter.check208, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec182 = and i64 %.282144, -4                ; 4 uses
  %i.as = add i64 %i.af, %n.vec182                ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index183 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next187, %vec.epilog.vector.body ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.2146, i64 %index183
  %wide.load184 = load <4 x i8>, ptr %i.at, align 1, !tbaa !13, !alias.scope !25
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 %index183
  %wide.load185 = load <4 x i8>, ptr %i.au, align 4, !tbaa !13, !alias.scope !28
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %index183 ; 2 uses
  %wide.load186 = load <4 x i8>, ptr %i.av, align 1, !tbaa !13, !alias.scope !30, !noalias !32
  %i.aw = xor <4 x i8> %wide.load186, %wide.load185
  %i.ax = getelementptr inbounds nuw i8, ptr %.277145, i64 %index183
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !13, !alias.scope !33, !noalias !35
  store <4 x i8> %wide.load184, ptr %i.av, align 1, !tbaa !13, !alias.scope !30, !noalias !32
  %index.next187 = add nuw i64 %index183, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape188 = add i64 %i.as, -1
  %cmp.n189 = icmp eq i64 %.282144, %n.vec182
  br i1 %cmp.n189, label %iter.check208, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 3 uses
  %.287118.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec182, %vec.epilog.middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.287118.ph, 1
  %xtraiter = and i64 %.282144, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %.2146, i64 %.287118.ph
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 %.287118.ph
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %.287118.ph ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = xor i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.277145, i64 %.287118.ph
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !13
  store i8 %i.ba, ptr %i.bd, align 1, !tbaa !13
  %i.bh = or disjoint i64 %.287118.ph, 1
  %indvars.iv.next.prol = add i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.287118.unr = phi i64 [ %.287118.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bh, %vec.epilog.scalar.ph.prol ]
  %i.bi = icmp eq i64 %.282144, %.neg
  br i1 %i.bi, label %iter.check208, label %vec.epilog.scalar.ph

iter.check208.loopexit.unr-lcssa:                 ; preds = %vec.epilog.scalar.ph
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %iter.check208

iter.check208:                                    ; preds = %iter.check208.loopexit.unr-lcssa, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.middle.block, %middle.block
  %indvars.iv.lcssa = phi i64 [ %ind.escape188, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next, %iter.check208.loopexit.unr-lcssa ] ; 3 uses
  %i.bj = sub i64 16, %.282144                    ; 7 uses
  %min.iters.check194 = icmp ult i64 %i.bj, 4
  %i.bk = sub i64 %i.a, %.2146193
  %diff.check = icmp ult i64 %i.bk, 32
  %or.cond = or i1 %min.iters.check194, %diff.check
  br i1 %or.cond, label %.lr.ph120.preheader, label %vector.main.loop.iter.check195

vector.main.loop.iter.check195:                   ; preds = %iter.check208
  %min.iters.check196 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check196, label %vec.epilog.ph212, label %vector.ph197

vector.ph197:                                     ; preds = %vector.main.loop.iter.check195
  %n.mod.vf198 = and i64 %i.bj, 28
  %n.vec199 = and i64 %i.bj, -32                  ; 4 uses
  %i.bl = add i64 %.282144, %n.vec199
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next204, %vector.body200 ] ; 2 uses
  %i.bm = add i64 %.282144, %index201             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.2146, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load202 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !13
  %wide.load203 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <16 x i8> %wide.load202, ptr %i.bp, align 1, !tbaa !13
  store <16 x i8> %wide.load203, ptr %i.bq, align 1, !tbaa !13
  %index.next204 = add nuw i64 %index201, 32      ; 2 uses
  %i.br = icmp eq i64 %index.next204, %n.vec199
  br i1 %i.br, label %middle.block205, label %vector.body200, !llvm.loop !39

middle.block205:                                  ; preds = %vector.body200
  %cmp.n206 = icmp eq i64 %i.bj, %n.vec199
  br i1 %cmp.n206, label %.loopexit, label %vec.epilog.iter.check210

vec.epilog.iter.check210:                         ; preds = %middle.block205
  %min.epilog.iters.check211 = icmp eq i64 %n.mod.vf198, 0
  br i1 %min.epilog.iters.check211, label %.lr.ph120.preheader, label %vec.epilog.ph212, !prof !37

vec.epilog.ph212:                                 ; preds = %vector.main.loop.iter.check195, %vec.epilog.iter.check210
  %vec.epilog.resume.val207 = phi i64 [ %n.vec199, %vec.epilog.iter.check210 ], [ 0, %vector.main.loop.iter.check195 ]
  %n.vec214 = and i64 %i.bj, -4                   ; 3 uses
  %i.bs = add i64 %.282144, %n.vec214
  br label %vec.epilog.vector.body215

vec.epilog.vector.body215:                        ; preds = %vec.epilog.vector.body215, %vec.epilog.ph212
  %index216 = phi i64 [ %vec.epilog.resume.val207, %vec.epilog.ph212 ], [ %index.next218, %vec.epilog.vector.body215 ] ; 2 uses
  %i.bt = add i64 %.282144, %index216             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.2146, i64 %i.bt
  %wide.load217 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  store <4 x i8> %wide.load217, ptr %i.bv, align 1, !tbaa !13
  %index.next218 = add nuw i64 %index216, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next218, %n.vec214
  br i1 %i.bw, label %vec.epilog.middle.block219, label %vec.epilog.vector.body215, !llvm.loop !40

vec.epilog.middle.block219:                       ; preds = %vec.epilog.vector.body215
  %cmp.n220 = icmp eq i64 %i.bj, %n.vec214
  br i1 %cmp.n220, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check208, %vec.epilog.iter.check210, %vec.epilog.middle.block219
  %.388119.ph = phi i64 [ %.282144, %iter.check208 ], [ %i.bl, %vec.epilog.iter.check210 ], [ %i.bs, %vec.epilog.middle.block219 ] ; 4 uses
  %i.bx = sub i64 %indvars.iv.lcssa, %.388119.ph
  %xtraiter228 = and i64 %i.bx, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader, %.lr.ph120.prol
  %.388119.prol = phi i64 [ %i.cb, %.lr.ph120.prol ], [ %.388119.ph, %.lr.ph120.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph120.prol ], [ 0, %.lr.ph120.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.2146, i64 %.388119.prol
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %.388119.prol
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !13
  %i.cb = add nuw nsw i64 %.388119.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter228
  br i1 %prol.iter.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !41

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader
  %.388119.unr = phi i64 [ %.388119.ph, %.lr.ph120.preheader ], [ %i.cb, %.lr.ph120.prol ]
  %i.cc = sub i64 %.388119.ph, %indvars.iv.lcssa
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %.loopexit, label %.lr.ph120

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.287118 = phi i64 [ %i.cv, %vec.epilog.scalar.ph ], [ %.287118.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.2146, i64 %.287118
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 %.287118
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %.287118 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = xor i8 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %.277145, i64 %.287118
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !13
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !13
  %i.cm = add nuw nsw i64 %.287118, 1             ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.2146, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 %i.cm ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = xor i8 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %.277145, i64 %i.cm
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !13
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !13
  %i.cv = add nuw nsw i64 %.287118, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cv, %.282144
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  br i1 %exitcond.not.1, label %iter.check208.loopexit.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !42

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %.388119 = phi i64 [ %i.dl, %.lr.ph120 ], [ %.388119.unr, %.lr.ph120.prol.loopexit ] ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2146, i64 %.388119
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 %.388119
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !13
  %i.cz = add nuw nsw i64 %.388119, 1             ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.2146, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 %i.cz
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !13
  %i.dd = add nuw nsw i64 %.388119, 2             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2146, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %i.dd
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !13
  %i.dh = add nuw nsw i64 %.388119, 3             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.2146, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 %i.dh
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !13
  %i.dl = add nuw nsw i64 %.388119, 4             ; 2 uses
  %exitcond128.not.3 = icmp eq i64 %i.dl, %indvars.iv.lcssa
  br i1 %exitcond128.not.3, label %.loopexit, label %.lr.ph120, !llvm.loop !43

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %middle.block205, %vec.epilog.middle.block219, %.loopexit100, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !12, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !12, !15, !16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !12, !15}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !12, !15}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = !{!31}
!31 = distinct !{!31, !27}
!32 = !{!26, !29}
!33 = !{!34}
!34 = distinct !{!34, !27}
!35 = !{!31, !26, !29}
!36 = distinct !{!36, !12, !15, !16}
!37 = !{!"branch_weights", i32 4, i32 28}
!38 = distinct !{!38, !12, !15, !16}
!39 = distinct !{!39, !12, !15, !16}
!40 = distinct !{!40, !12, !15, !16}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !12, !15}
!43 = distinct !{!43, !12, !15}
end_hunk_0
