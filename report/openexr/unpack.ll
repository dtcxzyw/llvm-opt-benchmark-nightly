inline.NumInlined: 139
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@generic_unpack:bb.a
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bi ]
  %.0145.val.epil = load i32, ptr %.0145214.epil, align 1
  store i32 %.0145.val.epil, ptr %.9213.epil, align 4, !tbaa !33
  %i.kh = getelementptr inbounds nuw i8, ptr %.0145214.epil, i64 4
  %i.ki = getelementptr inbounds i8, ptr %.9213.epil, i64 %i.hb
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.bi, !llvm.loop !125

.loopexit:                                        ; preds = %.loopexit.loopexit321.unr-lcssa, %bb.bi, %.loopexit.loopexit320.unr-lcssa, %bb.bh, %uint_to_half.exit, %float_to_uint_int.exit.epil, %.loopexit.loopexit318.unr-lcssa, %.loopexit.loopexit317.unr-lcssa, %bb.bf, %float_to_half_int.exit, %half_to_uint.exit, %half_to_float.exit, %.loopexit.loopexit.unr-lcssa, %bb.be, %.preheader209, %.preheader207, %.preheader205, %.preheader203, %.preheader201, %.preheader199, %.preheader197, %.preheader195, %.preheader
  %i.kj = sext i32 %i.ac to i64
  %i.kk = sext i8 %i.ae to i64
  %i.kl = mul nsw i64 %i.kk, %i.kj
  %i.km = getelementptr inbounds i8, ptr %.1150249, i64 %i.kl
  %.pre279 = load i16, ptr %i.k, align 8, !tbaa !21
  br label %bb.bj

bb.bj:                                            ; preds = %bb.f, %bb.i, %.loopexit, %bb.d
  %i.kn = phi i16 [ %i.x, %bb.i ], [ %i.x, %bb.f ], [ %i.x, %bb.d ], [ %.pre279, %.loopexit ] ; 4 uses
  %.2151 = phi ptr [ %i.ba, %bb.i ], [ %i.ap, %bb.f ], [ %.1150249, %bb.d ], [ %i.km, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ko = sext i16 %i.kn to i64
  %i.kp = icmp slt i64 %indvars.iv.next, %i.ko
  br i1 %i.kp, label %bb.c, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.bj, %bb.b
  %i.kq = phi i16 [ %i.n, %bb.b ], [ %i.kn, %bb.bj ]
  %i.kr = phi i16 [ %i.o, %bb.b ], [ %i.kn, %bb.bj ]
  %.1150.lcssa = phi ptr [ %.0149254, %bb.b ], [ %.2151, %bb.bj ]
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count
  br i1 %exitcond278.not, label %.thread191, label %bb.b, !llvm.loop !127

.thread191:                                       ; preds = %._crit_edge, %bb.aq, %bb.l, %bb.aa, %bb.k, %bb.a
  %spec.select = phi i32 [ 3, %bb.aq ], [ 0, %bb.a ], [ 3, %bb.k ], [ 3, %bb.aa ], [ 3, %bb.l ], [ 0, %._crit_edge ]
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_4chan_interleave(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25   ; 3 uses
  %i.l = sext i32 %i.d to i64                     ; 4 uses
  %i.m = icmp slt i32 %i.k, %i.i
  br i1 %i.m, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.n = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39
  %i.q = icmp sgt i32 %i.d, 0
  %i.r = sext i32 %i.p to i64
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = sext i32 %i.k to i64
  %i.x = mul i64 %i.n, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp eq i32 %i.d, 1
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge46.split:                              ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03743 = phi i32 [ %i.au, %._crit_edge ], [ %i.k, %.lr.ph.preheader ]
  %.03842 = phi ptr [ %i.at, %._crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %.03941 = phi ptr [ %i.as, %._crit_edge ], [ %i.y, %.lr.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %i.l ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.l ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.l ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %index
  %wide.load = load <2 x i16>, ptr %i.ac, align 2, !tbaa !43
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index
  %wide.load51 = load <2 x i16>, ptr %i.ad, align 2, !tbaa !43
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index
  %wide.load52 = load <2 x i16>, ptr %i.ae, align 2, !tbaa !43
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index
  %wide.load53 = load <2 x i16>, ptr %i.af, align 2, !tbaa !43
  %i.ag = zext <2 x i16> %wide.load53 to <2 x i64>
  %i.ah = shl nuw <2 x i64> %i.ag, splat (i64 48)
  %i.ai = zext <2 x i16> %wide.load52 to <2 x i64>
  %i.aj = shl nuw nsw <2 x i64> %i.ai, splat (i64 32)
  %i.ak = zext <2 x i16> %wide.load51 to <2 x i64>
  %i.al = shl nuw nsw <2 x i64> %i.ak, splat (i64 16)
  %i.am = zext <2 x i16> %wide.load to <2 x i64>
  %i.an = or disjoint <2 x i64> %i.al, %i.am
  %i.ao = or disjoint <2 x i64> %i.an, %i.aj
  %i.ap = or disjoint <2 x i64> %i.ao, %i.ah
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.03842, i64 %index
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !128
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.as = getelementptr inbounds nuw i8, ptr %.03941, i64 %i.n
  %i.at = getelementptr inbounds i8, ptr %.03842, i64 %i.r
  %i.au = add nsw i32 %.03743, 1                  ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.i
  br i1 %i.av, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !130

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %indvars.iv
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !43
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !43
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !43
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !43
  %.sroa.6.0.insert.ext = zext i16 %i.bd to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.5.0.insert.ext = zext i16 %i.bb to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.4.0.insert.ext = zext i16 %i.az to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %i.ax to i64
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.6.0.insert.shift
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.03842, i64 %indvars.iv
  store i64 %.sroa.0.0.insert.insert, ptr %i.be, align 8, !tbaa !128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !131
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_3chan_interleave(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23   ; 2 uses
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25   ; 4 uses
  %i.l = sext i32 %i.d to i64                     ; 8 uses
  %i.m = icmp slt i32 %i.k, %i.i
  br i1 %i.m, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.n = mul nsw i64 %i.l, 6                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.q = icmp sgt i32 %i.d, 0
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 6 uses
  %i.w = sext i32 %i.k to i64                     ; 2 uses
  %i.x = mul i64 %i.n, %i.w
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 7 uses
  %i.z = xor i32 %i.h, -1
  %i.aa = add i32 %i.f, %i.z
  %i.ab = sub i32 %i.aa, %i.k
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = mul nsw i64 %i.r, %i.ac
  %i.ae = mul nuw nsw i64 %wide.trip.count, 6
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ae ; 3 uses
  %i.ag = mul nsw i64 %i.w, 6                     ; 5 uses
  %i.ah = add nsw i64 %i.ag, 4
  %i.ai = mul i64 %i.ah, %i.l
  %scevgep51 = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.aj = mul nuw nsw i64 %i.ac, 6                ; 3 uses
  %i.ak = add nsw i64 %i.ag, %i.aj
  %i.al = add nsw i64 %i.ak, 4
  %i.am = mul i64 %i.al, %i.l
  %i.an = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.am
  %scevgep52 = getelementptr i8, ptr %i.ao, i64 %i.an
  %i.ap = add nsw i64 %i.ag, 2
  %i.aq = mul i64 %i.ap, %i.l
  %scevgep53 = getelementptr i8, ptr %i.v, i64 %i.aq
  %i.ar = add nsw i64 %i.ag, %i.aj
  %i.as = add nsw i64 %i.ar, 2
  %i.at = mul i64 %i.as, %i.l
  %i.au = getelementptr i8, ptr %i.v, i64 %i.at
  %scevgep54 = getelementptr i8, ptr %i.au, i64 %i.an
  %1 = add nsw i64 %i.ag, %i.aj
  %i.av = mul i64 %1, %i.l
  %i.aw = getelementptr i8, ptr %i.v, i64 %i.av
  %scevgep55 = getelementptr i8, ptr %i.aw, i64 %i.an
  %min.iters.check = icmp ult i32 %i.d, 16
  %bound0 = icmp ult ptr %i.t, %scevgep52
  %bound1 = icmp ult ptr %scevgep51, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %i.t, %scevgep54
  %bound157 = icmp ult ptr %scevgep53, %scevgep
  %found.conflict58 = and i1 %bound056, %bound157
  %stride.check59 = icmp slt i32 %i.p, 0
  %i.ax = or i1 %found.conflict58, %stride.check59
  %conflict.rdx = or i1 %found.conflict, %i.ax
  %bound060 = icmp ult ptr %i.t, %scevgep55
  %bound161 = icmp ult ptr %i.y, %scevgep
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx64 = or i1 %found.conflict62, %conflict.rdx
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.ay = mul nuw nsw i64 %n.vec, 6
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.az = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge46.split:                              ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03643 = phi i32 [ %i.bw, %._crit_edge ], [ %i.k, %.lr.ph.preheader ]
  %.03742 = phi ptr [ %i.bv, %._crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 4 uses
  %.03841 = phi ptr [ %i.bu, %._crit_edge ], [ %i.y, %.lr.ph.preheader ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %i.l ; 5 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.l ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx64
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.bc = getelementptr i8, ptr %.03742, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.bd = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %.03742, i64 %i.bd
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %index
  %wide.load = load <8 x i16>, ptr %i.be, align 2, !tbaa !43, !alias.scope !132
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %index
  %wide.load65 = load <8 x i16>, ptr %i.bf, align 2, !tbaa !43, !alias.scope !135
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %index
  %wide.load66 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !43, !alias.scope !137
  %i.bh = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load65, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bi = shufflevector <8 x i16> %wide.load66, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.bh, <16 x i16> %i.bi, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !43, !alias.scope !139, !noalias !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  %.03539.ph = phi ptr [ %i.bc, %middle.block ], [ %.03742, %.lr.ph ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.ph
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !43
  store i16 %i.bl, ptr %.03539.ph, align 2, !tbaa !43
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.ph
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 2
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !43
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.ph
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 4
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 6
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.03539.unr = phi ptr [ %.03539.ph, %scalar.ph.preheader ], [ %i.bs, %scalar.ph.prol ]
  %i.bt = icmp eq i64 %indvars.iv.ph, %i.az
  br i1 %i.bt, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bu = getelementptr inbounds nuw i8, ptr %.03841, i64 %i.n
  %i.bv = getelementptr inbounds i8, ptr %.03742, i64 %i.r
  %i.bw = add nsw i32 %.03643, 1                  ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %i.i
  br i1 %i.bx, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !143

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03539 = phi ptr [ %i.cp, %scalar.ph ], [ %.03539.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !43
  store i16 %i.bz, ptr %.03539, align 2, !tbaa !43
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %.03539, i64 2
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !43
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %.03539, i64 4
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %.03539, i64 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.next
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !43
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !43
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !43
  %i.cl = getelementptr inbounds nuw i8, ptr %.03539, i64 8
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !43
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %.03539, i64 10
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %.03539, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !144
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_4chan_interleave_rev(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25   ; 3 uses
  %i.l = sext i32 %i.d to i64                     ; 4 uses
  %i.m = icmp slt i32 %i.k, %i.i
  br i1 %i.m, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.n = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39
  %i.q = icmp sgt i32 %i.d, 0
  %i.r = sext i32 %i.p to i64
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = sext i32 %i.k to i64
  %i.x = mul i64 %i.n, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp eq i32 %i.d, 1
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge46.split:                              ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03743 = phi i32 [ %i.au, %._crit_edge ], [ %i.k, %.lr.ph.preheader ]
  %.03842 = phi ptr [ %i.at, %._crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %.03941 = phi ptr [ %i.as, %._crit_edge ], [ %i.y, %.lr.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %i.l ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.l ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.l ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %index
  %wide.load = load <2 x i16>, ptr %i.ac, align 2, !tbaa !43
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index
  %wide.load51 = load <2 x i16>, ptr %i.ad, align 2, !tbaa !43
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index
  %wide.load52 = load <2 x i16>, ptr %i.ae, align 2, !tbaa !43
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index
  %wide.load53 = load <2 x i16>, ptr %i.af, align 2, !tbaa !43
  %i.ag = zext <2 x i16> %wide.load to <2 x i64>
  %i.ah = shl nuw <2 x i64> %i.ag, splat (i64 48)
  %i.ai = zext <2 x i16> %wide.load51 to <2 x i64>
  %i.aj = shl nuw nsw <2 x i64> %i.ai, splat (i64 32)
  %i.ak = or disjoint <2 x i64> %i.aj, %i.ah
  %i.al = zext <2 x i16> %wide.load52 to <2 x i64>
  %i.am = shl nuw nsw <2 x i64> %i.al, splat (i64 16)
  %i.an = or disjoint <2 x i64> %i.ak, %i.am
  %i.ao = zext <2 x i16> %wide.load53 to <2 x i64>
  %i.ap = or disjoint <2 x i64> %i.an, %i.ao
end_hunk_0
