Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cbc128?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { [2 x i64] }

; Function Attrs: nounwind uwtable
define void @CRYPTO_cbc128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(address) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
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
  br i1 %i.o, label %.preheader61, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.preheader61
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.b, label %iter.check

iter.check:                                       ; preds = %.preheader62, %._crit_edge
  %.0.lcssa89 = phi ptr [ %.05365, %._crit_edge ], [ %4, %.preheader62 ] ; 16 uses
  %.051.lcssa88 = phi ptr [ %i.m, %._crit_edge ], [ %0, %.preheader62 ] ; 8 uses
  %.053.lcssa87 = phi ptr [ %i.n, %._crit_edge ], [ %1, %.preheader62 ] ; 19 uses
  %.055.lcssa86 = phi i64 [ %i.l, %._crit_edge ], [ %2, %.preheader62 ] ; 14 uses
  %min.iters.check = icmp ult i64 %.055.lcssa86, 4
  br i1 %min.iters.check, label %.preheader60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %6 = ptrtoaddr ptr %.053.lcssa87 to i64         ; 2 uses
  %.051.lcssa8895 = ptrtoaddr ptr %.051.lcssa88 to i64
  %i.p = sub i64 %.051.lcssa8895, %6
  %diff.check = icmp ugt i64 %i.p, -32
  %7 = ptrtoaddr ptr %.0.lcssa89 to i64
  %i.q = sub i64 %7, %6
  %diff.check97 = icmp ugt i64 %i.q, -32
  %conflict.rdx = or i1 %diff.check, %diff.check97
  br i1 %conflict.rdx, label %.preheader60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %.055.lcssa86, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !11
  %wide.load99 = load <16 x i8>, ptr %i.s, align 1, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load100 = load <16 x i8>, ptr %i.t, align 1, !tbaa !11
  %wide.load101 = load <16 x i8>, ptr %i.u, align 1, !tbaa !11
  %i.v = xor <16 x i8> %wide.load100, %wide.load
  %i.w = xor <16 x i8> %wide.load101, %wide.load99
  %i.x = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %i.v, ptr %i.x, align 1, !tbaa !11
  store <16 x i8> %i.w, ptr %i.y, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec102 = and i64 %.055.lcssa86, 12           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.z, align 1, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %index103
  %wide.load105 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !11
  %i.ab = xor <4 x i8> %wide.load105, %wide.load104
  %i.ac = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %index103
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !11
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %.055.lcssa86, %n.vec102
  br i1 %cmp.n107, label %iter.check124, label %.preheader60.preheader

.preheader60.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.14971.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.055.lcssa86, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader60.prol.loopexit, label %.preheader60.prol

.preheader60.prol:                                ; preds = %.preheader60.preheader, %.preheader60.prol
  %.14971.prol = phi i64 [ %i.ak, %.preheader60.prol ], [ %.14971.ph, %.preheader60.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader60.prol ], [ 0, %.preheader60.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %.14971.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.14971.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = xor i8 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.14971.prol
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !11
  %i.ak = add nuw nsw i64 %.14971.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader60.prol.loopexit, label %.preheader60.prol, !llvm.loop !18

.preheader60.prol.loopexit:                       ; preds = %.preheader60.prol, %.preheader60.preheader
  %.14971.unr = phi i64 [ %.14971.ph, %.preheader60.preheader ], [ %i.ak, %.preheader60.prol ]
  %i.al = sub nsw i64 %.14971.ph, %.055.lcssa86
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %iter.check124, label %.preheader60

.preheader60:                                     ; preds = %.preheader60.prol.loopexit, %.preheader60
  %.14971 = phi i64 [ %i.bo, %.preheader60 ], [ %.14971.unr, %.preheader60.prol.loopexit ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %.14971
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.14971
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.14971
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !11
  %i.at = add nuw nsw i64 %.14971, 1              ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.at
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = xor i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.at
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !11
  %i.ba = add nuw nsw i64 %.14971, 2              ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = xor i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.ba
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !11
  %i.bh = add nuw nsw i64 %.14971, 3              ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.051.lcssa88, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.bh
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = xor i8 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.bh
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !11
  %i.bo = add nuw nsw i64 %.14971, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bo, %.055.lcssa86
  br i1 %exitcond.not.3, label %iter.check124, label %.preheader60, !llvm.loop !19

iter.check124:                                    ; preds = %.preheader60.prol.loopexit, %.preheader60, %vec.epilog.middle.block
  %i.bp = sub nuw nsw i64 16, %.055.lcssa86       ; 2 uses
  %min.iters.check110 = icmp ugt i64 %.055.lcssa86, 8
  %8 = ptrtoaddr ptr %.053.lcssa87 to i64
  %9 = ptrtoaddr ptr %.0.lcssa89 to i64
  %i.bq = sub i64 %9, %8
  %diff.check109 = icmp ugt i64 %i.bq, -32
  %or.cond = select i1 %min.iters.check110, i1 true, i1 %diff.check109
  br i1 %or.cond, label %.lr.ph.preheader, label %vec.epilog.ph128

vec.epilog.ph128:                                 ; preds = %iter.check124
  %n.vec129 = and i64 %i.bp, 24                   ; 3 uses
  %i.br = add nuw nsw i64 %.055.lcssa86, %n.vec129
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.055.lcssa86
  %wide.load132 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.055.lcssa86
  store <8 x i8> %wide.load132, ptr %i.bt, align 1, !tbaa !11
  %i.bu = icmp eq i64 %n.vec129, 8
  br i1 %i.bu, label %vec.epilog.middle.block134, label %vec.epilog.vector.body130.1

vec.epilog.vector.body130.1:                      ; preds = %vec.epilog.ph128
  %i.bv = add nuw nsw i64 %.055.lcssa86, 8        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.bv
  %wide.load132.1 = load <8 x i8>, ptr %i.bw, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.bv
  store <8 x i8> %wide.load132.1, ptr %i.bx, align 1, !tbaa !11
  br label %vec.epilog.middle.block134

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body130.1, %vec.epilog.ph128
  %cmp.n135 = icmp eq i64 %i.bp, %n.vec129
  br i1 %cmp.n135, label %._crit_edge73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check124, %vec.epilog.middle.block134
  %.25072.ph = phi i64 [ %.055.lcssa86, %iter.check124 ], [ %i.br, %vec.epilog.middle.block134 ] ; 4 uses
  %i.by = sub i64 0, %.25072.ph
  %xtraiter139 = and i64 %i.by, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.25072.prol = phi i64 [ %i.cc, %.lr.ph.prol ], [ %.25072.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.25072.prol
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.25072.prol
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !11
  %i.cc = add i64 %.25072.prol, 1                 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !20

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.25072.unr = phi i64 [ %.25072.ph, %.lr.ph.preheader ], [ %i.cc, %.lr.ph.prol ]
  %i.cd = add i64 %.25072.ph, -13
  %i.ce = icmp ult i64 %i.cd, 3
  br i1 %i.ce, label %._crit_edge73, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.25072 = phi i64 [ %i.cu, %.lr.ph ], [ %.25072.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.25072
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.25072
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !11
  %i.ci = add i64 %.25072, 1                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !11
  %i.cm = add i64 %.25072, 2                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !11
  %i.cq = add i64 %.25072, 3                      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !11
  %i.cu = add i64 %.25072, 4                      ; 2 uses
  %exitcond78.not.3 = icmp eq i64 %i.cu, 16
  br i1 %exitcond78.not.3, label %._crit_edge73, label %.lr.ph, !llvm.loop !21

._crit_edge73:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block134
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
define void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(address) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon, align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  %i.b = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %.not, label %.preheader99, label %.preheader101

.preheader101:                                    ; preds = %bb.b
  br i1 %i.b, label %.lr.ph, label %iter.check

.preheader99:                                     ; preds = %bb.b
  br i1 %i.b, label %.lr.ph114.preheader, label %iter.check

.lr.ph114.preheader:                              ; preds = %.preheader99
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph114

.lr.ph:                                           ; preds = %.preheader101, %.lr.ph
  %.0106 = phi ptr [ %.077105, %.lr.ph ], [ %4, %.preheader101 ] ; 2 uses
  %.077105 = phi ptr [ %i.n, %.lr.ph ], [ %0, %.preheader101 ] ; 5 uses
  %.081104 = phi ptr [ %i.o, %.lr.ph ], [ %1, %.preheader101 ] ; 5 uses
  %.086103 = phi i64 [ %i.m, %.lr.ph ], [ %2, %.preheader101 ]
  tail call void %5(ptr noundef %.077105, ptr noundef %.081104, ptr noundef %3) #2
  %i.e = load i64, ptr %.0106, align 1, !tbaa !9
  %i.f = load i64, ptr %.081104, align 1, !tbaa !9
  %i.g = xor i64 %i.f, %i.e
  store i64 %i.g, ptr %.081104, align 1, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %.0106, i64 8
  %i.i = load i64, ptr %i.h, align 1, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %.081104, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 1, !tbaa !9
  %i.l = xor i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 1, !tbaa !9
  %i.m = add i64 %.086103, -16                    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.077105, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.081104, i64 16 ; 3 uses
  %i.p = icmp ugt i64 %i.m, 15
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph
  %.not97 = icmp eq ptr %4, %.077105
  br i1 %.not97, label %.loopexit100, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.077105, i64 16, i1 false)
  br label %.loopexit100

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph114
  %.178113 = phi ptr [ %i.ab, %.lr.ph114 ], [ %0, %.lr.ph114.preheader ] ; 4 uses
  %.182112 = phi ptr [ %i.ac, %.lr.ph114 ], [ %1, %.lr.ph114.preheader ] ; 3 uses
  %.187111 = phi i64 [ %i.aa, %.lr.ph114 ], [ %2, %.lr.ph114.preheader ]
  call void %5(ptr noundef %.178113, ptr noundef nonnull %6, ptr noundef %3) #2
  %i.q = load i64, ptr %.178113, align 1, !tbaa !9
  %i.r = load i64, ptr %6, align 8, !tbaa !11
  %i.s = load i64, ptr %4, align 1, !tbaa !9
  %i.t = xor i64 %i.s, %i.r
  store i64 %i.t, ptr %.182112, align 1, !tbaa !9
  store i64 %i.q, ptr %4, align 1, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %.178113, i64 8
  %i.v = load i64, ptr %i.u, align 1, !tbaa !9
  %i.w = load i64, ptr %i.c, align 8, !tbaa !11
  %i.x = load i64, ptr %i.d, align 1, !tbaa !9
  %i.y = xor i64 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.182112, i64 8
  store i64 %i.y, ptr %i.z, align 1, !tbaa !9
  store i64 %i.v, ptr %i.d, align 1, !tbaa !9
  %i.aa = add i64 %.187111, -16                   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.178113, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.182112, i64 16 ; 2 uses
  %i.ad = icmp ugt i64 %i.aa, 15
  br i1 %i.ad, label %.lr.ph114, label %.loopexit100, !llvm.loop !23

.loopexit100:                                     ; preds = %.lr.ph114, %bb.c, %._crit_edge
  %.288 = phi i64 [ %i.m, %._crit_edge ], [ %i.m, %bb.c ], [ %i.aa, %.lr.ph114 ] ; 2 uses
  %.283 = phi ptr [ %i.o, %._crit_edge ], [ %i.o, %bb.c ], [ %i.ac, %.lr.ph114 ]
  %.279 = phi ptr [ %i.n, %._crit_edge ], [ %i.n, %bb.c ], [ %i.ab, %.lr.ph114 ]
  %.not98 = icmp eq i64 %.288, 0
  br i1 %.not98, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader101, %.preheader99, %.loopexit100
  %.279146 = phi ptr [ %.279, %.loopexit100 ], [ %0, %.preheader99 ], [ %0, %.preheader101 ] ; 17 uses
  %.283145 = phi ptr [ %.283, %.loopexit100 ], [ %1, %.preheader99 ], [ %1, %.preheader101 ] ; 9 uses
  %.288144 = phi i64 [ %.288, %.loopexit100 ], [ %2, %.preheader99 ], [ %2, %.preheader101 ] ; 21 uses
  call void %5(ptr noundef %.279146, ptr noundef nonnull %6, ptr noundef %3) #2
  %i.ae = sub nuw nsw i64 17, %.288144            ; 4 uses
  %min.iters.check = icmp ult i64 %.288144, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = getelementptr i8, ptr %.283145, i64 %.288144 ; 3 uses
  %i.ag = getelementptr i8, ptr %4, i64 %.288144  ; 3 uses
  %i.ah = getelementptr i8, ptr %.279146, i64 %.288144 ; 2 uses
  %i.ai = getelementptr i8, ptr %6, i64 %.288144  ; 2 uses
  %bound0 = icmp ult ptr %.283145, %i.ag
  %bound1 = icmp ult ptr %4, %i.af
  %found.conflict = and i1 %bound0, %bound1
  %bound0175 = icmp ult ptr %.283145, %i.ah
  %bound1176 = icmp ult ptr %.279146, %i.af
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx = or i1 %found.conflict, %found.conflict177
  %bound0178 = icmp ult ptr %.283145, %i.ai
  %bound1179 = icmp ult ptr %6, %i.af
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx, %found.conflict180
  %bound0182 = icmp ult ptr %4, %i.ah
  %bound1183 = icmp ult ptr %.279146, %i.ag
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %4, %i.ai
  %bound1187 = icmp ult ptr %6, %i.ag
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  br i1 %conflict.rdx189, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check190 = icmp ult i64 %.288144, 32
  br i1 %min.iters.check190, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %.288144, 28
  %n.vec = and i64 %.288144, -32                  ; 5 uses
  %i.ak = or disjoint i64 %i.ae, %n.vec           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.279146, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <16 x i8>, ptr %i.al, align 1, !tbaa !11, !alias.scope !36
  %wide.load191 = load <16 x i8>, ptr %i.am, align 1, !tbaa !11, !alias.scope !36
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load192 = load <16 x i8>, ptr %i.an, align 8, !tbaa !11, !alias.scope !37
  %wide.load193 = load <16 x i8>, ptr %i.ao, align 8, !tbaa !11, !alias.scope !37
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load194 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !11, !alias.scope !38, !noalias !39
  %wide.load195 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !11, !alias.scope !38, !noalias !39
  %i.ar = xor <16 x i8> %wide.load194, %wide.load192
  %i.as = xor <16 x i8> %wide.load195, %wide.load193
  %i.at = getelementptr inbounds nuw i8, ptr %.283145, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <16 x i8> %i.ar, ptr %i.at, align 1, !tbaa !11, !alias.scope !40, !noalias !41
  store <16 x i8> %i.as, ptr %i.au, align 1, !tbaa !11, !alias.scope !40, !noalias !41
  store <16 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !11, !alias.scope !38, !noalias !39
  store <16 x i8> %wide.load191, ptr %i.aq, align 1, !tbaa !11, !alias.scope !38, !noalias !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.ak, -1
  %cmp.n = icmp eq i64 %.288144, %n.vec
  br i1 %cmp.n, label %iter.check221, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec196 = and i64 %.288144, -4                ; 4 uses
  %i.aw = add i64 %i.ae, %n.vec196                ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index197 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.279146, i64 %index197
  %wide.load198 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !11, !alias.scope !36
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 %index197
  %wide.load199 = load <4 x i8>, ptr %i.ay, align 4, !tbaa !11, !alias.scope !37
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %index197 ; 2 uses
  %wide.load200 = load <4 x i8>, ptr %i.az, align 1, !tbaa !11, !alias.scope !38, !noalias !39
  %i.ba = xor <4 x i8> %wide.load200, %wide.load199
  %i.bb = getelementptr inbounds nuw i8, ptr %.283145, i64 %index197
  store <4 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !11, !alias.scope !40, !noalias !41
  store <4 x i8> %wide.load198, ptr %i.az, align 1, !tbaa !11, !alias.scope !38, !noalias !39
  %index.next201 = add nuw i64 %index197, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape202 = add i64 %i.aw, -1
  %cmp.n203 = icmp eq i64 %.288144, %n.vec196
  br i1 %cmp.n203, label %iter.check221, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ae, %iter.check ], [ %i.ae, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 3 uses
  %.2118.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec196, %vec.epilog.middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.2118.ph, 1
  %xtraiter = and i64 %.288144, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %.279146, i64 %.2118.ph
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 %.2118.ph
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 %.2118.ph ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = xor i8 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %.283145, i64 %.2118.ph
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !11
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !11
  %i.bl = or disjoint i64 %.2118.ph, 1
  %indvars.iv.next.prol = add i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.2118.unr = phi i64 [ %.2118.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bl, %vec.epilog.scalar.ph.prol ]
  %i.bm = icmp eq i64 %.288144, %.neg
  br i1 %i.bm, label %iter.check221, label %vec.epilog.scalar.ph

iter.check221.loopexit.unr-lcssa:                 ; preds = %vec.epilog.scalar.ph
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %iter.check221

iter.check221:                                    ; preds = %iter.check221.loopexit.unr-lcssa, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.middle.block, %middle.block
  %indvars.iv.lcssa = phi i64 [ %ind.escape202, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next, %iter.check221.loopexit.unr-lcssa ] ; 3 uses
  %i.bn = sub i64 16, %.288144                    ; 7 uses
  %min.iters.check208 = icmp ult i64 %i.bn, 8
  %7 = ptrtoaddr ptr %4 to i64
  %8 = ptrtoaddr ptr %.279146 to i64
  %i.bo = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.bo, -32
  %or.cond = or i1 %min.iters.check208, %diff.check
  br i1 %or.cond, label %.lr.ph120.preheader, label %vector.main.loop.iter.check209

vector.main.loop.iter.check209:                   ; preds = %iter.check221
  %min.iters.check210 = icmp ult i64 %i.bn, 32
  br i1 %min.iters.check210, label %vec.epilog.ph225, label %vector.ph211

vector.ph211:                                     ; preds = %vector.main.loop.iter.check209
  %i.bp = and i64 %i.bn, 24
  %n.vec212 = and i64 %i.bn, -32                  ; 4 uses
  %i.bq = add i64 %.288144, %n.vec212
  br label %vector.body213

vector.body213:                                   ; preds = %vector.ph211, %vector.body213
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next217, %vector.body213 ] ; 2 uses
  %i.br = add nuw i64 %.288144, %index214         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load215 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !11
  %wide.load216 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.br ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <16 x i8> %wide.load215, ptr %i.bu, align 1, !tbaa !11
  store <16 x i8> %wide.load216, ptr %i.bv, align 1, !tbaa !11
  %index.next217 = add nuw i64 %index214, 32      ; 2 uses
  %i.bw = icmp eq i64 %index.next217, %n.vec212
  br i1 %i.bw, label %middle.block218, label %vector.body213, !llvm.loop !31

middle.block218:                                  ; preds = %vector.body213
  %cmp.n219 = icmp eq i64 %i.bn, %n.vec212
  br i1 %cmp.n219, label %.loopexit, label %vec.epilog.iter.check223

vec.epilog.iter.check223:                         ; preds = %middle.block218
  %min.epilog.iters.check224 = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check224, label %.lr.ph120.preheader, label %vec.epilog.ph225, !prof !43

vec.epilog.ph225:                                 ; preds = %vector.main.loop.iter.check209, %vec.epilog.iter.check223
  %vec.epilog.resume.val220 = phi i64 [ %n.vec212, %vec.epilog.iter.check223 ], [ 0, %vector.main.loop.iter.check209 ]
  %n.vec226 = and i64 %i.bn, -8                   ; 3 uses
  %i.bx = add i64 %.288144, %n.vec226
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph225
  %index228 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph225 ], [ %index.next230, %vec.epilog.vector.body227 ] ; 2 uses
  %i.by = add nuw i64 %.288144, %index228         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.by
  %wide.load229 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %i.by
  store <8 x i8> %wide.load229, ptr %i.ca, align 1, !tbaa !11
  %index.next230 = add nuw i64 %index228, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next230, %n.vec226
  br i1 %i.cb, label %vec.epilog.middle.block231, label %vec.epilog.vector.body227, !llvm.loop !32

vec.epilog.middle.block231:                       ; preds = %vec.epilog.vector.body227
  %cmp.n232 = icmp eq i64 %i.bn, %n.vec226
  br i1 %cmp.n232, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check221, %vec.epilog.iter.check223, %vec.epilog.middle.block231
  %.3119.ph = phi i64 [ %.288144, %iter.check221 ], [ %i.bq, %vec.epilog.iter.check223 ], [ %i.bx, %vec.epilog.middle.block231 ] ; 4 uses
  %i.cc = sub i64 %indvars.iv.lcssa, %.3119.ph
  %xtraiter240 = and i64 %i.cc, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader, %.lr.ph120.prol
  %.3119.prol = phi i64 [ %i.cg, %.lr.ph120.prol ], [ %.3119.ph, %.lr.ph120.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph120.prol ], [ 0, %.lr.ph120.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.279146, i64 %.3119.prol
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %.3119.prol
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !11
  %i.cg = add nuw nsw i64 %.3119.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter240
  br i1 %prol.iter.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !33

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader
  %.3119.unr = phi i64 [ %.3119.ph, %.lr.ph120.preheader ], [ %i.cg, %.lr.ph120.prol ]
  %i.ch = sub i64 %.3119.ph, %indvars.iv.lcssa
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.loopexit, label %.lr.ph120

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.2118 = phi i64 [ %i.da, %vec.epilog.scalar.ph ], [ %.2118.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.279146, i64 %.2118
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 %.2118
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 %.2118 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cp = xor i8 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %.283145, i64 %.2118
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !11
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !11
  %i.cr = add nuw nsw i64 %.2118, 1               ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 %i.cr
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %i.cr ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.cy = xor i8 %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %.283145, i64 %i.cr
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !11
  store i8 %i.ct, ptr %i.cw, align 1, !tbaa !11
  %i.da = add nuw nsw i64 %.2118, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.da, %.288144
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  br i1 %exitcond.not.1, label %iter.check221.loopexit.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !34

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %.3119 = phi i64 [ %i.dq, %.lr.ph120 ], [ %.3119.unr, %.lr.ph120.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.279146, i64 %.3119
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 %.3119
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !11
  %i.de = add nuw nsw i64 %.3119, 1               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !11
  %i.di = add nuw nsw i64 %.3119, 2               ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 %i.di
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !11
  %i.dm = add nuw nsw i64 %.3119, 3               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.dm
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !11
  %i.dq = add nuw nsw i64 %.3119, 4               ; 2 uses
  %exitcond128.not.3 = icmp eq i64 %i.dq, %indvars.iv.lcssa
  br i1 %exitcond128.not.3, label %.loopexit, label %.lr.ph120, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %middle.block218, %vec.epilog.middle.block231, %.loopexit100, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !12, !13}
!17 = distinct !{!17, !10, !12, !13}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !10, !12}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !10, !12}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, i1 false, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !10, !12, !13}
!30 = distinct !{!30, !10, !12, !13}
!31 = distinct !{!31, !10, !12, !13}
!32 = distinct !{!32, !10, !12, !13}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !10, !12}
!35 = distinct !{!35, !10, !12}
!36 = !{!25}
!37 = !{!26}
!38 = !{!27}
!39 = !{!25, !26}
!40 = !{!28}
!41 = !{!27, !25, !26}
!42 = !{!"branch_weights", i32 4, i32 28}
!43 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
