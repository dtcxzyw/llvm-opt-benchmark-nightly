Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_chacha20_hw?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prov_cipher_hw_chacha20_st = type { %struct.prov_cipher_hw_st, ptr }
%struct.prov_cipher_hw_st = type { ptr, ptr, ptr }

@chacha20_hw = internal constant %struct.prov_cipher_hw_chacha20_st { %struct.prov_cipher_hw_st { ptr @chacha20_initkey, ptr @chacha20_cipher, ptr null }, ptr @chacha20_initiv }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ossl_prov_cipher_hw_chacha20(i64 noundef %0) local_unnamed_addr #0 {
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
  store i32 %i.b, ptr %i.a, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.d, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.g, ptr %i.h, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %i.j, ptr %i.k, align 4, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.m, ptr %i.n, align 4, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %i.p, ptr %i.q, align 4, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.s, ptr %i.t, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.v, ptr %i.w, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %i.x, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @chacha20_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %.preheader

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
  %i.n = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = add i64 %i.c, %i.j
  %i.p = sub i64 %i.a, %i.o
  %i.q = add i64 %i.p, -241
  %diff.check121 = icmp ult i64 %i.q, 31
  %conflict.rdx = or i1 %diff.check, %diff.check121
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check122 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %4 = and i64 %i.m, 28
  %n.vec = and i64 %i.m, 96                       ; 7 uses
  %5 = add nuw nsw i64 %n.vec, %i.j               ; 2 uses
  %6 = sub i64 %3, %n.vec                         ; 2 uses
  %7 = getelementptr i8, ptr %2, i64 %n.vec       ; 2 uses
  %8 = getelementptr i8, ptr %1, i64 %n.vec       ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.i, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep123 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8
  %wide.load124 = load <16 x i8>, ptr %i.r, align 1, !tbaa !8
  %gep.a = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %gep.a, i64 16
  %wide.load125 = load <16 x i8>, ptr %gep.a, align 1, !tbaa !8
  %wide.load126 = load <16 x i8>, ptr %i.s, align 1, !tbaa !8
  %i.t = xor <16 x i8> %wide.load125, %wide.load
  %i.u = xor <16 x i8> %wide.load126, %wide.load124
  %i.v = getelementptr i8, ptr %next.gep123, i64 16
  store <16 x i8> %i.t, ptr %next.gep123, align 1, !tbaa !8
  store <16 x i8> %i.u, ptr %i.v, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %i.m, 124                   ; 6 uses
  %i.x = add nuw nsw i64 %n.vec127, %i.j          ; 2 uses
  %i.y = sub i64 %3, %n.vec127                    ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 %n.vec127  ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 %n.vec127 ; 2 uses
  %invariant.gep189 = getelementptr i8, ptr %i.i, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 4 uses
  %next.gep129 = getelementptr i8, ptr %2, i64 %index128
  %next.gep130 = getelementptr i8, ptr %1, i64 %index128
  %wide.load131 = load <4 x i8>, ptr %next.gep129, align 1, !tbaa !8
  %gep190 = getelementptr i8, ptr %invariant.gep189, i64 %index128
  %wide.load132 = load <4 x i8>, ptr %gep190, align 1, !tbaa !8
  %i.ab = xor <4 x i8> %wide.load132, %wide.load131
  store <4 x i8> %i.ab, ptr %next.gep130, align 1, !tbaa !8
  %index.next133 = add nuw i64 %index128, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n134 = icmp eq i64 %i.m, %n.vec127
  br i1 %cmp.n134, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.06683.ph = phi i64 [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.06882.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.07181.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %8, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.06683 = phi i64 [ %i.aj, %vec.epilog.scalar.ph ], [ %.06683.ph, %vec.epilog.scalar.ph.preheader ]
  %.06882 = phi ptr [ %i.ad, %vec.epilog.scalar.ph ], [ %.06882.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.07181 = phi ptr [ %i.ai, %vec.epilog.scalar.ph ], [ %.07181.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06882, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.06882, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = xor i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.07181, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.07181, align 1, !tbaa !8
  %i.aj = add i64 %.06683, -1                     ; 3 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = icmp samesign ult i64 %indvars.iv, 63
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa119 = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %7, %middle.block ], [ %i.ad, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.x, %vec.epilog.middle.block ], [ %5, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa118 = phi ptr [ %i.aa, %vec.epilog.middle.block ], [ %8, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ]
  %.lcssa117 = phi i64 [ %i.y, %vec.epilog.middle.block ], [ %6, %middle.block ], [ %i.aj, %vec.epilog.scalar.ph ]
  %i.an = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.071.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa118, %._crit_edge.loopexit ] ; 2 uses
  %.068.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa119, %._crit_edge.loopexit ] ; 2 uses
  %.066.lcssa = phi i64 [ %3, %.preheader ], [ %.lcssa117, %._crit_edge.loopexit ] ; 3 uses
  %.064.lcssa = phi i32 [ %i.e, %.preheader ], [ %i.an, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.064.lcssa, ptr %i.d, align 8, !tbaa !16
  %i.ao = icmp eq i64 %.066.lcssa, 0
  br i1 %i.ao, label %bb.j, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ap = icmp eq i32 %.064.lcssa, 64
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.172 = phi ptr [ %.071.lcssa, %bb.c ], [ %.071.lcssa, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.169 = phi ptr [ %.068.lcssa, %bb.c ], [ %.068.lcssa, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.167 = phi i64 [ %.066.lcssa, %bb.c ], [ %.066.lcssa, %bb.b ], [ %3, %bb.a ] ; 7 uses
  %i.aq = trunc i64 %.167 to i32
  %i.ar = and i32 %i.aq, 63                       ; 2 uses
  %i.as = and i64 %.167, -64                      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %.not7888 = icmp eq i64 %i.as, 0
  br i1 %.not7888, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.d
  %i.au = load i32, ptr %i.at, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph94, %bb.g
  %.06392 = phi i32 [ %i.au, %.lr.ph94 ], [ %spec.select, %bb.g ]
  %.291 = phi i64 [ %i.as, %.lr.ph94 ], [ %i.be, %bb.g ] ; 2 uses
  %.27090 = phi ptr [ %.169, %.lr.ph94 ], [ %i.bf, %bb.g ] ; 2 uses
  %.27389 = phi ptr [ %.172, %.lr.ph94 ], [ %i.bg, %bb.g ] ; 2 uses
  %i.ax = lshr exact i64 %.291, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 268435456) ; 3 uses
  %i.ay = trunc nuw nsw i64 %spec.store.select to i32
  %i.az = add i32 %.06392, %i.ay                  ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = icmp samesign ugt i64 %spec.store.select, %i.ba ; 2 uses
  %spec.select = select i1 %i.bb, i32 0, i32 %i.az ; 3 uses
  %i.bc = select i1 %i.bb, i64 %i.ba, i64 0
  %spec.select80 = sub nuw nsw i64 %spec.store.select, %i.bc
  %i.bd = shl nuw nsw i64 %spec.select80, 6       ; 4 uses
  tail call void @ChaCha20_ctr32(ptr noundef %.27389, ptr noundef %.27090, i64 noundef %i.bd, ptr noundef nonnull %i.av, ptr noundef nonnull %i.at) #6
  %i.be = sub i64 %.291, %i.bd                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.27090, i64 %i.bd ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.27389, i64 %i.bd ; 2 uses
  store i32 %spec.select, ptr %i.at, align 8, !tbaa !17
  %i.bh = icmp eq i32 %spec.select, 0
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.aw, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not78 = icmp eq i64 %i.be, 0
  br i1 %.not78, label %._crit_edge95, label %bb.e, !llvm.loop !21

._crit_edge95:                                    ; preds = %bb.g, %bb.d
  %.273.lcssa = phi ptr [ %.172, %bb.d ], [ %i.bg, %bb.g ] ; 8 uses
  %.270.lcssa = phi ptr [ %.169, %bb.d ], [ %i.bf, %bb.g ] ; 8 uses
  %.270.lcssa144 = ptrtoaddr ptr %.270.lcssa to i64
  %.273.lcssa145 = ptrtoaddr ptr %.273.lcssa to i64 ; 2 uses
  %.not79 = icmp eq i32 %i.ar, 0
  br i1 %.not79, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge95
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bk, i8 0, i64 64, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @ChaCha20_ctr32(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bk, i64 noundef 64, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.at) #6
  %i.bm = load i32, ptr %i.at, align 8, !tbaa !17
  %i.bn = add i32 %i.bm, 1                        ; 2 uses
  store i32 %i.bn, ptr %i.at, align 8, !tbaa !17
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.i, label %iter.check164

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !17
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !17
  br label %iter.check164

iter.check164:                                    ; preds = %bb.i, %bb.h
  %wide.trip.count = and i64 %.167, 63            ; 6 uses
  %min.iters.check146 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check146, label %vec.epilog.scalar.ph166.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %iter.check164
  %i.bs = sub i64 %.270.lcssa144, %.273.lcssa145
  %diff.check148 = icmp ugt i64 %i.bs, -16
  %i.bt = sub i64 %.273.lcssa145, %i.c
  %i.bu = add i64 %i.bt, -241
  %diff.check149 = icmp ult i64 %i.bu, 15
  %conflict.rdx150 = or i1 %diff.check148, %diff.check149
  br i1 %conflict.rdx150, label %vec.epilog.scalar.ph166.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %vector.memcheck147
  %min.iters.check152 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check152, label %vec.epilog.ph168, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.bv = and i64 %.167, 12
  %n.vec154 = and i64 %.167, 48                   ; 4 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.ph153, %vector.body155
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body155 ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %index156 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %wide.load157 = load <8 x i8>, ptr %i.bw, align 1, !tbaa !8
  %wide.load158 = load <8 x i8>, ptr %i.bx, align 1, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index156 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %wide.load159 = load <8 x i8>, ptr %i.by, align 1, !tbaa !8
  %wide.load160 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !8
  %i.ca = xor <8 x i8> %wide.load159, %wide.load157
  %i.cb = xor <8 x i8> %wide.load160, %wide.load158
  %i.cc = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %index156 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <8 x i8> %i.ca, ptr %i.cc, align 1, !tbaa !8
  store <8 x i8> %i.cb, ptr %i.cd, align 1, !tbaa !8
  %index.next161 = add nuw i64 %index156, 16      ; 2 uses
  %i.ce = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.ce, label %middle.block162, label %vector.body155, !llvm.loop !22

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %wide.trip.count, %n.vec154
  br i1 %cmp.n163, label %.loopexit, label %vec.epilog.iter.check165

vec.epilog.iter.check165:                         ; preds = %middle.block162
  %min.epilog.iters.check167 = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check167, label %vec.epilog.scalar.ph166.preheader, label %vec.epilog.ph168, !prof !30

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check165
  %vec.epilog.resume.val169 = phi i64 [ %n.vec154, %vec.epilog.iter.check165 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec170 = and i64 %.167, 60                   ; 3 uses
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %vec.epilog.vector.body171, %vec.epilog.ph168
  %index172 = phi i64 [ %vec.epilog.resume.val169, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body171 ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %index172
  %wide.load173 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index172
  %wide.load174 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !8
  %i.ch = xor <4 x i8> %wide.load174, %wide.load173
  %i.ci = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %index172
  store <4 x i8> %i.ch, ptr %i.ci, align 1, !tbaa !8
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.cj, label %vec.epilog.middle.block176, label %vec.epilog.vector.body171, !llvm.loop !23

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body171
  %cmp.n177 = icmp eq i64 %wide.trip.count, %n.vec170
  br i1 %cmp.n177, label %.loopexit, label %vec.epilog.scalar.ph166.preheader

vec.epilog.scalar.ph166.preheader:                ; preds = %iter.check164, %vector.memcheck147, %vec.epilog.iter.check165, %vec.epilog.middle.block176
  %indvars.iv105.ph = phi i64 [ 0, %iter.check164 ], [ 0, %vector.memcheck147 ], [ %n.vec154, %vec.epilog.iter.check165 ], [ %n.vec170, %vec.epilog.middle.block176 ] ; 3 uses
  %xtraiter = and i64 %.167, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph166.prol.loopexit, label %vec.epilog.scalar.ph166.prol

vec.epilog.scalar.ph166.prol:                     ; preds = %vec.epilog.scalar.ph166.preheader, %vec.epilog.scalar.ph166.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph166.prol ], [ %indvars.iv105.ph, %vec.epilog.scalar.ph166.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph166.prol ], [ 0, %vec.epilog.scalar.ph166.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv105.prol
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv105.prol
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = xor i8 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv105.prol
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !8
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph166.prol.loopexit, label %vec.epilog.scalar.ph166.prol, !llvm.loop !24

vec.epilog.scalar.ph166.prol.loopexit:            ; preds = %vec.epilog.scalar.ph166.prol, %vec.epilog.scalar.ph166.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %vec.epilog.scalar.ph166.preheader ], [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph166.prol ]
  %i.cq = sub nsw i64 %indvars.iv105.ph, %wide.trip.count
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %.loopexit, label %vec.epilog.scalar.ph166

vec.epilog.scalar.ph166:                          ; preds = %vec.epilog.scalar.ph166.prol.loopexit, %vec.epilog.scalar.ph166
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %vec.epilog.scalar.ph166 ], [ %indvars.iv105.unr, %vec.epilog.scalar.ph166.prol.loopexit ] ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv105
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv105
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = xor i8 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv105
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !8
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next106
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = xor i8 %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !8
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106.1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next106.1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.di = xor i8 %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106.1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !8
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106.2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next106.2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = xor i8 %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106.2
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !8
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph166, !llvm.loop !25

.loopexit:                                        ; preds = %vec.epilog.scalar.ph166.prol.loopexit, %vec.epilog.scalar.ph166, %vec.epilog.middle.block176, %middle.block162
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge95, %.loopexit, %._crit_edge
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
  store <4 x i32> %i.e, ptr %i.d, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %i.f, align 8, !tbaa !16
  ret i32 1
}

declare void @ChaCha20_ctr32(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS17prov_cipher_hw_st", !9, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!14 = !{!"prov_cipher_ctx_st", !4, i64 0, !4, i64 16, !4, i64 32, !9, i64 48, !4, i64 56, !5, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 112, !11, i64 120, !5, i64 128, !10, i64 136, !5, i64 144, !10, i64 152, !5, i64 160, !12, i64 168, !9, i64 176, !13, i64 184}
!15 = !{!"", !14, i64 0, !4, i64 192, !4, i64 224, !4, i64 240, !5, i64 304}
!16 = !{!15, !5, i64 304}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !26, !27, !28}
!19 = distinct !{!19, !26, !27, !28}
!20 = distinct !{!20, !26, !27}
!21 = distinct !{!21, !26}
!22 = distinct !{!22, !26, !27, !28}
!23 = distinct !{!23, !26, !27, !28}
!24 = distinct !{!24, !31}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 28}
!30 = !{!"branch_weights", i32 4, i32 12}
!31 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
