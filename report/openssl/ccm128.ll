Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ccm128?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon.0 = type { [2 x i64] }
%union.anon.1 = type { [2 x i64] }
%union.anon.2 = type { [2 x i64] }
%union.anon.3 = type { [2 x i64] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @CRYPTO_ccm128_init(ptr nofree noundef writeonly captures(none) initializes((0, 16), (32, 56)) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = add i32 %2, 7
  %i.b = and i32 %i.a, 7
  %i.c = shl i32 %1, 2
  %i.d = add i32 %i.c, 56
  %i.e = and i32 %i.d, 56
  %i.f = or disjoint i32 %i.b, %i.e
  %i.g = trunc nuw nsw i32 %i.f to i8
  store i8 %i.g, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %4, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.j, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -1, 1) i32 @CRYPTO_ccm128_setiv(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !8       ; 2 uses
  %i.b = and i8 %i.a, 7                           ; 2 uses
  %narrow = sub nuw nsw i8 14, %i.b
  %i.c = zext nneg i8 %narrow to i64              ; 2 uses
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i8 %i.b, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %3, 56
  %i.g = trunc nuw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %i.h, align 8, !tbaa !8
  %i.i = lshr i64 %3, 48
  %i.j = trunc i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.j, ptr %i.k, align 1, !tbaa !8
  %i.l = lshr i64 %3, 40
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.m, ptr %i.n, align 2, !tbaa !8
  %i.o = lshr i64 %3, 32
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.p, ptr %i.q, align 1, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = lshr i64 %3, 24
  %i.t = trunc i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.t, ptr %i.u, align 4, !tbaa !8
  %i.v = lshr i64 %3, 16
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.w, ptr %i.x, align 1, !tbaa !8
  %i.y = lshr i64 %3, 8
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !8
  %i.ab = trunc i64 %3 to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !8
  %i.ad = and i8 %i.a, -65
  store i8 %i.ad, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define void @CRYPTO_ccm128_aad(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !8
  %i.e = or i8 %i.d, 64
  store i8 %i.e, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.h) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !12
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !12
  %i.l = icmp ult i64 %2, 65280
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %2, 8
  %i.n = trunc nuw i64 %i.m to i8
  %i.o = load i8, ptr %i.f, align 8, !tbaa !8
  %i.p = xor i8 %i.o, %i.n
  store i8 %i.p, ptr %i.f, align 8, !tbaa !8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %2, 4294967295
  %i.r = load i8, ptr %i.f, align 8, !tbaa !8
  %i.s = xor i8 %i.r, -1
  store i8 %i.s, ptr %i.f, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = xor i8 %i.u, -1
  store i8 %i.w, ptr %i.t, align 1, !tbaa !8
  %3 = lshr i64 %2, 56
  %4 = lshr i64 %2, 48
  %5 = lshr i64 %2, 40
  %6 = lshr i64 %2, 32
  %7 = trunc i64 %6 to i8
  %8 = trunc i64 %5 to i8
  %9 = trunc i64 %4 to i8
  %10 = trunc nuw i64 %3 to i8
  %i.x = load <4 x i8>, ptr %i.v, align 2, !tbaa !8
  %11 = insertelement <4 x i8> poison, i8 %10, i64 0
  %12 = insertelement <4 x i8> %11, i8 %9, i64 1
  %13 = insertelement <4 x i8> %12, i8 %8, i64 2
  %14 = insertelement <4 x i8> %13, i8 %7, i64 3
  %i.y = xor <4 x i8> %i.x, %14
  store <4 x i8> %i.y, ptr %i.v, align 2, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !8
  %i.ab = lshr i64 %2, 24
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = xor i8 %i.aa, %i.ac
  store i8 %i.ad, ptr %i.z, align 2, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = lshr i64 %2, 16
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = xor i8 %i.af, %i.ah
  store i8 %i.ai, ptr %i.ae, align 1, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !8
  %i.al = lshr i64 %2, 8
  %i.am = trunc i64 %i.al to i8
  %i.an = xor i8 %i.ak, %i.am
  store i8 %i.an, ptr %i.aj, align 8, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ao = xor i8 %i.u, -2
  store i8 %i.ao, ptr %i.t, align 1, !tbaa !8
  %i.ap = lshr i64 %2, 24
  %i.aq = trunc nuw i64 %i.ap to i8
  %i.ar = load i8, ptr %i.v, align 2, !tbaa !8
  %i.as = xor i8 %i.ar, %i.aq
  store i8 %i.as, ptr %i.v, align 2, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = lshr i64 %2, 16
  %i.aw = trunc i64 %i.av to i8
  %i.ax = xor i8 %i.au, %i.aw
  store i8 %i.ax, ptr %i.at, align 1, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !8
  %i.ba = lshr i64 %2, 8
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = xor i8 %i.az, %i.bb
  store i8 %i.bc, ptr %i.ay, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.sink76 = phi i64 [ 25, %bb.e ], [ 21, %bb.f ], [ 17, %bb.c ]
  %.0 = phi i64 [ 10, %bb.e ], [ 6, %bb.f ], [ 2, %bb.c ]
  %i.bd = trunc i64 %2 to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.sink76 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = xor i8 %i.bf, %i.bd
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !8
  %scevgep = getelementptr i8, ptr %0, i64 16
  %scevgep80 = getelementptr i8, ptr %0, i64 17
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge, %bb.g
  %.057 = phi ptr [ %1, %bb.g ], [ %.lcssa78, %._crit_edge ] ; 8 uses
  %.055 = phi i64 [ %2, %bb.g ], [ %.lcssa77, %._crit_edge ] ; 8 uses
  %.1 = phi i64 [ %.0, %bb.g ], [ 0, %._crit_edge ] ; 10 uses
  %i.bh = add i64 %.055, -1
  %i.bi = sub nsw i64 15, %.1
  %umin84 = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bi) ; 3 uses
  %i.bj = add nuw nsw i64 %umin84, 1              ; 5 uses
  %min.iters.check = icmp ult i64 %umin84, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep79 = getelementptr i8, ptr %scevgep, i64 %.1
  %i.bk = add i64 %.055, -1
  %i.bl = sub nsw i64 15, %.1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bl) ; 2 uses
  %i.bm = getelementptr i8, ptr %scevgep80, i64 %.1
  %scevgep81 = getelementptr i8, ptr %i.bm, i64 %umin
  %scevgep82 = getelementptr i8, ptr %.057, i64 1
  %scevgep83 = getelementptr i8, ptr %scevgep82, i64 %umin
  %bound0 = icmp ult ptr %scevgep79, %scevgep83
  %bound1 = icmp ult ptr %.057, %scevgep81
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check85 = icmp ult i64 %umin84, 15
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bj, -16                     ; 5 uses
  %i.bn = sub i64 %.055, %n.vec                   ; 3 uses
  %i.bo = getelementptr i8, ptr %.057, i64 %n.vec ; 2 uses
  %wide.load = load <16 x i8>, ptr %.057, align 1, !tbaa !8, !alias.scope !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1 ; 2 uses
  %wide.load86 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8, !alias.scope !27, !noalias !26
  %i.bq = xor <16 x i8> %wide.load86, %wide.load
  store <16 x i8> %i.bq, ptr %i.bp, align 1, !tbaa !8, !alias.scope !27, !noalias !26
  %i.br = icmp ne i64 %.055, 16
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.bs = add i64 %.1, %n.vec
  %i.bt = and i64 %i.bj, 12
  %min.epilog.iters.check = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val87 = phi i64 [ %i.bn, %vec.epilog.iter.check ], [ %.055, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.bj, -4                    ; 5 uses
  %i.bu = add i64 %.1, %n.vec89
  %i.bv = sub i64 %.055, %n.vec89                 ; 2 uses
  %i.bw = getelementptr i8, ptr %.057, i64 %n.vec89 ; 2 uses
  %i.bx = add i64 %bc.resume.val87, -3
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.bz = phi i64 [ %i.bx, %vec.epilog.ph ], [ %i.cc, %vec.epilog.vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.057, i64 %index
  %wide.load92 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !8, !alias.scope !26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %index ; 2 uses
  %wide.load93 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !8, !alias.scope !27, !noalias !26
  %i.cb = xor <4 x i8> %wide.load93, %wide.load92
  store <4 x i8> %i.cb, ptr %i.ca, align 1, !tbaa !8, !alias.scope !27, !noalias !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = add i64 %i.bz, -4
  %i.cd = icmp eq i64 %index.next, %n.vec89
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ce = icmp ne i64 %i.bz, 1
  %cmp.n94 = icmp eq i64 %i.bj, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.15661.ph = phi i64 [ %.055, %iter.check ], [ %.055, %vector.memcheck ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  %.15860.ph = phi ptr [ %.057, %iter.check ], [ %.057, %vector.memcheck ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %.15661 = phi i64 [ %i.ck, %.lr.ph ], [ %.15661.ph, %.lr.ph.preheader ]
  %.15860 = phi ptr [ %i.cj, %.lr.ph ], [ %.15860.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cf = load i8, ptr %.15860, align 1, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %i.ci = xor i8 %i.ch, %i.cf
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.15860, i64 1 ; 2 uses
  %i.ck = add i64 %.15661, -1                     ; 3 uses
  %i.cl = icmp samesign ult i64 %indvars.iv, 15
  %i.cm = icmp ne i64 %i.ck, 0                    ; 2 uses
  %i.cn = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %vector.ph
  %.lcssa78 = phi ptr [ %i.bw, %vec.epilog.middle.block ], [ %i.bo, %vector.ph ], [ %i.cj, %.lr.ph ]
  %.lcssa77 = phi i64 [ %i.bv, %vec.epilog.middle.block ], [ %i.bn, %vector.ph ], [ %i.ck, %.lr.ph ]
  %.lcssa = phi i1 [ %i.ce, %vec.epilog.middle.block ], [ %i.br, %vector.ph ], [ %i.cm, %.lr.ph ]
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !14
  tail call void %i.b(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef %i.co) #6
  %i.cp = load i64, ptr %i.i, align 8, !tbaa !12
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.i, align 8, !tbaa !12
  br i1 %.lcssa, label %iter.check, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @CRYPTO_ccm128_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %union.anon.0, align 16             ; 15 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = load i8, ptr %0, align 8, !tbaa !8       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.g = zext i8 %i.b to i32                      ; 2 uses
  %i.h = and i32 %i.g, 64
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef %i.f) #6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = and i32 %i.g, 7                          ; 3 uses
  %i.n = trunc nuw nsw i32 %i.m to i8
  store i8 %i.n, ptr %0, align 8, !tbaa !8
end_hunk_0
