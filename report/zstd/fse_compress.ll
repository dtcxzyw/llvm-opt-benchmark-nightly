Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/fse_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@FSE_buildCTable_wksp:bb.a
  br i1 %exitcond232, label %.loopexit, label %bb.n, !llvm.loop !27

.loopexit:                                        ; preds = %bb.r, %bb.a
  %.0 = phi i64 [ -44, %bb.a ], [ 0, %bb.r ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 3, 536870915) i64 @FSE_NCountWriteBound(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = add i32 %0, 1
  %i.b = mul i32 %i.a, %1
  %i.c = add i32 %i.b, 6
  %i.d = lshr i32 %i.c, 3
  %i.e = add nuw nsw i32 %i.d, 3
  %.not = icmp eq i32 %0, 0
  %narrow = select i1 %.not, i32 512, i32 %i.e
  %i.f = zext nneg i32 %narrow to i64
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @FSE_writeNCount(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %4, 12
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %4, 5
  br i1 %i.b, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b
  %i.c = add i32 %3, 1
  %i.d = mul i32 %i.c, %4
  %i.e = add i32 %i.d, 6
  %i.f = lshr i32 %i.e, 3
  %i.g = add nuw nsw i32 %i.f, 3
  %.not.i = icmp eq i32 %3, 0
  %narrow.i = select i1 %.not.i, i32 512, i32 %i.g
  %i.h = zext nneg i32 %narrow.i to i64
  %i.i = icmp uge i64 %1, %i.h
  %. = zext i1 %i.i to i32
  %i.j = tail call fastcc i64 @FSE_writeNCount_generic(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i64 [ -1, %bb.b ], [ -44, %bb.a ], [ %i.j, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @FSE_writeNCount_generic(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 5, 13) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.b = add i32 %3, 1                            ; 5 uses
  %.not247 = icmp eq i32 %i.b, 0
  br i1 %.not247, label %.thread, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.a
  %i.c = add nsw i32 %4, -5
  %i.d = shl nuw nsw i32 1, %4                    ; 2 uses
  %i.e = or disjoint i32 %i.d, 1
  %i.f = add nuw nsw i32 %4, 1
  %.not160 = icmp eq i32 %5, 0                    ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -2 ; 3 uses
  %i.h = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph237, %bb.i
  %.0116235 = phi i1 [ true, %.lr.ph237 ], [ %i.bk, %bb.i ]
  %.0117234 = phi i32 [ 0, %.lr.ph237 ], [ %i.at, %bb.i ] ; 6 uses
  %.0119233 = phi i32 [ 4, %.lr.ph237 ], [ %.5, %bb.i ] ; 6 uses
  %.0122232 = phi i32 [ %i.c, %.lr.ph237 ], [ %.6128, %bb.i ] ; 6 uses
  %.0129231 = phi i32 [ %i.d, %.lr.ph237 ], [ %.1130.lcssa, %bb.i ] ; 5 uses
  %.0132230 = phi i32 [ %i.e, %.lr.ph237 ], [ %i.bc, %bb.i ] ; 4 uses
  %.0133229 = phi i32 [ %i.f, %.lr.ph237 ], [ %.1134.lcssa, %bb.i ] ; 3 uses
  %.0136228 = phi ptr [ %0, %.lr.ph237 ], [ %.5141, %bb.i ] ; 6 uses
  br i1 %.0116235, label %.thread178, label %.preheader190

.preheader190:                                    ; preds = %bb.b
  %i.i = icmp ult i32 %.0117234, %i.b
  br i1 %i.i, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader190
  %i.j = zext i32 %.0117234 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !9
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.lr.ph, !llvm.loop !30

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.m = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader190
  %.1118.lcssa = phi i32 [ %.0117234, %.preheader190 ], [ %i.m, %.critedge.loopexit ] ; 9 uses
  %i.n = icmp eq i32 %.1118.lcssa, %i.b
  br i1 %i.n, label %.critedge._crit_edge, label %.preheader189

.preheader189:                                    ; preds = %.critedge
  %i.o = add i32 %.0117234, 24                    ; 3 uses
  %.not157206 = icmp ult i32 %.1118.lcssa, %i.o
  br i1 %.not157206, label %.preheader188, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader189
  %i.p = shl i32 65535, %.0119233                 ; 2 uses
  br i1 %.not160, label %.lr.ph209.split, label %.lr.ph209.split.us

.lr.ph209.split.us:                               ; preds = %.lr.ph209, %.lr.ph209.split.us
  %i.q = phi i32 [ %i.v, %.lr.ph209.split.us ], [ %i.o, %.lr.ph209 ] ; 2 uses
  %.1123208.us = phi i32 [ %i.u, %.lr.ph209.split.us ], [ %.0122232, %.lr.ph209 ]
  %.1137207.us = phi ptr [ %i.t, %.lr.ph209.split.us ], [ %.0136228, %.lr.ph209 ] ; 2 uses
  %i.r = add i32 %.1123208.us, %i.p               ; 2 uses
  %i.s = trunc i32 %i.r to i16
  store i16 %i.s, ptr %.1137207.us, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.1137207.us, i64 2 ; 2 uses
  %i.u = lshr i32 %i.r, 16                        ; 2 uses
  %i.v = add i32 %i.q, 24                         ; 2 uses
  %.not157.us = icmp ult i32 %.1118.lcssa, %i.v
  br i1 %.not157.us, label %.preheader188, label %.lr.ph209.split.us, !llvm.loop !31

.preheader188:                                    ; preds = %.lr.ph209.split.us, %bb.d, %.preheader189
  %.1137.lcssa = phi ptr [ %.0136228, %.preheader189 ], [ %i.ab, %bb.d ], [ %i.t, %.lr.ph209.split.us ] ; 4 uses
  %.1123.lcssa = phi i32 [ %.0122232, %.preheader189 ], [ %i.ac, %bb.d ], [ %i.u, %.lr.ph209.split.us ] ; 2 uses
  %.0114.lcssa = phi i32 [ %.0117234, %.preheader189 ], [ %i.x, %bb.d ], [ %i.q, %.lr.ph209.split.us ] ; 2 uses
  %i.w = add i32 %.0114.lcssa, 3                  ; 2 uses
  %.not158215 = icmp ult i32 %.1118.lcssa, %i.w
  br i1 %.not158215, label %._crit_edge, label %.lr.ph218

.lr.ph209.split:                                  ; preds = %.lr.ph209, %bb.d
  %i.x = phi i32 [ %i.ad, %bb.d ], [ %i.o, %.lr.ph209 ] ; 2 uses
  %.1123208 = phi i32 [ %i.ac, %bb.d ], [ %.0122232, %.lr.ph209 ]
  %.1137207 = phi ptr [ %i.ab, %bb.d ], [ %.0136228, %.lr.ph209 ] ; 3 uses
  %i.y = icmp ugt ptr %.1137207, %i.g
  br i1 %i.y, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph209.split
  %i.z = add i32 %.1123208, %i.p                  ; 2 uses
  %i.aa = trunc i32 %i.z to i16
  store i16 %i.aa, ptr %.1137207, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.1137207, i64 2 ; 2 uses
  %i.ac = lshr i32 %i.z, 16                       ; 2 uses
  %i.ad = add i32 %i.x, 24                        ; 2 uses
  %.not157 = icmp ult i32 %.1118.lcssa, %i.ad
  br i1 %.not157, label %.preheader188, label %.lr.ph209.split, !llvm.loop !31

.lr.ph218:                                        ; preds = %.preheader188, %.lr.ph218
  %i.ae = phi i32 [ %i.ai, %.lr.ph218 ], [ %i.w, %.preheader188 ] ; 2 uses
  %.1120217 = phi i32 [ %i.ah, %.lr.ph218 ], [ %.0119233, %.preheader188 ] ; 2 uses
  %.2124216 = phi i32 [ %i.ag, %.lr.ph218 ], [ %.1123.lcssa, %.preheader188 ]
  %i.af = shl i32 3, %.1120217
  %i.ag = add i32 %i.af, %.2124216                ; 2 uses
  %i.ah = add nsw i32 %.1120217, 2                ; 2 uses
  %i.ai = add i32 %i.ae, 3                        ; 2 uses
  %.not158 = icmp ult i32 %.1118.lcssa, %i.ai
  br i1 %.not158, label %._crit_edge, label %.lr.ph218, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph218, %.preheader188
  %.2124.lcssa = phi i32 [ %.1123.lcssa, %.preheader188 ], [ %i.ag, %.lr.ph218 ]
  %.1120.lcssa = phi i32 [ %.0119233, %.preheader188 ], [ %i.ah, %.lr.ph218 ] ; 4 uses
  %.1115.lcssa = phi i32 [ %.0114.lcssa, %.preheader188 ], [ %i.ae, %.lr.ph218 ]
  %i.aj = sub i32 %.1118.lcssa, %.1115.lcssa
  %i.ak = shl i32 %i.aj, %.1120.lcssa
  %i.al = add i32 %i.ak, %.2124.lcssa             ; 3 uses
  %i.am = add nsw i32 %.1120.lcssa, 2
  %i.an = icmp sgt i32 %.1120.lcssa, 14
  br i1 %i.an, label %bb.e, label %.thread178

bb.e:                                             ; preds = %._crit_edge
  %i.ao = icmp ugt ptr %.1137.lcssa, %i.g
  %or.cond167 = select i1 %.not160, i1 %i.ao, i1 false
  br i1 %or.cond167, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = trunc i32 %i.al to i16
  store i16 %i.ap, ptr %.1137.lcssa, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.1137.lcssa, i64 2
  %i.ar = lshr i32 %i.al, 16
  %i.as = add nsw i32 %.1120.lcssa, -14
  br label %.thread178

.thread178:                                       ; preds = %._crit_edge, %bb.f, %bb.b
  %.4140 = phi ptr [ %.0136228, %bb.b ], [ %.1137.lcssa, %._crit_edge ], [ %i.aq, %bb.f ] ; 4 uses
  %.5127 = phi i32 [ %.0122232, %bb.b ], [ %i.al, %._crit_edge ], [ %i.ar, %bb.f ]
  %.4 = phi i32 [ %.0119233, %bb.b ], [ %i.am, %._crit_edge ], [ %i.as, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %.0117234, %bb.b ], [ %.1118.lcssa, %._crit_edge ], [ %.1118.lcssa, %bb.f ] ; 2 uses
  %i.at = add nuw i32 %.2, 1                      ; 2 uses
  %i.au = zext i32 %.2 to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !9
  %i.ax = sext i16 %i.aw to i32                   ; 2 uses
  %i.ay = shl nuw nsw i32 %.0129231, 1
  %i.az = xor i32 %.0132230, -1
  %i.ba = add nsw i32 %i.ay, %i.az                ; 2 uses
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.bc = sub nsw i32 %.0132230, %i.bb            ; 6 uses
  %i.bd = add nsw i32 %i.ax, 1                    ; 2 uses
  %.not163 = icmp slt i32 %i.bd, %.0129231
  %i.be = select i1 %.not163, i32 0, i32 %i.ba
  %spec.select = add nsw i32 %i.be, %i.bd         ; 3 uses
  %i.bf = shl i32 %spec.select, %.4
  %i.bg = add i32 %i.bf, %.5127                   ; 3 uses
  %i.bh = add nsw i32 %.4, %.0133229
  %i.bi = icmp slt i32 %spec.select, %i.ba
  %.neg = sext i1 %i.bi to i32
  %i.bj = add i32 %i.bh, %.neg                    ; 3 uses
  %i.bk = icmp ne i32 %spec.select, 1
  %i.bl = icmp sgt i32 %i.bc, 0
  br i1 %i.bl, label %.preheader, label %.thread

.preheader:                                       ; preds = %.thread178
  %i.bm = icmp slt i32 %i.bc, %.0129231
  br i1 %i.bm, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %.preheader, %.lr.ph224
  %.1130223 = phi i32 [ %6, %.lr.ph224 ], [ %.0129231, %.preheader ]
  %.1134222 = phi i32 [ %i.bn, %.lr.ph224 ], [ %.0133229, %.preheader ]
  %i.bn = add nsw i32 %.1134222, -1               ; 2 uses
  %6 = lshr i32 %.1130223, 1                      ; 3 uses
  %i.bo = icmp slt i32 %i.bc, %6
  br i1 %i.bo, label %.lr.ph224, label %._crit_edge225, !llvm.loop !33

._crit_edge225:                                   ; preds = %.lr.ph224, %.preheader
  %.1134.lcssa = phi i32 [ %.0133229, %.preheader ], [ %i.bn, %.lr.ph224 ]
  %.1130.lcssa = phi i32 [ %.0129231, %.preheader ], [ %6, %.lr.ph224 ]
  %i.bp = icmp sgt i32 %i.bj, 16
  br i1 %i.bp, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge225
  %i.bq = icmp ugt ptr %.4140, %i.g
  %or.cond169 = select i1 %.not160, i1 %i.bq, i1 false
  br i1 %or.cond169, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = trunc i32 %i.bg to i16
  store i16 %i.br, ptr %.4140, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.4140, i64 2
  %i.bt = lshr i32 %i.bg, 16
  %i.bu = add nsw i32 %i.bj, -16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge225
  %.5141 = phi ptr [ %i.bs, %bb.h ], [ %.4140, %._crit_edge225 ] ; 2 uses
  %.6128 = phi i32 [ %i.bt, %bb.h ], [ %i.bg, %._crit_edge225 ] ; 2 uses
  %.5 = phi i32 [ %i.bu, %bb.h ], [ %i.bj, %._crit_edge225 ] ; 2 uses
  %i.bv = icmp ult i32 %i.at, %i.b
  %i.bw = icmp ne i32 %i.bc, 1
  %i.bx = and i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.b, label %.critedge._crit_edge, !llvm.loop !34

.critedge._crit_edge:                             ; preds = %bb.i, %.critedge, %bb.c
  %.0136.lcssa.ph = phi ptr [ %.0136228, %bb.c ], [ %.0136228, %.critedge ], [ %.5141, %bb.i ] ; 3 uses
  %.0132.lcssa.ph = phi i32 [ %.0132230, %bb.c ], [ %.0132230, %.critedge ], [ %i.bc, %bb.i ]
  %.0122.lcssa.ph = phi i32 [ %.0122232, %bb.c ], [ %.0122232, %.critedge ], [ %.6128, %bb.i ]
  %.0119.lcssa.ph = phi i32 [ %.0119233, %bb.c ], [ %.0119233, %.critedge ], [ %.5, %bb.i ]
  %i.by = icmp eq i32 %.0132.lcssa.ph, 1
  %i.bz = add nsw i32 %.0119.lcssa.ph, 7
  %i.ca = sdiv i32 %i.bz, 8
  %i.cb = sext i32 %i.ca to i64
  br i1 %i.by, label %bb.j, label %.thread

bb.j:                                             ; preds = %.critedge._crit_edge
  %.not162 = icmp eq i32 %5, 0
  %i.cc = getelementptr inbounds i8, ptr %i.a, i64 -2
  %i.cd = icmp ugt ptr %.0136.lcssa.ph, %i.cc
  %or.cond171 = select i1 %.not162, i1 %i.cd, i1 false
  br i1 %or.cond171, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = trunc i32 %.0122.lcssa.ph to i16
  store i16 %i.ce, ptr %.0136.lcssa.ph, align 1
  %i.cf = getelementptr inbounds i8, ptr %.0136.lcssa.ph, i64 %i.cb
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %0 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  br label %.thread

.thread:                                          ; preds = %.thread178, %bb.e, %bb.g, %.lr.ph209.split, %bb.a, %bb.j, %.critedge._crit_edge, %bb.k
  %.4147 = phi i64 [ %i.ci, %bb.k ], [ -1, %.critedge._crit_edge ], [ -70, %bb.j ], [ -70, %.lr.ph209.split ], [ -1, %bb.a ], [ -70, %bb.g ], [ -1, %.thread178 ], [ -70, %bb.e ]
  ret i64 %.4147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 5, 13) i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = sub i32 %i.d, %3
  %i.f = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.i = sub nuw nsw i32 33, %i.h
  %i.j = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.g, i32 %i.i)
  %i.k = icmp eq i32 %0, 0
  %spec.store.select = select i1 %i.k, i32 11, i32 %0
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %spec.store.select)
  %.1 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %spec.select)
  %spec.store.select1 = tail call i32 @llvm.umax.i32(i32 %.1, i32 5)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select1, i32 12)
  ret i32 %spec.store.select2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 5, 13) i32 @FSE_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nsw i32 29, %i.c
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.h = sub nuw nsw i32 33, %i.g
  %i.i = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
  %i.j = icmp eq i32 %0, 0
  %spec.store.select.i = select i1 %i.j, i32 11, i32 %0
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %spec.store.select.i)
  %.1.i = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %spec.select.i)
  %spec.store.select1.i = tail call i32 @llvm.umax.i32(i32 %.1.i, i32 5)
  %spec.store.select2.i = tail call range(i32 5, 13) i32 @llvm.umin.i32(i32 %spec.store.select1.i, i32 12)
  ret i32 %spec.store.select2.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -44, 13) i64 @FSE_normalizeCount(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %spec.store.select = select i1 %i.a, i32 11, i32 %1 ; 7 uses
  %i.b = icmp ult i32 %spec.store.select, 5
  br i1 %i.b, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i32 %spec.store.select, 12
  br i1 %i.c, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %3 to i32
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %i.h = sub nuw nsw i32 33, %i.g
  %i.i = tail call range(i32 1, 33) i32 @llvm.umin.i32(i32 %i.f, i32 %i.h)
  %i.j = icmp samesign ult i32 %spec.store.select, %i.i
  br i1 %i.j, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 0
  %i.k = select i1 %.not, i16 1, i16 -1           ; 2 uses
  %i.l = sub nuw nsw i32 62, %spec.store.select
  %i.m = zext nneg i32 %i.l to i64                ; 7 uses
  %i.n = and i64 %3, 4294967295
  %i.o = udiv i64 4611686018427387904, %i.n
  %i.p = add nsw i64 %i.m, -20
  %i.q = shl nuw nsw i32 1, %spec.store.select    ; 3 uses
  %i.r = zext nneg i32 %spec.store.select to i64  ; 7 uses
  %i.s = lshr i64 %3, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.m
  %.073104 = phi i16 [ 0, %bb.d ], [ %.275, %bb.m ] ; 4 uses
  %.076103 = phi i32 [ 0, %bb.d ], [ %.278, %bb.m ] ; 3 uses
  %.079102 = phi i32 [ 0, %bb.d ], [ %i.ax, %bb.m ] ; 3 uses
  %.080101 = phi i32 [ %i.q, %bb.d ], [ %.181, %bb.m ] ; 3 uses
  %i.u = zext i32 %.079102 to i64                 ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp eq i64 %3, %i.x
  br i1 %i.y, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.w, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 0, ptr %i.aa, align 2, !tbaa !9
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %.not88 = icmp ugt i32 %i.w, %i.t
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.u
  store i16 %i.k, ptr %i.ab, align 2, !tbaa !9
  %i.ac = add nsw i32 %.080101, -1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ad = mul i64 %i.o, %i.x                      ; 2 uses
  %i.ae = lshr i64 %i.ad, %i.m                    ; 4 uses
  %i.af = trunc nuw nsw i64 %i.ae to i16
  %i.ag = trunc nuw nsw i64 %i.ae to i32          ; 2 uses
  %i.ah = and i32 %i.ag, 65528
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @FSE_normalizeCount.rtbTable, i64 %i.ae
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !17
  %i.al = zext i32 %i.ak to i64
  %i.am = shl i64 %i.al, %i.p
  %i.an = shl i64 %i.ae, %i.m
  %i.ao = sub i64 %i.ad, %i.an
  %i.ap = icmp ugt i64 %i.ao, %i.am
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, %i.ag
  %i.as = trunc nuw nsw i32 %i.ar to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.070 = phi i16 [ %i.as, %bb.k ], [ %i.af, %bb.j ] ; 4 uses
  %i.at = zext nneg i16 %.070 to i32
  %i.au = icmp ugt i16 %.070, %.073104
  %spec.select = select i1 %i.au, i32 %.079102, i32 %.076103
end_hunk_0
