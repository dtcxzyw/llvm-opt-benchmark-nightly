loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prov_cipher_hw_chacha20_st = type { %struct.prov_cipher_hw_st, ptr }
%struct.prov_cipher_hw_st = type { ptr, ptr, ptr }

@chacha20_hw = internal constant %struct.prov_cipher_hw_chacha20_st { %struct.prov_cipher_hw_st { ptr @chacha20_initkey, ptr @chacha20_cipher, ptr null }, ptr @chacha20_initiv }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ossl_prov_cipher_hw_chacha20(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  ret ptr @chacha20_hw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @chacha20_initkey(ptr nofree noundef writeonly captures(none) initializes((304, 308)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 %2) #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i32, ptr %1, align 1
  store i32 %i.b, ptr %i.a, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.d, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.g, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %i.j, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.m, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %i.p, ptr %i.q, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.s, ptr %i.t, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.v, ptr %i.w, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %i.x, align 8, !tbaa !11
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @chacha20_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp ne i64 %3, 0
  %i.g = icmp ult i32 %i.e, 64
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.j = zext nneg i32 %i.e to i64                ; 8 uses
  %i.k = add i64 %3, -1
  %i.l = sub nuw nsw i64 63, %i.j
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 3 uses
  %i.m = add nuw nsw i64 %umin, 1                 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = add i64 %i.a, %i.j
  %i.p = sub i64 %i.c, %i.o
  %i.q = add i64 %i.p, -241
  %diff.check121 = icmp ult i64 %i.q, 31
  %conflict.rdx = or i1 %diff.check, %diff.check121
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check122 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph.a

vector.ph.a:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 28
  %n.vec = and i64 %i.m, 96                       ; 6 uses
  %4 = add nuw nsw i64 %n.vec, %i.j               ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %5 = sub i64 %3, %n.vec                         ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 16
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !10
  %wide.load124 = load <16 x i8>, ptr %i.t, align 1, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load125 = load <16 x i8>, ptr %i.u, align 1, !tbaa !10
  %wide.load126 = load <16 x i8>, ptr %i.v, align 1, !tbaa !10
  %i.w = xor <16 x i8> %wide.load125, %wide.load
  %i.x = xor <16 x i8> %wide.load126, %wide.load124
  %i.y = getelementptr i8, ptr %1, i64 16
  store <16 x i8> %i.w, ptr %1, align 1, !tbaa !10
  store <16 x i8> %i.x, ptr %i.y, align 1, !tbaa !10
  %cmp.n.a = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n.a, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph.a
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.m, 124                   ; 6 uses
  %i.z = add nuw nsw i64 %n.vec131, %i.j          ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 %n.vec131 ; 2 uses
  %i.ab = sub i64 %3, %n.vec131                   ; 2 uses
  %i.ac = getelementptr i8, ptr %2, i64 %n.vec131 ; 2 uses
  %invariant.gep.a = getelementptr i8, ptr %i.i, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 4 uses
  %next.gep133 = getelementptr i8, ptr %1, i64 %index132
  %next.gep134 = getelementptr i8, ptr %2, i64 %index132
  %wide.load135 = load <4 x i8>, ptr %next.gep134, align 1, !tbaa !10
  %gep = getelementptr i8, ptr %invariant.gep.a, i64 %index132
  %wide.load136 = load <4 x i8>, ptr %gep, align 1, !tbaa !10
  %i.ad = xor <4 x i8> %wide.load136, %wide.load135
  store <4 x i8> %i.ad, ptr %next.gep133, align 1, !tbaa !10
  %index.next137 = add nuw i64 %index132, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next137, %n.vec131
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.m, %n.vec131
  br i1 %cmp.n138, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.06884.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.07083.ph = phi i64 [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.07382.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.06884 = phi ptr [ %i.ak, %vec.epilog.scalar.ph ], [ %.06884.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.07083 = phi i64 [ %i.al, %vec.epilog.scalar.ph ], [ %.07083.ph, %vec.epilog.scalar.ph.preheader ]
  %.07382 = phi ptr [ %i.af, %vec.epilog.scalar.ph ], [ %.07382.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.07382, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.07382, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.aj = xor i8 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.06884, i64 1 ; 2 uses
  store i8 %i.aj, ptr %.06884, align 1, !tbaa !10
  %i.al = add i64 %.07083, -1                     ; 3 uses
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp samesign ult i64 %indvars.iv, 63
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph.a
  %.lcssa120 = phi ptr [ %i.ac, %vec.epilog.middle.block ], [ %i.s, %vector.ph.a ], [ %i.af, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.z, %vec.epilog.middle.block ], [ %4, %vector.ph.a ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa119 = phi ptr [ %i.aa, %vec.epilog.middle.block ], [ %i.r, %vector.ph.a ], [ %i.ak, %vec.epilog.scalar.ph ]
  %.lcssa118 = phi i64 [ %i.ab, %vec.epilog.middle.block ], [ %5, %vector.ph.a ], [ %i.al, %vec.epilog.scalar.ph ]
  %i.ap = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.073.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa120, %._crit_edge.loopexit ] ; 3 uses
  %.070.lcssa = phi i64 [ %3, %.preheader ], [ %.lcssa118, %._crit_edge.loopexit ] ; 4 uses
  %.068.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa119, %._crit_edge.loopexit ] ; 3 uses
  %.066.lcssa = phi i32 [ %i.e, %.preheader ], [ %i.ap, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.066.lcssa, ptr %i.d, align 8, !tbaa !11
  %i.aq = icmp eq i64 %.070.lcssa, 0
  br i1 %i.aq, label %bb.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ar = icmp eq i32 %.066.lcssa, 64
  br i1 %i.ar, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !25
  %i.au = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.au, ptr %i.as, align 8, !tbaa !25
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.174 = phi ptr [ %.073.lcssa, %bb.d ], [ %.073.lcssa, %bb.c ], [ %.073.lcssa, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.171 = phi i64 [ %.070.lcssa, %bb.d ], [ %.070.lcssa, %bb.c ], [ %.070.lcssa, %bb.b ], [ %3, %bb.a ] ; 7 uses
  %.169 = phi ptr [ %.068.lcssa, %bb.d ], [ %.068.lcssa, %bb.c ], [ %.068.lcssa, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.az = trunc i64 %.171 to i32
  %i.ba = and i32 %i.az, 63                       ; 2 uses
  %i.bb = and i64 %.171, -64                      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.not7989 = icmp eq i64 %i.bb, 0
  br i1 %.not7989, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.e
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph95, %bb.h
  %.06493 = phi i32 [ %i.bd, %.lr.ph95 ], [ %spec.select, %bb.h ]
  %.292 = phi ptr [ %.169, %.lr.ph95 ], [ %i.bp, %bb.h ] ; 2 uses
  %.27291 = phi i64 [ %i.bb, %.lr.ph95 ], [ %i.bn, %bb.h ] ; 2 uses
  %.27590 = phi ptr [ %.174, %.lr.ph95 ], [ %i.bo, %bb.h ] ; 2 uses
  %i.bg = lshr exact i64 %.27291, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 268435456) ; 3 uses
  %i.bh = trunc nuw nsw i64 %spec.store.select to i32
  %i.bi = add i32 %.06493, %i.bh                  ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = icmp samesign ugt i64 %spec.store.select, %i.bj ; 2 uses
  %spec.select = select i1 %i.bk, i32 0, i32 %i.bi ; 3 uses
  %i.bl = select i1 %i.bk, i64 %i.bj, i64 0
  %spec.select81 = sub nuw nsw i64 %spec.store.select, %i.bl
  %i.bm = shl nuw nsw i64 %spec.select81, 6       ; 4 uses
  tail call void @ChaCha20_ctr32(ptr noundef %.292, ptr noundef %.27590, i64 noundef %i.bm, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bc) #6
  %i.bn = sub i64 %.27291, %i.bm                  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.27590, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.292, i64 %i.bm ; 2 uses
  store i32 %spec.select, ptr %i.bc, align 8, !tbaa !25
  %i.bq = icmp eq i32 %spec.select, 0
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = load i32, ptr %i.bf, align 4, !tbaa !25
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bf, align 4, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not79 = icmp eq i64 %i.bn, 0
  br i1 %.not79, label %._crit_edge96, label %bb.f, !llvm.loop !26

._crit_edge96:                                    ; preds = %bb.h, %bb.e
  %.275.lcssa = phi ptr [ %.174, %bb.e ], [ %i.bo, %bb.h ] ; 8 uses
  %.2.lcssa = phi ptr [ %.169, %bb.e ], [ %i.bp, %bb.h ] ; 8 uses
  %.2.lcssa144 = ptrtoaddr ptr %.2.lcssa to i64   ; 2 uses
  %.275.lcssa145 = ptrtoaddr ptr %.275.lcssa to i64
  %.not80 = icmp eq i32 %i.ba, 0
  br i1 %.not80, label %bb.i, label %iter.check165

iter.check165:                                    ; preds = %._crit_edge96
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, i8 0, i64 64, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @ChaCha20_ctr32(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bt, i64 noundef 64, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bc) #6
  %wide.trip.count = and i64 %.171, 63            ; 6 uses
  %min.iters.check149 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check149, label %vec.epilog.scalar.ph166.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %iter.check165
  %i.bv = sub i64 %.275.lcssa145, %.2.lcssa144
  %diff.check146 = icmp ugt i64 %i.bv, -16
  %i.bw = sub i64 %.2.lcssa144, %i.a
  %i.bx = add i64 %i.bw, -241
  %diff.check147 = icmp ult i64 %i.bx, 15
  %conflict.rdx148 = or i1 %diff.check146, %diff.check147
  br i1 %conflict.rdx148, label %vec.epilog.scalar.ph166.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %vector.memcheck143
  %min.iters.check151 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check151, label %vec.epilog.ph169, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %n.mod.vf153 = and i64 %.171, 12
  %n.vec154 = and i64 %.171, 48                   ; 4 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next161, %vector.body155 ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %index156 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %wide.load157 = load <8 x i8>, ptr %i.by, align 1, !tbaa !10
  %wide.load158 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index156 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.load159 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !10
  %wide.load160 = load <8 x i8>, ptr %i.cb, align 1, !tbaa !10
  %i.cc = xor <8 x i8> %wide.load159, %wide.load157
  %i.cd = xor <8 x i8> %wide.load160, %wide.load158
  %i.ce = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %index156 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <8 x i8> %i.cc, ptr %i.ce, align 1, !tbaa !10
  store <8 x i8> %i.cd, ptr %i.cf, align 1, !tbaa !10
  %index.next161 = add nuw i64 %index156, 16      ; 2 uses
  %i.cg = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.cg, label %middle.block162, label %vector.body155, !llvm.loop !27

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %wide.trip.count, %n.vec154
  br i1 %cmp.n163, label %.loopexit, label %vec.epilog.iter.check167

vec.epilog.iter.check167:                         ; preds = %middle.block162
  %min.epilog.iters.check168 = icmp eq i64 %n.mod.vf153, 0
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph166.preheader, label %vec.epilog.ph169, !prof !28

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check167
  %vec.epilog.resume.val164 = phi i64 [ %n.vec154, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec171 = and i64 %.171, 60                   ; 3 uses
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph169 ], [ %index.next176, %vec.epilog.vector.body172 ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %index173
  %wide.load174 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index173
  %wide.load175 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !10
  %i.cj = xor <4 x i8> %wide.load175, %wide.load174
  %i.ck = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %index173
  store <4 x i8> %i.cj, ptr %i.ck, align 1, !tbaa !10
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.cl, label %vec.epilog.middle.block177, label %vec.epilog.vector.body172, !llvm.loop !29

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body172
  %cmp.n178 = icmp eq i64 %wide.trip.count, %n.vec171
  br i1 %cmp.n178, label %.loopexit, label %vec.epilog.scalar.ph166.preheader

vec.epilog.scalar.ph166.preheader:                ; preds = %vector.memcheck143, %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block177
  %indvars.iv106.ph = phi i64 [ 0, %iter.check165 ], [ 0, %vector.memcheck143 ], [ %n.vec154, %vec.epilog.iter.check167 ], [ %n.vec171, %vec.epilog.middle.block177 ] ; 3 uses
  %xtraiter = and i64 %.171, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph166.prol.loopexit, label %vec.epilog.scalar.ph166.prol

vec.epilog.scalar.ph166.prol:                     ; preds = %vec.epilog.scalar.ph166.preheader, %vec.epilog.scalar.ph166.prol
  %indvars.iv106.prol = phi i64 [ %indvars.iv.next107.prol, %vec.epilog.scalar.ph166.prol ], [ %indvars.iv106.ph, %vec.epilog.scalar.ph166.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph166.prol ], [ 0, %vec.epilog.scalar.ph166.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv106.prol
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv106.prol
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cq = xor i8 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv106.prol
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !10
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph166.prol.loopexit, label %vec.epilog.scalar.ph166.prol, !llvm.loop !30

vec.epilog.scalar.ph166.prol.loopexit:            ; preds = %vec.epilog.scalar.ph166.prol, %vec.epilog.scalar.ph166.preheader
  %indvars.iv106.unr = phi i64 [ %indvars.iv106.ph, %vec.epilog.scalar.ph166.preheader ], [ %indvars.iv.next107.prol, %vec.epilog.scalar.ph166.prol ]
  %i.cs = sub nsw i64 %indvars.iv106.ph, %wide.trip.count
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %.loopexit, label %vec.epilog.scalar.ph166

vec.epilog.scalar.ph166:                          ; preds = %vec.epilog.scalar.ph166.prol.loopexit, %vec.epilog.scalar.ph166
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.3, %vec.epilog.scalar.ph166 ], [ %indvars.iv106.unr, %vec.epilog.scalar.ph166.prol.loopexit ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv106
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv106
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !10
  %i.cy = xor i8 %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv106
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !10
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next107
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next107
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.de = xor i8 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next107
  store i8 %i.de, ptr %i.df, align 1, !tbaa !10
  %indvars.iv.next107.1 = add nuw nsw i64 %indvars.iv106, 2 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next107.1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next107.1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !10
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next107.1
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !10
  %indvars.iv.next107.2 = add nuw nsw i64 %indvars.iv106, 3 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next107.2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !10
  %i.do = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next107.2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = xor i8 %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next107.2
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !10
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next107.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph166, !llvm.loop !32

.loopexit:                                        ; preds = %vec.epilog.scalar.ph166.prol.loopexit, %vec.epilog.scalar.ph166, %vec.epilog.middle.block177, %middle.block162
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge96, %.loopexit, %._crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @chacha20_initiv(ptr nofree noundef captures(none) initializes((304, 308)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load <4 x i32>, ptr %0, align 4
  store <4 x i32> %i.e, ptr %i.d, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %i.f, align 8, !tbaa !11
  ret i32 1
}

declare void @ChaCha20_ctr32(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !7, i64 304}
!12 = !{!"", !13, i64 0, !8, i64 192, !8, i64 224, !8, i64 240, !7, i64 304}
!13 = !{!"prov_cipher_ctx_st", !8, i64 0, !8, i64 16, !8, i64 32, !14, i64 48, !8, i64 56, !7, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !7, i64 104, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 112, !16, i64 120, !7, i64 128, !15, i64 136, !7, i64 144, !15, i64 152, !7, i64 160, !17, i64 168, !14, i64 176, !18, i64 184}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"p1 _ZTS17prov_cipher_hw_st", !14, i64 0}
!18 = !{!"p1 _ZTS15ossl_lib_ctx_st", !14, i64 0}
!19 = !{!"branch_weights", i32 4, i32 28}
!20 = distinct !{!20, !21, !22, !23}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !21, !22}
!25 = !{!7, !7, i64 0}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21, !22, !23}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !21, !22, !23}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !21, !22}
end_hunk_0
