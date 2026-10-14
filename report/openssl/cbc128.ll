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
  %.0.lcssa89 = phi ptr [ %.05365, %._crit_edge ], [ %4, %.preheader62 ] ; 15 uses
  %.051.lcssa88 = phi ptr [ %i.m, %._crit_edge ], [ %0, %.preheader62 ] ; 8 uses
  %.053.lcssa87 = phi ptr [ %i.n, %._crit_edge ], [ %1, %.preheader62 ] ; 18 uses
  %.055.lcssa86 = phi i64 [ %i.l, %._crit_edge ], [ %2, %.preheader62 ] ; 14 uses
  %.053.lcssa8794 = ptrtoaddr ptr %.0.lcssa89 to i64 ; 2 uses
  %.0.lcssa8996 = ptrtoaddr ptr %.053.lcssa87 to i64 ; 3 uses
  %min.iters.check = icmp ult i64 %.055.lcssa86, 4
  br i1 %min.iters.check, label %.preheader60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.051.lcssa8895 = ptrtoaddr ptr %.051.lcssa88 to i64
  %i.p = sub i64 %.051.lcssa8895, %.0.lcssa8996
  %diff.check = icmp ugt i64 %i.p, -32
  %i.q = sub i64 %.053.lcssa8794, %.0.lcssa8996
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
  %i.bq = sub i64 %.053.lcssa8794, %.0.lcssa8996
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
  %.0106 = phi ptr [ %.077105, %.lr.ph ], [ %4, %.preheader101 ] ; 2 uses
  %.077105 = phi ptr [ %i.o, %.lr.ph ], [ %0, %.preheader101 ] ; 5 uses
  %.081104 = phi ptr [ %i.p, %.lr.ph ], [ %1, %.preheader101 ] ; 5 uses
  %.086103 = phi i64 [ %i.n, %.lr.ph ], [ %2, %.preheader101 ]
  tail call void %5(ptr noundef %.077105, ptr noundef %.081104, ptr noundef %3) #2
  %i.f = load i64, ptr %.0106, align 1, !tbaa !9
  %i.g = load i64, ptr %.081104, align 1, !tbaa !9
  %i.h = xor i64 %i.g, %i.f
  store i64 %i.h, ptr %.081104, align 1, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %.0106, i64 8
  %i.j = load i64, ptr %i.i, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %.081104, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 1, !tbaa !9
  %i.m = xor i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 1, !tbaa !9
  %i.n = add i64 %.086103, -16                    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.077105, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.081104, i64 16 ; 3 uses
  %i.q = icmp ugt i64 %i.n, 15
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph
  %.not97 = icmp eq ptr %4, %.077105
  br i1 %.not97, label %.loopexit100, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.077105, i64 16, i1 false)
  br label %.loopexit100

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph114
  %.178113 = phi ptr [ %i.ac, %.lr.ph114 ], [ %0, %.lr.ph114.preheader ] ; 4 uses
  %.182112 = phi ptr [ %i.ad, %.lr.ph114 ], [ %1, %.lr.ph114.preheader ] ; 3 uses
  %.187111 = phi i64 [ %i.ab, %.lr.ph114 ], [ %2, %.lr.ph114.preheader ]
  call void %5(ptr noundef %.178113, ptr noundef nonnull %6, ptr noundef %3) #2
  %i.r = load i64, ptr %.178113, align 1, !tbaa !9
  %i.s = load i64, ptr %6, align 8, !tbaa !11
  %i.t = load i64, ptr %4, align 1, !tbaa !9
  %i.u = xor i64 %i.t, %i.s
  store i64 %i.u, ptr %.182112, align 1, !tbaa !9
  store i64 %i.r, ptr %4, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.178113, i64 8
  %i.w = load i64, ptr %i.v, align 1, !tbaa !9
  %i.x = load i64, ptr %i.d, align 8, !tbaa !11
  %i.y = load i64, ptr %i.e, align 1, !tbaa !9
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.182112, i64 8
  store i64 %i.z, ptr %i.aa, align 1, !tbaa !9
  store i64 %i.w, ptr %i.e, align 1, !tbaa !9
  %i.ab = add i64 %.187111, -16                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.178113, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.182112, i64 16 ; 2 uses
  %i.ae = icmp ugt i64 %i.ab, 15
  br i1 %i.ae, label %.lr.ph114, label %.loopexit100, !llvm.loop !23

.loopexit100:                                     ; preds = %.lr.ph114, %bb.c, %._crit_edge
  %.288 = phi i64 [ %i.n, %._crit_edge ], [ %i.n, %bb.c ], [ %i.ab, %.lr.ph114 ] ; 2 uses
  %.283 = phi ptr [ %i.p, %._crit_edge ], [ %i.p, %bb.c ], [ %i.ad, %.lr.ph114 ]
  %.279 = phi ptr [ %i.o, %._crit_edge ], [ %i.o, %bb.c ], [ %i.ac, %.lr.ph114 ]
  %.not98 = icmp eq i64 %.288, 0
  br i1 %.not98, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader101, %.preheader99, %.loopexit100
  %.279146 = phi ptr [ %.279, %.loopexit100 ], [ %0, %.preheader99 ], [ %0, %.preheader101 ] ; 17 uses
  %.283145 = phi ptr [ %.283, %.loopexit100 ], [ %1, %.preheader99 ], [ %1, %.preheader101 ] ; 9 uses
  %.288144 = phi i64 [ %.288, %.loopexit100 ], [ %2, %.preheader99 ], [ %2, %.preheader101 ] ; 21 uses
  %.279146207 = ptrtoaddr ptr %.279146 to i64
  call void %5(ptr noundef %.279146, ptr noundef nonnull %6, ptr noundef %3) #2
  %i.af = sub nuw nsw i64 17, %.288144            ; 4 uses
  %min.iters.check = icmp ult i64 %.288144, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
end_hunk_0
