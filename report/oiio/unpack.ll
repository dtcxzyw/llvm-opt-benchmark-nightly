Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/unpack?download=true
inline.NumInlined: 122
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@generic_unpack:bb.a
  %.8216.epil = phi ptr [ %.8216.epil.init, %.epil.preheader324 ], [ %i.kf, %bb.bh ] ; 2 uses
  %epil.iter326 = phi i32 [ 0, %.epil.preheader324 ], [ %epil.iter326.next, %bb.bh ]
  %.0148.val.epil = load i32, ptr %.0148217.epil, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %.0148217.epil, i64 4
  %i.ke = uitofp i32 %.0148.val.epil to float
  store float %i.ke, ptr %.8216.epil, align 4, !tbaa !39
  %i.kf = getelementptr inbounds i8, ptr %.8216.epil, i64 %i.he
  %epil.iter326.next = add i32 %epil.iter326, 1   ; 2 uses
  %epil.iter326.cmp.not = icmp eq i32 %epil.iter326.next, %xtraiter325
  br i1 %epil.iter326.cmp.not, label %.loopexit, label %bb.bh, !llvm.loop !117

.loopexit.loopexit321.unr-lcssa:                  ; preds = %bb.bd
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit321.unr-lcssa, %.lr.ph
  %.0145214.epil.init = phi ptr [ %.1150249, %.lr.ph ], [ %i.jt, %.loopexit.loopexit321.unr-lcssa ]
  %.9213.epil.init = phi ptr [ %.0155, %.lr.ph ], [ %i.ju, %.loopexit.loopexit321.unr-lcssa ]
  %lcmp.mod323 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod323)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader
  %.0145214.epil = phi ptr [ %.0145214.epil.init, %.epil.preheader ], [ %i.kg, %bb.bi ] ; 2 uses
  %.9213.epil = phi ptr [ %.9213.epil.init, %.epil.preheader ], [ %i.kh, %bb.bi ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bi ]
  %.0145.val.epil = load i32, ptr %.0145214.epil, align 1
  store i32 %.0145.val.epil, ptr %.9213.epil, align 4, !tbaa !6
  %i.kg = getelementptr inbounds nuw i8, ptr %.0145214.epil, i64 4
  %i.kh = getelementptr inbounds i8, ptr %.9213.epil, i64 %i.ha
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.bi, !llvm.loop !118

.loopexit:                                        ; preds = %.loopexit.loopexit321.unr-lcssa, %bb.bi, %.loopexit.loopexit320.unr-lcssa, %bb.bh, %uint_to_half.exit, %float_to_uint_int.exit.epil, %.loopexit.loopexit318.unr-lcssa, %.loopexit.loopexit317.unr-lcssa, %bb.bf, %float_to_half_int.exit, %half_to_uint.exit, %half_to_float.exit, %.loopexit.loopexit.unr-lcssa, %bb.be, %.preheader209, %.preheader207, %.preheader205, %.preheader203, %.preheader201, %.preheader199, %.preheader197, %.preheader195, %.preheader
  %i.ki = mul nsw i32 %i.ac, %i.af
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %.1150249, i64 %i.kj
  %.pre279 = load i16, ptr %i.k, align 8, !tbaa !16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.f, %bb.i, %.loopexit, %bb.d
  %i.kl = phi i16 [ %i.x, %bb.i ], [ %i.x, %bb.f ], [ %i.x, %bb.d ], [ %.pre279, %.loopexit ] ; 4 uses
  %.2151 = phi ptr [ %i.az, %bb.i ], [ %i.ap, %bb.f ], [ %.1150249, %bb.d ], [ %i.kk, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.km = sext i16 %i.kl to i64
  %i.kn = icmp slt i64 %indvars.iv.next, %i.km
  br i1 %i.kn, label %bb.c, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.bj, %bb.b
  %i.ko = phi i16 [ %i.n, %bb.b ], [ %i.kl, %bb.bj ]
  %i.kp = phi i16 [ %i.o, %bb.b ], [ %i.kl, %bb.bj ]
  %.1150.lcssa = phi ptr [ %.0149254, %bb.b ], [ %.2151, %bb.bj ]
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count
  br i1 %exitcond278.not, label %.thread191, label %bb.b, !llvm.loop !120

.thread191:                                       ; preds = %._crit_edge, %bb.aq, %bb.l, %bb.aa, %bb.k, %bb.a
  %spec.select = phi i32 [ 3, %bb.aq ], [ 0, %bb.a ], [ 3, %bb.k ], [ 3, %bb.aa ], [ 3, %bb.l ], [ 0, %._crit_edge ]
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_4chan_interleave(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = icmp slt i32 %i.k, %i.i
  br i1 %i.l, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.m = shl i32 %i.d, 3                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = sext i32 %i.d to i64                     ; 3 uses
  %i.q = sext i32 %i.m to i64
  %i.r = icmp sgt i32 %i.d, 0
  %i.s = sext i32 %i.o to i64
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = mul i32 %i.m, %i.k
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp eq i32 %i.d, 1
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge46.split:                              ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03743 = phi i32 [ %i.av, %._crit_edge ], [ %i.k, %.lr.ph.preheader ]
  %.03842 = phi ptr [ %i.au, %._crit_edge ], [ %i.u, %.lr.ph.preheader ] ; 3 uses
  %.03941 = phi ptr [ %i.at, %._crit_edge ], [ %i.z, %.lr.ph.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %i.p ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.p ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.p ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %index
  %wide.load = load <2 x i16>, ptr %i.ad, align 2, !tbaa !35
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index
  %wide.load51 = load <2 x i16>, ptr %i.ae, align 2, !tbaa !35
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index
  %wide.load52 = load <2 x i16>, ptr %i.af, align 2, !tbaa !35
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %index
  %wide.load53 = load <2 x i16>, ptr %i.ag, align 2, !tbaa !35
  %i.ah = zext <2 x i16> %wide.load53 to <2 x i64>
  %i.ai = shl nuw <2 x i64> %i.ah, splat (i64 48)
  %i.aj = zext <2 x i16> %wide.load52 to <2 x i64>
  %i.ak = shl nuw nsw <2 x i64> %i.aj, splat (i64 32)
  %i.al = zext <2 x i16> %wide.load51 to <2 x i64>
  %i.am = shl nuw nsw <2 x i64> %i.al, splat (i64 16)
  %i.an = zext <2 x i16> %wide.load to <2 x i64>
  %i.ao = or disjoint <2 x i64> %i.am, %i.an
  %i.ap = or disjoint <2 x i64> %i.ao, %i.ak
  %i.aq = or disjoint <2 x i64> %i.ap, %i.ai
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.03842, i64 %index
  store <2 x i64> %i.aq, ptr %i.ar, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.at = getelementptr inbounds nuw i8, ptr %.03941, i64 %i.q
  %i.au = getelementptr inbounds i8, ptr %.03842, i64 %i.s
  %i.av = add nsw i32 %.03743, 1                  ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.i
  br i1 %i.aw, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !124

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !35
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !35
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !35
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !35
  %.sroa.6.0.insert.ext = zext i16 %i.be to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.5.0.insert.ext = zext i16 %i.bc to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.4.0.insert.ext = zext i16 %i.ba to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %i.ay to i64
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.6.0.insert.shift
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.03842, i64 %indvars.iv
  store i64 %.sroa.0.0.insert.insert, ptr %i.bf, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !125
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_3chan_interleave(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20   ; 4 uses
  %i.l = icmp slt i32 %i.k, %i.i
  br i1 %i.l, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.m = mul i32 %i.d, 6                          ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 3 uses
  %i.p = sext i32 %i.d to i64                     ; 4 uses
  %i.q = sext i32 %i.m to i64                     ; 2 uses
  %i.r = icmp sgt i32 %i.d, 0
  %i.s = sext i32 %i.o to i64                     ; 2 uses
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 6 uses
  %i.x = mul i32 %i.m, %i.k
  %i.y = sext i32 %i.x to i64                     ; 6 uses
  %i.z = getelementptr i8, ptr %i.w, i64 %i.y     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 7 uses
  %i.aa = xor i32 %i.h, -1
  %i.ab = add i32 %i.f, %i.aa
  %i.ac = sub i32 %i.ab, %i.k
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nsw i64 %i.s, %i.ad
  %i.af = mul nuw nsw i64 %wide.trip.count, 6
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.af ; 2 uses
  %i.ah = shl nuw nsw i64 %i.p, 2                 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %scevgep51 = getelementptr i8, ptr %i.ai, i64 %i.y
  %i.aj = mul nsw i64 %i.q, %i.ad                 ; 3 uses
  %i.ak = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.al = getelementptr i8, ptr %i.w, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ah
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ak
  %scevgep52 = getelementptr i8, ptr %i.an, i64 %i.y
  %i.ao = shl nuw nsw i64 %i.p, 1                 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.w, i64 %i.ao
  %scevgep53 = getelementptr i8, ptr %i.ap, i64 %i.y
  %i.aq = getelementptr i8, ptr %i.w, i64 %i.aj
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ao
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ak
  %scevgep54 = getelementptr i8, ptr %i.as, i64 %i.y
  %i.at = getelementptr i8, ptr %i.w, i64 %i.aj
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ak
  %scevgep55 = getelementptr i8, ptr %i.au, i64 %i.y
  %1 = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> zeroinitializer
  %3 = insertelement <2 x ptr> poison, ptr %scevgep52, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %scevgep54, i64 1
  %5 = insertelement <2 x ptr> poison, ptr %scevgep51, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %scevgep53, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %10 = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %min.iters.check.a = icmp ult i32 %i.d, 16
  %11 = icmp ult <2 x ptr> %2, %4
  %12 = icmp ult <2 x ptr> %6, %8
  %13 = or <2 x i32> %9, %10
  %14 = and <2 x i1> %11, %12
  %15 = icmp slt <2 x i32> %13, zeroinitializer
  %16 = shufflevector <2 x i1> %15, <2 x i1> poison, <2 x i32> zeroinitializer
  %17 = or <2 x i1> %14, %16
  %18 = bitcast <2 x i1> %17 to i2
  %19 = icmp ne i2 %18, 0
  %bound062 = icmp ult ptr %i.u, %scevgep55
  %bound163 = icmp ult ptr %i.z, %scevgep
  %found.conflict64 = and i1 %bound062, %bound163
  %20 = or i32 %i.m, %i.o
  %21 = icmp slt i32 %20, 0
  %22 = or i1 %found.conflict64, %21
  %conflict.rdx67 = or i1 %19, %22
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.av = mul nuw nsw i64 %n.vec, 6
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aw = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge46.split:                              ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03643 = phi i32 [ %i.bt, %._crit_edge ], [ %i.k, %.lr.ph.preheader ]
  %.03742 = phi ptr [ %i.bs, %._crit_edge ], [ %i.u, %.lr.ph.preheader ] ; 4 uses
  %.03841 = phi ptr [ %i.br, %._crit_edge ], [ %i.z, %.lr.ph.preheader ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %i.p ; 5 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.p ; 4 uses
  %brmerge = select i1 %min.iters.check.a, i1 true, i1 %conflict.rdx67
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.az = getelementptr i8, ptr %.03742, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ba = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %.03742, i64 %i.ba
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bb, align 2, !tbaa !35, !alias.scope !134
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index
  %wide.load68 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !35, !alias.scope !135
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %index
  %wide.load69 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !35, !alias.scope !136
  %i.be = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load68, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = shufflevector <8 x i16> %wide.load69, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.be, <16 x i16> %i.bf, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !35, !alias.scope !137, !noalias !138
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  %.03539.ph = phi ptr [ %i.az, %middle.block ], [ %.03742, %.lr.ph ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.ph
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !35
  store i16 %i.bi, ptr %.03539.ph, align 2, !tbaa !35
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.ph
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 2
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !35
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.ph
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 4
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 6
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.03539.unr = phi ptr [ %.03539.ph, %scalar.ph.preheader ], [ %i.bp, %scalar.ph.prol ]
  %i.bq = icmp eq i64 %indvars.iv.ph, %i.aw
  br i1 %i.bq, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.br = getelementptr inbounds nuw i8, ptr %.03841, i64 %i.q
  %i.bs = getelementptr inbounds i8, ptr %.03742, i64 %i.s
  %i.bt = add nsw i32 %.03643, 1                  ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.i
  br i1 %i.bu, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !132

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03539 = phi ptr [ %i.cm, %scalar.ph ], [ %.03539.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !35
  store i16 %i.bw, ptr %.03539, align 2, !tbaa !35
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %.03539, i64 2
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !35
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %.03539, i64 4
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %.03539, i64 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.next
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !35
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !35
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %.03539, i64 8
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !35
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %.03539, i64 10
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %.03539, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !133
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_4chan_interleave_rev(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = icmp slt i32 %i.k, %i.i
  br i1 %i.l, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.m = shl i32 %i.d, 3                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = sext i32 %i.d to i64                     ; 3 uses
  %i.q = sext i32 %i.m to i64
  %i.r = icmp sgt i32 %i.d, 0
  %i.s = sext i32 %i.o to i64
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = mul i32 %i.m, %i.k
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp eq i32 %i.d, 1
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge46.split:                              ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03743 = phi i32 [ %i.av, %._crit_edge ], [ %i.k, %.lr.ph.preheader ]
  %.03842 = phi ptr [ %i.au, %._crit_edge ], [ %i.u, %.lr.ph.preheader ] ; 3 uses
  %.03941 = phi ptr [ %i.at, %._crit_edge ], [ %i.z, %.lr.ph.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %i.p ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.p ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.p ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %index
  %wide.load = load <2 x i16>, ptr %i.ad, align 2, !tbaa !35
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index
  %wide.load51 = load <2 x i16>, ptr %i.ae, align 2, !tbaa !35
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index
  %wide.load52 = load <2 x i16>, ptr %i.af, align 2, !tbaa !35
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %index
  %wide.load53 = load <2 x i16>, ptr %i.ag, align 2, !tbaa !35
  %i.ah = zext <2 x i16> %wide.load to <2 x i64>
  %i.ai = shl nuw <2 x i64> %i.ah, splat (i64 48)
  %i.aj = zext <2 x i16> %wide.load51 to <2 x i64>
  %i.ak = shl nuw nsw <2 x i64> %i.aj, splat (i64 32)
  %i.al = or disjoint <2 x i64> %i.ak, %i.ai
  %i.am = zext <2 x i16> %wide.load52 to <2 x i64>
  %i.an = shl nuw nsw <2 x i64> %i.am, splat (i64 16)
  %i.ao = or disjoint <2 x i64> %i.al, %i.an
  %i.ap = zext <2 x i16> %wide.load53 to <2 x i64>
  %i.aq = or disjoint <2 x i64> %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.03842, i64 %index
  store <2 x i64> %i.aq, ptr %i.ar, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.at = getelementptr inbounds nuw i8, ptr %.03941, i64 %i.q
  %i.au = getelementptr inbounds i8, ptr %.03842, i64 %i.s
  %i.av = add nsw i32 %.03743, 1                  ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.i
  br i1 %i.aw, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !140

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !35
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !35
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !35
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !35
  %.sroa.6.0.insert.ext = zext i16 %i.ay to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.5.0.insert.ext = zext i16 %i.ba to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.4.0.insert.ext = zext i16 %i.bc to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext i16 %i.be to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.03842, i64 %indvars.iv
  store i64 %.sroa.0.0.insert.insert, ptr %i.bf, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !141
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_3chan_interleave_rev(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20   ; 4 uses
  %i.l = icmp slt i32 %i.k, %i.i
  br i1 %i.l, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.m = mul i32 %i.d, 6                          ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31   ; 3 uses
  %i.p = sext i32 %i.d to i64                     ; 4 uses
  %i.q = sext i32 %i.m to i64                     ; 2 uses
  %i.r = icmp sgt i32 %i.d, 0
  %i.s = sext i32 %i.o to i64                     ; 2 uses
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 6 uses
  %i.x = mul i32 %i.m, %i.k
  %i.y = sext i32 %i.x to i64                     ; 6 uses
  %i.z = getelementptr i8, ptr %i.w, i64 %i.y     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 7 uses
  %i.aa = xor i32 %i.h, -1
  %i.ab = add i32 %i.f, %i.aa
  %i.ac = sub i32 %i.ab, %i.k
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nsw i64 %i.s, %i.ad
  %i.af = mul nuw nsw i64 %wide.trip.count, 6
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.af ; 2 uses
  %i.ah = mul nsw i64 %i.q, %i.ad                 ; 3 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ai
  %scevgep51 = getelementptr i8, ptr %i.ak, i64 %i.y
  %i.al = shl nuw nsw i64 %i.p, 1                 ; 2 uses
  %i.am = getelementptr i8, ptr %i.w, i64 %i.al
  %scevgep52 = getelementptr i8, ptr %i.am, i64 %i.y
  %i.an = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.ai
  %scevgep53 = getelementptr i8, ptr %i.ap, i64 %i.y
  %i.aq = shl nuw nsw i64 %i.p, 2                 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.w, i64 %i.aq
  %scevgep54 = getelementptr i8, ptr %i.ar, i64 %i.y
  %i.as = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.at = getelementptr i8, ptr %i.as, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ai
  %scevgep55 = getelementptr i8, ptr %i.au, i64 %i.y
  %1 = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> zeroinitializer
  %3 = insertelement <2 x ptr> poison, ptr %scevgep51, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %scevgep53, i64 1
  %5 = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %scevgep52, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %10 = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %min.iters.check.a = icmp ult i32 %i.d, 16
  %11 = icmp ult <2 x ptr> %2, %4
  %12 = icmp ult <2 x ptr> %6, %8
  %13 = or <2 x i32> %9, %10
  %14 = and <2 x i1> %11, %12
  %15 = icmp slt <2 x i32> %13, zeroinitializer
  %16 = shufflevector <2 x i1> %15, <2 x i1> poison, <2 x i32> zeroinitializer
  %17 = or <2 x i1> %14, %16
  %18 = bitcast <2 x i1> %17 to i2
  %19 = icmp ne i2 %18, 0
  %bound062 = icmp ult ptr %i.u, %scevgep55
  %bound163 = icmp ult ptr %scevgep54, %scevgep
  %found.conflict64 = and i1 %bound062, %bound163
  %20 = or i32 %i.m, %i.o
  %21 = icmp slt i32 %20, 0
  %22 = or i1 %found.conflict64, %21
  %conflict.rdx67 = or i1 %19, %22
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.av = mul nuw nsw i64 %n.vec, 6
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aw = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge46.split:                              ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03643 = phi i32 [ %i.bt, %._crit_edge ], [ %i.k, %.lr.ph.preheader ]
  %.03742 = phi ptr [ %i.bs, %._crit_edge ], [ %i.u, %.lr.ph.preheader ] ; 4 uses
  %.03841 = phi ptr [ %i.br, %._crit_edge ], [ %i.z, %.lr.ph.preheader ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %i.p ; 5 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.p ; 4 uses
  %brmerge = select i1 %min.iters.check.a, i1 true, i1 %conflict.rdx67
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.az = getelementptr i8, ptr %.03742, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ba = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %.03742, i64 %i.ba
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bb, align 2, !tbaa !35, !alias.scope !150
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index
  %wide.load68 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !35, !alias.scope !151
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %index
  %wide.load69 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !35, !alias.scope !152
  %i.be = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load68, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = shufflevector <8 x i16> %wide.load69, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.be, <16 x i16> %i.bf, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !35, !alias.scope !153, !noalias !154
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  %.03539.ph = phi ptr [ %i.az, %middle.block ], [ %.03742, %.lr.ph ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.ph
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !35
  store i16 %i.bi, ptr %.03539.ph, align 2, !tbaa !35
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.ph
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 2
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !35
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.ph
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 4
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 6
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.03539.unr = phi ptr [ %.03539.ph, %scalar.ph.preheader ], [ %i.bp, %scalar.ph.prol ]
  %i.bq = icmp eq i64 %indvars.iv.ph, %i.aw
  br i1 %i.bq, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.br = getelementptr inbounds nuw i8, ptr %.03841, i64 %i.q
  %i.bs = getelementptr inbounds i8, ptr %.03742, i64 %i.s
  %i.bt = add nsw i32 %.03643, 1                  ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.i
  br i1 %i.bu, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !148

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03539 = phi ptr [ %i.cm, %scalar.ph ], [ %.03539.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !35
  store i16 %i.bw, ptr %.03539, align 2, !tbaa !35
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %.03539, i64 2
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !35
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %.03539, i64 4
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %.03539, i64 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !35
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !35
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %.03539, i64 8
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !35
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.next
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %.03539, i64 10
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %.03539, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !149
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_4chan_planar(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20   ; 3 uses
  %i.h = icmp slt i32 %i.g, %i.e
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41   ; 2 uses
  %i.o = shl i32 %i.n, 3                          ; 2 uses
  %i.p = mul i32 %i.o, %i.g
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 180
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !31
  %i.ai = sext i32 %i.n to i64                    ; 4 uses
  %i.aj = sext i32 %i.o to i64
  %i.ak = shl nsw i64 %i.ai, 1                    ; 4 uses
  %i.al = sext i32 %i.ah to i64
  %i.am = sext i32 %i.af to i64
  %i.an = sext i32 %i.ad to i64
  %i.ao = sext i32 %i.ab to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.057 = phi i32 [ %i.g, %.lr.ph ], [ %i.ax, %bb.b ]
  %.04756 = phi ptr [ %i.t, %.lr.ph ], [ %i.aw, %bb.b ] ; 2 uses
  %.04855 = phi ptr [ %i.v, %.lr.ph ], [ %i.av, %bb.b ] ; 2 uses
  %.04954 = phi ptr [ %i.x, %.lr.ph ], [ %i.au, %bb.b ] ; 2 uses
  %.05053 = phi ptr [ %i.z, %.lr.ph ], [ %i.at, %bb.b ] ; 2 uses
  %.05152 = phi ptr [ %i.r, %.lr.ph ], [ %i.as, %bb.b ] ; 3 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %.05152, i64 %i.ai ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.ai ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ai
  %i.as = getelementptr inbounds i8, ptr %.05152, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05053, ptr align 2 %.05152, i64 %i.ak, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04954, ptr align 2 %i.ap, i64 %i.ak, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04855, ptr align 2 %i.aq, i64 %i.ak, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04756, ptr align 2 %i.ar, i64 %i.ak, i1 false)
  %i.at = getelementptr inbounds i8, ptr %.05053, i64 %i.al
  %i.au = getelementptr inbounds i8, ptr %.04954, i64 %i.am
  %i.av = getelementptr inbounds i8, ptr %.04855, i64 %i.an
  %i.aw = getelementptr inbounds i8, ptr %.04756, i64 %i.ao
  %i.ax = add nsw i32 %.057, 1                    ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.e
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !155
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_3chan_planar(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 3 uses
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20   ; 6 uses
  %i.h = icmp slt i32 %i.g, %i.e
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41   ; 2 uses
  %i.o = mul i32 %i.n, 6                          ; 2 uses
  %i.p = mul i32 %i.o, %i.g
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !7    ; 3 uses
end_hunk_0
