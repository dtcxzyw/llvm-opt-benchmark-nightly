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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
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
  %i.n = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.n, -16
  %i.o = add i64 %i.a, %i.j
  %i.p = sub i64 %i.c, %i.o
  %i.q = add i64 %i.p, -241
  %diff.check120 = icmp ult i64 %i.q, 15
  %conflict.rdx = or i1 %diff.check, %diff.check120
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.m, 12
  %n.vec = and i64 %i.m, 112                      ; 7 uses
  %i.s = add nuw nsw i64 %n.vec, %i.j             ; 2 uses
  %i.t = sub i64 %3, %n.vec                       ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.i, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep122 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !8
  %wide.load123 = load <8 x i8>, ptr %i.w, align 1, !tbaa !8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load124 = load <8 x i8>, ptr %gep, align 1, !tbaa !8
  %wide.load125 = load <8 x i8>, ptr %i.x, align 1, !tbaa !8
  %4 = xor <8 x i8> %wide.load124, %wide.load
  %5 = xor <8 x i8> %wide.load125, %wide.load123
  %i.y = getelementptr i8, ptr %next.gep122, i64 8
  store <8 x i8> %4, ptr %next.gep122, align 1, !tbaa !8
  store <8 x i8> %5, ptr %i.y, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec129 = and i64 %i.m, 124                   ; 6 uses
  %i.aa = add nuw nsw i64 %n.vec129, %i.j         ; 2 uses
  %i.ab = sub i64 %3, %n.vec129                   ; 2 uses
  %i.ac = getelementptr i8, ptr %2, i64 %n.vec129 ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 %n.vec129 ; 2 uses
  %invariant.gep183 = getelementptr i8, ptr %i.i, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index130 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 4 uses
  %next.gep131 = getelementptr i8, ptr %2, i64 %index130
  %next.gep132 = getelementptr i8, ptr %1, i64 %index130
  %wide.load133 = load <4 x i8>, ptr %next.gep131, align 1, !tbaa !8
  %gep184 = getelementptr i8, ptr %invariant.gep183, i64 %index130
  %wide.load134 = load <4 x i8>, ptr %gep184, align 1, !tbaa !8
  %i.ae = xor <4 x i8> %wide.load134, %wide.load133
  store <4 x i8> %i.ae, ptr %next.gep132, align 1, !tbaa !8
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n136 = icmp eq i64 %i.m, %n.vec129
  br i1 %cmp.n136, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.06683.ph = phi i64 [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.06882.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.07181.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.06683 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.06683.ph, %vec.epilog.scalar.ph.preheader ]
  %.06882 = phi ptr [ %i.ag, %vec.epilog.scalar.ph ], [ %.06882.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.07181 = phi ptr [ %i.al, %vec.epilog.scalar.ph ], [ %.07181.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.06882, i64 1 ; 2 uses
  %i.ah = load i8, ptr %.06882, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = xor i8 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %.07181, i64 1 ; 2 uses
  store i8 %i.ak, ptr %.07181, align 1, !tbaa !8
  %i.am = add i64 %.06683, -1                     ; 3 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = icmp samesign ult i64 %indvars.iv, 63
  %i.ap = and i1 %i.an, %i.ao
  br i1 %i.ap, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa119 = phi ptr [ %i.ac, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %i.ag, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.aa, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa118 = phi ptr [ %i.ad, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %i.al, %vec.epilog.scalar.ph ]
  %.lcssa117 = phi i64 [ %i.ab, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.am, %vec.epilog.scalar.ph ]
  %i.aq = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.071.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa118, %._crit_edge.loopexit ] ; 2 uses
  %.068.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa119, %._crit_edge.loopexit ] ; 2 uses
  %.066.lcssa = phi i64 [ %3, %.preheader ], [ %.lcssa117, %._crit_edge.loopexit ] ; 3 uses
  %.064.lcssa = phi i32 [ %i.e, %.preheader ], [ %i.aq, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.064.lcssa, ptr %i.d, align 8, !tbaa !16
  %i.ar = icmp eq i64 %.066.lcssa, 0
  br i1 %i.ar, label %bb.j, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.as = icmp eq i32 %.064.lcssa, 64
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.172 = phi ptr [ %.071.lcssa, %bb.c ], [ %.071.lcssa, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.169 = phi ptr [ %.068.lcssa, %bb.c ], [ %.068.lcssa, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.167 = phi i64 [ %.066.lcssa, %bb.c ], [ %.066.lcssa, %bb.b ], [ %3, %bb.a ] ; 7 uses
  %i.at = trunc i64 %.167 to i32
  %i.au = and i32 %i.at, 63                       ; 2 uses
  %i.av = and i64 %.167, -64                      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %.not7888 = icmp eq i64 %i.av, 0
  br i1 %.not7888, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.d
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph94, %bb.g
  %.06392 = phi i32 [ %i.ax, %.lr.ph94 ], [ %spec.select, %bb.g ]
  %.291 = phi i64 [ %i.av, %.lr.ph94 ], [ %i.bh, %bb.g ] ; 2 uses
  %.27090 = phi ptr [ %.169, %.lr.ph94 ], [ %i.bi, %bb.g ] ; 2 uses
  %.27389 = phi ptr [ %.172, %.lr.ph94 ], [ %i.bj, %bb.g ] ; 2 uses
  %i.ba = lshr exact i64 %.291, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 268435456) ; 3 uses
  %i.bb = trunc nuw nsw i64 %spec.store.select to i32
  %i.bc = add i32 %.06392, %i.bb                  ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = icmp samesign ugt i64 %spec.store.select, %i.bd ; 2 uses
  %spec.select = select i1 %i.be, i32 0, i32 %i.bc ; 3 uses
  %i.bf = select i1 %i.be, i64 %i.bd, i64 0
  %spec.select80 = sub nuw nsw i64 %spec.store.select, %i.bf
  %i.bg = shl nuw nsw i64 %spec.select80, 6       ; 4 uses
  tail call void @ChaCha20_ctr32(ptr noundef %.27389, ptr noundef %.27090, i64 noundef %i.bg, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.aw) #6
  %i.bh = sub i64 %.291, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.27090, i64 %i.bg ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.27389, i64 %i.bg ; 2 uses
  store i32 %spec.select, ptr %i.aw, align 8, !tbaa !17
  %i.bk = icmp eq i32 %spec.select, 0
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.az, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not78 = icmp eq i64 %i.bh, 0
  br i1 %.not78, label %._crit_edge95, label %bb.e, !llvm.loop !21

._crit_edge95:                                    ; preds = %bb.g, %bb.d
  %.273.lcssa = phi ptr [ %.172, %bb.d ], [ %i.bj, %bb.g ] ; 8 uses
  %.270.lcssa = phi ptr [ %.169, %bb.d ], [ %i.bi, %bb.g ] ; 8 uses
  %.273.lcssa142 = ptrtoaddr ptr %.273.lcssa to i64 ; 2 uses
  %.270.lcssa143 = ptrtoaddr ptr %.270.lcssa to i64
  %.not79 = icmp eq i32 %i.au, 0
  br i1 %.not79, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge95
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i8 0, i64 64, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @ChaCha20_ctr32(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bn, i64 noundef 64, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.aw) #6
  %i.bp = load i32, ptr %i.aw, align 8, !tbaa !17
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bq, ptr %i.aw, align 8, !tbaa !17
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.i, label %iter.check160

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !17
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !17
  br label %iter.check160

iter.check160:                                    ; preds = %bb.i, %bb.h
  %wide.trip.count = and i64 %.167, 63            ; 6 uses
  %min.iters.check147 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check147, label %vec.epilog.scalar.ph161.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %iter.check160
  %i.bv = sub i64 %.270.lcssa143, %.273.lcssa142
  %diff.check144 = icmp ugt i64 %i.bv, -16
  %i.bw = sub i64 %.273.lcssa142, %i.a
  %i.bx = add i64 %i.bw, -241
  %diff.check145 = icmp ult i64 %i.bx, 15
  %conflict.rdx146 = or i1 %diff.check144, %diff.check145
  br i1 %conflict.rdx146, label %vec.epilog.scalar.ph161.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %vector.memcheck141
  %min.iters.check149 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check149, label %vec.epilog.ph164, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.by = and i64 %.167, 12
  %n.vec151 = and i64 %.167, 48                   ; 4 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.ph150, %vector.body152
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next156, %vector.body152 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %index153
  %wide.load154 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index153
  %wide.load155 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !8
  %i.cb = xor <16 x i8> %wide.load155, %wide.load154
  %i.cc = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %index153
  store <16 x i8> %i.cb, ptr %i.cc, align 1, !tbaa !8
  %index.next156 = add nuw i64 %index153, 16      ; 2 uses
  %i.cd = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.cd, label %middle.block157, label %vector.body152, !llvm.loop !22

middle.block157:                                  ; preds = %vector.body152
  %cmp.n158 = icmp eq i64 %wide.trip.count, %n.vec151
  br i1 %cmp.n158, label %.loopexit, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block157
  %min.epilog.iters.check163 = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check163, label %vec.epilog.scalar.ph161.preheader, label %vec.epilog.ph164, !prof !29

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check162
  %vec.epilog.resume.val159 = phi i64 [ %n.vec151, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec165 = and i64 %.167, 60                   ; 3 uses
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph164
  %index167 = phi i64 [ %vec.epilog.resume.val159, %vec.epilog.ph164 ], [ %index.next170, %vec.epilog.vector.body166 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %index167
  %wide.load168 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index167
  %wide.load169 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !8
  %i.cg = xor <4 x i8> %wide.load169, %wide.load168
  %i.ch = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %index167
  store <4 x i8> %i.cg, ptr %i.ch, align 1, !tbaa !8
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.ci, label %vec.epilog.middle.block171, label %vec.epilog.vector.body166, !llvm.loop !23

vec.epilog.middle.block171:                       ; preds = %vec.epilog.vector.body166
  %cmp.n172 = icmp eq i64 %wide.trip.count, %n.vec165
  br i1 %cmp.n172, label %.loopexit, label %vec.epilog.scalar.ph161.preheader

vec.epilog.scalar.ph161.preheader:                ; preds = %iter.check160, %vector.memcheck141, %vec.epilog.iter.check162, %vec.epilog.middle.block171
  %indvars.iv105.ph = phi i64 [ 0, %iter.check160 ], [ 0, %vector.memcheck141 ], [ %n.vec151, %vec.epilog.iter.check162 ], [ %n.vec165, %vec.epilog.middle.block171 ] ; 3 uses
  %xtraiter = and i64 %.167, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph161.prol.loopexit, label %vec.epilog.scalar.ph161.prol

vec.epilog.scalar.ph161.prol:                     ; preds = %vec.epilog.scalar.ph161.preheader, %vec.epilog.scalar.ph161.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph161.prol ], [ %indvars.iv105.ph, %vec.epilog.scalar.ph161.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph161.prol ], [ 0, %vec.epilog.scalar.ph161.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv105.prol
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv105.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = xor i8 %i.cm, %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv105.prol
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !8
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph161.prol.loopexit, label %vec.epilog.scalar.ph161.prol, !llvm.loop !24

vec.epilog.scalar.ph161.prol.loopexit:            ; preds = %vec.epilog.scalar.ph161.prol, %vec.epilog.scalar.ph161.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %vec.epilog.scalar.ph161.preheader ], [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph161.prol ]
  %i.cp = sub nsw i64 %indvars.iv105.ph, %wide.trip.count
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %.loopexit, label %vec.epilog.scalar.ph161

vec.epilog.scalar.ph161:                          ; preds = %vec.epilog.scalar.ph161.prol.loopexit, %vec.epilog.scalar.ph161
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %vec.epilog.scalar.ph161 ], [ %indvars.iv105.unr, %vec.epilog.scalar.ph161.prol.loopexit ] ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv105
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv105
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cv = xor i8 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv105
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !8
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next106
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = xor i8 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !8
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106.1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next106.1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !8
  %i.dh = xor i8 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106.1
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !8
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106.2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.next106.2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !8
  %i.dn = xor i8 %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106.2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !8
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph161, !llvm.loop !25

.loopexit:                                        ; preds = %vec.epilog.scalar.ph161.prol.loopexit, %vec.epilog.scalar.ph161, %vec.epilog.middle.block171, %middle.block157
  store i32 %i.au, ptr %i.d, align 8, !tbaa !16
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
!24 = distinct !{!24, !30}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 12}
!30 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
