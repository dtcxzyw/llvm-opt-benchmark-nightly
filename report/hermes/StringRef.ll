inline.NumInlined: 344
inline.NumDeleted: 125
begin_hunk_0_@_ZNK4llvh9StringRef15compare_numericES0_:bb.a

.thread99:                                        ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit, %.preheader._crit_edge, %._crit_edge128
  %.236 = phi i64 [ %.041.in.lcssa, %.preheader._crit_edge ], [ %.034120, %._crit_edge128 ], [ %.041.in.lcssa, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit ]
  %.6 = phi i32 [ %.3, %.preheader._crit_edge ], [ %.0121, %._crit_edge128 ], [ %.3, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit ]
  %i.ag = add i64 %.236, 1                        ; 2 uses
  %.not = icmp eq i64 %i.ag, %.sroa.speculated
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %.thread99, %bb.a
  %i.ah = icmp eq i64 %i.b, %2
  br i1 %i.ah, label %.thread102, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ai = icmp ult i64 %i.b, %2
  %i.aj = select i1 %i.ai, i32 -1, i32 1
  br label %.thread102

.thread102.loopexit113:                           ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit
  %.inv.le = icmp sgt i32 %.fr, -1
  %..le = select i1 %.inv.le, i32 1, i32 -1
  br label %.thread102

.thread102:                                       ; preds = %bb.f, %.thread102.loopexit113, %bb.g, %._crit_edge, %bb.h
  %.8 = phi i32 [ 0, %._crit_edge ], [ %i.aj, %bb.h ], [ %..le, %.thread102.loopexit113 ], [ %i.af, %bb.g ], [ %.2, %bb.f ]
  ret i32 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4llvh19ComputeEditDistanceIcEEjNS_8ArrayRefIT_EES3_bj(ptr %i.a, i64 %i.c, ptr %1, i64 %2, i1 noundef zeroext %3, i32 noundef %4)
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvh19ComputeEditDistanceIcEEjNS_8ArrayRefIT_EES3_bj(ptr %0, i64 %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = add i64 %3, 1                            ; 5 uses
  %i.c = icmp ugt i64 %i.b, 64
  br i1 %i.c, label %.thread150, label %bb.b

.thread150:                                       ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 4611686018427387903
  %i.e = shl i64 %i.b, 2
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #19 ; 2 uses
  br label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %.not89 = icmp eq i64 %3, 0
  br i1 %.not89, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread150, %bb.b
  %.054156 = phi ptr [ %i.g, %.thread150 ], [ %i.a, %bb.b ] ; 4 uses
  %.sroa.0.0154 = phi ptr [ %i.g, %.thread150 ], [ null, %bb.b ] ; 2 uses
  %umax171 = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2)
  %i.h = add i64 %umax171, -1                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 21
  br i1 %min.iters.check, label %.lr.ph.preheader178, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.i = add i64 %3, -1                           ; 2 uses
  %i.j = and i64 %i.i, 4294967294
  %i.k = icmp eq i64 %i.j, 4294967294
  %i.l = icmp ugt i64 %i.i, 4294967295
  %i.m = or i1 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.h, -8                       ; 4 uses
  %i.n = or disjoint i64 %n.vec, 1
  %i.o = trunc i64 %n.vec to i32
  %i.p = or disjoint i32 %i.o, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.054156, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store <4 x i32> %vec.ind, ptr %i.r, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.s, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader178

.lr.ph.preheader178:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.06090.ph = phi i32 [ 1, %vector.scevcheck ], [ 1, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.b
  %.not89159 = phi i1 [ true, %bb.b ], [ false, %middle.block ], [ false, %.lr.ph ]
  %.054157 = phi ptr [ %i.a, %bb.b ], [ %.054156, %middle.block ], [ %.054156, %.lr.ph ] ; 19 uses
  %.sroa.0.0155 = phi ptr [ null, %bb.b ], [ %.sroa.0.0154, %middle.block ], [ %.sroa.0.0154, %.lr.ph ] ; 2 uses
  %.not6596 = icmp eq i64 %1, 0
  br i1 %.not6596, label %.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader
  %.not67 = icmp eq i32 %5, 0                     ; 3 uses
  %i.u = add i32 %5, 1                            ; 3 uses
  br i1 %.not89159, label %.lr.ph99.split.us, label %.lr.ph99.split

.lr.ph99.split.us:                                ; preds = %.lr.ph99
  br i1 %.not67, label %.lr.ph99.split.us.split.us.preheader, label %.lr.ph99.split.us.split

.lr.ph99.split.us.split.us.preheader:             ; preds = %.lr.ph99.split.us
  %i.v = add i64 %1, 1
  %umax136 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 2)
  %i.w = trunc i64 %umax136 to i32
  %i.x = add i32 %i.w, -1
  br label %..thread_crit_edge.split.us

.lr.ph99.split.us.split:                          ; preds = %.lr.ph99.split.us, %bb.c
  %.05997.us = phi i64 [ %i.z, %bb.c ], [ 1, %.lr.ph99.split.us ] ; 2 uses
  %i.y = trunc i64 %.05997.us to i32              ; 3 uses
  %.not121 = icmp ult i32 %5, %i.y
  br i1 %.not121, label %.loopexit.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph99.split.us.split
  %i.z = add i64 %.05997.us, 1                    ; 2 uses
  %.not65.us = icmp ugt i64 %i.z, %1
  br i1 %.not65.us, label %..thread_crit_edge.split.us, label %.lr.ph99.split.us.split, !llvm.loop !23

..thread_crit_edge.split.us:                      ; preds = %bb.c, %.lr.ph99.split.us.split.us.preheader
  %.us-phi = phi i32 [ %i.x, %.lr.ph99.split.us.split.us.preheader ], [ %i.y, %bb.c ]
  store i32 %.us-phi, ptr %.054157, align 4, !tbaa !3
  br label %.thread

.loopexit.split.us:                               ; preds = %.lr.ph99.split.us.split
  store i32 %i.y, ptr %.054157, align 4, !tbaa !3
  br label %.loopexit

.lr.ph99.split:                                   ; preds = %.lr.ph99
  br i1 %4, label %.lr.ph99.split.split.us, label %.lr.ph99.split.split

.lr.ph99.split.split.us:                          ; preds = %.lr.ph99.split
  br i1 %.not67, label %.lr.ph95.us.us.preheader, label %.lr.ph95.us

.lr.ph95.us.us.preheader:                         ; preds = %.lr.ph99.split.split.us
  %i.aa = add i64 %1, 1
  %umax134 = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 2)
  %xtraiter181 = and i64 %3, 1
  %i.ab = icmp eq i64 %3, 1
  %unroll_iter186 = and i64 %3, -2
  %lcmp.mod184.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod185 = trunc i64 %3 to i1
  br label %.lr.ph95.us.us

.lr.ph95.us.us:                                   ; preds = %.lr.ph95.us.us.preheader, %._crit_edge.split.us.us.us
  %.05997.us102.us = phi i64 [ %i.bn, %._crit_edge.split.us.us.us ], [ 1, %.lr.ph95.us.us.preheader ] ; 3 uses
  %i.ac = trunc i64 %.05997.us102.us to i32       ; 3 uses
  store i32 %i.ac, ptr %.054157, align 4, !tbaa !3
  %i.ad = add i64 %.05997.us102.us, -1            ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15  ; 3 uses
  br i1 %i.ab, label %.epil.preheader180, label %.lr.ph95.us.us.new

.lr.ph95.us.us.new:                               ; preds = %.lr.ph95.us.us, %.lr.ph95.us.us.new
  %i.ah = phi i32 [ %.sroa.speculated.us.us.us.1, %.lr.ph95.us.us.new ], [ %i.ac, %.lr.ph95.us.us ]
  %.05594.us.us.us = phi i64 [ %i.bc, %.lr.ph95.us.us.new ], [ 1, %.lr.ph95.us.us ] ; 5 uses
  %.05693.us.us.us = phi i32 [ %i.au, %.lr.ph95.us.us.new ], [ %i.ae, %.lr.ph95.us.us ]
  %niter187 = phi i64 [ %niter187.next.1, %.lr.ph95.us.us.new ], [ 0, %.lr.ph95.us.us ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594.us.us.us ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3  ; 2 uses
  %i.ak = getelementptr i8, ptr %2, i64 %.05594.us.us.us
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = icmp ne i8 %i.ag, %i.am
  %i.ao = zext i1 %i.an to i32
  %i.ap = add i32 %.05693.us.us.us, %i.ao
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ah)
  %i.ar = add i32 %i.aq, 1
  %.sroa.speculated.us.us.us = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.ap) ; 2 uses
  store i32 %.sroa.speculated.us.us.us, ptr %i.ai, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594.us.us.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 3 uses
  %i.av = getelementptr i8, ptr %2, i64 %.05594.us.us.us
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = icmp ne i8 %i.ag, %i.aw
  %i.ay = zext i1 %i.ax to i32
  %i.az = add i32 %i.aj, %i.ay
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %.sroa.speculated.us.us.us)
  %i.bb = add i32 %i.ba, 1
  %.sroa.speculated.us.us.us.1 = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.az) ; 3 uses
  store i32 %.sroa.speculated.us.us.us.1, ptr %i.at, align 4, !tbaa !3
  %i.bc = add nuw i64 %.05594.us.us.us, 2         ; 2 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %._crit_edge.split.us.us.us.unr-lcssa, label %.lr.ph95.us.us.new, !llvm.loop !24

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %.lr.ph95.us.us.new
  br i1 %lcmp.mod184.not, label %._crit_edge.split.us.us.us, label %.epil.preheader180

.epil.preheader180:                               ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.lr.ph95.us.us
  %.epil.init183 = phi i32 [ %i.ac, %.lr.ph95.us.us ], [ %.sroa.speculated.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ]
  %.05594.us.us.us.epil.init = phi i64 [ 1, %.lr.ph95.us.us ], [ %i.bc, %._crit_edge.split.us.us.us.unr-lcssa ] ; 2 uses
  %.05693.us.us.us.epil.init = phi i32 [ %i.ae, %.lr.ph95.us.us ], [ %i.au, %._crit_edge.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594.us.us.us.epil.init ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr i8, ptr %2, i64 %.05594.us.us.us.epil.init
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15
  %i.bi = icmp ne i8 %i.ag, %i.bh
  %i.bj = zext i1 %i.bi to i32
  %i.bk = add i32 %.05693.us.us.us.epil.init, %i.bj
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %.epil.init183)
  %i.bm = add i32 %i.bl, 1
  %.sroa.speculated.us.us.us.epil = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bk)
  store i32 %.sroa.speculated.us.us.us.epil, ptr %i.bd, align 4, !tbaa !3
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.epil.preheader180
  %i.bn = add nuw i64 %.05997.us102.us, 1         ; 2 uses
  %exitcond135 = icmp eq i64 %i.bn, %umax134
  br i1 %exitcond135, label %.thread, label %.lr.ph95.us.us, !llvm.loop !23

.lr.ph95.us:                                      ; preds = %.lr.ph99.split.split.us, %bb.d
  %.05997.us102 = phi i64 [ %i.bt, %bb.d ], [ 1, %.lr.ph99.split.split.us ] ; 3 uses
  %i.bo = trunc i64 %.05997.us102 to i32          ; 3 uses
  store i32 %i.bo, ptr %.054157, align 4, !tbaa !3
  %i.bp = add i64 %.05997.us102, -1               ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.split.us.us
  %i.bt = add i64 %.05997.us102, 1                ; 2 uses
  %.not65.us103 = icmp ugt i64 %i.bt, %1
  br i1 %.not65.us103, label %.thread, label %.lr.ph95.us, !llvm.loop !23

bb.e:                                             ; preds = %bb.e, %.lr.ph95.us
  %i.bu = phi i32 [ %i.bo, %.lr.ph95.us ], [ %.sroa.speculated.us.us, %bb.e ]
  %.05594.us.us = phi i64 [ 1, %.lr.ph95.us ], [ %i.cf, %bb.e ] ; 4 uses
  %.05693.us.us = phi i32 [ %i.bq, %.lr.ph95.us ], [ %i.bw, %bb.e ]
  %.08692.us.us = phi i32 [ %i.bo, %.lr.ph95.us ], [ %.sroa.speculated76.us.us, %bb.e ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594.us.us ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3  ; 2 uses
  %i.bx = getelementptr i8, ptr %2, i64 %.05594.us.us
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %i.ca = icmp ne i8 %i.bs, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %i.cc = add i32 %.05693.us.us, %i.cb
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 %i.bu)
  %i.ce = add i32 %i.cd, 1
  %.sroa.speculated.us.us = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %i.cc) ; 3 uses
  store i32 %.sroa.speculated.us.us, ptr %i.bv, align 4, !tbaa !3
  %.sroa.speculated76.us.us = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated.us.us, i32 %.08692.us.us) ; 2 uses
  %i.cf = add nuw i64 %.05594.us.us, 1
  %exitcond132.not = icmp eq i64 %.05594.us.us, %3
  br i1 %exitcond132.not, label %._crit_edge.split.us.us, label %bb.e, !llvm.loop !24

._crit_edge.split.us.us:                          ; preds = %bb.e
  %.not118 = icmp ugt i32 %.sroa.speculated76.us.us, %5
  br i1 %.not118, label %.loopexit, label %bb.d

.lr.ph99.split.split:                             ; preds = %.lr.ph99.split
  br i1 %.not67, label %.lr.ph95.us108.preheader, label %.lr.ph95

.lr.ph95.us108.preheader:                         ; preds = %.lr.ph99.split.split
  %i.cg = add i64 %1, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 2)
  %xtraiter = and i64 %3, 1
  %i.ch = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod179 = trunc i64 %3 to i1
  br label %.lr.ph95.us108

.lr.ph95.us108:                                   ; preds = %.lr.ph95.us108.preheader, %._crit_edge.split.us
  %.05997.us110 = phi i64 [ %i.dt, %._crit_edge.split.us ], [ 1, %.lr.ph95.us108.preheader ] ; 3 uses
  %i.ci = trunc i64 %.05997.us110 to i32          ; 3 uses
  store i32 %i.ci, ptr %.054157, align 4, !tbaa !3
  %i.cj = add i64 %.05997.us110, -1               ; 2 uses
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15  ; 3 uses
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph95.us108.new

.lr.ph95.us108.new:                               ; preds = %.lr.ph95.us108, %bb.i
  %i.cn = phi i32 [ %storemerge116.1, %bb.i ], [ %i.ci, %.lr.ph95.us108 ]
  %.05594.us = phi i64 [ %i.di, %bb.i ], [ 1, %.lr.ph95.us108 ] ; 6 uses
  %.05693.us = phi i32 [ %i.da, %bb.i ], [ %i.ck, %.lr.ph95.us108 ]
  %niter = phi i64 [ %niter.next.1, %bb.i ], [ 0, %.lr.ph95.us108 ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594.us ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = add nsw i64 %.05594.us, -1              ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15
  %i.ct = icmp eq i8 %i.cm, %i.cs
  br i1 %i.ct, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph95.us108.new
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %i.cq
  %i.cv = icmp ult i32 %i.cp, %i.cn
  %..i70.us = select i1 %i.cv, ptr %i.co, ptr %i.cu
  %i.cw = load i32, ptr %..i70.us, align 4, !tbaa !3
  %i.cx = add i32 %i.cw, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph95.us108.new, %bb.f
  %storemerge116 = phi i32 [ %i.cx, %bb.f ], [ %.05693.us, %.lr.ph95.us108.new ] ; 2 uses
  store i32 %storemerge116, ptr %i.co, align 4, !tbaa !3
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594.us
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %.05594.us
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !15
  %i.dd = icmp eq i8 %i.cm, %i.dc
  br i1 %i.dd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594.us
  %i.df = icmp ult i32 %i.da, %storemerge116
  %..i70.us.1 = select i1 %i.df, ptr %i.cz, ptr %i.de
  %i.dg = load i32, ptr %..i70.us.1, align 4, !tbaa !3
  %i.dh = add i32 %i.dg, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge116.1 = phi i32 [ %i.dh, %bb.h ], [ %i.cp, %bb.g ] ; 3 uses
  store i32 %storemerge116.1, ptr %i.cz, align 4, !tbaa !3
  %i.di = add nuw i64 %.05594.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.unr-lcssa, label %.lr.ph95.us108.new, !llvm.loop !24

._crit_edge.split.us.unr-lcssa:                   ; preds = %bb.i
  br i1 %lcmp.mod.not, label %._crit_edge.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph95.us108
  %.epil.init = phi i32 [ %i.ci, %.lr.ph95.us108 ], [ %storemerge116.1, %._crit_edge.split.us.unr-lcssa ]
  %.05594.us.epil.init = phi i64 [ 1, %.lr.ph95.us108 ], [ %i.di, %._crit_edge.split.us.unr-lcssa ] ; 2 uses
  %.05693.us.epil.init = phi i32 [ %i.ck, %.lr.ph95.us108 ], [ %i.da, %._crit_edge.split.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594.us.epil.init ; 3 uses
  %i.dk = add nsw i64 %.05594.us.epil.init, -1    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15
  %i.dn = icmp eq i8 %i.cm, %i.dm
  br i1 %i.dn, label %._crit_edge.split.us.epilog-lcssa, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.do = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %i.dk
  %i.dq = icmp ult i32 %i.do, %.epil.init
  %..i70.us.epil = select i1 %i.dq, ptr %i.dj, ptr %i.dp
  %i.dr = load i32, ptr %..i70.us.epil, align 4, !tbaa !3
  %i.ds = add i32 %i.dr, 1
  br label %._crit_edge.split.us.epilog-lcssa

._crit_edge.split.us.epilog-lcssa:                ; preds = %bb.j, %.epil.preheader
  %storemerge116.epil = phi i32 [ %i.ds, %bb.j ], [ %.05693.us.epil.init, %.epil.preheader ]
  store i32 %storemerge116.epil, ptr %i.dj, align 4, !tbaa !3
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.unr-lcssa, %._crit_edge.split.us.epilog-lcssa
  %i.dt = add nuw i64 %.05997.us110, 1            ; 2 uses
  %exitcond131 = icmp eq i64 %i.dt, %umax
  br i1 %exitcond131, label %.thread, label %.lr.ph95.us108, !llvm.loop !23

.lr.ph:                                           ; preds = %.lr.ph.preheader178, %.lr.ph
  %i.du = phi i64 [ %i.dx, %.lr.ph ], [ %.ph, %.lr.ph.preheader178 ]
  %.06090 = phi i32 [ %i.dw, %.lr.ph ], [ %.06090.ph, %.lr.ph.preheader178 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.054156, i64 %i.du
  store i32 %.06090, ptr %i.dv, align 4, !tbaa !3
  %i.dw = add i32 %.06090, 1                      ; 2 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %.not = icmp ult i64 %3, %i.dx
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !25

bb.k:                                             ; preds = %._crit_edge.split
  %i.dy = add i64 %.05997, 1                      ; 2 uses
  %.not65 = icmp ugt i64 %i.dy, %1
  br i1 %.not65, label %.thread, label %.lr.ph95, !llvm.loop !23

.lr.ph95:                                         ; preds = %.lr.ph99.split.split, %bb.k
  %.05997 = phi i64 [ %i.dy, %bb.k ], [ 1, %.lr.ph99.split.split ] ; 3 uses
  %i.dz = trunc i64 %.05997 to i32                ; 3 uses
  store i32 %i.dz, ptr %.054157, align 4, !tbaa !3
  %i.ea = add i64 %.05997, -1                     ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !15
  br label %bb.l

._crit_edge.split:                                ; preds = %bb.n
  %.not115 = icmp ugt i32 %.sroa.speculated76, %5
  br i1 %.not115, label %.loopexit, label %bb.k

bb.l:                                             ; preds = %.lr.ph95, %bb.n
  %i.ee = phi i32 [ %i.dz, %.lr.ph95 ], [ %storemerge, %bb.n ]
  %.05594 = phi i64 [ 1, %.lr.ph95 ], [ %i.ep, %bb.n ] ; 4 uses
  %.05693 = phi i32 [ %i.eb, %.lr.ph95 ], [ %i.eg, %bb.n ]
  %.08692 = phi i32 [ %i.dz, %.lr.ph95 ], [ %.sroa.speculated76, %bb.n ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %.05594 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3  ; 2 uses
  %i.eh = add nsw i64 %.05594, -1                 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !15
  %i.ek = icmp eq i8 %i.ed, %i.ej
  br i1 %i.ek, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %i.eh
  %i.em = icmp ult i32 %i.eg, %i.ee
  %..i70 = select i1 %i.em, ptr %i.ef, ptr %i.el
  %i.en = load i32, ptr %..i70, align 4, !tbaa !3
  %i.eo = add i32 %i.en, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %storemerge = phi i32 [ %i.eo, %bb.m ], [ %.05693, %bb.l ] ; 3 uses
  store i32 %storemerge, ptr %i.ef, align 4, !tbaa !3
  %.sroa.speculated76 = tail call i32 @llvm.umin.i32(i32 %storemerge, i32 %.08692) ; 2 uses
  %i.ep = add nuw i64 %.05594, 1
  %exitcond.not = icmp eq i64 %.05594, %3
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.l, !llvm.loop !24

.thread:                                          ; preds = %bb.k, %._crit_edge.split.us, %bb.d, %._crit_edge.split.us.us.us, %..thread_crit_edge.split.us, %.preheader
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.054157, i64 %3
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.loopexit.split.us, %.thread
  %.3 = phi i32 [ %i.er, %.thread ], [ %i.u, %.loopexit.split.us ], [ %i.u, %._crit_edge.split.us.us ], [ %i.u, %._crit_edge.split ]
  %.not.i = icmp eq ptr %.sroa.0.0155, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0155) #20
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5lowerB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %0, align 8, !tbaa !26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i8 noundef signext 0) #18
  %i.d = load i64, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.07
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -65
  %or.cond.i = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %.0.i = select i1 %or.cond.i, i8 %i.j, i8 %i.h
  %i.k = load ptr, ptr %0, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.07
  store i8 %.0.i, ptr %i.l, align 1, !tbaa !15
  %i.m = or disjoint i64 %.07, 1                  ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15    ; 3 uses
  %i.q = add i8 %i.p, -65
  %or.cond.i.1 = icmp ult i8 %i.q, 26
  %i.r = or disjoint i8 %i.p, 32
  %.0.i.1 = select i1 %or.cond.i.1, i8 %i.r, i8 %i.p
  %i.s = load ptr, ptr %0, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 %.0.i.1, ptr %i.t, align 1, !tbaa !15
  %i.u = add nuw i64 %.07, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !30

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.v = load ptr, ptr %1, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.07.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15    ; 3 uses
  %i.y = add i8 %i.x, -65
  %or.cond.i.epil = icmp ult i8 %i.y, 26
  %i.z = or disjoint i8 %i.x, 32
  %.0.i.epil = select i1 %or.cond.i.epil, i8 %i.z, i8 %i.x
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.07.epil.init
  store i8 %.0.i.epil, ptr %i.ab, align 1, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5upperB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %0, align 8, !tbaa !26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i8 noundef signext 0) #18
  %i.d = load i64, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.07
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -97
  %or.cond.i = icmp ult i8 %i.i, 26
  %i.j = add nsw i8 %i.h, -32
  %.0.i = select i1 %or.cond.i, i8 %i.j, i8 %i.h
  %i.k = load ptr, ptr %0, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.07
  store i8 %.0.i, ptr %i.l, align 1, !tbaa !15
  %i.m = or disjoint i64 %.07, 1                  ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15    ; 3 uses
  %i.q = add i8 %i.p, -97
  %or.cond.i.1 = icmp ult i8 %i.q, 26
  %i.r = add nsw i8 %i.p, -32
  %.0.i.1 = select i1 %or.cond.i.1, i8 %i.r, i8 %i.p
  %i.s = load ptr, ptr %0, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 %.0.i.1, ptr %i.t, align 1, !tbaa !15
  %i.u = add nuw i64 %.07, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !31

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.v = load ptr, ptr %1, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.07.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15    ; 3 uses
  %i.y = add i8 %i.x, -97
  %or.cond.i.epil = icmp ult i8 %i.y, 26
  %i.z = add nsw i8 %i.x, -32
  %.0.i.epil = select i1 %or.cond.i.epil, i8 %i.z, i8 %i.x
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.07.epil.init
  store i8 %.0.i.epil, ptr %i.ab, align 1, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = icmp ugt i64 %3, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %3 ; 4 uses
  %i.g = sub nuw i64 %i.c, %3                     ; 4 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.g, %2
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %1, align 1, !tbaa !15
  %i.l = sext i8 %i.k to i32
  %i.m = tail call noundef ptr @memchr(ptr noundef %i.f, i32 noundef %i.l, i64 noundef %i.g) #17 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = ptrtoint ptr %i.m to i64
end_hunk_0
