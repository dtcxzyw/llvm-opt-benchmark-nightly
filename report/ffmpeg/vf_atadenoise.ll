Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_atadenoise?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@filter_row8:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !61
  %wide.load121 = load <16 x i8>, ptr %i.j, align 1, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <16 x i8> %wide.load, ptr %i.k, align 1, !tbaa !61
  store <16 x i8> %wide.load121, ptr %i.l, align 1, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph96.split.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index123
  %wide.load124 = load <4 x i8>, ptr %i.n, align 1, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index123
  store <4 x i8> %wide.load124, ptr %i.o, align 1, !tbaa !61
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.p = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !94

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %n.vec122, %wide.trip.count
  br i1 %cmp.n126, label %._crit_edge97, label %.lr.ph96.split.preheader

.lr.ph96.split.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol

.lr.ph96.split.prol:                              ; preds = %.lr.ph96.split.preheader, %.lr.ph96.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph96.split.prol ], [ %indvars.iv.ph, %.lr.ph96.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.split.prol ], [ 0, %.lr.ph96.split.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.r = load i8, ptr %i.q, align 1, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.r, ptr %i.s, align 1, !tbaa !61
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol, !llvm.loop !95

.lr.ph96.split.prol.loopexit:                     ; preds = %.lr.ph96.split.prol, %.lr.ph96.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph96.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph96.split.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge97, label %.lr.ph96.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph96
  %i.v = zext nneg i32 %4 to i64                  ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %wide.trip.count110 = zext nneg i32 %3 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv107 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next108, %._crit_edge.us ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv107
  %i.y = load i8, ptr %i.x, align 1, !tbaa !61
  %i.z = zext i8 %i.y to i32                      ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv102 = phi i64 [ %i.w, %.lr.ph.us ], [ %indvars.iv.next103, %bb.d ] ; 2 uses
  %indvars.iv100 = phi i64 [ %i.v, %.lr.ph.us ], [ %indvars.iv.next101, %bb.d ] ; 2 uses
  %.05981.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ak, %bb.d ] ; 4 uses
  %.06179.us = phi i32 [ %i.z, %.lr.ph.us ], [ %i.aw, %bb.d ] ; 2 uses
  %.06378.us = phi i32 [ 0, %.lr.ph.us ], [ %i.at, %bb.d ]
  %.06477.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ah, %bb.d ]
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next101
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv107
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !61
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = sub nsw i32 %i.z, %i.ae
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true) ; 2 uses
  %i.ah = add i32 %i.ag, %.06477.us               ; 2 uses
  %i.ai = icmp ugt i32 %i.ag, %6
  %i.aj = icmp ugt i32 %i.ah, %7
  %or.cond.us = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond.us, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = add nuw nsw i32 %.05981.us, 1           ; 4 uses
  %i.al = add i32 %.06179.us, %i.ae               ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv102
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv107
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !61
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = sub nsw i32 %i.z, %i.aq
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true) ; 2 uses
  %i.at = add i32 %i.as, %.06378.us               ; 2 uses
  %i.au = icmp ugt i32 %i.as, %6
  %i.av = icmp ugt i32 %i.at, %7
  %or.cond74.us = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond74.us, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = add i32 %i.al, %i.aq                    ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.ax = icmp sgt i64 %indvars.iv100, 1
  %i.ay = trunc nuw i64 %indvars.iv.next103 to i32
  %i.az = icmp sgt i32 %5, %i.ay
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.b, label %._crit_edge.us, !llvm.loop !96

._crit_edge.us:                                   ; preds = %bb.d, %bb.b, %bb.c
  %.059.lcssa.us = phi i32 [ %.05981.us, %bb.b ], [ %.05981.us, %bb.c ], [ %i.ak, %bb.d ]
  %.162.us = phi i32 [ %.06179.us, %bb.b ], [ %i.al, %bb.c ], [ %i.aw, %bb.d ]
  %.1.us = phi i32 [ %.05981.us, %bb.b ], [ %i.ak, %bb.c ], [ %i.ak, %bb.d ]
  %i.bb = add i32 %.059.lcssa.us, 1
  %i.bc = add i32 %i.bb, %.1.us                   ; 2 uses
  %i.bd = ashr i32 %i.bc, 1
  %i.be = add i32 %i.bd, %.162.us
  %i.bf = udiv i32 %i.be, %i.bc
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv107
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !61
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge97, label %.lr.ph.us, !llvm.loop !97

._crit_edge97:                                    ; preds = %.lr.ph96.split.prol.loopexit, %.lr.ph96.split, %._crit_edge.us, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph96.split:                                   ; preds = %.lr.ph96.split.prol.loopexit, %.lr.ph96.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph96.split ], [ %indvars.iv.unr, %.lr.ph96.split.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !61
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !61
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !61
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge97, label %.lr.ph96.split, !llvm.loop !98
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_row8_serial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree readnone captures(none) %8) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %bb.a
  %.05872 = add nsw i32 %4, -1                    ; 2 uses
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  %.081 = add nsw i32 %4, 1                       ; 2 uses
  %i.e = icmp slt i32 %.081, %5
  br i1 %i.e, label %.lr.ph96.split.us, label %.lr.ph96.split

.lr.ph96.split.us:                                ; preds = %.lr.ph96
  br i1 %i.d, label %.lr.ph.us.us.preheader, label %.lr.ph87.us.preheader

.lr.ph87.us.preheader:                            ; preds = %.lr.ph96.split.us
  %i.f = sext i32 %4 to i64
  %i.g = xor i32 %4, -1
  %i.h = add i32 %5, %i.g                         ; 2 uses
  %wide.trip.count131 = zext nneg i32 %3 to i64
  br label %.lr.ph87.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph96.split.us
  %narrow = add nuw i32 %4, 1
  %i.i = zext i32 %narrow to i64
  %i.j = xor i32 %4, -1
  %i.k = add i32 %5, %i.j                         ; 2 uses
  %wide.trip.count141 = zext nneg i32 %3 to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge91.us.us
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next139, %._crit_edge91.us.us ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv138
  %i.m = load i8, ptr %i.l, align 1, !tbaa !61
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.us.us
  %.05876.us.us = phi i32 [ %.05872, %.lr.ph.us.us ], [ %.058.us.us, %bb.c ] ; 2 uses
  %.06075.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.z, %bb.c ] ; 2 uses
  %.06174.us.us = phi i32 [ %i.n, %.lr.ph.us.us ], [ %i.aa, %bb.c ] ; 2 uses
  %.06373.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.w, %bb.c ]
  %i.o = zext nneg i32 %.05876.us.us to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv138
  %i.s = load i8, ptr %i.r, align 1, !tbaa !61
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = sub nsw i32 %i.n, %i.t
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.w = add i32 %i.v, %.06373.us.us              ; 2 uses
  %i.x = icmp ugt i32 %i.v, %6
  %i.y = icmp ugt i32 %i.w, %7
  %or.cond.us.us = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.us.us, label %.lr.ph87.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = add nuw i32 %.06075.us.us, 1             ; 2 uses
  %i.aa = add i32 %.06174.us.us, %i.t             ; 2 uses
  %.058.us.us = add nsw i32 %.05876.us.us, -1
  %exitcond133.not = icmp eq i32 %i.z, %4
  br i1 %exitcond133.not, label %.lr.ph87.us.us, label %bb.b, !llvm.loop !99

.lr.ph87.us.us:                                   ; preds = %bb.b, %bb.c
  %.061.lcssa.us.us = phi i32 [ %i.aa, %bb.c ], [ %.06174.us.us, %bb.b ]
  %.060.lcssa.us.us = phi i32 [ %4, %bb.c ], [ %.06075.us.us, %bb.b ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph87.us.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.e ], [ %i.i, %.lr.ph87.us.us ] ; 2 uses
  %.05984.us.us = phi i32 [ %i.al, %bb.e ], [ 0, %.lr.ph87.us.us ] ; 2 uses
  %.183.us.us = phi i32 [ %i.am, %bb.e ], [ %.061.lcssa.us.us, %.lr.ph87.us.us ] ; 2 uses
  %.06282.us.us = phi i32 [ %i.ai, %bb.e ], [ 0, %.lr.ph87.us.us ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv134
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv138
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !61
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = sub nsw i32 %i.n, %i.af
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true) ; 2 uses
  %i.ai = add i32 %i.ah, %.06282.us.us            ; 2 uses
  %i.aj = icmp ugt i32 %i.ah, %6
  %i.ak = icmp ugt i32 %i.ai, %7
  %or.cond71.us.us = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond71.us.us, label %._crit_edge91.us.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = add nuw i32 %.05984.us.us, 1            ; 2 uses
  %i.am = add i32 %.183.us.us, %i.af              ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond137.not = icmp eq i32 %i.al, %i.k
  br i1 %exitcond137.not, label %._crit_edge91.us.us, label %bb.d, !llvm.loop !100

._crit_edge91.us.us:                              ; preds = %bb.d, %bb.e
  %.1.lcssa.us.us = phi i32 [ %i.am, %bb.e ], [ %.183.us.us, %bb.d ]
  %.059.lcssa.us.us = phi i32 [ %i.k, %bb.e ], [ %.05984.us.us, %bb.d ]
  %i.an = add nuw nsw i32 %.060.lcssa.us.us, 1
  %i.ao = add nuw nsw i32 %i.an, %.059.lcssa.us.us ; 2 uses
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = add i32 %i.ap, %.1.lcssa.us.us
  %i.ar = udiv i32 %i.aq, %i.ao
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv138
  store i8 %i.as, ptr %i.at, align 1, !tbaa !61
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge97, label %.lr.ph.us.us, !llvm.loop !101

.lr.ph87.us:                                      ; preds = %.lr.ph87.us.preheader, %._crit_edge88.us
  %indvars.iv128 = phi i64 [ 0, %.lr.ph87.us.preheader ], [ %indvars.iv.next129, %._crit_edge88.us ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv128
  %i.av = load i8, ptr %i.au, align 1, !tbaa !61
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph87.us, %bb.g
  %indvars.iv124.in = phi i64 [ %i.f, %.lr.ph87.us ], [ %indvars.iv124, %bb.g ]
  %.05984.us = phi i32 [ 0, %.lr.ph87.us ], [ %i.bh, %bb.g ] ; 2 uses
  %.183.us = phi i32 [ %i.aw, %.lr.ph87.us ], [ %i.bi, %bb.g ] ; 2 uses
  %.06282.us = phi i32 [ 0, %.lr.ph87.us ], [ %i.be, %bb.g ]
  %indvars.iv124 = add nsw i64 %indvars.iv124.in, 1 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv124
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv128
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !61
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = sub nsw i32 %i.aw, %i.bb
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.bc, i1 true) ; 2 uses
  %i.be = add i32 %i.bd, %.06282.us               ; 2 uses
  %i.bf = icmp ugt i32 %i.bd, %6
  %i.bg = icmp ugt i32 %i.be, %7
  %or.cond71.us = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond71.us, label %._crit_edge88.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add nuw i32 %.05984.us, 1               ; 2 uses
  %i.bi = add i32 %.183.us, %i.bb                 ; 2 uses
  %exitcond127.not = icmp eq i32 %i.bh, %i.h
  br i1 %exitcond127.not, label %._crit_edge88.us, label %bb.f, !llvm.loop !100

._crit_edge88.us:                                 ; preds = %bb.g, %bb.f
  %.1.lcssa.us = phi i32 [ %.183.us, %bb.f ], [ %i.bi, %bb.g ]
  %.059.lcssa.us = phi i32 [ %.05984.us, %bb.f ], [ %i.h, %bb.g ]
  %i.bj = add nuw nsw i32 %.059.lcssa.us, 1       ; 2 uses
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = add i32 %i.bk, %.1.lcssa.us
  %i.bm = udiv i32 %i.bl, %i.bj
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv128
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !61
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %._crit_edge97, label %.lr.ph87.us, !llvm.loop !101

.lr.ph96.split:                                   ; preds = %.lr.ph96
  %wide.trip.count122 = zext nneg i32 %3 to i64   ; 9 uses
  br i1 %i.d, label %.lr.ph.us99, label %iter.check

iter.check:                                       ; preds = %.lr.ph96.split
  %min.iters.check = icmp ult i32 %3, 4
  %i.bp = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph96.split.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check165 = icmp ult i32 %3, 32
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %wide.trip.count122, 28
  %n.vec = and i64 %wide.trip.count122, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <16 x i8>, ptr %i.br, align 1, !tbaa !61
  %wide.load166 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <16 x i8> %wide.load, ptr %i.bt, align 1, !tbaa !61
  store <16 x i8> %wide.load166, ptr %i.bu, align 1, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count122
  br i1 %cmp.n, label %._crit_edge97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph96.split.split.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec167 = and i64 %wide.trip.count122, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index168 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next170, %vec.epilog.vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %index168
  %wide.load169 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !61
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %index168
  store <4 x i8> %wide.load169, ptr %i.bx, align 1, !tbaa !61
  %index.next170 = add nuw i64 %index168, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next170, %n.vec167
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n171 = icmp eq i64 %n.vec167, %wide.trip.count122
  br i1 %cmp.n171, label %._crit_edge97, label %.lr.ph96.split.split.preheader

.lr.ph96.split.split.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec167, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count122, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph96.split.split.prol.loopexit, label %.lr.ph96.split.split.prol

.lr.ph96.split.split.prol:                        ; preds = %.lr.ph96.split.split.preheader, %.lr.ph96.split.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph96.split.split.prol ], [ %indvars.iv.ph, %.lr.ph96.split.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.split.split.prol ], [ 0, %.lr.ph96.split.split.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
end_hunk_0
begin_hunk_1_@filter_row16:bb.a
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !63
  %wide.load121 = load <8 x i16>, ptr %i.j, align 2, !tbaa !63
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <8 x i16> %wide.load, ptr %i.k, align 2, !tbaa !63
  store <8 x i16> %wide.load121, ptr %i.l, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph96.split.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index123
  %wide.load124 = load <4 x i16>, ptr %i.n, align 2, !tbaa !63
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index123
  store <4 x i16> %wide.load124, ptr %i.o, align 2, !tbaa !63
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.p = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %n.vec122, %wide.trip.count
  br i1 %cmp.n126, label %._crit_edge97, label %.lr.ph96.split.preheader

.lr.ph96.split.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol

.lr.ph96.split.prol:                              ; preds = %.lr.ph96.split.preheader, %.lr.ph96.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph96.split.prol ], [ %indvars.iv.ph, %.lr.ph96.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.split.prol ], [ 0, %.lr.ph96.split.preheader ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  %i.r = load i16, ptr %i.q, align 2, !tbaa !63
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.prol
  store i16 %i.r, ptr %i.s, align 2, !tbaa !63
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol, !llvm.loop !108

.lr.ph96.split.prol.loopexit:                     ; preds = %.lr.ph96.split.prol, %.lr.ph96.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph96.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph96.split.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge97, label %.lr.ph96.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph96
  %i.v = zext nneg i32 %4 to i64                  ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %wide.trip.count110 = zext nneg i32 %3 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv107 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next108, %._crit_edge.us ] ; 5 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv107
  %i.y = load i16, ptr %i.x, align 2, !tbaa !63
  %i.z = zext i16 %i.y to i32                     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv102 = phi i64 [ %i.w, %.lr.ph.us ], [ %indvars.iv.next103, %bb.d ] ; 2 uses
  %indvars.iv100 = phi i64 [ %i.v, %.lr.ph.us ], [ %indvars.iv.next101, %bb.d ] ; 2 uses
  %.05981.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ak, %bb.d ] ; 4 uses
  %.06179.us = phi i32 [ %i.z, %.lr.ph.us ], [ %i.aw, %bb.d ] ; 2 uses
  %.06378.us = phi i32 [ 0, %.lr.ph.us ], [ %i.at, %bb.d ]
  %.06477.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ah, %bb.d ]
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next101
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv107
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !63
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = sub nsw i32 %i.z, %i.ae
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true) ; 2 uses
  %i.ah = add i32 %i.ag, %.06477.us               ; 2 uses
  %i.ai = icmp ugt i32 %i.ag, %6
  %i.aj = icmp ugt i32 %i.ah, %7
  %or.cond.us = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond.us, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = add nuw nsw i32 %.05981.us, 1           ; 4 uses
  %i.al = add i32 %.06179.us, %i.ae               ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv102
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv107
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !63
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = sub nsw i32 %i.z, %i.aq
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true) ; 2 uses
  %i.at = add i32 %i.as, %.06378.us               ; 2 uses
  %i.au = icmp ugt i32 %i.as, %6
  %i.av = icmp ugt i32 %i.at, %7
  %or.cond74.us = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond74.us, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = add i32 %i.al, %i.aq                    ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.ax = icmp sgt i64 %indvars.iv100, 1
  %i.ay = trunc nuw i64 %indvars.iv.next103 to i32
  %i.az = icmp sgt i32 %5, %i.ay
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.b, label %._crit_edge.us, !llvm.loop !109

._crit_edge.us:                                   ; preds = %bb.d, %bb.b, %bb.c
  %.059.lcssa.us = phi i32 [ %.05981.us, %bb.b ], [ %.05981.us, %bb.c ], [ %i.ak, %bb.d ]
  %.162.us = phi i32 [ %.06179.us, %bb.b ], [ %i.al, %bb.c ], [ %i.aw, %bb.d ]
  %.1.us = phi i32 [ %.05981.us, %bb.b ], [ %i.ak, %bb.c ], [ %i.ak, %bb.d ]
  %i.bb = add i32 %.059.lcssa.us, 1
  %i.bc = add i32 %i.bb, %.1.us                   ; 2 uses
  %i.bd = ashr i32 %i.bc, 1
  %i.be = add i32 %i.bd, %.162.us
  %i.bf = udiv i32 %i.be, %i.bc
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv107
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !63
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge97, label %.lr.ph.us, !llvm.loop !110

._crit_edge97:                                    ; preds = %.lr.ph96.split.prol.loopexit, %.lr.ph96.split, %._crit_edge.us, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph96.split:                                   ; preds = %.lr.ph96.split.prol.loopexit, %.lr.ph96.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph96.split ], [ %indvars.iv.unr, %.lr.ph96.split.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !63
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !63
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !63
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !63
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !63
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !63
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !63
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge97, label %.lr.ph96.split, !llvm.loop !111
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_row16_serial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree readnone captures(none) %8) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %bb.a
  %.05872 = add nsw i32 %4, -1                    ; 2 uses
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  %.081 = add nsw i32 %4, 1                       ; 2 uses
  %i.e = icmp slt i32 %.081, %5
  br i1 %i.e, label %.lr.ph96.split.us, label %.lr.ph96.split

.lr.ph96.split.us:                                ; preds = %.lr.ph96
  br i1 %i.d, label %.lr.ph.us.us.preheader, label %.lr.ph87.us.preheader

.lr.ph87.us.preheader:                            ; preds = %.lr.ph96.split.us
  %i.f = sext i32 %4 to i64
  %i.g = xor i32 %4, -1
  %i.h = add i32 %5, %i.g                         ; 2 uses
  %wide.trip.count131 = zext nneg i32 %3 to i64
  br label %.lr.ph87.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph96.split.us
  %narrow = add nuw i32 %4, 1
  %i.i = zext i32 %narrow to i64
  %i.j = xor i32 %4, -1
  %i.k = add i32 %5, %i.j                         ; 2 uses
  %wide.trip.count141 = zext nneg i32 %3 to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge91.us.us
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next139, %._crit_edge91.us.us ] ; 5 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv138
  %i.m = load i16, ptr %i.l, align 2, !tbaa !63
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.us.us
  %.05876.us.us = phi i32 [ %.05872, %.lr.ph.us.us ], [ %.058.us.us, %bb.c ] ; 2 uses
  %.06075.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.z, %bb.c ] ; 2 uses
  %.06174.us.us = phi i32 [ %i.n, %.lr.ph.us.us ], [ %i.aa, %bb.c ] ; 2 uses
  %.06373.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.w, %bb.c ]
  %i.o = zext nneg i32 %.05876.us.us to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv138
  %i.s = load i16, ptr %i.r, align 2, !tbaa !63
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = sub nsw i32 %i.n, %i.t
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.w = add i32 %i.v, %.06373.us.us              ; 2 uses
  %i.x = icmp ugt i32 %i.v, %6
  %i.y = icmp ugt i32 %i.w, %7
  %or.cond.us.us = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.us.us, label %.lr.ph87.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = add nuw i32 %.06075.us.us, 1             ; 2 uses
  %i.aa = add i32 %.06174.us.us, %i.t             ; 2 uses
  %.058.us.us = add nsw i32 %.05876.us.us, -1
  %exitcond133.not = icmp eq i32 %i.z, %4
  br i1 %exitcond133.not, label %.lr.ph87.us.us, label %bb.b, !llvm.loop !112

.lr.ph87.us.us:                                   ; preds = %bb.b, %bb.c
  %.061.lcssa.us.us = phi i32 [ %i.aa, %bb.c ], [ %.06174.us.us, %bb.b ]
  %.060.lcssa.us.us = phi i32 [ %4, %bb.c ], [ %.06075.us.us, %bb.b ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph87.us.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.e ], [ %i.i, %.lr.ph87.us.us ] ; 2 uses
  %.05984.us.us = phi i32 [ %i.al, %bb.e ], [ 0, %.lr.ph87.us.us ] ; 2 uses
  %.183.us.us = phi i32 [ %i.am, %bb.e ], [ %.061.lcssa.us.us, %.lr.ph87.us.us ] ; 2 uses
  %.06282.us.us = phi i32 [ %i.ai, %bb.e ], [ 0, %.lr.ph87.us.us ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv134
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv138
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !63
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = sub nsw i32 %i.n, %i.af
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true) ; 2 uses
  %i.ai = add i32 %i.ah, %.06282.us.us            ; 2 uses
  %i.aj = icmp ugt i32 %i.ah, %6
  %i.ak = icmp ugt i32 %i.ai, %7
  %or.cond71.us.us = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond71.us.us, label %._crit_edge91.us.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = add nuw i32 %.05984.us.us, 1            ; 2 uses
  %i.am = add i32 %.183.us.us, %i.af              ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond137.not = icmp eq i32 %i.al, %i.k
  br i1 %exitcond137.not, label %._crit_edge91.us.us, label %bb.d, !llvm.loop !113

._crit_edge91.us.us:                              ; preds = %bb.d, %bb.e
  %.1.lcssa.us.us = phi i32 [ %i.am, %bb.e ], [ %.183.us.us, %bb.d ]
  %.059.lcssa.us.us = phi i32 [ %i.k, %bb.e ], [ %.05984.us.us, %bb.d ]
  %i.an = add nuw nsw i32 %.060.lcssa.us.us, 1
  %i.ao = add nuw nsw i32 %i.an, %.059.lcssa.us.us ; 2 uses
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = add i32 %i.ap, %.1.lcssa.us.us
  %i.ar = udiv i32 %i.aq, %i.ao
  %i.as = trunc i32 %i.ar to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv138
  store i16 %i.as, ptr %i.at, align 2, !tbaa !63
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge97, label %.lr.ph.us.us, !llvm.loop !114

.lr.ph87.us:                                      ; preds = %.lr.ph87.us.preheader, %._crit_edge88.us
  %indvars.iv128 = phi i64 [ 0, %.lr.ph87.us.preheader ], [ %indvars.iv.next129, %._crit_edge88.us ] ; 4 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv128
  %i.av = load i16, ptr %i.au, align 2, !tbaa !63
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph87.us, %bb.g
  %indvars.iv124.in = phi i64 [ %i.f, %.lr.ph87.us ], [ %indvars.iv124, %bb.g ]
  %.05984.us = phi i32 [ 0, %.lr.ph87.us ], [ %i.bh, %bb.g ] ; 2 uses
  %.183.us = phi i32 [ %i.aw, %.lr.ph87.us ], [ %i.bi, %bb.g ] ; 2 uses
  %.06282.us = phi i32 [ 0, %.lr.ph87.us ], [ %i.be, %bb.g ]
  %indvars.iv124 = add nsw i64 %indvars.iv124.in, 1 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv124
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv128
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !63
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = sub nsw i32 %i.aw, %i.bb
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.bc, i1 true) ; 2 uses
  %i.be = add i32 %i.bd, %.06282.us               ; 2 uses
  %i.bf = icmp ugt i32 %i.bd, %6
  %i.bg = icmp ugt i32 %i.be, %7
  %or.cond71.us = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond71.us, label %._crit_edge88.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add nuw i32 %.05984.us, 1               ; 2 uses
  %i.bi = add i32 %.183.us, %i.bb                 ; 2 uses
  %exitcond127.not = icmp eq i32 %i.bh, %i.h
  br i1 %exitcond127.not, label %._crit_edge88.us, label %bb.f, !llvm.loop !113

._crit_edge88.us:                                 ; preds = %bb.g, %bb.f
  %.1.lcssa.us = phi i32 [ %.183.us, %bb.f ], [ %i.bi, %bb.g ]
  %.059.lcssa.us = phi i32 [ %.05984.us, %bb.f ], [ %i.h, %bb.g ]
  %i.bj = add nuw nsw i32 %.059.lcssa.us, 1       ; 2 uses
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = add i32 %i.bk, %.1.lcssa.us
  %i.bm = udiv i32 %i.bl, %i.bj
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv128
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !63
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %._crit_edge97, label %.lr.ph87.us, !llvm.loop !114

.lr.ph96.split:                                   ; preds = %.lr.ph96
  %wide.trip.count122 = zext nneg i32 %3 to i64   ; 9 uses
  br i1 %i.d, label %.lr.ph.us99, label %iter.check

iter.check:                                       ; preds = %.lr.ph96.split
  %min.iters.check = icmp ult i32 %3, 4
  %i.bp = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph96.split.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check165 = icmp ult i32 %3, 16
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %wide.trip.count122, 12
  %n.vec = and i64 %wide.trip.count122, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <8 x i16>, ptr %i.br, align 2, !tbaa !63
  %wide.load166 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !63
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <8 x i16> %wide.load, ptr %i.bt, align 2, !tbaa !63
  store <8 x i16> %wide.load166, ptr %i.bu, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count122
  br i1 %cmp.n, label %._crit_edge97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph96.split.split.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec167 = and i64 %wide.trip.count122, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index168 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next170, %vec.epilog.vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index168
  %wide.load169 = load <4 x i16>, ptr %i.bw, align 2, !tbaa !63
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index168
  store <4 x i16> %wide.load169, ptr %i.bx, align 2, !tbaa !63
  %index.next170 = add nuw i64 %index168, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next170, %n.vec167
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n171 = icmp eq i64 %n.vec167, %wide.trip.count122
  br i1 %cmp.n171, label %._crit_edge97, label %.lr.ph96.split.split.preheader

.lr.ph96.split.split.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec167, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count122, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph96.split.split.prol.loopexit, label %.lr.ph96.split.split.prol

.lr.ph96.split.split.prol:                        ; preds = %.lr.ph96.split.split.preheader, %.lr.ph96.split.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph96.split.split.prol ], [ %indvars.iv.ph, %.lr.ph96.split.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.split.split.prol ], [ 0, %.lr.ph96.split.split.preheader ]
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
end_hunk_1
begin_hunk_2_@fweight_row8:bb.a
  br i1 %cmp.n, label %._crit_edge97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph96.split.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index122
  %wide.load123 = load <8 x i8>, ptr %i.o, align 1, !tbaa !61
  %i.p = uitofp <8 x i8> %wide.load123 to <8 x float>
  %i.q = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.p)
  %i.r = trunc <8 x i64> %i.q to <8 x i8>
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index122
  store <8 x i8> %i.r, ptr %i.s, align 1, !tbaa !61
  %index.next124 = add nuw i64 %index122, 8       ; 2 uses
  %i.t = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %n.vec121, %wide.trip.count
  br i1 %cmp.n125, label %._crit_edge97, label %.lr.ph96.split.preheader

.lr.ph96.split.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec121, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol

.lr.ph96.split.prol:                              ; preds = %.lr.ph96.split.preheader, %.lr.ph96.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph96.split.prol ], [ %indvars.iv.ph, %.lr.ph96.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.split.prol ], [ 0, %.lr.ph96.split.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.v = load i8, ptr %i.u, align 1, !tbaa !61
  %i.w = uitofp i8 %i.v to float
  %i.x = tail call i64 @llvm.lrint.i64.f32(float %i.w)
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.y, ptr %i.z, align 1, !tbaa !61
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol, !llvm.loop !121

.lr.ph96.split.prol.loopexit:                     ; preds = %.lr.ph96.split.prol, %.lr.ph96.split.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph96.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph96.split.prol ]
  %i.aa = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge97, label %.lr.ph96.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph96
  %i.ac = zext nneg i32 %4 to i64                 ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %wide.trip.count110 = zext nneg i32 %3 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv107 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next108, %._crit_edge.us ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv107
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !61  ; 2 uses
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = uitofp i8 %i.af to float
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv102 = phi i64 [ %i.ad, %.lr.ph.us ], [ %indvars.iv.next103, %bb.d ] ; 3 uses
  %indvars.iv100 = phi i64 [ %i.ac, %.lr.ph.us ], [ %indvars.iv.next101, %bb.d ] ; 2 uses
  %.06484.us = phi float [ 1.000000e+00, %.lr.ph.us ], [ %i.bl, %bb.d ] ; 2 uses
  %.06583.us = phi float [ %i.ah, %.lr.ph.us ], [ %i.bk, %bb.d ] ; 2 uses
  %.06782.us = phi i32 [ 0, %.lr.ph.us ], [ %i.be, %bb.d ]
  %.06881.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ap, %bb.d ]
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next101
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv107
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !61  ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = sub nsw i32 %i.ag, %i.am
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true) ; 2 uses
  %i.ap = add i32 %i.ao, %.06881.us               ; 2 uses
  %i.aq = icmp ugt i32 %i.ao, %6
  %i.ar = icmp ugt i32 %i.ap, %7
  %or.cond.us = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond.us, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = uitofp i8 %i.al to float
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next101
  %i.au = load float, ptr %i.at, align 4, !tbaa !57 ; 2 uses
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.au, float %.06583.us) ; 2 uses
  %i.aw = fadd nsz float %.06484.us, %i.au        ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv102
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv107
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !61  ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub nsw i32 %i.ag, %i.bb
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.bc, i1 true) ; 2 uses
  %i.be = add i32 %i.bd, %.06782.us               ; 2 uses
  %i.bf = icmp ugt i32 %i.bd, %6
  %i.bg = icmp ugt i32 %i.be, %7
  %or.cond78.us = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond78.us, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = uitofp i8 %i.ba to float
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv102
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !57 ; 2 uses
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float %i.bj, float %i.av) ; 2 uses
  %i.bl = fadd nsz float %i.aw, %i.bj             ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.bm = icmp sgt i64 %indvars.iv100, 1
  %i.bn = trunc nuw i64 %indvars.iv.next103 to i32
  %i.bo = icmp sgt i32 %5, %i.bn
  %i.bp = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.b, label %._crit_edge.us, !llvm.loop !122

._crit_edge.us:                                   ; preds = %bb.d, %bb.b, %bb.c
  %.166.us = phi nsz float [ %.06583.us, %bb.b ], [ %i.av, %bb.c ], [ %i.bk, %bb.d ]
  %.1.us = phi nsz float [ %.06484.us, %bb.b ], [ %i.aw, %bb.c ], [ %i.bl, %bb.d ]
  %i.bq = fdiv nsz float %.166.us, %.1.us
  %i.br = tail call i64 @llvm.lrint.i64.f32(float %i.bq)
  %i.bs = trunc i64 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv107
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !61
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge97, label %.lr.ph.us, !llvm.loop !123

._crit_edge97:                                    ; preds = %.lr.ph96.split.prol.loopexit, %.lr.ph96.split, %._crit_edge.us, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph96.split:                                   ; preds = %.lr.ph96.split.prol.loopexit, %.lr.ph96.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph96.split ], [ %indvars.iv.unr, %.lr.ph96.split.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !61
  %i.bw = uitofp i8 %i.bv to float
  %i.bx = tail call i64 @llvm.lrint.i64.f32(float %i.bw)
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !61
  %i.cc = uitofp i8 %i.cb to float
  %i.cd = tail call i64 @llvm.lrint.i64.f32(float %i.cc)
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !61
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !61
  %i.ci = uitofp i8 %i.ch to float
  %i.cj = tail call i64 @llvm.lrint.i64.f32(float %i.ci)
  %i.ck = trunc i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !61
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !61
  %i.co = uitofp i8 %i.cn to float
  %i.cp = tail call i64 @llvm.lrint.i64.f32(float %i.co)
  %i.cq = trunc i64 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !61
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge97, label %.lr.ph96.split, !llvm.loop !124
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fweight_row8_serial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %bb.a
  %.06377 = add nsw i32 %4, -1                    ; 2 uses
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  %.086 = add nsw i32 %4, 1
  %i.e = icmp slt i32 %.086, %5
  %wide.trip.count143 = zext nneg i32 %3 to i64   ; 11 uses
  br i1 %i.e, label %.lr.ph101.split.us, label %.lr.ph101.split

.lr.ph101.split.us:                               ; preds = %.lr.ph101
  br i1 %i.d, label %.lr.ph.us.us.preheader, label %.lr.ph92.us.preheader

.lr.ph92.us.preheader:                            ; preds = %.lr.ph101.split.us
  %i.f = sext i32 %4 to i64
  %i.g = add nsw i64 %i.f, 1
  br label %.lr.ph92.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph101.split.us
  %narrow = add nuw i32 %4, 1
  %i.h = zext i32 %narrow to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge96.us.us
  %indvars.iv140 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next141, %._crit_edge96.us.us ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv140
  %i.j = load i8, ptr %i.i, align 1, !tbaa !61    ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = uitofp i8 %i.j to float
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.us.us
  %.06381.us.us = phi i32 [ %.06377, %.lr.ph.us.us ], [ %.063.us.us, %bb.c ] ; 3 uses
  %.06480.us.us = phi float [ 1.000000e+00, %.lr.ph.us.us ], [ %i.ab, %bb.c ] ; 2 uses
  %.06579.us.us = phi float [ %i.l, %.lr.ph.us.us ], [ %i.aa, %bb.c ] ; 2 uses
  %.06878.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.u, %bb.c ]
  %i.m = zext nneg i32 %.06381.us.us to i64       ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv140
  %i.q = load i8, ptr %i.p, align 1, !tbaa !61    ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = sub nsw i32 %i.k, %i.r
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 2 uses
  %i.u = add i32 %i.t, %.06878.us.us              ; 2 uses
  %i.v = icmp ugt i32 %i.t, %6
  %i.w = icmp ugt i32 %i.u, %7
  %or.cond.us.us = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.us.us, label %.lr.ph92.us.us.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = uitofp i8 %i.q to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.m
  %i.z = load float, ptr %i.y, align 4, !tbaa !57 ; 2 uses
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.z, float %.06579.us.us) ; 2 uses
  %i.ab = fadd nsz float %.06480.us.us, %i.z      ; 2 uses
  %.063.us.us = add nsw i32 %.06381.us.us, -1
  %i.ac = icmp sgt i32 %.06381.us.us, 0
  br i1 %i.ac, label %bb.b, label %.lr.ph92.us.us.preheader, !llvm.loop !125

.lr.ph92.us.us.preheader:                         ; preds = %bb.b, %bb.c
  %.189.us.us.ph = phi float [ %i.ab, %bb.c ], [ %.06480.us.us, %bb.b ]
  %.16688.us.us.ph = phi float [ %i.aa, %bb.c ], [ %.06579.us.us, %bb.b ]
  br label %.lr.ph92.us.us

.lr.ph92.us.us:                                   ; preds = %.lr.ph92.us.us.preheader, %bb.d
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.d ], [ %i.h, %.lr.ph92.us.us.preheader ] ; 3 uses
  %.189.us.us = phi float [ %i.ar, %bb.d ], [ %.189.us.us.ph, %.lr.ph92.us.us.preheader ] ; 2 uses
  %.16688.us.us = phi float [ %i.aq, %bb.d ], [ %.16688.us.us.ph, %.lr.ph92.us.us.preheader ] ; 2 uses
  %.06787.us.us = phi i32 [ %i.ak, %bb.d ], [ 0, %.lr.ph92.us.us.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv137
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv140
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !61  ; 2 uses
  %i.ah = zext i8 %i.ag to i32
  %i.ai = sub nsw i32 %i.k, %i.ah
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 2 uses
  %i.ak = add i32 %i.aj, %.06787.us.us            ; 2 uses
  %i.al = icmp ugt i32 %i.aj, %6
  %i.am = icmp ugt i32 %i.ak, %7
  %or.cond76.us.us = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond76.us.us, label %._crit_edge96.us.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph92.us.us
  %i.an = uitofp i8 %i.ag to float
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv137
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !57 ; 2 uses
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.ap, float %.16688.us.us) ; 2 uses
  %i.ar = fadd nsz float %.189.us.us, %i.ap       ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv.next138 to i32
  %i.at = icmp sgt i32 %5, %i.as
  br i1 %i.at, label %.lr.ph92.us.us, label %._crit_edge96.us.us, !llvm.loop !126

._crit_edge96.us.us:                              ; preds = %.lr.ph92.us.us, %bb.d
  %.166.lcssa.us.us = phi float [ %i.aq, %bb.d ], [ %.16688.us.us, %.lr.ph92.us.us ]
  %.1.lcssa.us.us = phi float [ %i.ar, %bb.d ], [ %.189.us.us, %.lr.ph92.us.us ]
  %i.au = fdiv nsz float %.166.lcssa.us.us, %.1.lcssa.us.us
  %i.av = tail call i64 @llvm.lrint.i64.f32(float %i.au)
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv140
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !61
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge102, label %.lr.ph.us.us, !llvm.loop !127

.lr.ph92.us:                                      ; preds = %.lr.ph92.us.preheader, %._crit_edge93.us
  %indvars.iv132 = phi i64 [ 0, %.lr.ph92.us.preheader ], [ %indvars.iv.next133, %._crit_edge93.us ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv132
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !61  ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = uitofp i8 %i.az to float
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph92.us, %bb.f
  %indvars.iv128 = phi i64 [ %i.g, %.lr.ph92.us ], [ %indvars.iv.next129, %bb.f ] ; 3 uses
  %.189.us = phi float [ 1.000000e+00, %.lr.ph92.us ], [ %i.bq, %bb.f ] ; 2 uses
  %.16688.us = phi float [ %i.bb, %.lr.ph92.us ], [ %i.bp, %bb.f ] ; 2 uses
  %.06787.us = phi i32 [ 0, %.lr.ph92.us ], [ %i.bj, %bb.f ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv128
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv132
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !61  ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = sub nsw i32 %i.ba, %i.bg
  %i.bi = tail call i32 @llvm.abs.i32(i32 %i.bh, i1 true) ; 2 uses
  %i.bj = add i32 %i.bi, %.06787.us               ; 2 uses
  %i.bk = icmp ugt i32 %i.bi, %6
  %i.bl = icmp ugt i32 %i.bj, %7
  %or.cond76.us = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond76.us, label %._crit_edge93.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = uitofp i8 %i.bf to float
  %i.bn = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv128
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !57 ; 2 uses
  %i.bp = tail call nsz float @llvm.fmuladd.f32(float %i.bm, float %i.bo, float %.16688.us) ; 2 uses
  %i.bq = fadd nsz float %.189.us, %i.bo          ; 2 uses
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next129 to i32
  %exitcond131.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond131.not, label %._crit_edge93.us, label %bb.e, !llvm.loop !126

._crit_edge93.us:                                 ; preds = %bb.f, %bb.e
  %.166.lcssa.us = phi float [ %.16688.us, %bb.e ], [ %i.bp, %bb.f ]
  %.1.lcssa.us = phi float [ %.189.us, %bb.e ], [ %i.bq, %bb.f ]
  %i.br = fdiv nsz float %.166.lcssa.us, %.1.lcssa.us
  %i.bs = tail call i64 @llvm.lrint.i64.f32(float %i.br)
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv132
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !61
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count143
  br i1 %exitcond136.not, label %._crit_edge102, label %.lr.ph92.us, !llvm.loop !127

.lr.ph101.split:                                  ; preds = %.lr.ph101
  br i1 %i.d, label %.lr.ph.us104, label %iter.check

iter.check:                                       ; preds = %.lr.ph101.split
  %min.iters.check = icmp ult i32 %3, 8
  %i.bv = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bv, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph101.split.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check157 = icmp ult i32 %3, 16
  br i1 %min.iters.check157, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %wide.trip.count143, 8
  %n.vec = and i64 %wide.trip.count143, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.bx, align 1, !tbaa !61
  %i.by = uitofp <16 x i8> %wide.load to <16 x float>
  %i.bz = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.by)
  %i.ca = trunc <16 x i64> %i.bz to <16 x i8>
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <16 x i8> %i.ca, ptr %i.cb, align 1, !tbaa !61
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count143
  br i1 %cmp.n, label %._crit_edge102, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph101.split.split.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec158 = and i64 %wide.trip.count143, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index159 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next161, %vec.epilog.vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %index159
  %wide.load160 = load <8 x i8>, ptr %i.cd, align 1, !tbaa !61
  %i.ce = uitofp <8 x i8> %wide.load160 to <8 x float>
  %i.cf = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.ce)
  %i.cg = trunc <8 x i64> %i.cf to <8 x i8>
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %index159
  store <8 x i8> %i.cg, ptr %i.ch, align 1, !tbaa !61
  %index.next161 = add nuw i64 %index159, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next161, %n.vec158
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n162 = icmp eq i64 %n.vec158, %wide.trip.count143
  br i1 %cmp.n162, label %._crit_edge102, label %.lr.ph101.split.split.preheader

.lr.ph101.split.split.preheader:                  ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec158, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count143, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_2
begin_hunk_3_@fweight_row16:bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.g = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.g, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph96.split.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph96.split.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !63
  %i.i = uitofp <8 x i16> %wide.load to <8 x float>
  %i.j = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.i)
  %i.k = trunc <8 x i64> %i.j to <8 x i16>
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.k, ptr %i.l, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge97, label %.lr.ph96.split.preheader120

.lr.ph96.split.preheader120:                      ; preds = %.lr.ph96.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph96.split.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol

.lr.ph96.split.prol:                              ; preds = %.lr.ph96.split.preheader120, %.lr.ph96.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph96.split.prol ], [ %indvars.iv.ph, %.lr.ph96.split.preheader120 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.split.prol ], [ 0, %.lr.ph96.split.preheader120 ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  %i.o = load i16, ptr %i.n, align 2, !tbaa !63
  %i.p = uitofp i16 %i.o to float
  %i.q = tail call i64 @llvm.lrint.i64.f32(float %i.p)
  %i.r = trunc i64 %i.q to i16
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.prol
  store i16 %i.r, ptr %i.s, align 2, !tbaa !63
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph96.split.prol.loopexit, label %.lr.ph96.split.prol, !llvm.loop !133

.lr.ph96.split.prol.loopexit:                     ; preds = %.lr.ph96.split.prol, %.lr.ph96.split.preheader120
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph96.split.preheader120 ], [ %indvars.iv.next.prol, %.lr.ph96.split.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge97, label %.lr.ph96.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph96
  %i.v = zext nneg i32 %4 to i64                  ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %wide.trip.count110 = zext nneg i32 %3 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv107 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next108, %._crit_edge.us ] ; 5 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv107
  %i.y = load i16, ptr %i.x, align 2, !tbaa !63   ; 2 uses
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = uitofp i16 %i.y to float
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv102 = phi i64 [ %i.w, %.lr.ph.us ], [ %indvars.iv.next103, %bb.d ] ; 3 uses
  %indvars.iv100 = phi i64 [ %i.v, %.lr.ph.us ], [ %indvars.iv.next101, %bb.d ] ; 2 uses
  %.06484.us = phi float [ 1.000000e+00, %.lr.ph.us ], [ %i.be, %bb.d ] ; 2 uses
  %.06583.us = phi float [ %i.aa, %.lr.ph.us ], [ %i.bd, %bb.d ] ; 2 uses
  %.06782.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ax, %bb.d ]
  %.06881.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ai, %bb.d ]
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next101
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv107
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !63 ; 2 uses
  %i.af = zext i16 %i.ae to i32
  %i.ag = sub nsw i32 %i.z, %i.af
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true) ; 2 uses
  %i.ai = add i32 %i.ah, %.06881.us               ; 2 uses
  %i.aj = icmp ugt i32 %i.ah, %6
  %i.ak = icmp ugt i32 %i.ai, %7
  %or.cond.us = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.us, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = uitofp i16 %i.ae to float
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next101
  %i.an = load float, ptr %i.am, align 4, !tbaa !57 ; 2 uses
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.al, float %i.an, float %.06583.us) ; 2 uses
  %i.ap = fadd nsz float %.06484.us, %i.an        ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv102
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv107
  %i.at = load i16, ptr %i.as, align 2, !tbaa !63 ; 2 uses
  %i.au = zext i16 %i.at to i32
  %i.av = sub nsw i32 %i.z, %i.au
  %i.aw = tail call i32 @llvm.abs.i32(i32 %i.av, i1 true) ; 2 uses
  %i.ax = add i32 %i.aw, %.06782.us               ; 2 uses
  %i.ay = icmp ugt i32 %i.aw, %6
  %i.az = icmp ugt i32 %i.ax, %7
  %or.cond78.us = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond78.us, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = uitofp i16 %i.at to float
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv102
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !57 ; 2 uses
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.bc, float %i.ao) ; 2 uses
  %i.be = fadd nsz float %i.ap, %i.bc             ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.bf = icmp sgt i64 %indvars.iv100, 1
  %i.bg = trunc nuw i64 %indvars.iv.next103 to i32
  %i.bh = icmp sgt i32 %5, %i.bg
  %i.bi = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %i.bi, label %bb.b, label %._crit_edge.us, !llvm.loop !134

._crit_edge.us:                                   ; preds = %bb.d, %bb.b, %bb.c
  %.166.us = phi nsz float [ %.06583.us, %bb.b ], [ %i.ao, %bb.c ], [ %i.bd, %bb.d ]
  %.1.us = phi nsz float [ %.06484.us, %bb.b ], [ %i.ap, %bb.c ], [ %i.be, %bb.d ]
  %i.bj = fdiv nsz float %.166.us, %.1.us
  %i.bk = tail call i64 @llvm.lrint.i64.f32(float %i.bj)
  %i.bl = trunc i64 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv107
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !63
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge97, label %.lr.ph.us, !llvm.loop !135

._crit_edge97:                                    ; preds = %.lr.ph96.split.prol.loopexit, %.lr.ph96.split, %._crit_edge.us, %middle.block, %bb.a
  ret void

.lr.ph96.split:                                   ; preds = %.lr.ph96.split.prol.loopexit, %.lr.ph96.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph96.split ], [ %indvars.iv.unr, %.lr.ph96.split.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !63
  %i.bp = uitofp i16 %i.bo to float
  %i.bq = tail call i64 @llvm.lrint.i64.f32(float %i.bp)
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !63
  %i.bv = uitofp i16 %i.bu to float
  %i.bw = tail call i64 @llvm.lrint.i64.f32(float %i.bv)
  %i.bx = trunc i64 %i.bw to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !63
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !63
  %i.cb = uitofp i16 %i.ca to float
  %i.cc = tail call i64 @llvm.lrint.i64.f32(float %i.cb)
  %i.cd = trunc i64 %i.cc to i16
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !63
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !63
  %i.ch = uitofp i16 %i.cg to float
  %i.ci = tail call i64 @llvm.lrint.i64.f32(float %i.ch)
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !63
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge97, label %.lr.ph96.split, !llvm.loop !136
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fweight_row16_serial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %bb.a
  %.06377 = add nsw i32 %4, -1                    ; 2 uses
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  %.086 = add nsw i32 %4, 1
  %i.e = icmp slt i32 %.086, %5
  %wide.trip.count143 = zext nneg i32 %3 to i64   ; 8 uses
  br i1 %i.e, label %.lr.ph101.split.us, label %.lr.ph101.split

.lr.ph101.split.us:                               ; preds = %.lr.ph101
  br i1 %i.d, label %.lr.ph.us.us.preheader, label %.lr.ph92.us.preheader

.lr.ph92.us.preheader:                            ; preds = %.lr.ph101.split.us
  %i.f = sext i32 %4 to i64
  %i.g = add nsw i64 %i.f, 1
  br label %.lr.ph92.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph101.split.us
  %narrow = add nuw i32 %4, 1
  %i.h = zext i32 %narrow to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge96.us.us
  %indvars.iv140 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next141, %._crit_edge96.us.us ] ; 5 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv140
  %i.j = load i16, ptr %i.i, align 2, !tbaa !63   ; 2 uses
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = uitofp i16 %i.j to float
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.us.us
  %.06381.us.us = phi i32 [ %.06377, %.lr.ph.us.us ], [ %.063.us.us, %bb.c ] ; 3 uses
  %.06480.us.us = phi float [ 1.000000e+00, %.lr.ph.us.us ], [ %i.ab, %bb.c ] ; 2 uses
  %.06579.us.us = phi float [ %i.l, %.lr.ph.us.us ], [ %i.aa, %bb.c ] ; 2 uses
  %.06878.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.u, %bb.c ]
  %i.m = zext nneg i32 %.06381.us.us to i64       ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv140
  %i.q = load i16, ptr %i.p, align 2, !tbaa !63   ; 2 uses
  %i.r = zext i16 %i.q to i32
  %i.s = sub nsw i32 %i.k, %i.r
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 2 uses
  %i.u = add i32 %i.t, %.06878.us.us              ; 2 uses
  %i.v = icmp ugt i32 %i.t, %6
  %i.w = icmp ugt i32 %i.u, %7
  %or.cond.us.us = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.us.us, label %.lr.ph92.us.us.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = uitofp i16 %i.q to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.m
  %i.z = load float, ptr %i.y, align 4, !tbaa !57 ; 2 uses
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.z, float %.06579.us.us) ; 2 uses
  %i.ab = fadd nsz float %.06480.us.us, %i.z      ; 2 uses
  %.063.us.us = add nsw i32 %.06381.us.us, -1
  %i.ac = icmp sgt i32 %.06381.us.us, 0
  br i1 %i.ac, label %bb.b, label %.lr.ph92.us.us.preheader, !llvm.loop !137

.lr.ph92.us.us.preheader:                         ; preds = %bb.b, %bb.c
  %.189.us.us.ph = phi float [ %i.ab, %bb.c ], [ %.06480.us.us, %bb.b ]
  %.16688.us.us.ph = phi float [ %i.aa, %bb.c ], [ %.06579.us.us, %bb.b ]
  br label %.lr.ph92.us.us

.lr.ph92.us.us:                                   ; preds = %.lr.ph92.us.us.preheader, %bb.d
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.d ], [ %i.h, %.lr.ph92.us.us.preheader ] ; 3 uses
  %.189.us.us = phi float [ %i.ar, %bb.d ], [ %.189.us.us.ph, %.lr.ph92.us.us.preheader ] ; 2 uses
  %.16688.us.us = phi float [ %i.aq, %bb.d ], [ %.16688.us.us.ph, %.lr.ph92.us.us.preheader ] ; 2 uses
  %.06787.us.us = phi i32 [ %i.ak, %bb.d ], [ 0, %.lr.ph92.us.us.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv137
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv140
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !63 ; 2 uses
  %i.ah = zext i16 %i.ag to i32
  %i.ai = sub nsw i32 %i.k, %i.ah
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 2 uses
  %i.ak = add i32 %i.aj, %.06787.us.us            ; 2 uses
  %i.al = icmp ugt i32 %i.aj, %6
  %i.am = icmp ugt i32 %i.ak, %7
  %or.cond76.us.us = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond76.us.us, label %._crit_edge96.us.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph92.us.us
  %i.an = uitofp i16 %i.ag to float
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv137
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !57 ; 2 uses
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.ap, float %.16688.us.us) ; 2 uses
  %i.ar = fadd nsz float %.189.us.us, %i.ap       ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv.next138 to i32
  %i.at = icmp sgt i32 %5, %i.as
  br i1 %i.at, label %.lr.ph92.us.us, label %._crit_edge96.us.us, !llvm.loop !138

._crit_edge96.us.us:                              ; preds = %.lr.ph92.us.us, %bb.d
  %.166.lcssa.us.us = phi float [ %i.aq, %bb.d ], [ %.16688.us.us, %.lr.ph92.us.us ]
  %.1.lcssa.us.us = phi float [ %i.ar, %bb.d ], [ %.189.us.us, %.lr.ph92.us.us ]
  %i.au = fdiv nsz float %.166.lcssa.us.us, %.1.lcssa.us.us
  %i.av = tail call i64 @llvm.lrint.i64.f32(float %i.au)
  %i.aw = trunc i64 %i.av to i16
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv140
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !63
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge102, label %.lr.ph.us.us, !llvm.loop !139

.lr.ph92.us:                                      ; preds = %.lr.ph92.us.preheader, %._crit_edge93.us
  %indvars.iv132 = phi i64 [ 0, %.lr.ph92.us.preheader ], [ %indvars.iv.next133, %._crit_edge93.us ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv132
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %i.bb = uitofp i16 %i.az to float
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph92.us, %bb.f
  %indvars.iv128 = phi i64 [ %i.g, %.lr.ph92.us ], [ %indvars.iv.next129, %bb.f ] ; 3 uses
  %.189.us = phi float [ 1.000000e+00, %.lr.ph92.us ], [ %i.bq, %bb.f ] ; 2 uses
  %.16688.us = phi float [ %i.bb, %.lr.ph92.us ], [ %i.bp, %bb.f ] ; 2 uses
  %.06787.us = phi i32 [ 0, %.lr.ph92.us ], [ %i.bj, %bb.f ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv128
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv132
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !63 ; 2 uses
  %i.bg = zext i16 %i.bf to i32
  %i.bh = sub nsw i32 %i.ba, %i.bg
  %i.bi = tail call i32 @llvm.abs.i32(i32 %i.bh, i1 true) ; 2 uses
  %i.bj = add i32 %i.bi, %.06787.us               ; 2 uses
  %i.bk = icmp ugt i32 %i.bi, %6
  %i.bl = icmp ugt i32 %i.bj, %7
  %or.cond76.us = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond76.us, label %._crit_edge93.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = uitofp i16 %i.bf to float
  %i.bn = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv128
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !57 ; 2 uses
  %i.bp = tail call nsz float @llvm.fmuladd.f32(float %i.bm, float %i.bo, float %.16688.us) ; 2 uses
  %i.bq = fadd nsz float %.189.us, %i.bo          ; 2 uses
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next129 to i32
  %exitcond131.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond131.not, label %._crit_edge93.us, label %bb.e, !llvm.loop !138

._crit_edge93.us:                                 ; preds = %bb.f, %bb.e
  %.166.lcssa.us = phi float [ %.16688.us, %bb.e ], [ %i.bp, %bb.f ]
  %.1.lcssa.us = phi float [ %.189.us, %bb.e ], [ %i.bq, %bb.f ]
  %i.br = fdiv nsz float %.166.lcssa.us, %.1.lcssa.us
  %i.bs = tail call i64 @llvm.lrint.i64.f32(float %i.br)
  %i.bt = trunc i64 %i.bs to i16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv132
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !63
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count143
  br i1 %exitcond136.not, label %._crit_edge102, label %.lr.ph92.us, !llvm.loop !139

.lr.ph101.split:                                  ; preds = %.lr.ph101
  br i1 %i.d, label %.lr.ph.us104, label %.lr.ph101.split.split.preheader

.lr.ph101.split.split.preheader:                  ; preds = %.lr.ph101.split
  %min.iters.check = icmp ult i32 %3, 8
  %i.bv = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bv, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph101.split.split.preheader159, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph101.split.split.preheader
  %n.vec = and i64 %wide.trip.count143, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bw, align 2, !tbaa !63
  %i.bx = uitofp <8 x i16> %wide.load to <8 x float>
  %i.by = tail call <8 x i64> @llvm.lrint.v8i64.v8f32(<8 x float> %i.bx)
  %i.bz = trunc <8 x i64> %i.by to <8 x i16>
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.bz, ptr %i.ca, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count143
  br i1 %cmp.n, label %._crit_edge102, label %.lr.ph101.split.split.preheader159

.lr.ph101.split.split.preheader159:               ; preds = %.lr.ph101.split.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph101.split.split.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count143, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph101.split.split.prol.loopexit, label %.lr.ph101.split.split.prol

.lr.ph101.split.split.prol:                       ; preds = %.lr.ph101.split.split.preheader159, %.lr.ph101.split.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph101.split.split.prol ], [ %indvars.iv.ph, %.lr.ph101.split.split.preheader159 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph101.split.split.prol ], [ 0, %.lr.ph101.split.split.preheader159 ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !63
  %i.ce = uitofp i16 %i.cd to float
  %i.cf = tail call i64 @llvm.lrint.i64.f32(float %i.ce)
  %i.cg = trunc i64 %i.cf to i16
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.prol
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !63
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph101.split.split.prol.loopexit, label %.lr.ph101.split.split.prol, !llvm.loop !141

.lr.ph101.split.split.prol.loopexit:              ; preds = %.lr.ph101.split.split.prol, %.lr.ph101.split.split.preheader159
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph101.split.split.preheader159 ], [ %indvars.iv.next.prol, %.lr.ph101.split.split.prol ]
  %i.ci = sub nsw i64 %indvars.iv.ph, %wide.trip.count143
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %._crit_edge102, label %.lr.ph101.split.split

.lr.ph.us104:                                     ; preds = %.lr.ph101.split, %._crit_edge83.us111
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %._crit_edge83.us111 ], [ 0, %.lr.ph101.split ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv123
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !63 ; 2 uses
  %i.cm = zext i16 %i.cl to i32
  %i.cn = uitofp i16 %i.cl to float
  br label %bb.g

end_hunk_3
