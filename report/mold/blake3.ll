Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/blake3?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blake3_chunk_state = type { [8 x i32], i64, [64 x i8], i8, i8, i8 }
%struct.output_t = type { [8 x i32], i64, [64 x i8], i8, i8 }
%struct.blake3_hasher = type { [8 x i32], %struct.blake3_chunk_state, i8, [1760 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"1.8.5\00", align 1
@IV = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @blake3_version() local_unnamed_addr #0 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, -9223372036854775807) i64 @blake3_compress_subtree_wide(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 6 uses
  %i.b = alloca [16 x ptr], align 16              ; 5 uses
  %i.c = alloca [16 x ptr], align 16              ; 5 uses
  %7 = alloca %struct.blake3_chunk_state, align 8 ; 12 uses
  %8 = alloca %struct.output_t, align 8           ; 7 uses
  %i.d = alloca [1024 x i8], align 16             ; 9 uses
  %i.e = tail call i64 @blake3_simd_degree() #9
  %i.f = shl i64 %i.e, 10
  %.not = icmp ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.g = icmp ugt i64 %1, 1023
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = add i64 %1, -1024                        ; 2 uses
  %i.i = lshr i64 %i.h, 10                        ; 3 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 3072
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.j, 36028797018963964        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1024>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 2048)
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <2 x i64> %vec.ind
  %wide.gep89 = getelementptr inbounds nuw i8, ptr %0, <2 x i64> %step.add
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x ptr> %wide.gep, ptr %i.k, align 16, !tbaa !12
  store <2 x ptr> %wide.gep89, ptr %i.l, align 16, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4096)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %9 = shl i64 %n.vec, 10                         ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %.lr.ph.preheader, %middle.block
  %.027.i50.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.028.i49.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %9, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %.lr.ph
  %.027.i50 = phi i64 [ %i.q, %.lr.ph ], [ %.027.i50.ph, %.lr.ph.preheader110 ] ; 3 uses
  %.028.i49 = phi i64 [ %i.p, %.lr.ph ], [ %.028.i49.ph, %.lr.ph.preheader110 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i49
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.027.i50
  store ptr %i.n, ptr %i.o, align 8, !tbaa !12
  %i.p = add i64 %.028.i49, 1024                  ; 2 uses
  %i.q = add nuw nsw i64 %.027.i50, 1
  %exitcond.not = icmp eq i64 %.027.i50, %i.i
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !31

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa88 = phi i64 [ %9, %middle.block ], [ %i.p, %.lr.ph ] ; 2 uses
  %10 = add nuw nsw i64 %i.i, 1
  %i.r = sub i64 %1, %.lcssa88
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.028.i.lcssa = phi i64 [ 0, %bb.b ], [ %.lcssa88, %._crit_edge.loopexit ] ; 2 uses
  %.027.i.lcssa = phi i64 [ 0, %bb.b ], [ %10, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa48 = phi i64 [ %1, %bb.b ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  call void @blake3_hash_many(ptr noundef nonnull %i.c, i64 noundef %.027.i.lcssa, i64 noundef 16, ptr noundef %2, i64 noundef %3, i1 noundef zeroext true, i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext 2, ptr noundef %5) #9
  %i.s = icmp ugt i64 %1, %.028.i.lcssa
  br i1 %i.s, label %bb.c, label %compress_chunks_parallel.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = add i64 %.027.i.lcssa, %3                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 105 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 106 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.z, i8 0, i64 66, i1 false)
  store i8 %4, ptr %i.y, align 2, !tbaa !18
  store i64 %i.t, ptr %i.u, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i.lcssa ; 2 uses
  %i.ab = icmp samesign ugt i64 %.lcssa48, 64
  br i1 %i.ab, label %.lr.ph56, label %chunk_state_update.exit

.lr.ph56:                                         ; preds = %bb.c, %.lr.ph56
  %i.ac = phi i8 [ %i.ai, %.lr.ph56 ], [ 0, %bb.c ]
  %.1.i54 = phi i64 [ %i.ak, %.lr.ph56 ], [ %.lcssa48, %bb.c ]
  %.129.i53 = phi ptr [ %i.aj, %.lr.ph56 ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !19
  %i.ae = load i8, ptr %i.y, align 2, !tbaa !18
  %i.af = icmp eq i8 %i.ac, 0
  %..i = zext i1 %i.af to i8
  %i.ag = or i8 %i.ae, %..i
  call void @blake3_compress_in_place(ptr noundef nonnull %7, ptr noundef %.129.i53, i8 noundef zeroext 64, i64 noundef %i.ad, i8 noundef zeroext %i.ag) #9
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !20
  %i.ai = add i8 %i.ah, 1                         ; 2 uses
  store i8 %i.ai, ptr %i.x, align 1, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %.129.i53, i64 64 ; 2 uses
  %i.ak = add i64 %.1.i54, -64                    ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 64
  br i1 %i.al, label %.lr.ph56, label %chunk_state_update.exit.loopexit, !llvm.loop !0

chunk_state_update.exit.loopexit:                 ; preds = %.lr.ph56
  %.pre = load i8, ptr %i.w, align 8, !tbaa !21
  %.pre73 = load i64, ptr %i.u, align 8, !tbaa !19, !noalias !38
  %i.am = zext i8 %.pre to i64
  br label %chunk_state_update.exit

chunk_state_update.exit:                          ; preds = %chunk_state_update.exit.loopexit, %bb.c
  %i.an = phi i64 [ %i.t, %bb.c ], [ %.pre73, %chunk_state_update.exit.loopexit ] ; 2 uses
  %i.ao = phi i64 [ 0, %bb.c ], [ %i.am, %chunk_state_update.exit.loopexit ] ; 2 uses
  %.129.i.lcssa = phi ptr [ %i.aa, %bb.c ], [ %i.aj, %chunk_state_update.exit.loopexit ]
  %.1.i.lcssa = phi i64 [ %.lcssa48, %bb.c ], [ %i.ak, %chunk_state_update.exit.loopexit ]
  %i.ap = sub nsw i64 64, %i.ao
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 %.1.i.lcssa) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %.129.i.lcssa, i64 %spec.select.i, i1 false)
  %i.ar = trunc nuw nsw i64 %spec.select.i to i8
  %i.as = load i8, ptr %i.w, align 8, !tbaa !21
  %i.at = add i8 %i.as, %i.ar                     ; 3 uses
  store i8 %i.at, ptr %i.w, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.au = load i8, ptr %i.y, align 2, !tbaa !18, !noalias !38
  %i.av = load i8, ptr %i.x, align 1, !tbaa !20, !noalias !38
  %i.aw = icmp eq i8 %i.av, 0
  %..i47 = zext i1 %i.aw to i8
  %i.ax = or i8 %i.au, %..i47
  %i.ay = or i8 %i.ax, 2                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i8 %i.at, ptr %i.ba, align 8, !tbaa !23, !alias.scope !39
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.an, ptr %i.bb, align 8, !tbaa !24, !alias.scope !39
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 105
  store i8 %i.ay, ptr %i.bc, align 1, !tbaa !25, !alias.scope !39
  %i.bd = shl nuw nsw i64 %.027.i.lcssa, 5
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 %i.bd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.a, ptr noundef nonnull %i.az, i8 noundef zeroext %i.at, i64 noundef %i.an, i8 noundef zeroext %i.ay) #9
  %i.bf = load <4 x i32>, ptr %i.a, align 16, !tbaa !26
  store <4 x i32> %i.bf, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = load <4 x i32>, ptr %i.bh, align 16, !tbaa !26
  store <4 x i32> %i.bi, ptr %i.bg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bj = add nuw nsw i64 %.027.i.lcssa, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %compress_chunks_parallel.exit

compress_chunks_parallel.exit:                    ; preds = %._crit_edge, %chunk_state_update.exit
  %.0.i = phi i64 [ %i.bj, %chunk_state_update.exit ], [ %.027.i.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.bk = add i64 %1, -1
  %i.bl = lshr i64 %i.bk, 10
  %i.bm = or i64 %i.bl, 1
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bm, i1 true) ; 2 uses
  %i.bo = lshr exact i64 -9223372036854775808, %i.bn ; 2 uses
  %i.bp = shl nuw i64 %i.bo, 10                   ; 3 uses
  %i.bq = sub i64 %1, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.bs = add i64 %i.bo, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.bt = tail call i64 @blake3_simd_degree() #9  ; 2 uses
  %i.bu = icmp ne i64 %i.bn, 63
  %i.bv = icmp eq i64 %i.bt, 1
  %or.cond = select i1 %i.bu, i1 %i.bv, i1 false
  %i.bw = shl i64 %i.bt, 5
  %i.bx = select i1 %or.cond, i64 64, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bx
  %i.bz = call i64 @blake3_compress_subtree_wide(ptr noundef %0, i64 noundef %i.bp, ptr noundef %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef nonnull %i.d, i1 noundef zeroext %6) ; 2 uses
  %i.ca = call i64 @blake3_compress_subtree_wide(ptr noundef nonnull %i.br, i64 noundef %i.bq, ptr noundef %2, i64 noundef %i.bs, i8 noundef zeroext %4, ptr noundef nonnull %i.by, i1 noundef zeroext %6)
  %i.cb = icmp eq i64 %i.bz, 1
  br i1 %i.cb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.cc = add i64 %i.ca, %i.bz                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.cd = icmp ugt i64 %i.cc, 1
  br i1 %i.cd, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %bb.f
  %i.ce = add i64 %i.cc, -2                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 1                       ; 3 uses
  %i.cg = add nuw i64 %i.cf, 1                    ; 2 uses
  %min.iters.check92 = icmp ult i64 %i.ce, 6
  br i1 %min.iters.check92, label %.lr.ph61.preheader106, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph61.preheader
  %n.vec94 = and i64 %i.cg, -4                    ; 4 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next101, %vector.body95 ] ; 2 uses
  %vec.ind97 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph93 ], [ %vec.ind.next102, %vector.body95 ] ; 3 uses
  %i.ch = shl nuw nsw <2 x i64> %vec.ind97, splat (i64 6)
  %step.add98 = shl <2 x i64> %vec.ind97, splat (i64 6)
  %i.ci = add <2 x i64> %step.add98, splat (i64 128)
  %wide.gep99 = getelementptr inbounds nuw i8, ptr %i.d, <2 x i64> %i.ch
  %wide.gep100 = getelementptr inbounds nuw i8, ptr %i.d, <2 x i64> %i.ci
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index96 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x ptr> %wide.gep99, ptr %i.cj, align 16, !tbaa !12
  store <2 x ptr> %wide.gep100, ptr %i.ck, align 16, !tbaa !12
  %index.next101 = add nuw i64 %index96, 4        ; 2 uses
  %vec.ind.next102 = add nuw <2 x i64> %vec.ind97, splat (i64 4)
  %i.cl = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.cl, label %middle.block103, label %vector.body95, !llvm.loop !36

middle.block103:                                  ; preds = %vector.body95
  %cmp.n104 = icmp eq i64 %i.cg, %n.vec94
  br i1 %cmp.n104, label %._crit_edge62.loopexit, label %.lr.ph61.preheader106

.lr.ph61.preheader106:                            ; preds = %.lr.ph61.preheader, %middle.block103
  %.0.i4259.ph = phi i64 [ 0, %.lr.ph61.preheader ], [ %n.vec94, %middle.block103 ]
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader106, %.lr.ph61
  %.0.i4259 = phi i64 [ %i.cp, %.lr.ph61 ], [ %.0.i4259.ph, %.lr.ph61.preheader106 ] ; 4 uses
  %i.cm = shl nuw nsw i64 %.0.i4259, 6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i4259
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !12
  %i.cp = add nuw nsw i64 %.0.i4259, 1            ; 2 uses
  %exitcond72.not = icmp eq i64 %.0.i4259, %i.cf
  br i1 %exitcond72.not, label %._crit_edge62.loopexit, label %.lr.ph61, !llvm.loop !37

._crit_edge62.loopexit:                           ; preds = %.lr.ph61, %middle.block103
  %.lcssa85 = phi i64 [ %n.vec94, %middle.block103 ], [ %i.cp, %.lr.ph61 ]
  %11 = add nuw nsw i64 %i.cf, 1
  %i.cq = shl nuw i64 %.lcssa85, 1
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %bb.f
  %.0.i42.lcssa = phi i64 [ 0, %bb.f ], [ %11, %._crit_edge62.loopexit ] ; 5 uses
  %.lcssa = phi i64 [ 0, %bb.f ], [ %i.cq, %._crit_edge62.loopexit ]
  %i.cr = or i8 %4, 4
  call void @blake3_hash_many(ptr noundef nonnull %i.b, i64 noundef %.0.i42.lcssa, i64 noundef 1, ptr noundef %2, i64 noundef 0, i1 noundef zeroext false, i8 noundef zeroext %i.cr, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %5) #9
  %i.cs = icmp ugt i64 %i.cc, %.lcssa
  br i1 %i.cs, label %bb.g, label %compress_parents_parallel.exit

bb.g:                                             ; preds = %._crit_edge62
  %i.ct = shl i64 %.0.i42.lcssa, 5
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 %i.ct
  %i.cv = shl i64 %.0.i42.lcssa, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cu, ptr noundef nonnull align 16 dereferenceable(32) %i.cw, i64 32, i1 false)
  %i.cx = add nuw i64 %.0.i42.lcssa, 1
  br label %compress_parents_parallel.exit

compress_parents_parallel.exit:                   ; preds = %._crit_edge62, %bb.g
  %.018.i = phi i64 [ %i.cx, %bb.g ], [ %.0.i42.lcssa, %._crit_edge62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.h

bb.h:                                             ; preds = %compress_parents_parallel.exit, %bb.e
  %.0 = phi i64 [ 2, %bb.e ], [ %.018.i, %compress_parents_parallel.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %compress_chunks_parallel.exit
  %.1 = phi i64 [ %.0.i, %compress_chunks_parallel.exit ], [ %.0, %bb.h ]
  ret i64 %.1
}

declare i64 @blake3_simd_degree() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @blake3_hasher_init(ptr nofree noundef writeonly captures(none) initializes((0, 139), (144, 145)) %0) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @IV, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @IV, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.c, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %i.b, i8 0, i64 75, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @blake3_hasher_init_keyed(ptr nofree noundef writeonly captures(none) initializes((0, 139), (144, 145)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 1              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 1              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 1              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 1              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 1              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 1              ; 2 uses
  store i32 %i.a, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.k, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.m, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.o, ptr %.sroa.11.0..sroa_idx, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.a, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.c, ptr %.sroa.5.0..sroa_idx3, align 4
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.e, ptr %.sroa.6.0..sroa_idx5, align 8
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.g, ptr %.sroa.7.0..sroa_idx7, align 4
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.i, ptr %.sroa.8.0..sroa_idx9, align 8
  %.sroa.9.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.k, ptr %.sroa.9.0..sroa_idx11, align 4
  %.sroa.10.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.m, ptr %.sroa.10.0..sroa_idx13, align 8
  %.sroa.11.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.o, ptr %.sroa.11.0..sroa_idx15, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.q, i8 0, i64 74, i1 false)
  store i8 16, ptr %i.r, align 2, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.s, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blake3_hasher_init_derive_key_raw(ptr nofree noundef writeonly captures(none) initializes((0, 139), (144, 145)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.blake3_hasher, align 8      ; 9 uses
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) @IV, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) @IV, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.c, i8 0, i64 74, i1 false)
  store i8 32, ptr %i.d, align 2, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i8 0, ptr %i.e, align 8, !tbaa !28
  call void @blake3_hasher_update(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @blake3_hasher_finalize_seek(ptr noundef nonnull readonly %3, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 32)
  %i.f = load i32, ptr %i.a, align 16             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i32, ptr %i.m, align 16             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  store i32 %i.f, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.l, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.n, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.p, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.t, ptr %.sroa.11.0..sroa_idx, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.h, ptr %.sroa.5.0..sroa_idx3, align 4
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.j, ptr %.sroa.6.0..sroa_idx5, align 8
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.l, ptr %.sroa.7.0..sroa_idx7, align 4
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.n, ptr %.sroa.8.0..sroa_idx9, align 8
  %.sroa.9.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.p, ptr %.sroa.9.0..sroa_idx11, align 4
  %.sroa.10.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.r, ptr %.sroa.10.0..sroa_idx13, align 8
  %.sroa.11.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.t, ptr %.sroa.11.0..sroa_idx15, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.v, i8 0, i64 74, i1 false)
  store i8 64, ptr %i.w, align 2, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.x, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blake3_hasher_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 6 uses
  %3 = alloca %struct.output_t, align 8           ; 7 uses
  %i.b = alloca [8 x i32], align 16               ; 6 uses
  %4 = alloca %struct.output_t, align 8           ; 7 uses
  %i.c = alloca [8 x i32], align 16               ; 6 uses
  %5 = alloca %struct.output_t, align 8           ; 7 uses
  %i.d = alloca [8 x i32], align 16               ; 6 uses
  %6 = alloca %struct.output_t, align 8           ; 7 uses
  %i.e = alloca [8 x i32], align 16               ; 6 uses
  %7 = alloca %struct.output_t, align 8           ; 7 uses
end_hunk_0
begin_hunk_1_@blake3_hasher_update:bb.a
  br i1 %.not.i13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sub nsw i64 64, %i.t
  %spec.select.i21 = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %spec.select.i) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %spec.select.i21, i1 false)
  %i.z = trunc i64 %spec.select.i21 to i8
  %i.aa = load i8, ptr %i.r, align 8, !tbaa !21
  %i.ab = add i8 %i.aa, %i.z                      ; 2 uses
  store i8 %i.ab, ptr %i.r, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.i21 ; 2 uses
  %i.ad = sub nuw i64 %spec.select.i, %spec.select.i21 ; 2 uses
  %.not30.i14 = icmp eq i64 %i.ad, 0
  br i1 %.not30.i14, label %chunk_state_update.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !18
  %i.ai = load i8, ptr %i.n, align 1, !tbaa !20
  %i.aj = icmp eq i8 %i.ai, 0
  %..i26 = zext i1 %i.aj to i8
  %i.ak = or i8 %i.ah, %..i26
  tail call void @blake3_compress_in_place(ptr noundef nonnull %i.m, ptr noundef nonnull %i.x, i8 noundef zeroext 64, i64 noundef %i.af, i8 noundef zeroext %i.ak) #9
  %i.al = load i8, ptr %i.n, align 1, !tbaa !20
  %i.am = add i8 %i.al, 1
  store i8 %i.am, ptr %i.n, align 1, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.x, i8 0, i64 65, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.028.i15 = phi ptr [ %1, %bb.c ], [ %i.ac, %bb.e ] ; 2 uses
  %.0.i16 = phi i64 [ %spec.select.i, %bb.c ], [ %i.ad, %bb.e ] ; 3 uses
  %i.an = icmp ugt i64 %.0.i16, 64
  br i1 %i.an, label %.lr.ph, label %chunk_state_update.exit19

.lr.ph:                                           ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 138
  %.pre = load i8, ptr %i.n, align 1, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %i.aq = phi i8 [ %.pre, %.lr.ph ], [ %i.aw, %bb.g ]
  %.1.i1878 = phi i64 [ %.0.i16, %.lr.ph ], [ %i.ay, %bb.g ]
  %.129.i1777 = phi ptr [ %.028.i15, %.lr.ph ], [ %i.ax, %bb.g ] ; 2 uses
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.as = load i8, ptr %i.ap, align 2, !tbaa !18
  %i.at = icmp eq i8 %i.aq, 0
  %..i = zext i1 %i.at to i8
  %i.au = or i8 %i.as, %..i
  tail call void @blake3_compress_in_place(ptr noundef nonnull %i.m, ptr noundef %.129.i1777, i8 noundef zeroext 64, i64 noundef %i.ar, i8 noundef zeroext %i.au) #9
  %i.av = load i8, ptr %i.n, align 1, !tbaa !20
  %i.aw = add i8 %i.av, 1                         ; 2 uses
  store i8 %i.aw, ptr %i.n, align 1, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %.129.i1777, i64 64 ; 2 uses
  %i.ay = add i64 %.1.i1878, -64                  ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 64
  br i1 %i.az, label %bb.g, label %chunk_state_update.exit19.loopexit, !llvm.loop !0

chunk_state_update.exit19.loopexit:               ; preds = %bb.g
  %.pre125 = load i8, ptr %i.r, align 8, !tbaa !21
  br label %chunk_state_update.exit19

chunk_state_update.exit19:                        ; preds = %bb.d, %chunk_state_update.exit19.loopexit, %bb.f
  %i.ba = phi i8 [ 0, %bb.f ], [ %.pre125, %chunk_state_update.exit19.loopexit ], [ %i.ab, %bb.d ]
  %.129.i17.lcssa = phi ptr [ %.028.i15, %bb.f ], [ %i.ax, %chunk_state_update.exit19.loopexit ], [ %i.ac, %bb.d ]
  %.1.i18.lcssa = phi i64 [ %.0.i16, %bb.f ], [ %i.ay, %chunk_state_update.exit19.loopexit ], [ 0, %bb.d ]
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %i.bc = sub nsw i64 64, %i.bb
  %spec.select.i20 = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %.1.i18.lcssa) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %.129.i17.lcssa, i64 %spec.select.i20, i1 false)
  %i.bf = trunc nuw nsw i64 %spec.select.i20 to i8
  %i.bg = load i8, ptr %i.r, align 8, !tbaa !21
  %i.bh = add i8 %i.bg, %i.bf                     ; 3 uses
  store i8 %i.bh, ptr %i.r, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.i
  %i.bj = sub i64 %2, %spec.select.i              ; 2 uses
  %.not65.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not65.not.i, label %blake3_hasher_update_base.exit, label %bb.h

bb.h:                                             ; preds = %chunk_state_update.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !18, !noalias !64
  %i.bm = load i8, ptr %i.n, align 1, !tbaa !20, !noalias !64
  %i.bn = icmp eq i8 %i.bm, 0
  %..i31 = zext i1 %i.bn to i8
  %i.bo = or i8 %i.bl, %..i31
  %i.bp = or i8 %i.bo, 2                          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !19, !noalias !64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i8 %i.bh, ptr %i.bt, align 8, !tbaa !23, !alias.scope !65
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.br, ptr %i.bu, align 8, !tbaa !24, !alias.scope !65
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 105
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !25, !alias.scope !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.i, ptr noundef nonnull %i.bs, i8 noundef zeroext %i.bh, i64 noundef %i.br, i8 noundef zeroext %i.bp) #9
  %i.bw = load <4 x i32>, ptr %i.i, align 16, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.by = load <4 x i32>, ptr %i.bx, align 16, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  %i.bz = load i64, ptr %i.bq, align 8, !tbaa !66 ; 2 uses
  %i.ca = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bz) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !28  ; 3 uses
  %i.cd = zext i8 %i.cc to i64                    ; 2 uses
  %i.ce = icmp samesign ult i64 %i.ca, %i.cd
  br i1 %i.ce, label %.lr.ph80, label %hasher_merge_cv_stack.exit

.lr.ph80:                                         ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 105
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ck = trunc nuw nsw i64 %i.ca to i8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph80, %bb.i
  %i.cl = phi i8 [ %i.cc, %.lr.ph80 ], [ %i.cw, %bb.i ]
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 5
  %i.co = getelementptr i8, ptr %0, i64 %i.cn     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.cq = load i8, ptr %i.bk, align 2, !tbaa !29
  %i.cr = or i8 %i.cq, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 1 dereferenceable(64) %i.cp, i64 64, i1 false)
  store i8 64, ptr %i.cg, align 8, !tbaa !23, !alias.scope !67
  store i64 0, ptr %i.ch, align 8, !tbaa !24, !alias.scope !67
  store i8 %i.cr, ptr %i.ci, align 1, !tbaa !25, !alias.scope !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.e, ptr noundef nonnull %i.cf, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.cr) #9
  %i.cs = load <4 x i32>, ptr %i.e, align 16, !tbaa !26
  store <4 x i32> %i.cs, ptr %i.cp, align 1
  %i.ct = getelementptr i8, ptr %i.co, i64 97
  %i.cu = load <4 x i32>, ptr %i.cj, align 16, !tbaa !26
  store <4 x i32> %i.cu, ptr %i.ct, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.cv = load i8, ptr %i.cb, align 8, !tbaa !28
  %i.cw = add i8 %i.cv, -1                        ; 5 uses
  store i8 %i.cw, ptr %i.cb, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.cx = icmp ugt i8 %i.cw, %i.ck
  br i1 %i.cx, label %bb.i, label %hasher_merge_cv_stack.exit.loopexit, !llvm.loop !46

hasher_merge_cv_stack.exit.loopexit:              ; preds = %bb.i
  %.pre126 = load i64, ptr %i.bq, align 8, !tbaa !66
  %.pre138 = zext nneg i8 %i.cw to i64
  br label %hasher_merge_cv_stack.exit

hasher_merge_cv_stack.exit:                       ; preds = %hasher_merge_cv_stack.exit.loopexit, %bb.h
  %.pre-phi139 = phi i64 [ %.pre138, %hasher_merge_cv_stack.exit.loopexit ], [ %i.cd, %bb.h ]
  %i.cy = phi i64 [ %.pre126, %hasher_merge_cv_stack.exit.loopexit ], [ %i.bz, %bb.h ]
  %.lcssa75 = phi i8 [ %i.cw, %hasher_merge_cv_stack.exit.loopexit ], [ %i.cc, %bb.h ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.da = shl nuw nsw i64 %.pre-phi139, 5
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da ; 2 uses
  store <4 x i32> %i.bw, ptr %i.db, align 1
  %.sroa.1954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x i32> %i.by, ptr %.sroa.1954.0..sroa_idx, align 1
  %i.dc = add i8 %.lcssa75, 1
  store i8 %i.dc, ptr %i.cb, align 8, !tbaa !28
  %i.dd = add i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 %i.dd, ptr %i.bq, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.bd, i8 0, i64 66, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.j

bb.j:                                             ; preds = %hasher_merge_cv_stack.exit, %bb.b
  %.061.i = phi i64 [ %i.bj, %hasher_merge_cv_stack.exit ], [ %2, %bb.b ] ; 3 uses
  %.060.i = phi ptr [ %i.bi, %hasher_merge_cv_stack.exit ], [ %1, %bb.b ] ; 2 uses
  %i.de = icmp ugt i64 %.061.i, 1024
  br i1 %i.de, label %.lr.ph102, label %._crit_edge.thread

.lr.ph102:                                        ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 11 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 105
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 105
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 105 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 106 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 105
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 105
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre127 = load i64, ptr %i.df, align 8, !tbaa !66
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph102, %bb.r
  %i.ek = phi i64 [ %.pre127, %.lr.ph102 ], [ %i.jq, %bb.r ] ; 4 uses
  %.1.i100 = phi ptr [ %.060.i, %.lr.ph102 ], [ %i.jr, %bb.r ] ; 4 uses
  %.162.i99 = phi i64 [ %.061.i, %.lr.ph102 ], [ %i.js, %bb.r ] ; 2 uses
  %i.el = or i64 %.162.i99, 1
  %i.em = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.el, i1 true)
  %i.en = lshr exact i64 -9223372036854775808, %i.em
  %i.eo = shl i64 %i.ek, 10
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i = phi i64 [ %i.en, %bb.k ], [ %i.er, %bb.l ] ; 11 uses
  %i.ep = add i64 %.0.i, -1
  %i.eq = and i64 %i.ep, %i.eo
  %.not67.i = icmp eq i64 %i.eq, 0
  %i.er = lshr i64 %.0.i, 1
  br i1 %.not67.i, label %bb.m, label %bb.l, !llvm.loop !47

bb.m:                                             ; preds = %bb.l
  %i.es = lshr i64 %.0.i, 10
  %i.et = icmp ult i64 %.0.i, 1025
  br i1 %i.et, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.eu = load i8, ptr %i.dg, align 2, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.ej, i8 0, i64 66, i1 false)
  store i8 %i.eu, ptr %i.dy, align 2, !tbaa !18
  store i64 %i.ek, ptr %i.du, align 8, !tbaa !19
  %i.ev = icmp samesign ugt i64 %.0.i, 64
  br i1 %i.ev, label %.lr.ph93, label %chunk_state_update.exit

.lr.ph93:                                         ; preds = %bb.n, %.lr.ph93
  %i.ew = phi i8 [ %i.fc, %.lr.ph93 ], [ 0, %bb.n ]
  %.1.i592 = phi i64 [ %i.fe, %.lr.ph93 ], [ %.0.i, %bb.n ]
  %.129.i91 = phi ptr [ %i.fd, %.lr.ph93 ], [ %.1.i100, %bb.n ] ; 2 uses
  %i.ex = load i64, ptr %i.du, align 8, !tbaa !19
  %i.ey = load i8, ptr %i.dy, align 2, !tbaa !18
  %i.ez = icmp eq i8 %i.ew, 0
  %..i29 = zext i1 %i.ez to i8
  %i.fa = or i8 %i.ey, %..i29
  call void @blake3_compress_in_place(ptr noundef nonnull %9, ptr noundef %.129.i91, i8 noundef zeroext 64, i64 noundef %i.ex, i8 noundef zeroext %i.fa) #9
  %i.fb = load i8, ptr %i.dx, align 1, !tbaa !20
  %i.fc = add i8 %i.fb, 1                         ; 2 uses
  store i8 %i.fc, ptr %i.dx, align 1, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %.129.i91, i64 64 ; 2 uses
  %i.fe = add i64 %.1.i592, -64                   ; 3 uses
  %i.ff = icmp ugt i64 %i.fe, 64
  br i1 %i.ff, label %.lr.ph93, label %chunk_state_update.exit.loopexit, !llvm.loop !0

chunk_state_update.exit.loopexit:                 ; preds = %.lr.ph93
  %.pre129 = load i8, ptr %i.dw, align 8, !tbaa !21
  %.pre130 = load i64, ptr %i.du, align 8, !tbaa !19, !noalias !68
  %i.fg = zext i8 %.pre129 to i64
  br label %chunk_state_update.exit

chunk_state_update.exit:                          ; preds = %chunk_state_update.exit.loopexit, %bb.n
  %i.fh = phi i64 [ %i.ek, %bb.n ], [ %.pre130, %chunk_state_update.exit.loopexit ] ; 2 uses
  %i.fi = phi i64 [ 0, %bb.n ], [ %i.fg, %chunk_state_update.exit.loopexit ] ; 2 uses
  %.129.i.lcssa = phi ptr [ %.1.i100, %bb.n ], [ %i.fd, %chunk_state_update.exit.loopexit ]
  %.1.i5.lcssa = phi i64 [ %.0.i, %bb.n ], [ %i.fe, %chunk_state_update.exit.loopexit ]
  %i.fj = sub nsw i64 64, %i.fi
  %spec.select.i24 = call i64 @llvm.umin.i64(i64 %i.fj, i64 %.1.i5.lcssa) ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr align 1 %.129.i.lcssa, i64 %spec.select.i24, i1 false)
  %i.fl = trunc nuw nsw i64 %spec.select.i24 to i8
  %i.fm = load i8, ptr %i.dw, align 8, !tbaa !21
  %i.fn = add i8 %i.fm, %i.fl                     ; 3 uses
  store i8 %i.fn, ptr %i.dw, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.fo = load i8, ptr %i.dy, align 2, !tbaa !18, !noalias !68
  %i.fp = load i8, ptr %i.dx, align 1, !tbaa !20, !noalias !68
  %i.fq = icmp eq i8 %i.fp, 0
  %..i32 = zext i1 %i.fq to i8
  %i.fr = or i8 %i.fo, %..i32
  %i.fs = or i8 %i.fr, 2                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dz, ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i64 64, i1 false)
  store i8 %i.fn, ptr %i.ea, align 8, !tbaa !23, !alias.scope !69
  store i64 %i.fh, ptr %i.eb, align 8, !tbaa !24, !alias.scope !69
  store i8 %i.fs, ptr %i.ec, align 1, !tbaa !25, !alias.scope !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.j, ptr noundef nonnull %i.dz, i8 noundef zeroext %i.fn, i64 noundef %i.fh, i8 noundef zeroext %i.fs) #9
  %i.ft = load <4 x i32>, ptr %i.j, align 16, !tbaa !26
  %i.fu = load <4 x i32>, ptr %i.ed, align 16, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  %i.fv = load i64, ptr %i.du, align 8, !tbaa !19
  %i.fw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fv) ; 2 uses
  %i.fx = load i8, ptr %i.dh, align 8, !tbaa !28  ; 3 uses
  %i.fy = zext i8 %i.fx to i64                    ; 2 uses
  %i.fz = icmp samesign ult i64 %i.fw, %i.fy
  br i1 %i.fz, label %.lr.ph96.preheader, label %hasher_merge_cv_stack.exit36

.lr.ph96.preheader:                               ; preds = %chunk_state_update.exit
  %i.ga = trunc nuw nsw i64 %i.fw to i8
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  %i.gb = phi i8 [ %i.gm, %.lr.ph96 ], [ %i.fx, %.lr.ph96.preheader ]
  %i.gc = zext i8 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 5
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd     ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.gg = load i8, ptr %i.dg, align 2, !tbaa !29
  %i.gh = or i8 %i.gg, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 1 dereferenceable(64) %i.gf, i64 64, i1 false)
  store i8 64, ptr %i.ef, align 8, !tbaa !23, !alias.scope !70
  store i64 0, ptr %i.eg, align 8, !tbaa !24, !alias.scope !70
  store i8 %i.gh, ptr %i.eh, align 1, !tbaa !25, !alias.scope !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ee, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.gh) #9
  %i.gi = load <4 x i32>, ptr %i.b, align 16, !tbaa !26
  store <4 x i32> %i.gi, ptr %i.gf, align 1
  %i.gj = getelementptr i8, ptr %i.ge, i64 97
  %i.gk = load <4 x i32>, ptr %i.ei, align 16, !tbaa !26
  store <4 x i32> %i.gk, ptr %i.gj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.gl = load i8, ptr %i.dh, align 8, !tbaa !28
  %i.gm = add i8 %i.gl, -1                        ; 5 uses
  store i8 %i.gm, ptr %i.dh, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.gn = icmp ugt i8 %i.gm, %i.ga
  br i1 %i.gn, label %.lr.ph96, label %hasher_merge_cv_stack.exit36.loopexit, !llvm.loop !46

hasher_merge_cv_stack.exit36.loopexit:            ; preds = %.lr.ph96
  %.pre133 = zext nneg i8 %i.gm to i64
  br label %hasher_merge_cv_stack.exit36

hasher_merge_cv_stack.exit36:                     ; preds = %hasher_merge_cv_stack.exit36.loopexit, %chunk_state_update.exit
  %.pre-phi = phi i64 [ %.pre133, %hasher_merge_cv_stack.exit36.loopexit ], [ %i.fy, %chunk_state_update.exit ]
  %.lcssa73 = phi i8 [ %i.gm, %hasher_merge_cv_stack.exit36.loopexit ], [ %i.fx, %chunk_state_update.exit ]
  %i.go = shl nuw nsw i64 %.pre-phi, 5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.go ; 2 uses
  store <4 x i32> %i.ft, ptr %i.gp, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x i32> %i.fu, ptr %.sroa.19.0..sroa_idx, align 1
  %i.gq = add i8 %.lcssa73, 1
  store i8 %i.gq, ptr %i.dh, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.gr = load i8, ptr %i.dg, align 2, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.gs = call i64 @blake3_compress_subtree_wide(ptr noundef %.1.i100, i64 noundef range(i64 1025, -9223372036854775807) %.0.i, ptr noundef nonnull %0, i64 noundef %i.ek, i8 noundef zeroext %i.gr, ptr noundef nonnull %i.g, i1 noundef zeroext false) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.gt = icmp ugt i64 %i.gs, 2
  br i1 %i.gt, label %.lr.ph85, label %compress_subtree_to_parent_node.exit

.lr.ph85:                                         ; preds = %bb.o
  %i.gu = or i8 %i.gr, 4
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph85, %compress_parents_parallel.exit.i
  %.0.i3384 = phi i64 [ %i.gs, %.lr.ph85 ], [ %.018.i.i, %compress_parents_parallel.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.gv = icmp ne i64 %.0.i3384, 2
  %.neg = sext i1 %i.gv to i64
  %i.gw = add i64 %.0.i3384, -1
  %i.gx = add i64 %i.gw, %.neg                    ; 2 uses
  %i.gy = lshr i64 %i.gx, 1
  %i.gz = add nuw i64 %i.gy, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.gx, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.p
  %n.vec = and i64 %i.gz, -4                      ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ha = shl nuw nsw <2 x i64> %vec.ind, splat (i64 6)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 6)
  %i.hb = add <2 x i64> %step.add, splat (i64 128)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.g, <2 x i64> %i.ha
  %wide.gep199 = getelementptr inbounds nuw i8, ptr %i.g, <2 x i64> %i.hb
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store <2 x ptr> %wide.gep, ptr %i.hc, align 16, !tbaa !12
  store <2 x ptr> %wide.gep199, ptr %i.hd, align 16, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %n.vec, -1                ; 2 uses
  %i.hf = shl i64 %ind.escape, 1
  %i.hg = add i64 %i.hf, 2
  %cmp.n = icmp eq i64 %i.gz, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.p, %middle.block
  %.0.i.i83.ph = phi i64 [ 0, %bb.p ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0.i.i83 = phi i64 [ %i.hk, %scalar.ph ], [ %.0.i.i83.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hh = shl nuw nsw i64 %.0.i.i83, 6
  %i.hi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0.i.i83
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !12
  %i.hk = add nuw nsw i64 %.0.i.i83, 1            ; 3 uses
  %i.hl = shl nuw i64 %i.hk, 1                    ; 2 uses
  %i.hm = sub i64 %.0.i3384, %i.hl
  %i.hn = icmp ugt i64 %i.hm, 1
  br i1 %i.hn, label %scalar.ph, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.0.i.i83.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.0.i.i83, %scalar.ph ]
  %.lcssa188 = phi i64 [ %n.vec, %middle.block ], [ %i.hk, %scalar.ph ] ; 4 uses
  %.lcssa187 = phi i64 [ %i.hg, %middle.block ], [ %i.hl, %scalar.ph ]
  call void @blake3_hash_many(ptr noundef nonnull %i.f, i64 noundef %.lcssa188, i64 noundef 1, ptr noundef %0, i64 noundef 0, i1 noundef zeroext false, i8 noundef zeroext %i.gu, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.h) #9
  %i.ho = icmp ugt i64 %.0.i3384, %.lcssa187
  br i1 %i.ho, label %bb.q, label %compress_parents_parallel.exit.i

bb.q:                                             ; preds = %.loopexit
  %i.hp = shl i64 %.lcssa188, 5
  %i.hq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hp
  %i.hr = shl i64 %.lcssa188, 6
  %i.hs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.hq, ptr noundef nonnull align 16 dereferenceable(32) %i.hs, i64 32, i1 false)
  %i.ht = add nuw i64 %.0.i.i83.lcssa, 2
  br label %compress_parents_parallel.exit.i

compress_parents_parallel.exit.i:                 ; preds = %bb.q, %.loopexit
  %.018.i.i = phi i64 [ %i.ht, %bb.q ], [ %.lcssa188, %.loopexit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %i.hu = shl i64 %.018.i.i, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 16 %i.h, i64 %i.hu, i1 false)
  %i.hv = icmp ugt i64 %.018.i.i, 2
  br i1 %i.hv, label %bb.p, label %compress_subtree_to_parent_node.exit, !llvm.loop !56

compress_subtree_to_parent_node.exit:             ; preds = %compress_parents_parallel.exit.i, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.hw = load i64, ptr %i.df, align 8, !tbaa !66 ; 2 uses
  %i.hx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hw) ; 2 uses
  %i.hy = load i8, ptr %i.dh, align 8, !tbaa !28  ; 3 uses
  %i.hz = zext i8 %i.hy to i64                    ; 2 uses
  %i.ia = icmp samesign ult i64 %i.hx, %i.hz
  br i1 %i.ia, label %.lr.ph86.preheader, label %hasher_merge_cv_stack.exit34

.lr.ph86.preheader:                               ; preds = %compress_subtree_to_parent_node.exit
  %i.ib = trunc nuw nsw i64 %i.hx to i8
  br label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %i.ic = phi i8 [ %i.in, %.lr.ph86 ], [ %i.hy, %.lr.ph86.preheader ]
  %i.id = zext i8 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 5
  %i.if = getelementptr i8, ptr %0, i64 %i.ie     ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ih = load i8, ptr %i.dg, align 2, !tbaa !29
  %i.ii = or i8 %i.ih, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, ptr noundef nonnull align 1 dereferenceable(64) %i.ig, i64 64, i1 false)
  store i8 64, ptr %i.dj, align 8, !tbaa !23, !alias.scope !71
  store i64 0, ptr %i.dk, align 8, !tbaa !24, !alias.scope !71
  store i8 %i.ii, ptr %i.dl, align 1, !tbaa !25, !alias.scope !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.d, ptr noundef nonnull %i.di, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.ii) #9
  %i.ij = load <4 x i32>, ptr %i.d, align 16, !tbaa !26
  store <4 x i32> %i.ij, ptr %i.ig, align 1
  %i.ik = getelementptr i8, ptr %i.if, i64 97
  %i.il = load <4 x i32>, ptr %i.dm, align 16, !tbaa !26
  store <4 x i32> %i.il, ptr %i.ik, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.im = load i8, ptr %i.dh, align 8, !tbaa !28
  %i.in = add i8 %i.im, -1                        ; 5 uses
  store i8 %i.in, ptr %i.dh, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.io = icmp ugt i8 %i.in, %i.ib
  br i1 %i.io, label %.lr.ph86, label %hasher_merge_cv_stack.exit34.loopexit, !llvm.loop !46

hasher_merge_cv_stack.exit34.loopexit:            ; preds = %.lr.ph86
  %.pre128 = load i64, ptr %i.df, align 8, !tbaa !66
  %.pre134 = zext nneg i8 %i.in to i64
  br label %hasher_merge_cv_stack.exit34

hasher_merge_cv_stack.exit34:                     ; preds = %hasher_merge_cv_stack.exit34.loopexit, %compress_subtree_to_parent_node.exit
  %.pre-phi135 = phi i64 [ %.pre134, %hasher_merge_cv_stack.exit34.loopexit ], [ %i.hz, %compress_subtree_to_parent_node.exit ]
  %i.ip = phi i64 [ %.pre128, %hasher_merge_cv_stack.exit34.loopexit ], [ %i.hw, %compress_subtree_to_parent_node.exit ]
  %.lcssa70 = phi i8 [ %i.in, %hasher_merge_cv_stack.exit34.loopexit ], [ %i.hy, %compress_subtree_to_parent_node.exit ]
  %i.iq = shl nuw nsw i64 %.pre-phi135, 5
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ir, ptr noundef nonnull align 16 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.is = add i8 %.lcssa70, 1                     ; 4 uses
  store i8 %i.is, ptr %i.dh, align 8, !tbaa !28
  %i.it = lshr i64 %.0.i, 11
  %i.iu = add i64 %i.ip, %i.it
  %i.iv = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.iu) ; 2 uses
  %i.iw = zext i8 %i.is to i64                    ; 2 uses
  %i.ix = icmp samesign ult i64 %i.iv, %i.iw
  br i1 %i.ix, label %.lr.ph89.preheader, label %hasher_merge_cv_stack.exit35

.lr.ph89.preheader:                               ; preds = %hasher_merge_cv_stack.exit34
  %i.iy = trunc nuw nsw i64 %i.iv to i8
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %.lr.ph89
  %i.iz = phi i8 [ %i.jk, %.lr.ph89 ], [ %i.is, %.lr.ph89.preheader ]
  %i.ja = zext i8 %i.iz to i64
  %i.jb = shl nuw nsw i64 %i.ja, 5
  %i.jc = getelementptr i8, ptr %0, i64 %i.jb     ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.je = load i8, ptr %i.dg, align 2, !tbaa !29
  %i.jf = or i8 %i.je, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.do, ptr noundef nonnull align 1 dereferenceable(64) %i.jd, i64 64, i1 false)
  store i8 64, ptr %i.dp, align 8, !tbaa !23, !alias.scope !72
  store i64 0, ptr %i.dq, align 8, !tbaa !24, !alias.scope !72
  store i8 %i.jf, ptr %i.dr, align 1, !tbaa !25, !alias.scope !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.c, ptr noundef nonnull %i.do, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.jf) #9
  %i.jg = load <4 x i32>, ptr %i.c, align 16, !tbaa !26
  store <4 x i32> %i.jg, ptr %i.jd, align 1
  %i.jh = getelementptr i8, ptr %i.jc, i64 97
  %i.ji = load <4 x i32>, ptr %i.ds, align 16, !tbaa !26
  store <4 x i32> %i.ji, ptr %i.jh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.jj = load i8, ptr %i.dh, align 8, !tbaa !28
  %i.jk = add i8 %i.jj, -1                        ; 5 uses
  store i8 %i.jk, ptr %i.dh, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.jl = icmp ugt i8 %i.jk, %i.iy
  br i1 %i.jl, label %.lr.ph89, label %hasher_merge_cv_stack.exit35.loopexit, !llvm.loop !46

hasher_merge_cv_stack.exit35.loopexit:            ; preds = %.lr.ph89
  %.pre136 = zext nneg i8 %i.jk to i64
  br label %hasher_merge_cv_stack.exit35

hasher_merge_cv_stack.exit35:                     ; preds = %hasher_merge_cv_stack.exit35.loopexit, %hasher_merge_cv_stack.exit34
  %.pre-phi137 = phi i64 [ %.pre136, %hasher_merge_cv_stack.exit35.loopexit ], [ %i.iw, %hasher_merge_cv_stack.exit34 ]
  %.lcssa72 = phi i8 [ %i.jk, %hasher_merge_cv_stack.exit35.loopexit ], [ %i.is, %hasher_merge_cv_stack.exit34 ]
  %i.jm = shl nuw nsw i64 %.pre-phi137, 5
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jn, ptr noundef nonnull align 16 dereferenceable(32) %i.dt, i64 32, i1 false)
  %i.jo = add i8 %.lcssa72, 1
  store i8 %i.jo, ptr %i.dh, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.r

bb.r:                                             ; preds = %hasher_merge_cv_stack.exit35, %hasher_merge_cv_stack.exit36
  %i.jp = load i64, ptr %i.df, align 8, !tbaa !66
  %i.jq = add i64 %i.jp, %i.es                    ; 2 uses
  store i64 %i.jq, ptr %i.df, align 8, !tbaa !66
  %i.jr = getelementptr inbounds nuw i8, ptr %.1.i100, i64 %.0.i ; 2 uses
  %i.js = sub i64 %.162.i99, %.0.i                ; 4 uses
  %i.jt = icmp ugt i64 %i.js, 1024
  br i1 %i.jt, label %bb.k, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.r
  %.not66.i = icmp eq i64 %i.js, 0
  br i1 %.not66.i, label %blake3_hasher_update_base.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  %.1.i.lcssa169 = phi ptr [ %i.jr, %._crit_edge ], [ %.060.i, %bb.j ] ; 3 uses
  %.162.i.lcssa168 = phi i64 [ %i.js, %._crit_edge ], [ %.061.i, %bb.j ] ; 3 uses
  %i.ju = load i8, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %.not.i6 = icmp eq i8 %i.ju, 0
  br i1 %.not.i6, label %bb.u, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  %i.jv = zext i8 %i.ju to i64                    ; 2 uses
  %i.jw = sub nsw i64 64, %i.jv
  %spec.select.i23 = call i64 @llvm.umin.i64(i64 %i.jw, i64 %.162.i.lcssa168) ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jy, ptr align 1 %.1.i.lcssa169, i64 %spec.select.i23, i1 false)
  %i.jz = trunc i64 %spec.select.i23 to i8
  %i.ka = load i8, ptr %i.r, align 8, !tbaa !21
  %i.kb = add i8 %i.ka, %i.jz                     ; 2 uses
  store i8 %i.kb, ptr %i.r, align 8, !tbaa !21
  %i.kc = getelementptr inbounds nuw i8, ptr %.1.i.lcssa169, i64 %spec.select.i23 ; 2 uses
  %i.kd = sub nuw nsw i64 %.162.i.lcssa168, %spec.select.i23 ; 2 uses
  %.not30.i7 = icmp eq i64 %i.kd, 0
  br i1 %.not30.i7, label %chunk_state_update.exit12, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !19
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !18
  %i.ki = load i8, ptr %i.n, align 1, !tbaa !20
  %i.kj = icmp eq i8 %i.ki, 0
  %..i28 = zext i1 %i.kj to i8
  %i.kk = or i8 %i.kh, %..i28
  call void @blake3_compress_in_place(ptr noundef nonnull %i.m, ptr noundef nonnull %i.jx, i8 noundef zeroext 64, i64 noundef %i.kf, i8 noundef zeroext %i.kk) #9
  %i.kl = load i8, ptr %i.n, align 1, !tbaa !20
  %i.km = add i8 %i.kl, 1
  store i8 %i.km, ptr %i.n, align 1, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.jx, i8 0, i64 65, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.thread
  %.028.i8 = phi ptr [ %.1.i.lcssa169, %._crit_edge.thread ], [ %i.kc, %bb.t ] ; 2 uses
  %.0.i9 = phi i64 [ %.162.i.lcssa168, %._crit_edge.thread ], [ %i.kd, %bb.t ] ; 3 uses
  %i.kn = icmp samesign ugt i64 %.0.i9, 64
  br i1 %i.kn, label %.lr.ph108, label %chunk_state_update.exit12

.lr.ph108:                                        ; preds = %bb.u
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 138
  %.pre131 = load i8, ptr %i.n, align 1, !tbaa !20
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph108, %bb.v
  %i.kq = phi i8 [ %.pre131, %.lr.ph108 ], [ %i.kw, %bb.v ]
  %.1.i11106 = phi i64 [ %.0.i9, %.lr.ph108 ], [ %i.ky, %bb.v ]
  %.129.i10105 = phi ptr [ %.028.i8, %.lr.ph108 ], [ %i.kx, %bb.v ] ; 2 uses
  %i.kr = load i64, ptr %i.ko, align 8, !tbaa !19
  %i.ks = load i8, ptr %i.kp, align 2, !tbaa !18
  %i.kt = icmp eq i8 %i.kq, 0
  %..i27 = zext i1 %i.kt to i8
  %i.ku = or i8 %i.ks, %..i27
  call void @blake3_compress_in_place(ptr noundef nonnull %i.m, ptr noundef %.129.i10105, i8 noundef zeroext 64, i64 noundef %i.kr, i8 noundef zeroext %i.ku) #9
  %i.kv = load i8, ptr %i.n, align 1, !tbaa !20
  %i.kw = add i8 %i.kv, 1                         ; 2 uses
  store i8 %i.kw, ptr %i.n, align 1, !tbaa !20
  %i.kx = getelementptr inbounds nuw i8, ptr %.129.i10105, i64 64 ; 2 uses
  %i.ky = add i64 %.1.i11106, -64                 ; 3 uses
  %i.kz = icmp ugt i64 %i.ky, 64
  br i1 %i.kz, label %bb.v, label %chunk_state_update.exit12.loopexit, !llvm.loop !0

chunk_state_update.exit12.loopexit:               ; preds = %bb.v
  %.pre132 = load i8, ptr %i.r, align 8, !tbaa !21
  br label %chunk_state_update.exit12

chunk_state_update.exit12:                        ; preds = %bb.s, %chunk_state_update.exit12.loopexit, %bb.u
  %i.la = phi i8 [ 0, %bb.u ], [ %.pre132, %chunk_state_update.exit12.loopexit ], [ %i.kb, %bb.s ]
  %.129.i10.lcssa = phi ptr [ %.028.i8, %bb.u ], [ %i.kx, %chunk_state_update.exit12.loopexit ], [ %i.kc, %bb.s ]
  %.1.i11.lcssa = phi i64 [ %.0.i9, %bb.u ], [ %i.ky, %chunk_state_update.exit12.loopexit ], [ 0, %bb.s ]
  %i.lb = zext i8 %i.la to i64                    ; 2 uses
  %i.lc = sub nsw i64 64, %i.lb
  %spec.select.i22 = call i64 @llvm.umin.i64(i64 %i.lc, i64 %.1.i11.lcssa) ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.le, ptr align 1 %.129.i10.lcssa, i64 %spec.select.i22, i1 false)
  %i.lf = trunc nuw nsw i64 %spec.select.i22 to i8
  %i.lg = load i8, ptr %i.r, align 8, !tbaa !21
  %i.lh = add i8 %i.lg, %i.lf
  store i8 %i.lh, ptr %i.r, align 8, !tbaa !21
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !66
  %i.lk = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.lj) ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !28  ; 2 uses
  %i.ln = zext i8 %i.lm to i64
  %i.lo = icmp samesign ult i64 %i.lk, %i.ln
  br i1 %i.lo, label %.lr.ph111, label %blake3_hasher_update_base.exit

.lr.ph111:                                        ; preds = %chunk_state_update.exit12
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 105
  %i.lu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lv = trunc nuw nsw i64 %i.lk to i8
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph111, %bb.w
  %i.lw = phi i8 [ %i.lm, %.lr.ph111 ], [ %i.mh, %bb.w ]
  %i.lx = zext i8 %i.lw to i64
  %i.ly = shl nuw nsw i64 %i.lx, 5
  %i.lz = getelementptr i8, ptr %0, i64 %i.ly     ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.mb = load i8, ptr %i.lp, align 2, !tbaa !29
  %i.mc = or i8 %i.mb, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lq, ptr noundef nonnull align 1 dereferenceable(64) %i.ma, i64 64, i1 false)
  store i8 64, ptr %i.lr, align 8, !tbaa !23, !alias.scope !73
  store i64 0, ptr %i.ls, align 8, !tbaa !24, !alias.scope !73
  store i8 %i.mc, ptr %i.lt, align 1, !tbaa !25, !alias.scope !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.a, ptr noundef nonnull %i.lq, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.mc) #9
  %i.md = load <4 x i32>, ptr %i.a, align 16, !tbaa !26
  store <4 x i32> %i.md, ptr %i.ma, align 1
  %i.me = getelementptr i8, ptr %i.lz, i64 97
  %i.mf = load <4 x i32>, ptr %i.lu, align 16, !tbaa !26
  store <4 x i32> %i.mf, ptr %i.me, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.mg = load i8, ptr %i.ll, align 8, !tbaa !28
  %i.mh = add i8 %i.mg, -1                        ; 3 uses
  store i8 %i.mh, ptr %i.ll, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.mi = icmp ugt i8 %i.mh, %i.lv
  br i1 %i.mi, label %bb.w, label %blake3_hasher_update_base.exit, !llvm.loop !46

blake3_hasher_update_base.exit:                   ; preds = %bb.w, %chunk_state_update.exit12, %bb.a, %chunk_state_update.exit19, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blake3_hasher_finalize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @blake3_hasher_finalize_seek(ptr noundef %0, i64 noundef 0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blake3_hasher_init_derive_key(ptr nofree noundef writeonly captures(none) initializes((0, 139), (144, 145)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.blake3_hasher, align 8      ; 9 uses
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) @IV, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @IV, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.d, i8 0, i64 74, i1 false)
  store i8 32, ptr %i.e, align 2, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i8 0, ptr %i.f, align 8, !tbaa !28
  call void @blake3_hasher_update(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @blake3_hasher_finalize_seek(ptr noundef nonnull readonly %2, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 32)
  %i.g = load i32, ptr %i.a, align 16             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i32, ptr %i.n, align 16             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  store i32 %i.g, ptr %0, align 8
end_hunk_1
