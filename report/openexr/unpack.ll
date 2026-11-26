Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/unpack?download=true
inline.NumInlined: 139
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@generic_unpack:bb.a
  %.9213.epil.init = phi ptr [ %.0155, %.lr.ph ], [ %i.jv, %.loopexit.loopexit321.unr-lcssa ]
  %lcmp.mod323 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod323)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader
  %.0145214.epil = phi ptr [ %.0145214.epil.init, %.epil.preheader ], [ %i.kh, %bb.bi ] ; 2 uses
  %.9213.epil = phi ptr [ %.9213.epil.init, %.epil.preheader ], [ %i.ki, %bb.bi ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bi ]
  %.0145.val.epil = load i32, ptr %.0145214.epil, align 1
  store i32 %.0145.val.epil, ptr %.9213.epil, align 4, !tbaa !30
  %i.kh = getelementptr inbounds nuw i8, ptr %.0145214.epil, i64 4
  %i.ki = getelementptr inbounds i8, ptr %.9213.epil, i64 %i.hb
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.bi, !llvm.loop !124

.loopexit:                                        ; preds = %.loopexit.loopexit321.unr-lcssa, %bb.bi, %.loopexit.loopexit320.unr-lcssa, %bb.bh, %uint_to_half.exit, %float_to_uint_int.exit.epil, %.loopexit.loopexit318.unr-lcssa, %.loopexit.loopexit317.unr-lcssa, %bb.bf, %float_to_half_int.exit, %half_to_uint.exit, %half_to_float.exit, %.loopexit.loopexit.unr-lcssa, %bb.be, %.preheader209, %.preheader207, %.preheader205, %.preheader203, %.preheader201, %.preheader199, %.preheader197, %.preheader195, %.preheader
  %i.kj = sext i32 %i.ac to i64
  %i.kk = sext i8 %i.ae to i64
  %i.kl = mul nsw i64 %i.kk, %i.kj
  %i.km = getelementptr inbounds i8, ptr %.1150249, i64 %i.kl
  %.pre279 = load i16, ptr %i.k, align 8, !tbaa !18
  br label %bb.bj

bb.bj:                                            ; preds = %bb.f, %bb.i, %.loopexit, %bb.d
  %i.kn = phi i16 [ %i.x, %bb.i ], [ %i.x, %bb.f ], [ %i.x, %bb.d ], [ %.pre279, %.loopexit ] ; 4 uses
  %.2151 = phi ptr [ %i.ba, %bb.i ], [ %i.ap, %bb.f ], [ %.1150249, %bb.d ], [ %i.km, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ko = sext i16 %i.kn to i64
  %i.kp = icmp slt i64 %indvars.iv.next, %i.ko
  br i1 %i.kp, label %bb.c, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.bj, %bb.b
  %i.kq = phi i16 [ %i.n, %bb.b ], [ %i.kn, %bb.bj ]
  %i.kr = phi i16 [ %i.o, %bb.b ], [ %i.kn, %bb.bj ]
  %.1150.lcssa = phi ptr [ %.0149254, %bb.b ], [ %.2151, %bb.bj ]
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count
  br i1 %exitcond278.not, label %.thread191, label %bb.b, !llvm.loop !126

.thread191:                                       ; preds = %._crit_edge, %bb.aq, %bb.l, %bb.aa, %bb.k, %bb.a
  %spec.select = phi i32 [ 3, %bb.aq ], [ 0, %bb.a ], [ 3, %bb.k ], [ 3, %bb.aa ], [ 3, %bb.l ], [ 0, %._crit_edge ]
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_4chan_interleave(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  %i.l = sext i32 %i.d to i64                     ; 4 uses
  %i.m = icmp slt i32 %i.k, %i.i
  br i1 %i.m, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.n = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = icmp sgt i32 %i.d, 0
  %i.r = sext i32 %i.p to i64
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
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
  %wide.load = load <2 x i16>, ptr %i.ac, align 2, !tbaa !38
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index
  %wide.load51 = load <2 x i16>, ptr %i.ad, align 2, !tbaa !38
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index
  %wide.load52 = load <2 x i16>, ptr %i.ae, align 2, !tbaa !38
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index
  %wide.load53 = load <2 x i16>, ptr %i.af, align 2, !tbaa !38
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
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !46
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
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !38
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !38
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !38
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !38
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
  store i64 %.sroa.0.0.insert.insert, ptr %i.be, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !131
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_3chan_interleave(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22   ; 4 uses
  %i.l = sext i32 %i.d to i64                     ; 8 uses
  %i.m = icmp slt i32 %i.k, %i.i
  br i1 %i.m, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.n = mul nsw i64 %i.l, 6                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 2 uses
  %i.q = icmp sgt i32 %i.d, 0
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 6 uses
  %i.w = sext i32 %i.k to i64                     ; 2 uses
  %i.x = mul i64 %i.n, %i.w
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 7 uses
  %i.z = mul nsw i64 %i.w, 6                      ; 5 uses
  %i.aa = xor i32 %i.h, -1
  %i.ab = add i32 %i.f, %i.aa
  %i.ac = sub i32 %i.ab, %i.k
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 6                ; 3 uses
  %1 = add nsw i64 %i.z, %i.ae
  %i.af = add nsw i64 %1, 4
  %i.ag = mul i64 %i.af, %i.l
  %i.ah = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.ah
  %i.aj = add nsw i64 %i.z, 4
  %i.ak = mul i64 %i.aj, %i.l
  %i.al = getelementptr i8, ptr %i.v, i64 %i.ak
  %2 = add nsw i64 %i.z, %i.ae
  %i.am = add nsw i64 %2, 2
  %i.an = mul i64 %i.am, %i.l
  %scevgep64.a = getelementptr i8, ptr %i.v, i64 %i.an
  %scevgep64 = getelementptr i8, ptr %scevgep64.a, i64 %i.ah
  %i.ao = add nsw i64 %i.z, 2
  %i.ap = mul i64 %i.ao, %i.l
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ap
  %3 = add nsw i64 %i.z, %i.ae
  %4 = mul i64 %3, %i.l
  %5 = getelementptr i8, ptr %i.v, i64 %4
  %scevgep66 = getelementptr i8, ptr %5, i64 %i.ah
  %i.ar = mul nsw i64 %i.r, %i.ad
  %i.as = mul nuw nsw i64 %wide.trip.count, 6
  %i.at = getelementptr i8, ptr %i.t, i64 %i.ar
  %scevgep67 = getelementptr i8, ptr %i.at, i64 %i.as ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 16
  %bound0 = icmp ult ptr %i.t, %scevgep66
  %bound1 = icmp ult ptr %i.y, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.p, 0
  %i.au = or i1 %found.conflict, %stride.check
  %bound068 = icmp ult ptr %i.t, %scevgep64
  %bound169 = icmp ult ptr %i.aq, %scevgep67
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %i.au, %found.conflict70
  %bound071 = icmp ult ptr %i.t, %scevgep
  %bound172 = icmp ult ptr %i.al, %scevgep67
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx, %found.conflict73
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
  %.03742 = phi ptr [ %i.bs, %._crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 4 uses
  %.03841 = phi ptr [ %i.br, %._crit_edge ], [ %i.y, %.lr.ph.preheader ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %i.l ; 5 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.l ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx74
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.az = getelementptr i8, ptr %.03742, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ba = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %.03742, i64 %i.ba
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bb, align 2, !tbaa !38, !alias.scope !140
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index
  %wide.load75 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !38, !alias.scope !141
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %index
  %wide.load76 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !38, !alias.scope !142
  %i.be = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load75, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = shufflevector <8 x i16> %wide.load76, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.be, <16 x i16> %i.bf, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !38, !alias.scope !143, !noalias !144
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  %.03539.ph = phi ptr [ %i.az, %middle.block ], [ %.03742, %.lr.ph ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.ph
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !38
  store i16 %i.bi, ptr %.03539.ph, align 2, !tbaa !38
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.ph
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 2
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !38
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.ph
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 4
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 6
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.03539.unr = phi ptr [ %.03539.ph, %scalar.ph.preheader ], [ %i.bp, %scalar.ph.prol ]
  %i.bq = icmp eq i64 %indvars.iv.ph, %i.aw
  br i1 %i.bq, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.br = getelementptr inbounds nuw i8, ptr %.03841, i64 %i.n
  %i.bs = getelementptr inbounds i8, ptr %.03742, i64 %i.r
  %i.bt = add nsw i32 %.03643, 1                  ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.i
  br i1 %i.bu, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !138

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03539 = phi ptr [ %i.cm, %scalar.ph ], [ %.03539.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !38
  store i16 %i.bw, ptr %.03539, align 2, !tbaa !38
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %.03539, i64 2
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !38
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %.03539, i64 4
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %.03539, i64 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.next
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !38
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !38
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !38
  %i.ci = getelementptr inbounds nuw i8, ptr %.03539, i64 8
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !38
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %.03539, i64 10
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %.03539, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !139
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_4chan_interleave_rev(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  %i.l = sext i32 %i.d to i64                     ; 4 uses
  %i.m = icmp slt i32 %i.k, %i.i
  br i1 %i.m, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.n = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = icmp sgt i32 %i.d, 0
  %i.r = sext i32 %i.p to i64
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
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
  %wide.load = load <2 x i16>, ptr %i.ac, align 2, !tbaa !38
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %index
  %wide.load51 = load <2 x i16>, ptr %i.ad, align 2, !tbaa !38
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index
  %wide.load52 = load <2 x i16>, ptr %i.ae, align 2, !tbaa !38
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index
  %wide.load53 = load <2 x i16>, ptr %i.af, align 2, !tbaa !38
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
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.03842, i64 %index
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !145

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
  br i1 %i.av, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !146

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.03941, i64 %indvars.iv
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !38
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !38
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !38
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !38
  %.sroa.6.0.insert.ext = zext i16 %i.ax to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.5.0.insert.ext = zext i16 %i.az to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.4.0.insert.ext = zext i16 %i.bb to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext i16 %i.bd to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.03842, i64 %indvars.iv
  store i64 %.sroa.0.0.insert.insert, ptr %i.be, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !147
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_3chan_interleave_rev(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22   ; 4 uses
  %i.l = sext i32 %i.d to i64                     ; 8 uses
  %i.m = icmp slt i32 %i.k, %i.i
  br i1 %i.m, label %.lr.ph45, label %._crit_edge46.split

.lr.ph45:                                         ; preds = %bb.a
  %i.n = mul nsw i64 %i.l, 6                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 2 uses
  %i.q = icmp sgt i32 %i.d, 0
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge46.split

.lr.ph.preheader:                                 ; preds = %.lr.ph45
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 6 uses
  %i.w = sext i32 %i.k to i64                     ; 2 uses
  %i.x = mul i64 %i.n, %i.w
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 7 uses
  %i.z = mul nsw i64 %i.w, 6                      ; 4 uses
  %i.aa = xor i32 %i.h, -1
  %i.ab = add i32 %i.f, %i.aa
  %i.ac = sub i32 %i.ab, %i.k
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 6                ; 2 uses
  %i.af = add nsw i64 %i.z, %i.ae                 ; 2 uses
  %i.ag = mul i64 %i.af, %i.l
  %i.ah = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.ah
  %i.aj = add nsw i64 %i.af, 2
  %i.ak = mul i64 %i.aj, %i.l
  %scevgep63.a = getelementptr i8, ptr %i.v, i64 %i.ak
  %scevgep63 = getelementptr i8, ptr %scevgep63.a, i64 %i.ah
  %i.al = add nsw i64 %i.z, 2
  %i.am = mul i64 %i.al, %i.l
  %i.an = getelementptr i8, ptr %i.v, i64 %i.am
  %1 = add nsw i64 %i.z, %i.ae
  %i.ao = add nsw i64 %1, 4
  %i.ap = mul i64 %i.ao, %i.l
  %scevgep65.a = getelementptr i8, ptr %i.v, i64 %i.ap
  %scevgep65 = getelementptr i8, ptr %scevgep65.a, i64 %i.ah
  %2 = add nsw i64 %i.z, 4
  %3 = mul i64 %2, %i.l
  %scevgep66 = getelementptr i8, ptr %i.v, i64 %3
  %i.aq = mul nsw i64 %i.r, %i.ad
  %i.ar = mul nuw nsw i64 %wide.trip.count, 6
  %i.as = getelementptr i8, ptr %i.t, i64 %i.aq
  %scevgep67 = getelementptr i8, ptr %i.as, i64 %i.ar ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 16
  %bound0 = icmp ult ptr %i.t, %scevgep65
  %bound1 = icmp ult ptr %scevgep66, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.p, 0
  %i.at = or i1 %found.conflict, %stride.check
  %bound068 = icmp ult ptr %i.t, %scevgep63
  %bound169 = icmp ult ptr %i.an, %scevgep67
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %i.at, %found.conflict70
  %bound071 = icmp ult ptr %i.t, %scevgep
  %bound172 = icmp ult ptr %i.y, %scevgep67
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx, %found.conflict73
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.au = mul nuw nsw i64 %n.vec, 6
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge46.split:                              ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03643 = phi i32 [ %i.bs, %._crit_edge ], [ %i.k, %.lr.ph.preheader ]
  %.03742 = phi ptr [ %i.br, %._crit_edge ], [ %i.t, %.lr.ph.preheader ] ; 4 uses
  %.03841 = phi ptr [ %i.bq, %._crit_edge ], [ %i.y, %.lr.ph.preheader ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %i.l ; 5 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.l ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx74
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ay = getelementptr i8, ptr %.03742, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.az = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %.03742, i64 %i.az
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ba, align 2, !tbaa !38, !alias.scope !156
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %index
  %wide.load75 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !38, !alias.scope !157
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %index
  %wide.load76 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !38, !alias.scope !158
  %i.bd = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load75, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.be = shufflevector <8 x i16> %wide.load76, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.bd, <16 x i16> %i.be, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !38, !alias.scope !159, !noalias !160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  %.03539.ph = phi ptr [ %i.ay, %middle.block ], [ %.03742, %.lr.ph ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.ph
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !38
  store i16 %i.bh, ptr %.03539.ph, align 2, !tbaa !38
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.ph
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 2
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !38
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.ph
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 4
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %.03539.ph, i64 6
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.03539.unr = phi ptr [ %.03539.ph, %scalar.ph.preheader ], [ %i.bo, %scalar.ph.prol ]
  %i.bp = icmp eq i64 %indvars.iv.ph, %i.av
  br i1 %i.bp, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bq = getelementptr inbounds nuw i8, ptr %.03841, i64 %i.n
  %i.br = getelementptr inbounds i8, ptr %.03742, i64 %i.r
  %i.bs = add nsw i32 %.03643, 1                  ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %i.i
  br i1 %i.bt, label %.lr.ph, label %._crit_edge46.split, !llvm.loop !154

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03539 = phi ptr [ %i.cl, %scalar.ph ], [ %.03539.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !38
  store i16 %i.bv, ptr %.03539, align 2, !tbaa !38
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !38
  %i.by = getelementptr inbounds nuw i8, ptr %.03539, i64 2
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !38
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !38
  %i.cb = getelementptr inbounds nuw i8, ptr %.03539, i64 4
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %.03539, i64 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !38
  store i16 %i.ce, ptr %i.cc, align 2, !tbaa !38
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %.03539, i64 8
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !38
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.03841, i64 %indvars.iv.next
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %.03539, i64 10
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %.03539, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !155
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_4chan_planar(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = sub nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  %i.l = sext i32 %i.d to i64                     ; 5 uses
  %i.m = icmp slt i32 %i.k, %i.i
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.q = sext i32 %i.k to i64
  %i.r = mul i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !34
  %i.aj = shl nsw i64 %i.l, 1                     ; 4 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = sext i32 %i.ag to i64
  %i.am = sext i32 %i.ae to i64
  %i.an = sext i32 %i.ac to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.057 = phi i32 [ %i.k, %.lr.ph ], [ %i.aw, %bb.b ]
  %.04756 = phi ptr [ %i.u, %.lr.ph ], [ %i.av, %bb.b ] ; 2 uses
  %.04855 = phi ptr [ %i.w, %.lr.ph ], [ %i.au, %bb.b ] ; 2 uses
  %.04954 = phi ptr [ %i.y, %.lr.ph ], [ %i.at, %bb.b ] ; 2 uses
  %.05053 = phi ptr [ %i.aa, %.lr.ph ], [ %i.as, %bb.b ] ; 2 uses
  %.05152 = phi ptr [ %i.s, %.lr.ph ], [ %i.ar, %bb.b ] ; 3 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %.05152, i64 %i.l ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.l ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.l
  %i.ar = getelementptr inbounds i8, ptr %.05152, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05053, ptr align 2 %.05152, i64 %i.aj, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04954, ptr align 2 %i.ao, i64 %i.aj, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04855, ptr align 2 %i.ap, i64 %i.aj, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04756, ptr align 2 %i.aq, i64 %i.aj, i1 false)
  %i.as = getelementptr inbounds i8, ptr %.05053, i64 %i.ak
  %i.at = getelementptr inbounds i8, ptr %.04954, i64 %i.al
  %i.au = getelementptr inbounds i8, ptr %.04855, i64 %i.am
  %i.av = getelementptr inbounds i8, ptr %.04756, i64 %i.an
  %i.aw = add nsw i32 %.057, 1                    ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %i.i
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !161
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @unpack_16bit_3chan_planar(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 3 uses
end_hunk_0
begin_hunk_1_@half_to_float4:bb.a
  br label %half_to_float.exit19

bb.s:                                             ; preds = %bb.q
  %i.bn = or i32 %i.bk, 2139095040
  br label %half_to_float.exit19

bb.t:                                             ; preds = %half_to_float.exit15
  %.not.i.i17 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i17, label %half_to_float.exit19, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %i.bp = add nsw i32 %i.bo, -8                   ; 2 uses
  %i.bq = shl i32 %i.bh, %i.bp
  %i.br = or i32 %i.bi, %i.bq
  %i.bs = or i32 %i.br, 947912704
  %i.bt = shl nuw nsw i32 %i.bp, 23
  %i.bu = sub nuw i32 %i.bs, %i.bt
  br label %half_to_float.exit19

half_to_float.exit19:                             ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i.i18 = phi i32 [ %i.bm, %bb.r ], [ %i.bn, %bb.s ], [ %i.bu, %bb.u ], [ %i.bi, %bb.t ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.i.i18, ptr %i.bv, align 4, !tbaa !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nounwind }
attributes #11 = { memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!"p1 _ZTS19_priv_exr_context_t", !9, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !4, i64 20, !4, i64 21, !4, i64 22, !4, i64 23, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!15 = !{!"p1 int", !9, i64 0}
!16 = !{!"_exr_decode_pipeline", !11, i64 0, !9, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !5, i64 96, !5, i64 100, !11, i64 104, !9, i64 112, !9, i64 120, !11, i64 128, !9, i64 136, !11, i64 144, !9, i64 152, !11, i64 160, !15, i64 168, !11, i64 176, !9, i64 184, !11, i64 192, !9, i64 200, !11, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !4, i64 264}
!17 = !{!16, !12, i64 18}
!18 = !{!16, !12, i64 16}
!19 = !{!16, !5, i64 44}
!20 = !{!16, !5, i64 100}
!21 = !{!16, !5, i64 48}
!22 = !{!16, !5, i64 96}
!23 = !{!16, !15, i64 168}
!24 = !{!16, !9, i64 136}
!25 = !{!16, !9, i64 8}
!26 = !{!"p1 omnipotent char", !9, i64 0}
!27 = !{!"", !26, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !4, i64 25, !12, i64 26, !12, i64 28, !12, i64 30, !5, i64 32, !5, i64 36, !4, i64 40}
!28 = !{!27, !4, i64 25}
!29 = !{!27, !12, i64 28}
!30 = !{!5, !5, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = !{!27, !5, i64 36}
!35 = !{!27, !5, i64 32}
!36 = !{!27, !12, i64 26}
!37 = !{!27, !12, i64 30}
!38 = !{!12, !12, i64 0}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!"float", !4, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!27, !5, i64 12}
!45 = !{ptr @half_to_float_buffer_f16c, ptr @half_to_float_buffer_impl}
!46 = !{!11, !11, i64 0}
!47 = !{i64 2152770935, i64 2152771017, i64 2152771098}
!48 = !{i64 2152771311, i64 2152771393, i64 2152771474}
!49 = !{i64 5267548}
!50 = distinct !{!50, !31, !32, !33}
!51 = distinct !{!51, !31, !33, !32}
!52 = distinct !{!52, !31}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !31}
!60 = distinct !{!60, !31}
!61 = distinct !{!61, !31}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !31}
!67 = distinct !{!67, !31}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31, !32, !33}
!77 = distinct !{!77, !31, !33, !32}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !31}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !31}
!108 = distinct !{!108, !31}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !39}
!122 = distinct !{!122, !39}
!123 = distinct !{!123, !39}
!124 = distinct !{!124, !39}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = !{!16, !5, i64 40}
!128 = !{!27, !5, i64 20}
!129 = distinct !{!129, !31, !32, !33}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !31, !33, !32}
!132 = distinct !{!132, i1 false, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !132}
!136 = distinct !{!136, !132}
!137 = distinct !{!137, !31, !32, !33}
!138 = distinct !{!138, !31}
!139 = distinct !{!139, !31, !32}
!140 = !{!133}
!141 = !{!134}
!142 = !{!135}
!143 = !{!136}
!144 = !{!133, !134, !135}
!145 = distinct !{!145, !31, !32, !33}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31, !33, !32}
!148 = distinct !{!148, i1 false, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !148}
!152 = distinct !{!152, !148}
!153 = distinct !{!153, !31, !32, !33}
!154 = distinct !{!154, !31}
!155 = distinct !{!155, !31, !32}
!156 = !{!149}
!157 = !{!150}
!158 = !{!151}
!159 = !{!152}
!160 = !{!149, !150, !151}
!161 = distinct !{!161, !31}
!162 = distinct !{!162, !31}
!163 = distinct !{!163, !31}
!164 = distinct !{!164, !31}
!165 = distinct !{!165, !39}
!166 = distinct !{!166, !31}
!167 = distinct !{!167, !39}
!168 = distinct !{!168, !31}
!169 = distinct !{!169, !39}
!170 = distinct !{!170, !31}
!171 = distinct !{!171, !39}
!172 = distinct !{!172, !31}
!173 = distinct !{!173, !39}
!174 = distinct !{!174, !31}
!175 = distinct !{!175, !39}
!176 = distinct !{!176, !31}
!177 = distinct !{!177, !39}
!178 = distinct !{!178, !31}
!179 = distinct !{!179, !39}
!180 = distinct !{!180, !31}
!181 = distinct !{!181, !31}
!182 = distinct !{!182, !31}
!183 = distinct !{!183, !39}
!184 = distinct !{!184, !31}
!185 = distinct !{!185, !39}
!186 = distinct !{!186, !31}
!187 = distinct !{!187, !31}
!188 = distinct !{!188, !31}
!189 = distinct !{!189, !39}
!190 = distinct !{!190, !31}
!191 = distinct !{!191, !39}
!192 = distinct !{!192, !31}
!193 = distinct !{!193, !31}
end_hunk_1
