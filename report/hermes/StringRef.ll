Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/StringRef?download=true
inline.NumInlined: 344
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvh9StringRef15compare_numericES0_:bb.a

bb.b:                                             ; preds = %.lr.ph, %.split91.thread
  %.035117 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %.split91.thread ] ; 7 uses
  %.038116 = phi i32 [ undef, %.lr.ph ], [ %.6, %.split91.thread ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.035117 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15    ; 3 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.035117 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15    ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  %or.cond = select i1 %i.h, i1 %i.l, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge124

.preheader.preheader:                             ; preds = %bb.b
  %.not47143 = icmp eq i64 %.035117, %.sroa.speculated
  br i1 %.not47143, label %.preheader._crit_edge, label %.lr.ph147

.preheader:                                       ; preds = %.split
  %.not47 = icmp eq i64 %.0146, %.sroa.speculated
  br i1 %.not47, label %.preheader._crit_edge, label %.lr.ph147, !llvm.loop !18

.lr.ph147:                                        ; preds = %.preheader.preheader, %.preheader
  %.0.in145 = phi i64 [ %.0146, %.preheader ], [ %.035117, %.preheader.preheader ] ; 2 uses
  %.139144 = phi i32 [ %.240, %.preheader ], [ %.038116, %.preheader.preheader ]
  %.0146 = add i64 %.0.in145, 1                   ; 7 uses
  %i.m = icmp ult i64 %.0146, %i.b
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph147
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0146
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = add i8 %i.o, -48
  %i.q = icmp ult i8 %i.p, 10
  %i.r = zext i1 %i.q to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph147
  %i.s = phi i32 [ 0, %.lr.ph147 ], [ %i.r, %bb.c ] ; 2 uses
  %i.t = icmp ult i64 %.0146, %2
  br i1 %i.t, label %bb.e, label %.thread63

.thread63:                                        ; preds = %bb.d
  %.not4860 = icmp eq i32 %i.s, 0
  br label %.split

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.0146
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  %.fr107 = freeze i8 %i.v
  %i.w = add i8 %.fr107, -48
  %i.x = icmp ult i8 %i.w, 10                     ; 3 uses
  %i.y = zext i1 %i.x to i32
  %.not48 = icmp eq i32 %i.s, %i.y
  %spec.select = select i1 %i.x, i32 -1, i32 1
  %spec.select108 = select i1 %i.x, i32 0, i32 5
  br label %.split

.split:                                           ; preds = %bb.e, %.thread63
  %i.z = phi i32 [ 1, %.thread63 ], [ %spec.select, %bb.e ]
  %.not486266 = phi i1 [ %.not4860, %.thread63 ], [ %.not48, %bb.e ] ; 2 uses
  %i.aa = phi i32 [ 5, %.thread63 ], [ %spec.select108, %bb.e ]
  %.240 = select i1 %.not486266, i32 %.139144, i32 %i.z ; 4 uses
  %.034 = select i1 %.not486266, i32 %i.aa, i32 1
  switch i32 %.034, label %.thread100 [
    i32 0, label %.preheader
    i32 5, label %.split._crit_edge
  ], !llvm.loop !18

.split._crit_edge:                                ; preds = %.split
  br label %.preheader._crit_edge, !llvm.loop !18

.preheader._crit_edge:                            ; preds = %.preheader, %.split._crit_edge, %.preheader.preheader
  %.0.in.lcssa = phi i64 [ %.0.in145, %.split._crit_edge ], [ %.sroa.speculated, %.preheader.preheader ], [ %.sroa.speculated, %.preheader ] ; 2 uses
  %.0.lcssa = phi i64 [ %.0146, %.split._crit_edge ], [ %i.d, %.preheader.preheader ], [ %i.d, %.preheader ] ; 2 uses
  %.341 = phi i32 [ %.240, %.split._crit_edge ], [ %.038116, %.preheader.preheader ], [ %.240, %.preheader ] ; 2 uses
  %i.ab = icmp eq i64 %.0.lcssa, %.035117
  br i1 %i.ab, label %.split91.thread, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit:   ; preds = %.preheader._crit_edge
  %i.ac = sub i64 %.0.lcssa, %.035117
  %i.ad = tail call i32 @memcmp(ptr noundef nonnull %i.e, ptr noundef nonnull %i.i, i64 noundef %i.ac) #17
  %.fr = freeze i32 %i.ad                         ; 2 uses
  %.not49 = icmp eq i32 %.fr, 0
  br i1 %.not49, label %.split91.thread, label %.thread100.loopexit109

._crit_edge124:                                   ; preds = %bb.b
  %.not46 = icmp eq i8 %i.f, %i.j
  br i1 %.not46, label %.split91.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge124
  %i.ae = icmp ult i8 %i.f, %i.j
  %i.af = select i1 %i.ae, i32 -1, i32 1
  br label %.thread100

.split91.thread:                                  ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit, %.preheader._crit_edge, %._crit_edge124
  %.6 = phi i32 [ %.038116, %._crit_edge124 ], [ %.341, %.preheader._crit_edge ], [ %.341, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit ]
  %.237 = phi i64 [ %.035117, %._crit_edge124 ], [ %.0.in.lcssa, %.preheader._crit_edge ], [ %.0.in.lcssa, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit ]
  %i.ag = add i64 %.237, 1                        ; 2 uses
  %.not = icmp eq i64 %i.ag, %.sroa.speculated
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %.split91.thread, %bb.a
  %i.ah = icmp eq i64 %i.b, %2
  br i1 %i.ah, label %.thread100, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ai = icmp ult i64 %i.b, %2
  %i.aj = select i1 %i.ai, i32 -1, i32 1
  br label %.thread100

.thread100.loopexit109:                           ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit
  %.inv.le = icmp sgt i32 %.fr, -1
  %..le = select i1 %.inv.le, i32 1, i32 -1
  br label %.thread100

.thread100:                                       ; preds = %.split, %.thread100.loopexit109, %bb.f, %._crit_edge, %bb.g
  %.8 = phi i32 [ 0, %._crit_edge ], [ %i.aj, %bb.g ], [ %i.af, %bb.f ], [ %..le, %.thread100.loopexit109 ], [ %.240, %.split ]
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
  %.060156 = phi ptr [ %i.g, %.thread150 ], [ %i.a, %bb.b ] ; 4 uses
  %.sroa.0.0154 = phi ptr [ %i.g, %.thread150 ], [ null, %bb.b ] ; 2 uses
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2)
  %i.i = add i64 %i.h, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 21
  br i1 %min.iters.check, label %.lr.ph.preheader176, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.j = add i64 %3, -1                           ; 2 uses
  %i.k = and i64 %i.j, 4294967294
  %i.l = icmp eq i64 %i.k, 4294967294
  %i.m = icmp ugt i64 %i.j, 4294967295
  %i.n = or i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader176, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.i, -8                       ; 4 uses
  %i.o = or disjoint i64 %n.vec, 1
  %i.p = trunc i64 %n.vec to i32
  %i.q = or disjoint i32 %i.p, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.060156, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store <4 x i32> %vec.ind, ptr %i.s, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.t, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader176

.lr.ph.preheader176:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.05990.ph = phi i32 [ 1, %vector.scevcheck ], [ 1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.b
  %.not89159 = phi i1 [ true, %bb.b ], [ false, %middle.block ], [ false, %.lr.ph ]
  %.060157 = phi ptr [ %i.a, %bb.b ], [ %.060156, %middle.block ], [ %.060156, %.lr.ph ] ; 17 uses
  %.sroa.0.0155 = phi ptr [ null, %bb.b ], [ %.sroa.0.0154, %middle.block ], [ %.sroa.0.0154, %.lr.ph ] ; 2 uses
  %.not6596 = icmp eq i64 %1, 0
  br i1 %.not6596, label %.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader
  %.not67 = icmp eq i32 %5, 0                     ; 3 uses
  %i.v = add i32 %5, 1                            ; 3 uses
  br i1 %.not89159, label %.lr.ph99.split.us, label %.lr.ph99.split

.lr.ph99.split.us:                                ; preds = %.lr.ph99
  br i1 %.not67, label %.lr.ph99.split.us.split.us.preheader, label %.lr.ph99.split.us.split

.lr.ph99.split.us.split.us.preheader:             ; preds = %.lr.ph99.split.us
  %i.w = add i64 %1, 1
  %umax136 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 2)
  %i.x = trunc i64 %umax136 to i32
  %i.y = add i32 %i.x, -1
  br label %..thread_crit_edge.split.us

.lr.ph99.split.us.split:                          ; preds = %.lr.ph99.split.us, %bb.c
  %.05897.us = phi i64 [ %i.aa, %bb.c ], [ 1, %.lr.ph99.split.us ] ; 2 uses
  %i.z = trunc i64 %.05897.us to i32              ; 3 uses
  %.not121 = icmp ult i32 %5, %i.z
  br i1 %.not121, label %.loopexit.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph99.split.us.split
  %i.aa = add i64 %.05897.us, 1                   ; 2 uses
  %.not65.us = icmp ugt i64 %i.aa, %1
  br i1 %.not65.us, label %..thread_crit_edge.split.us, label %.lr.ph99.split.us.split, !llvm.loop !23

..thread_crit_edge.split.us:                      ; preds = %bb.c, %.lr.ph99.split.us.split.us.preheader
  %.us-phi = phi i32 [ %i.y, %.lr.ph99.split.us.split.us.preheader ], [ %i.z, %bb.c ]
  store i32 %.us-phi, ptr %.060157, align 4, !tbaa !3
  br label %.thread

.loopexit.split.us:                               ; preds = %.lr.ph99.split.us.split
  store i32 %i.z, ptr %.060157, align 4, !tbaa !3
  br label %.loopexit

.lr.ph99.split:                                   ; preds = %.lr.ph99
  br i1 %4, label %.lr.ph99.split.split.us, label %.lr.ph99.split.split

.lr.ph99.split.split.us:                          ; preds = %.lr.ph99.split
  br i1 %.not67, label %.lr.ph95.us.us.preheader, label %.lr.ph95.us

.lr.ph95.us.us.preheader:                         ; preds = %.lr.ph99.split.split.us
  %i.ab = add i64 %1, 1
  %umax134 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 2)
  %xtraiter179 = and i64 %3, 1
  %i.ac = icmp eq i64 %3, 1
  %unroll_iter184 = and i64 %3, -2
  %lcmp.mod182.not = icmp eq i64 %xtraiter179, 0
  %lcmp.mod183 = trunc i64 %3 to i1
  br label %.lr.ph95.us.us

.lr.ph95.us.us:                                   ; preds = %.lr.ph95.us.us.preheader, %._crit_edge.split.us.us.us
  %.05897.us102.us = phi i64 [ %i.bo, %._crit_edge.split.us.us.us ], [ 1, %.lr.ph95.us.us.preheader ] ; 3 uses
  %i.ad = trunc i64 %.05897.us102.us to i32       ; 3 uses
  store i32 %i.ad, ptr %.060157, align 4, !tbaa !3
  %i.ae = add i64 %.05897.us102.us, -1            ; 2 uses
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15  ; 3 uses
  br i1 %i.ac, label %.epil.preheader178, label %.lr.ph95.us.us.new

.lr.ph95.us.us.new:                               ; preds = %.lr.ph95.us.us, %.lr.ph95.us.us.new
  %i.ai = phi i32 [ %.sroa.speculated.us.us.us.1, %.lr.ph95.us.us.new ], [ %i.ad, %.lr.ph95.us.us ]
  %.05494.us.us.us = phi i64 [ %i.bd, %.lr.ph95.us.us.new ], [ 1, %.lr.ph95.us.us ] ; 5 uses
  %.05593.us.us.us = phi i32 [ %i.av, %.lr.ph95.us.us.new ], [ %i.af, %.lr.ph95.us.us ]
  %niter185 = phi i64 [ %niter185.next.1, %.lr.ph95.us.us.new ], [ 0, %.lr.ph95.us.us ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05494.us.us.us ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.al = getelementptr i8, ptr %2, i64 %.05494.us.us.us
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15
  %i.ao = icmp ne i8 %i.ah, %i.an
  %i.ap = zext i1 %i.ao to i32
  %i.aq = add i32 %.05593.us.us.us, %i.ap
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.ai)
  %i.as = add i32 %i.ar, 1
  %.sroa.speculated.us.us.us = tail call i32 @llvm.umin.i32(i32 %i.as, i32 %i.aq) ; 2 uses
  store i32 %.sroa.speculated.us.us.us, ptr %i.aj, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05494.us.us.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 3 uses
  %i.aw = getelementptr i8, ptr %2, i64 %.05494.us.us.us
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !15
  %i.ay = icmp ne i8 %i.ah, %i.ax
  %i.az = zext i1 %i.ay to i32
  %i.ba = add i32 %i.ak, %i.az
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %.sroa.speculated.us.us.us)
  %i.bc = add i32 %i.bb, 1
  %.sroa.speculated.us.us.us.1 = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.ba) ; 3 uses
  store i32 %.sroa.speculated.us.us.us.1, ptr %i.au, align 4, !tbaa !3
  %i.bd = add nuw i64 %.05494.us.us.us, 2         ; 2 uses
  %niter185.next.1 = add nuw i64 %niter185, 2     ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %._crit_edge.split.us.us.us.unr-lcssa, label %.lr.ph95.us.us.new, !llvm.loop !24

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %.lr.ph95.us.us.new
  br i1 %lcmp.mod182.not, label %._crit_edge.split.us.us.us, label %.epil.preheader178

.epil.preheader178:                               ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.lr.ph95.us.us
  %.epil.init181 = phi i32 [ %i.ad, %.lr.ph95.us.us ], [ %.sroa.speculated.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ]
  %.05494.us.us.us.epil.init = phi i64 [ 1, %.lr.ph95.us.us ], [ %i.bd, %._crit_edge.split.us.us.us.unr-lcssa ] ; 2 uses
  %.05593.us.us.us.epil.init = phi i32 [ %i.af, %.lr.ph95.us.us ], [ %i.av, %._crit_edge.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05494.us.us.us.epil.init ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = getelementptr i8, ptr %2, i64 %.05494.us.us.us.epil.init
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.bj = icmp ne i8 %i.ah, %i.bi
  %i.bk = zext i1 %i.bj to i32
  %i.bl = add i32 %.05593.us.us.us.epil.init, %i.bk
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %.epil.init181)
  %i.bn = add i32 %i.bm, 1
  %.sroa.speculated.us.us.us.epil = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.bl)
  store i32 %.sroa.speculated.us.us.us.epil, ptr %i.be, align 4, !tbaa !3
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.epil.preheader178
  %i.bo = add nuw i64 %.05897.us102.us, 1         ; 2 uses
  %exitcond135 = icmp eq i64 %i.bo, %umax134
  br i1 %exitcond135, label %.thread, label %.lr.ph95.us.us, !llvm.loop !23

.lr.ph95.us:                                      ; preds = %.lr.ph99.split.split.us, %bb.d
  %.05897.us102 = phi i64 [ %i.bu, %bb.d ], [ 1, %.lr.ph99.split.split.us ] ; 3 uses
  %i.bp = trunc i64 %.05897.us102 to i32          ; 3 uses
  store i32 %i.bp, ptr %.060157, align 4, !tbaa !3
  %i.bq = add i64 %.05897.us102, -1               ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.split.us.us
  %i.bu = add i64 %.05897.us102, 1                ; 2 uses
  %.not65.us103 = icmp ugt i64 %i.bu, %1
  br i1 %.not65.us103, label %.thread, label %.lr.ph95.us, !llvm.loop !23

bb.e:                                             ; preds = %bb.e, %.lr.ph95.us
  %i.bv = phi i32 [ %i.bp, %.lr.ph95.us ], [ %.sroa.speculated.us.us, %bb.e ]
  %.05494.us.us = phi i64 [ 1, %.lr.ph95.us ], [ %i.cg, %bb.e ] ; 4 uses
  %.05593.us.us = phi i32 [ %i.br, %.lr.ph95.us ], [ %i.bx, %bb.e ]
  %.08692.us.us = phi i32 [ %i.bp, %.lr.ph95.us ], [ %.sroa.speculated76.us.us, %bb.e ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05494.us.us ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.by = getelementptr i8, ptr %2, i64 %.05494.us.us
  %i.bz = getelementptr i8, ptr %i.by, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !15
  %i.cb = icmp ne i8 %i.bt, %i.ca
  %i.cc = zext i1 %i.cb to i32
  %i.cd = add i32 %.05593.us.us, %i.cc
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.bv)
  %i.cf = add i32 %i.ce, 1
  %.sroa.speculated.us.us = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 %i.cd) ; 3 uses
  store i32 %.sroa.speculated.us.us, ptr %i.bw, align 4, !tbaa !3
  %.sroa.speculated76.us.us = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated.us.us, i32 %.08692.us.us) ; 2 uses
  %i.cg = add nuw i64 %.05494.us.us, 1
  %exitcond132.not = icmp eq i64 %.05494.us.us, %3
  br i1 %exitcond132.not, label %._crit_edge.split.us.us, label %bb.e, !llvm.loop !24

._crit_edge.split.us.us:                          ; preds = %bb.e
  %.not118.a = icmp ugt i32 %.sroa.speculated76.us.us, %5
  br i1 %.not118.a, label %.loopexit, label %bb.d

.lr.ph99.split.split:                             ; preds = %.lr.ph99.split
  br i1 %.not67, label %.lr.ph95.us108, label %.lr.ph95.us108.preheader

.lr.ph95.us108.preheader:                         ; preds = %.lr.ph99.split.split
  %xtraiter = and i64 %3, 1
  %i.ch = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod177 = trunc i64 %3 to i1
  br label %.lr.ph95

.lr.ph95.us108:                                   ; preds = %.lr.ph99.split.split
  %6 = add i64 %1, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %6, i64 2)
  %xtraiter180 = and i64 %3, 1
  %7 = icmp eq i64 %3, 1
  %unroll_iter185 = and i64 %3, -2
  %lcmp.mod183.not = icmp eq i64 %xtraiter180, 0
  %lcmp.mod184 = trunc i64 %3 to i1
  br label %.lr.ph95.us108.new

.lr.ph95.us108.new:                               ; preds = %.lr.ph95.us108, %._crit_edge.split.us
  %.05494.us = phi i64 [ %i.cu, %._crit_edge.split.us ], [ 1, %.lr.ph95.us108 ] ; 3 uses
  %8 = trunc i64 %.05494.us to i32                ; 3 uses
  store i32 %8, ptr %.060157, align 4, !tbaa !3
  %9 = add i64 %.05494.us, -1                     ; 2 uses
  %10 = trunc i64 %9 to i32                       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !15  ; 3 uses
  br i1 %7, label %.epil.preheader.a, label %bb.f

bb.f:                                             ; preds = %.lr.ph95.us108.new, %bb.f
  %11 = phi i32 [ %storemerge119.1, %bb.f ], [ %8, %.lr.ph95.us108.new ]
  %.05497.us = phi i64 [ %23, %bb.f ], [ 1, %.lr.ph95.us108.new ] ; 5 uses
  %storemerge116 = phi i32 [ %i.cm, %bb.f ], [ %10, %.lr.ph95.us108.new ]
  %niter186 = phi i64 [ %niter186.next.1, %bb.f ], [ 0, %.lr.ph95.us108.new ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05497.us ; 2 uses
  %13 = load i32, ptr %12, align 4, !tbaa !3      ; 2 uses
  %14 = getelementptr i8, ptr %2, i64 %.05497.us
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load i8, ptr %15, align 1, !tbaa !15
  %17 = icmp eq i8 %i.cj, %16
  %18 = tail call i32 @llvm.umin.i32(i32 %13, i32 %11)
  %19 = add i32 %18, 1
  %storemerge119 = select i1 %17, i32 %storemerge116, i32 %19 ; 2 uses
  store i32 %storemerge119, ptr %12, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05497.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = getelementptr i8, ptr %2, i64 %.05497.us
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !15
  %20 = icmp eq i8 %i.cj, %i.co
  %21 = tail call i32 @llvm.umin.i32(i32 %i.cm, i32 %storemerge119)
  %22 = add i32 %21, 1
  %storemerge119.1 = select i1 %20, i32 %13, i32 %22 ; 3 uses
  store i32 %storemerge119.1, ptr %i.cl, align 4, !tbaa !3
  %23 = add nuw i64 %.05497.us, 2                 ; 2 uses
  %niter186.next.1 = add nuw i64 %niter186, 2     ; 2 uses
  %i.cp = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %i.cp, label %._crit_edge.split.us.unr-lcssa, label %bb.f, !llvm.loop !24

._crit_edge.split.us.unr-lcssa:                   ; preds = %bb.f
  br i1 %lcmp.mod183.not, label %._crit_edge.split.us, label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph95.us108.new
  %.epil.init.a = phi i32 [ %8, %.lr.ph95.us108.new ], [ %storemerge119.1, %._crit_edge.split.us.unr-lcssa ]
  %.05494.us.epil.init = phi i64 [ 1, %.lr.ph95.us108.new ], [ %23, %._crit_edge.split.us.unr-lcssa ] ; 2 uses
  %.05593.us.epil.init = phi i32 [ %10, %.lr.ph95.us108.new ], [ %i.cm, %._crit_edge.split.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05494.us.epil.init ; 2 uses
  %24 = load i32, ptr %i.cq, align 4, !tbaa !3
  %25 = getelementptr i8, ptr %2, i64 %.05494.us.epil.init
  %i.cr = getelementptr i8, ptr %25, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15
  %i.ct = icmp eq i8 %i.cj, %i.cs
  %26 = tail call i32 @llvm.umin.i32(i32 %24, i32 %.epil.init.a)
  %27 = add i32 %26, 1
  %storemerge119.epil = select i1 %i.ct, i32 %.05593.us.epil.init, i32 %27
  store i32 %storemerge119.epil, ptr %i.cq, align 4, !tbaa !3
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.unr-lcssa, %.epil.preheader.a
  %i.cu = add nuw i64 %.05494.us, 1               ; 2 uses
  %exitcond131 = icmp eq i64 %i.cu, %umax
  br i1 %exitcond131, label %.thread, label %.lr.ph95.us108.new, !llvm.loop !23

.lr.ph:                                           ; preds = %.lr.ph.preheader176, %.lr.ph
  %i.cv = phi i64 [ %i.cy, %.lr.ph ], [ %.ph, %.lr.ph.preheader176 ]
  %.05990 = phi i32 [ %i.cx, %.lr.ph ], [ %.05990.ph, %.lr.ph.preheader176 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.060156, i64 %i.cv
  store i32 %.05990, ptr %i.cw, align 4, !tbaa !3
  %i.cx = add i32 %.05990, 1                      ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %.not = icmp ult i64 %3, %i.cy
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !25

bb.g:                                             ; preds = %bb.i
  %i.cz = add i64 %.05897, 1                      ; 2 uses
  %.not65 = icmp ugt i64 %i.cz, %1
  br i1 %.not65, label %.thread, label %.lr.ph95, !llvm.loop !23

.lr.ph95:                                         ; preds = %.lr.ph95.us108.preheader, %bb.g
  %.05897 = phi i64 [ %i.cz, %bb.g ], [ 1, %.lr.ph95.us108.preheader ] ; 3 uses
  %i.da = trunc i64 %.05897 to i32                ; 5 uses
  store i32 %i.da, ptr %.060157, align 4, !tbaa !3
  %i.db = add i64 %.05897, -1                     ; 2 uses
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %i.db
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !15  ; 3 uses
  br i1 %i.ch, label %bb.h, label %bb.j

._crit_edge.split.a:                              ; preds = %bb.j
  br i1 %lcmp.mod.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.split.a, %.lr.ph95
  %i.df = phi i32 [ %i.da, %.lr.ph95 ], [ %storemerge.1, %._crit_edge.split.a ]
  %.05494 = phi i64 [ 1, %.lr.ph95 ], [ %48, %._crit_edge.split.a ] ; 2 uses
  %.05593 = phi i32 [ %i.dc, %.lr.ph95 ], [ %42, %._crit_edge.split.a ]
  %.08692 = phi i32 [ %i.da, %.lr.ph95 ], [ %.sroa.speculated76.a, %._crit_edge.split.a ]
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05494 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %28 = getelementptr i8, ptr %2, i64 %.05494
  %i.di = getelementptr i8, ptr %28, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = icmp eq i8 %i.de, %i.dj
  %29 = tail call i32 @llvm.umin.i32(i32 %i.dh, i32 %i.df)
  %30 = add i32 %29, 1
  %storemerge.epil = select i1 %i.dk, i32 %.05593, i32 %30 ; 2 uses
  store i32 %storemerge.epil, ptr %i.dg, align 4, !tbaa !3
  %.sroa.speculated76.epil = tail call i32 @llvm.umin.i32(i32 %storemerge.epil, i32 %.08692)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.split.a, %bb.h
  %.sroa.speculated76.lcssa = phi i32 [ %.sroa.speculated76.a, %._crit_edge.split.a ], [ %.sroa.speculated76.epil, %bb.h ]
  %.not118 = icmp ugt i32 %.sroa.speculated76.lcssa, %5
  br i1 %.not118, label %.loopexit, label %bb.g

bb.j:                                             ; preds = %.lr.ph95, %bb.j
  %31 = phi i32 [ %storemerge.1, %bb.j ], [ %i.da, %.lr.ph95 ]
  %.05497 = phi i64 [ %48, %bb.j ], [ 1, %.lr.ph95 ] ; 5 uses
  %.05596 = phi i32 [ %42, %bb.j ], [ %i.dc, %.lr.ph95 ]
  %storemerge.a = phi i32 [ %.sroa.speculated76.a, %bb.j ], [ %i.da, %.lr.ph95 ]
  %niter = phi i64 [ %i.dl, %bb.j ], [ 0, %.lr.ph95 ]
  %32 = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05497 ; 2 uses
  %33 = load i32, ptr %32, align 4, !tbaa !3      ; 2 uses
  %34 = getelementptr i8, ptr %2, i64 %.05497
  %35 = getelementptr i8, ptr %34, i64 -1
  %36 = load i8, ptr %35, align 1, !tbaa !15
  %37 = icmp eq i8 %i.de, %36
  %38 = tail call i32 @llvm.umin.i32(i32 %33, i32 %31)
  %39 = add i32 %38, 1
  %storemerge = select i1 %37, i32 %.05596, i32 %39 ; 3 uses
  store i32 %storemerge, ptr %32, align 4, !tbaa !3
  %.sroa.speculated76 = tail call i32 @llvm.umin.i32(i32 %storemerge, i32 %storemerge.a)
  %40 = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %.05497
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 4 ; 2 uses
  %42 = load i32, ptr %41, align 4, !tbaa !3      ; 3 uses
  %43 = getelementptr i8, ptr %2, i64 %.05497
  %44 = load i8, ptr %43, align 1, !tbaa !15
  %45 = icmp eq i8 %i.de, %44
  %46 = tail call i32 @llvm.umin.i32(i32 %42, i32 %storemerge)
  %47 = add i32 %46, 1
  %storemerge.1 = select i1 %45, i32 %33, i32 %47 ; 4 uses
  store i32 %storemerge.1, ptr %41, align 4, !tbaa !3
  %.sroa.speculated76.a = tail call i32 @llvm.umin.i32(i32 %storemerge.1, i32 %.sroa.speculated76) ; 3 uses
  %48 = add nuw i64 %.05497, 2                    ; 2 uses
  %i.dl = add nuw i64 %niter, 2                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %unroll_iter
  br i1 %exitcond.not, label %._crit_edge.split.a, label %bb.j, !llvm.loop !24

.thread:                                          ; preds = %bb.g, %._crit_edge.split.us, %bb.d, %._crit_edge.split.us.us.us, %..thread_crit_edge.split.us, %.preheader
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.060157, i64 %3
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %._crit_edge.split.us.us, %.loopexit.split.us, %.thread
  %.3 = phi i32 [ %i.dn, %.thread ], [ %i.v, %.loopexit.split.us ], [ %i.v, %._crit_edge.split.us.us ], [ %i.v, %bb.i ]
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %1, align 1, !tbaa !15
  %i.l = sext i8 %i.k to i32
  %i.m = tail call noundef ptr @memchr(ptr noundef %i.f, i32 noundef %i.l, i64 noundef %i.g) #17 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = sub i64 %i.o, %i.p
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.r = sub i64 %i.g, %2
  %i.s = getelementptr i8, ptr %i.f, i64 %i.r
end_hunk_0
