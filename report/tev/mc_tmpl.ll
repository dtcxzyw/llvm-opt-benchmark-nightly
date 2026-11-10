Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/mc_tmpl?download=true
inline.NumInlined: 87
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@prep_8tap_sharp_scaled_c:bb.a

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @put_8tap_smooth_regular_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  tail call fastcc void @put_8tap_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 1, i32 noundef %8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @put_8tap_smooth_regular_scaled_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #2 {
bb.a:
  tail call fastcc void @put_8tap_scaled_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 1, i32 noundef %10)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @prep_8tap_smooth_regular_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  tail call fastcc void @prep_8tap_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 1, i32 noundef %7)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @prep_8tap_smooth_regular_scaled_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #2 {
bb.a:
  tail call fastcc void @prep_8tap_scaled_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef %9)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @put_8tap_smooth_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  tail call fastcc void @put_8tap_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 5, i32 noundef %8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @put_8tap_smooth_scaled_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #2 {
bb.a:
  tail call fastcc void @put_8tap_scaled_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 5, i32 noundef %10)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @prep_8tap_smooth_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  tail call fastcc void @prep_8tap_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 5, i32 noundef %7)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @prep_8tap_smooth_scaled_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #2 {
bb.a:
  tail call fastcc void @prep_8tap_scaled_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 5, i32 noundef %9)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @put_8tap_smooth_sharp_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  tail call fastcc void @put_8tap_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 9, i32 noundef %8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @put_8tap_smooth_sharp_scaled_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #2 {
bb.a:
  tail call fastcc void @put_8tap_scaled_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 9, i32 noundef %10)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @prep_8tap_smooth_sharp_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  tail call fastcc void @prep_8tap_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 9, i32 noundef %7)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @prep_8tap_smooth_sharp_scaled_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #2 {
bb.a:
  tail call fastcc void @prep_8tap_scaled_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 9, i32 noundef %9)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @put_bilin_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #3 {
bb.a:
  %i.a = alloca [16512 x i16], align 16           ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %8, i1 true) ; 4 uses
  %i.c = add nsw i32 %i.b, -18                    ; 3 uses
  %i.d = shl nuw nsw i32 1, %i.c
  %i.e = lshr i32 %i.d, 1                         ; 2 uses
  %i.f = and i64 %1, 1
  %.not.i = icmp eq i64 %i.f, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.g = ashr exact i64 %1, 1
  %i.h = and i64 %3, 1
  %.not.i118 = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %.not.i118)
  %i.i = ashr exact i64 %3, 1
  %.not = icmp eq i32 %6, 0
  %.not112 = icmp eq i32 %7, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not112, label %.preheader119, label %bb.c

.preheader119:                                    ; preds = %bb.b
  %i.j = icmp sgt i32 %4, 0
  %i.k = sub nsw i32 22, %i.b                     ; 3 uses
  %i.l = shl nuw nsw i32 1, %i.k
  %i.m = lshr i32 %i.l, 1                         ; 2 uses
  br i1 %i.j, label %.lr.ph130.preheader, label %.loopexit.split

.lr.ph130.preheader:                              ; preds = %.preheader119
  %wide.trip.count146 = zext nneg i32 %4 to i64   ; 4 uses
  %i.n = add i32 %5, -1
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = mul i64 %3, %i.o
  %i.q = shl nuw nsw i64 %wide.trip.count146, 1   ; 2 uses
  %i.r = getelementptr i8, ptr %2, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.s, i64 2
  %i.t = mul i64 %1, %i.o
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %scevgep190 = getelementptr i8, ptr %i.u, i64 %i.q
  %min.iters.check192 = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %2, %scevgep190
  %found.conflict = and i1 %bound0, %bound1
  %i.v = or i64 %3, %1
  %i.w = icmp slt i64 %i.v, 0
  %i.x = or i1 %found.conflict, %i.w
  %n.vec195 = and i64 %wide.trip.count146, 2147483640 ; 3 uses
  %broadcast.splatinsert196 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat197 = shufflevector <8 x i32> %broadcast.splatinsert196, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert198 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat199 = shufflevector <8 x i32> %broadcast.splatinsert198, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert200 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat201 = shufflevector <8 x i32> %broadcast.splatinsert200, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat203 = shufflevector <8 x i32> %broadcast.splatinsert202, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert204 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat205 = shufflevector <8 x i32> %broadcast.splatinsert204, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert206 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat207 = shufflevector <8 x i32> %broadcast.splatinsert206, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n214 = icmp eq i64 %n.vec195, %wide.trip.count146
  br label %.lr.ph130

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.y = icmp sgt i32 %4, 0
  %i.z = sub nsw i32 22, %i.b                     ; 3 uses
  %i.aa = shl nuw nsw i32 1, %i.z
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %.split127

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ac = add nsw i32 %5, 1
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert164 = insertelement <8 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat165 = shufflevector <8 x i32> %broadcast.splatinsert164, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert166 = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat167 = shufflevector <8 x i32> %broadcast.splatinsert166, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.099 = phi ptr [ %i.as, %._crit_edge ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.097 = phi ptr [ %i.ar, %._crit_edge ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %.096 = phi i32 [ %i.at, %._crit_edge ], [ %i.ac, %.lr.ph.preheader ]
  %.pre = load i16, ptr %.099, align 2, !tbaa !10 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.099, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %wide.load = load <8 x i16>, ptr %i.ae, align 2, !tbaa !10 ; 4 uses
  %i.af = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ag = zext <8 x i16> %i.af to <8 x i32>       ; 2 uses
  %i.ah = shl nuw nsw <8 x i32> %i.ag, splat (i32 4)
  %i.ai = zext <8 x i16> %wide.load to <8 x i32>
  %i.aj = sub nsw <8 x i32> %i.ai, %i.ag
  %i.ak = mul nsw <8 x i32> %i.aj, %broadcast.splat
  %i.al = add nuw nsw <8 x i32> %i.ah, %broadcast.splat165
  %i.am = add <8 x i32> %i.al, %i.ak
  %i.an = ashr <8 x i32> %i.am, %broadcast.splat167
  %i.ao = trunc <8 x i32> %i.an to <8 x i16>
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.097, i64 %index
  store <8 x i16> %i.ao, ptr %i.ap, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i16 [ %.pre, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ar = getelementptr inbounds nuw i8, ptr %.097, i64 256
  %i.as = getelementptr inbounds i8, ptr %.099, i64 %3
  %i.at = add nsw i32 %.096, -1                   ; 2 uses
  %.not116 = icmp eq i32 %i.at, 0
  br i1 %.not116, label %.preheader121.split, label %.lr.ph

.preheader121.split:                              ; preds = %._crit_edge
  %i.au = add nsw i32 %i.b, -14                   ; 3 uses
  %i.av = shl nuw nsw i32 1, %i.au
  %i.aw = lshr i32 %i.av, 1                       ; 2 uses
  %wide.trip.count141 = zext nneg i32 %4 to i64
  %min.iters.check169 = icmp ult i32 %4, 8
  %n.vec171 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert172 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat173 = shufflevector <8 x i32> %broadcast.splatinsert172, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert174 = insertelement <8 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat175 = shufflevector <8 x i32> %broadcast.splatinsert174, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert176 = insertelement <8 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat177 = shufflevector <8 x i32> %broadcast.splatinsert176, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert178 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat179 = shufflevector <8 x i32> %broadcast.splatinsert178, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n186 = icmp eq i64 %n.vec171, %wide.trip.count
  br label %.lr.ph125

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ax = phi i16 [ %i.bb, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = shl nuw nsw i32 %i.ay, 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.099, i64 %indvars.iv.next
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !10 ; 2 uses
  %i.bc = zext i16 %i.bb to i32
  %i.bd = sub nsw i32 %i.bc, %i.ay
  %i.be = mul nsw i32 %i.bd, %6
  %i.bf = add nuw nsw i32 %i.az, %i.ab
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = ashr i32 %i.bg, %i.z
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.097, i64 %indvars.iv
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !26

.lr.ph125:                                        ; preds = %.preheader121.split, %._crit_edge126
  %.0102 = phi i32 [ %i.cc, %._crit_edge126 ], [ %5, %.preheader121.split ]
  %.198 = phi ptr [ %i.ca, %._crit_edge126 ], [ %i.a, %.preheader121.split ] ; 3 uses
  %.092 = phi ptr [ %i.cb, %._crit_edge126 ], [ %0, %.preheader121.split ] ; 3 uses
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.body180

vector.body180:                                   ; preds = %.lr.ph125, %vector.body180
  %index181 = phi i64 [ %index.next184, %vector.body180 ], [ 0, %.lr.ph125 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.198, i64 %index181 ; 2 uses
  %wide.load182 = load <8 x i16>, ptr %i.bk, align 16, !tbaa !10
  %i.bl = sext <8 x i16> %wide.load182 to <8 x i32> ; 2 uses
  %i.bm = shl nsw <8 x i32> %i.bl, splat (i32 4)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  %wide.load183 = load <8 x i16>, ptr %i.bn, align 16, !tbaa !10
  %i.bo = sext <8 x i16> %wide.load183 to <8 x i32>
  %i.bp = sub nsw <8 x i32> %i.bo, %i.bl
  %i.bq = mul nsw <8 x i32> %i.bp, %broadcast.splat173
  %i.br = add nsw <8 x i32> %i.bm, %broadcast.splat175
  %i.bs = add <8 x i32> %i.br, %i.bq
  %i.bt = ashr <8 x i32> %i.bs, %broadcast.splat177 ; 2 uses
  %i.bu = icmp slt <8 x i32> %i.bt, zeroinitializer
  %i.bv = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bt, <8 x i32> %broadcast.splat179)
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = select <8 x i1> %i.bu, <8 x i16> zeroinitializer, <8 x i16> %i.bw
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.092, i64 %index181
  store <8 x i16> %i.bx, ptr %i.by, align 2, !tbaa !10
  %index.next184 = add nuw i64 %index181, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next184, %n.vec171
  br i1 %i.bz, label %middle.block185, label %vector.body180, !llvm.loop !27

middle.block185:                                  ; preds = %vector.body180
  br i1 %cmp.n186, label %._crit_edge126, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph125, %middle.block185
  %indvars.iv138.ph = phi i64 [ 0, %.lr.ph125 ], [ %n.vec171, %middle.block185 ]
  br label %scalar.ph168

._crit_edge126:                                   ; preds = %scalar.ph168, %middle.block185
  %i.ca = getelementptr inbounds nuw i8, ptr %.198, i64 256
  %i.cb = getelementptr inbounds i8, ptr %.092, i64 %1
  %i.cc = add nsw i32 %.0102, -1                  ; 2 uses
  %.not117 = icmp eq i32 %i.cc, 0
  br i1 %.not117, label %.split127, label %.lr.ph125

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %scalar.ph168
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %scalar.ph168 ], [ %indvars.iv138.ph, %scalar.ph168.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.198, i64 %indvars.iv138 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !10
  %i.cf = sext i16 %i.ce to i32                   ; 2 uses
  %i.cg = shl nsw i32 %i.cf, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 256
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !10
  %i.cj = sext i16 %i.ci to i32
  %i.ck = sub nsw i32 %i.cj, %i.cf
  %i.cl = mul nsw i32 %i.ck, %7
  %i.cm = add nsw i32 %i.cg, %i.aw
  %i.cn = add i32 %i.cm, %i.cl
  %i.co = ashr i32 %i.cn, %i.au                   ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  %i.cq = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %8)
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = select i1 %i.cp, i16 0, i16 %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.092, i64 %indvars.iv138
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !10
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge126, label %scalar.ph168, !llvm.loop !28

.split127:                                        ; preds = %._crit_edge126, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit.split

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %._crit_edge131
  %.1103 = phi i32 [ %i.dp, %._crit_edge131 ], [ %5, %.lr.ph130.preheader ]
  %.1100 = phi ptr [ %i.do, %._crit_edge131 ], [ %2, %.lr.ph130.preheader ] ; 5 uses
  %.1 = phi ptr [ %i.dn, %._crit_edge131 ], [ %0, %.lr.ph130.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check192, i1 true, i1 %i.x
  br i1 %brmerge, label %scalar.ph191.preheader, label %vector.body208

vector.body208:                                   ; preds = %.lr.ph130, %vector.body208
  %index209 = phi i64 [ %index.next212, %vector.body208 ], [ 0, %.lr.ph130 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.1100, i64 %index209
  %wide.load210 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !10, !alias.scope !40
  %i.cv = zext <8 x i16> %wide.load210 to <8 x i32> ; 2 uses
  %i.cw = shl nuw nsw <8 x i32> %i.cv, splat (i32 4)
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.1100, i64 %index209
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %wide.load211 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !10, !alias.scope !40
  %i.cz = zext <8 x i16> %wide.load211 to <8 x i32>
  %i.da = sub nsw <8 x i32> %i.cz, %i.cv
  %i.db = mul nsw <8 x i32> %i.da, %broadcast.splat197
  %i.dc = add nuw nsw <8 x i32> %i.cw, %broadcast.splat199
  %i.dd = add <8 x i32> %i.dc, %i.db
  %i.de = ashr <8 x i32> %i.dd, %broadcast.splat201
  %i.df = add nsw <8 x i32> %i.de, %broadcast.splat203
  %i.dg = ashr <8 x i32> %i.df, %broadcast.splat205 ; 2 uses
  %i.dh = icmp slt <8 x i32> %i.dg, zeroinitializer
  %i.di = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.dg, <8 x i32> %broadcast.splat207)
  %i.dj = trunc <8 x i32> %i.di to <8 x i16>
  %i.dk = select <8 x i1> %i.dh, <8 x i16> zeroinitializer, <8 x i16> %i.dj
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %index209
  store <8 x i16> %i.dk, ptr %i.dl, align 2, !tbaa !10, !alias.scope !41, !noalias !40
  %index.next212 = add nuw i64 %index209, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next212, %n.vec195
  br i1 %i.dm, label %middle.block213, label %vector.body208, !llvm.loop !32

middle.block213:                                  ; preds = %vector.body208
  br i1 %cmp.n214, label %._crit_edge131, label %scalar.ph191.preheader

scalar.ph191.preheader:                           ; preds = %.lr.ph130, %middle.block213
  %indvars.iv143.ph = phi i64 [ %n.vec195, %middle.block213 ], [ 0, %.lr.ph130 ]
  br label %scalar.ph191

._crit_edge131:                                   ; preds = %scalar.ph191, %middle.block213
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %1
  %i.do = getelementptr inbounds i8, ptr %.1100, i64 %3
  %i.dp = add nsw i32 %.1103, -1                  ; 2 uses
  %.not115 = icmp eq i32 %i.dp, 0
  br i1 %.not115, label %.loopexit.split, label %.lr.ph130

scalar.ph191:                                     ; preds = %scalar.ph191.preheader, %scalar.ph191
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %scalar.ph191 ], [ %indvars.iv143.ph, %scalar.ph191.preheader ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.1100, i64 %indvars.iv143
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !10
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
  %i.dt = shl nuw nsw i32 %i.ds, 4
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.1100, i64 %indvars.iv.next144
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !10
  %i.dw = zext i16 %i.dv to i32
  %i.dx = sub nsw i32 %i.dw, %i.ds
  %i.dy = mul nsw i32 %i.dx, %6
  %i.dz = add nuw nsw i32 %i.dt, %i.m
  %i.ea = add i32 %i.dz, %i.dy
  %i.eb = ashr i32 %i.ea, %i.k
  %i.ec = add nsw i32 %i.eb, %i.e
  %i.ed = ashr i32 %i.ec, %i.c                    ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 0
  %i.ef = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 %8)
  %i.eg = trunc i32 %i.ef to i16
  %i.eh = select i1 %i.ee, i16 0, i16 %i.eg
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %indvars.iv143
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !10
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %._crit_edge131, label %scalar.ph191, !llvm.loop !33

bb.d:                                             ; preds = %bb.a
  br i1 %.not112, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.ej = icmp sgt i32 %4, 0
  br i1 %i.ej, label %.lr.ph134.preheader, label %.loopexit.split

.lr.ph134.preheader:                              ; preds = %.preheader
  %wide.trip.count151 = zext nneg i32 %4 to i64   ; 4 uses
  %i.ek = add i32 %5, -1
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = mul i64 %3, %i.el
  %i.en = shl nuw nsw i64 %wide.trip.count151, 1  ; 3 uses
  %i.eo = getelementptr i8, ptr %2, i64 %i.em
  %scevgep229 = getelementptr i8, ptr %i.eo, i64 %i.en
  %i.ep = add nuw nsw i64 %i.el, 1
  %i.eq = mul i64 %3, %i.ep
  %i.er = getelementptr i8, ptr %2, i64 %i.eq
  %scevgep230 = getelementptr i8, ptr %i.er, i64 %i.en
  %scevgep231 = getelementptr i8, ptr %2, i64 %3
  %i.es = mul i64 %1, %i.el
  %i.et = getelementptr i8, ptr %0, i64 %i.es
  %scevgep232 = getelementptr i8, ptr %i.et, i64 %i.en ; 2 uses
  %min.iters.check234 = icmp ult i32 %4, 8
  %bound0236 = icmp ult ptr %0, %scevgep230
  %bound1237 = icmp ult ptr %scevgep231, %scevgep232
  %found.conflict238 = and i1 %bound0236, %bound1237
  %i.eu = or i64 %3, %1
  %i.ev = icmp slt i64 %i.eu, 0
  %i.ew = or i1 %found.conflict238, %i.ev
  %bound0241 = icmp ult ptr %0, %scevgep229
  %bound1242 = icmp ult ptr %2, %scevgep232
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx = or i1 %i.ew, %found.conflict243
  %n.vec245 = and i64 %wide.trip.count151, 2147483640 ; 3 uses
  %broadcast.splatinsert246 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat247 = shufflevector <8 x i32> %broadcast.splatinsert246, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert248 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat249 = shufflevector <8 x i32> %broadcast.splatinsert248, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n256 = icmp eq i64 %n.vec245, %wide.trip.count151
  br label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %._crit_edge135
  %.2104 = phi i32 [ %i.fp, %._crit_edge135 ], [ %5, %.lr.ph134.preheader ]
  %.2101 = phi ptr [ %i.ex, %._crit_edge135 ], [ %2, %.lr.ph134.preheader ] ; 3 uses
  %.2 = phi ptr [ %i.fo, %._crit_edge135 ], [ %0, %.lr.ph134.preheader ] ; 3 uses
  %i.ex = getelementptr i8, ptr %.2101, i64 %3    ; 3 uses
  %brmerge259 = select i1 %min.iters.check234, i1 true, i1 %conflict.rdx
  br i1 %brmerge259, label %scalar.ph233.preheader, label %vector.body250

vector.body250:                                   ; preds = %.lr.ph134, %vector.body250
  %index251 = phi i64 [ %index.next254, %vector.body250 ], [ 0, %.lr.ph134 ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %.2101, i64 %index251
  %wide.load252 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !10, !alias.scope !42
  %i.ez = zext <8 x i16> %wide.load252 to <8 x i32> ; 2 uses
  %i.fa = shl nuw nsw <8 x i32> %i.ez, splat (i32 4)
  %i.fb = getelementptr [2 x i8], ptr %i.ex, i64 %index251
  %wide.load253 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !10, !alias.scope !43
  %i.fc = zext <8 x i16> %wide.load253 to <8 x i32>
  %i.fd = sub nsw <8 x i32> %i.fc, %i.ez
  %i.fe = mul nsw <8 x i32> %i.fd, %broadcast.splat247
  %i.ff = or disjoint <8 x i32> %i.fa, splat (i32 8)
  %i.fg = add <8 x i32> %i.ff, %i.fe
  %i.fh = ashr <8 x i32> %i.fg, splat (i32 4)     ; 2 uses
  %i.fi = icmp slt <8 x i32> %i.fh, zeroinitializer
  %i.fj = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fh, <8 x i32> %broadcast.splat249)
  %i.fk = trunc <8 x i32> %i.fj to <8 x i16>
  %i.fl = select <8 x i1> %i.fi, <8 x i16> zeroinitializer, <8 x i16> %i.fk
end_hunk_0
begin_hunk_1_@put_bilin_scaled_c:bb.a
  store i16 %i.am, ptr %i.an, align 2, !tbaa !10
  %i.ao = add nsw i32 %.05062.us.us.us, %8        ; 2 uses
  %i.ap = ashr i32 %i.ao, 10
  %i.aq = add nsw i32 %i.ap, %.063.us.us.us
  %i.ar = and i32 %i.ao, 1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.b

._crit_edge.us.us.us:                             ; preds = %bb.b
  %i.as = getelementptr inbounds i8, ptr %.15664.us.us.us, i64 %3 ; 2 uses
  %i.at = add nsw i32 %.15365.us.us.us, 1         ; 3 uses
  %i.au = icmp slt i32 %i.at, %i.l
  br i1 %i.au, label %.lr.ph.us.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us.us, %.split.us.split.us
  %wide.trip.count94.pre-phi = phi i64 [ %.pre, %.split.us.split.us ], [ %wide.trip.count, %._crit_edge.us.us.us ] ; 4 uses
  %.156.lcssa.us.us = phi ptr [ %.055.us.us, %.split.us.split.us ], [ %i.as, %._crit_edge.us.us.us ]
  %.153.lcssa.us.us = phi i32 [ %.052.us.us, %.split.us.split.us ], [ %i.at, %._crit_edge.us.us.us ]
  %i.av = lshr i32 %.058.us.us, 6
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count94.pre-phi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %n.vec = and i64 %wide.trip.count94.pre-phi, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ax, align 16, !tbaa !10
  %i.ay = sext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.az = shl nsw <8 x i32> %i.ay, splat (i32 4)
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index
  %wide.load107 = load <8 x i16>, ptr %i.ba, align 16, !tbaa !10
  %i.bb = sext <8 x i16> %wide.load107 to <8 x i32>
  %i.bc = sub nsw <8 x i32> %i.bb, %i.ay
  %i.bd = mul nsw <8 x i32> %i.bc, %broadcast.splat
  %i.be = add nsw <8 x i32> %i.az, %broadcast.splat102
  %i.bf = add nsw <8 x i32> %i.be, %i.bd
  %i.bg = ashr <8 x i32> %i.bf, %broadcast.splat104 ; 2 uses
  %i.bh = icmp slt <8 x i32> %i.bg, zeroinitializer
  %i.bi = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bg, <8 x i32> %broadcast.splat106)
  %i.bj = trunc <8 x i32> %i.bi to <8 x i16>
  %i.bk = select <8 x i1> %i.bh, <8 x i16> zeroinitializer, <8 x i16> %i.bj
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.054.us.us, i64 %index
  store <8 x i16> %i.bk, ptr %i.bl, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count94.pre-phi, %n.vec
  br i1 %cmp.n, label %._crit_edge.us72.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv91.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %scalar.ph ], [ %indvars.iv91.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv91
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !10
  %i.bp = sext i16 %i.bo to i32                   ; 2 uses
  %i.bq = shl nsw i32 %i.bp, 4
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv91
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !10
  %i.bt = sext i16 %i.bs to i32
  %i.bu = sub nsw i32 %i.bt, %i.bp
  %i.bv = mul nsw i32 %i.bu, %i.aw
  %i.bw = add nsw i32 %i.bq, %i.k
  %i.bx = add nsw i32 %i.bw, %i.bv
  %i.by = ashr i32 %i.bx, %i.i                    ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  %i.ca = tail call i32 @llvm.smin.i32(i32 %i.by, i32 %10)
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = select i1 %i.bz, i16 0, i16 %i.cb
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.054.us.us, i64 %indvars.iv91
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !10
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94.pre-phi
  br i1 %exitcond95.not, label %._crit_edge.us72.us, label %scalar.ph, !llvm.loop !47

._crit_edge.us72.us:                              ; preds = %scalar.ph, %middle.block
  %i.ce = add nsw i32 %.058.us.us, %9
  %i.cf = getelementptr inbounds i8, ptr %.054.us.us, i64 %1
  %i.cg = add nsw i32 %.057.us.us, -1             ; 2 uses
  %.not.us.us = icmp eq i32 %i.cg, 0
  br i1 %.not.us.us, label %.split74.us, label %.split.us.split.us

.split74.us:                                      ; preds = %._crit_edge.us72.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @prep_bilin_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = alloca [16512 x i16], align 16           ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true) ; 2 uses
  %i.c = and i64 %2, 1
  %.not.i = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.d = ashr exact i64 %2, 1
  %.not = icmp eq i32 %5, 0
  %.not105 = icmp eq i32 %6, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %3, 0                       ; 2 uses
  %i.f = sub nsw i32 22, %i.b                     ; 7 uses
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = lshr i32 %i.g, 1                         ; 6 uses
  br i1 %.not105, label %.preheader111, label %bb.c

.preheader111:                                    ; preds = %bb.b
  %i.i = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.e, label %.lr.ph122.preheader, label %.loopexit.split

.lr.ph122.preheader:                              ; preds = %.preheader111
  %wide.trip.count138 = zext nneg i32 %3 to i64   ; 7 uses
  %i.j = add i32 %4, -1
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = mul i64 %2, %i.k
  %i.m = shl nuw nsw i64 %wide.trip.count138, 1
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 2
  %i.p = mul nuw nsw i64 %i.i, %i.k
  %i.q = add nuw i64 %i.p, %wide.trip.count138
  %i.r = shl i64 %i.q, 1
  %scevgep175 = getelementptr i8, ptr %0, i64 %i.r
  %min.iters.check177 = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %1, %scevgep175
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %2, 0
  %i.s = or i1 %found.conflict, %stride.check
  %n.vec179 = and i64 %wide.trip.count138, 2147483640 ; 3 uses
  %broadcast.splatinsert180 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat181 = shufflevector <8 x i32> %broadcast.splatinsert180, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert182 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat183 = shufflevector <8 x i32> %broadcast.splatinsert182, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert184 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat185 = shufflevector <8 x i32> %broadcast.splatinsert184, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n192 = icmp eq i64 %n.vec179, %wide.trip.count138
  %xtraiter = and i64 %wide.trip.count138, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.t = add nsw i64 %wide.trip.count138, -1
  br label %.lr.ph122

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br i1 %i.e, label %.lr.ph.preheader, label %.split119

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.u = add nsw i32 %4, 1
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat157 = shufflevector <8 x i32> %broadcast.splatinsert156, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat159 = shufflevector <8 x i32> %broadcast.splatinsert158, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.091 = phi ptr [ %i.ak, %._crit_edge ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.088 = phi ptr [ %i.aj, %._crit_edge ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %.087 = phi i32 [ %i.al, %._crit_edge ], [ %i.u, %.lr.ph.preheader ]
  %.pre = load i16, ptr %.091, align 2, !tbaa !10 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %.091, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %wide.load = load <8 x i16>, ptr %i.w, align 2, !tbaa !10 ; 4 uses
  %i.x = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.y = zext <8 x i16> %i.x to <8 x i32>         ; 2 uses
  %i.z = shl nuw nsw <8 x i32> %i.y, splat (i32 4)
  %i.aa = zext <8 x i16> %wide.load to <8 x i32>
  %i.ab = sub nsw <8 x i32> %i.aa, %i.y
  %i.ac = mul nsw <8 x i32> %i.ab, %broadcast.splat
  %i.ad = add nuw nsw <8 x i32> %i.z, %broadcast.splat157
  %i.ae = add <8 x i32> %i.ad, %i.ac
  %i.af = ashr <8 x i32> %i.ae, %broadcast.splat159
  %i.ag = trunc <8 x i32> %i.af to <8 x i16>
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.088, i64 %index
  store <8 x i16> %i.ag, ptr %i.ah, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i16 [ %.pre, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aj = getelementptr inbounds nuw i8, ptr %.088, i64 256
  %i.ak = getelementptr inbounds i8, ptr %.091, i64 %2
  %i.al = add nsw i32 %.087, -1                   ; 2 uses
  %.not109 = icmp eq i32 %i.al, 0
  br i1 %.not109, label %.preheader113.split, label %.lr.ph

.preheader113.split:                              ; preds = %._crit_edge
  %i.am = zext nneg i32 %3 to i64
  %wide.trip.count133 = zext nneg i32 %3 to i64
  %min.iters.check161 = icmp ult i32 %3, 8
  %n.vec163 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert164 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat165 = shufflevector <8 x i32> %broadcast.splatinsert164, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n172 = icmp eq i64 %n.vec163, %wide.trip.count
  br label %.lr.ph117

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.an = phi i16 [ %i.ar, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = shl nuw nsw i32 %i.ao, 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.091, i64 %indvars.iv.next
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !10 ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.ao
  %i.au = mul nsw i32 %i.at, %5
  %i.av = add nuw nsw i32 %i.ap, %i.h
  %i.aw = add i32 %i.av, %i.au
  %i.ax = ashr i32 %i.aw, %i.f
  %i.ay = trunc i32 %i.ax to i16
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.088, i64 %indvars.iv
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !49

.lr.ph117:                                        ; preds = %.preheader113.split, %._crit_edge118
  %.094 = phi i32 [ %i.bq, %._crit_edge118 ], [ %4, %.preheader113.split ]
  %.089 = phi ptr [ %i.bp, %._crit_edge118 ], [ %0, %.preheader113.split ] ; 3 uses
  %.1 = phi ptr [ %i.bo, %._crit_edge118 ], [ %i.a, %.preheader113.split ] ; 3 uses
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.body166

vector.body166:                                   ; preds = %.lr.ph117, %vector.body166
  %index167 = phi i64 [ %index.next170, %vector.body166 ], [ 0, %.lr.ph117 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %index167 ; 2 uses
  %wide.load168 = load <8 x i16>, ptr %i.ba, align 16, !tbaa !10
  %i.bb = sext <8 x i16> %wide.load168 to <8 x i32> ; 2 uses
  %i.bc = shl nsw <8 x i32> %i.bb, splat (i32 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  %wide.load169 = load <8 x i16>, ptr %i.bd, align 16, !tbaa !10
  %i.be = sext <8 x i16> %wide.load169 to <8 x i32>
  %i.bf = sub nsw <8 x i32> %i.be, %i.bb
  %i.bg = mul nsw <8 x i32> %i.bf, %broadcast.splat165
  %i.bh = or disjoint <8 x i32> %i.bc, splat (i32 8)
  %i.bi = add <8 x i32> %i.bh, %i.bg
  %i.bj = lshr <8 x i32> %i.bi, splat (i32 4)
  %i.bk = trunc <8 x i32> %i.bj to <8 x i16>
  %i.bl = add <8 x i16> %i.bk, splat (i16 -8192)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.089, i64 %index167
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !10
  %index.next170 = add nuw i64 %index167, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.bn, label %middle.block171, label %vector.body166, !llvm.loop !50

middle.block171:                                  ; preds = %vector.body166
  br i1 %cmp.n172, label %._crit_edge118, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %.lr.ph117, %middle.block171
  %indvars.iv130.ph = phi i64 [ 0, %.lr.ph117 ], [ %n.vec163, %middle.block171 ]
  br label %scalar.ph160

._crit_edge118:                                   ; preds = %scalar.ph160, %middle.block171
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.089, i64 %i.am
  %i.bq = add nsw i32 %.094, -1                   ; 2 uses
  %.not110 = icmp eq i32 %i.bq, 0
  br i1 %.not110, label %.split119, label %.lr.ph117

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph160 ], [ %indvars.iv130.ph, %scalar.ph160.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %indvars.iv130 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !10
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = shl nsw i32 %i.bt, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 256
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !10
  %i.bx = sext i16 %i.bw to i32
  %i.by = sub nsw i32 %i.bx, %i.bt
  %i.bz = mul nsw i32 %i.by, %6
  %i.ca = or disjoint i32 %i.bu, 8
  %i.cb = add i32 %i.ca, %i.bz
  %i.cc = lshr i32 %i.cb, 4
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = add i16 %i.cd, -8192
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.089, i64 %indvars.iv130
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !10
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge118, label %scalar.ph160, !llvm.loop !51

.split119:                                        ; preds = %._crit_edge118, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit.split

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %._crit_edge123
  %.195 = phi i32 [ %i.dn, %._crit_edge123 ], [ %4, %.lr.ph122.preheader ]
  %.192 = phi ptr [ %i.dm, %._crit_edge123 ], [ %1, %.lr.ph122.preheader ] ; 9 uses
  %.190 = phi ptr [ %i.dl, %._crit_edge123 ], [ %0, %.lr.ph122.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check177, i1 true, i1 %i.s
  br i1 %brmerge, label %scalar.ph176.preheader, label %vector.body186

vector.body186:                                   ; preds = %.lr.ph122, %vector.body186
  %index187 = phi i64 [ %index.next190, %vector.body186 ], [ 0, %.lr.ph122 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %index187
  %wide.load188 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !10, !alias.scope !63
  %i.ch = zext <8 x i16> %wide.load188 to <8 x i32> ; 2 uses
  %i.ci = shl nuw nsw <8 x i32> %i.ch, splat (i32 4)
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %index187
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %wide.load189 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !10, !alias.scope !63
  %i.cl = zext <8 x i16> %wide.load189 to <8 x i32>
  %i.cm = sub nsw <8 x i32> %i.cl, %i.ch
  %i.cn = mul nsw <8 x i32> %i.cm, %broadcast.splat181
  %i.co = add nuw nsw <8 x i32> %i.ci, %broadcast.splat183
  %i.cp = add <8 x i32> %i.co, %i.cn
  %i.cq = ashr <8 x i32> %i.cp, %broadcast.splat185
  %i.cr = trunc <8 x i32> %i.cq to <8 x i16>
  %i.cs = add <8 x i16> %i.cr, splat (i16 -8192)
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %index187
  store <8 x i16> %i.cs, ptr %i.ct, align 2, !tbaa !10, !alias.scope !64, !noalias !63
  %index.next190 = add nuw i64 %index187, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next190, %n.vec179
  br i1 %i.cu, label %middle.block191, label %vector.body186, !llvm.loop !55

middle.block191:                                  ; preds = %vector.body186
  br i1 %cmp.n192, label %._crit_edge123, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %.lr.ph122, %middle.block191
  %indvars.iv135.ph = phi i64 [ %n.vec179, %middle.block191 ], [ 0, %.lr.ph122 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph176.prol.loopexit, label %scalar.ph176.prol

scalar.ph176.prol:                                ; preds = %scalar.ph176.preheader
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv135.ph
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !10
  %i.cx = zext i16 %i.cw to i32                   ; 2 uses
  %i.cy = shl nuw nsw i32 %i.cx, 4
  %indvars.iv.next136.prol = or disjoint i64 %indvars.iv135.ph, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv.next136.prol
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !10
  %i.db = zext i16 %i.da to i32
  %i.dc = sub nsw i32 %i.db, %i.cx
  %i.dd = mul nsw i32 %i.dc, %5
  %i.de = add nuw nsw i32 %i.cy, %i.h
  %i.df = add i32 %i.de, %i.dd
  %i.dg = ashr i32 %i.df, %i.f
  %i.dh = trunc i32 %i.dg to i16
  %i.di = add i16 %i.dh, -8192
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %indvars.iv135.ph
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !10
  br label %scalar.ph176.prol.loopexit

scalar.ph176.prol.loopexit:                       ; preds = %scalar.ph176.prol, %scalar.ph176.preheader
  %indvars.iv135.unr = phi i64 [ %indvars.iv135.ph, %scalar.ph176.preheader ], [ %indvars.iv.next136.prol, %scalar.ph176.prol ]
  %i.dk = icmp eq i64 %indvars.iv135.ph, %i.t
  br i1 %i.dk, label %._crit_edge123, label %scalar.ph176

._crit_edge123:                                   ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176, %middle.block191
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %i.i
  %i.dm = getelementptr inbounds i8, ptr %.192, i64 %2
  %i.dn = add nsw i32 %.195, -1                   ; 2 uses
  %.not108 = icmp eq i32 %i.dn, 0
  br i1 %.not108, label %.loopexit.split, label %.lr.ph122

scalar.ph176:                                     ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %scalar.ph176 ], [ %indvars.iv135.unr, %scalar.ph176.prol.loopexit ] ; 4 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv135
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !10
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = shl nuw nsw i32 %i.dq, 4
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv.next136
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !10
  %i.du = zext i16 %i.dt to i32
  %i.dv = sub nsw i32 %i.du, %i.dq
  %i.dw = mul nsw i32 %i.dv, %5
  %i.dx = add nuw nsw i32 %i.dr, %i.h
  %i.dy = add i32 %i.dx, %i.dw
  %i.dz = ashr i32 %i.dy, %i.f
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = add i16 %i.ea, -8192
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %indvars.iv135
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !10
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv.next136
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %i.eg = shl nuw nsw i32 %i.ef, 4
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv.next136.1
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !10
  %i.ej = zext i16 %i.ei to i32
  %i.ek = sub nsw i32 %i.ej, %i.ef
  %i.el = mul nsw i32 %i.ek, %5
  %i.em = add nuw nsw i32 %i.eg, %i.h
  %i.en = add i32 %i.em, %i.el
  %i.eo = ashr i32 %i.en, %i.f
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = add i16 %i.ep, -8192
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %indvars.iv.next136
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !10
  %exitcond139.not.1 = icmp eq i64 %indvars.iv.next136.1, %wide.trip.count138
  br i1 %exitcond139.not.1, label %._crit_edge123, label %scalar.ph176, !llvm.loop !56

bb.d:                                             ; preds = %bb.a
  br i1 %.not105, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.es = sext i32 %3 to i64                      ; 2 uses
  %i.et = icmp sgt i32 %3, 0
  %i.eu = sub nsw i32 22, %i.b                    ; 5 uses
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = lshr i32 %i.ev, 1                       ; 4 uses
  br i1 %i.et, label %.lr.ph126.preheader, label %.loopexit.split

.lr.ph126.preheader:                              ; preds = %.preheader
  %wide.trip.count143 = zext nneg i32 %3 to i64   ; 7 uses
  %i.ex = add i32 %4, -1
  %i.ey = zext i32 %i.ex to i64                   ; 3 uses
  %i.ez = mul i64 %2, %i.ey
  %i.fa = shl nuw nsw i64 %wide.trip.count143, 1  ; 2 uses
  %i.fb = getelementptr i8, ptr %1, i64 %i.ez
  %scevgep206 = getelementptr i8, ptr %i.fb, i64 %i.fa
  %i.fc = add nuw nsw i64 %i.ey, 1
  %i.fd = mul i64 %2, %i.fc
  %i.fe = getelementptr i8, ptr %1, i64 %i.fd
  %scevgep207 = getelementptr i8, ptr %i.fe, i64 %i.fa
  %scevgep208 = getelementptr i8, ptr %1, i64 %2
  %i.ff = mul nuw nsw i64 %i.es, %i.ey
  %i.fg = add nuw i64 %i.ff, %wide.trip.count143
  %i.fh = shl i64 %i.fg, 1
  %scevgep209 = getelementptr i8, ptr %0, i64 %i.fh ; 2 uses
  %min.iters.check211 = icmp ult i32 %3, 8
  %bound0213 = icmp ult ptr %0, %scevgep207
  %bound1214 = icmp ult ptr %scevgep208, %scevgep209
  %found.conflict215 = and i1 %bound0213, %bound1214
  %stride.check216 = icmp slt i64 %2, 0
  %i.fi = or i1 %found.conflict215, %stride.check216
  %bound0217 = icmp ult ptr %0, %scevgep206
  %bound1218 = icmp ult ptr %1, %scevgep209
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx = or i1 %i.fi, %found.conflict219
end_hunk_1
begin_hunk_2_@w_mask_422_c:bb.a
  %i.bk = shufflevector <4 x i32> %i.at, <4 x i32> %i.bi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bl = icmp slt <8 x i32> %i.bk, zeroinitializer
  %i.bm = shufflevector <4 x i32> %i.au, <4 x i32> %i.bj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.bl, <8 x i16> zeroinitializer, <8 x i16> %i.bn
  store <8 x i16> %interleaved.vec, ptr %i.av, align 2, !tbaa !10, !alias.scope !152, !noalias !153
  %.reass = add <4 x i32> %i.an, %invariant.op
  %i.bo = add <4 x i32> %.reass, %i.bd
  %i.bp = lshr <4 x i32> %i.bo, splat (i32 1)
  %i.bq = trunc <4 x i32> %i.bp to <4 x i8>
  %i.br = getelementptr inbounds nuw i8, ptr %.081.i, i64 %index
  store <4 x i8> %i.bq, ptr %i.br, align 1, !tbaa !13, !alias.scope !154, !noalias !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ad, %middle.block ], [ 0, %.lr.ph.i ]
  br label %scalar.ph

._crit_edge.split.i:                              ; preds = %scalar.ph, %middle.block
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.078.i, i64 %i.f
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.079.i, i64 %i.f
  %i.bv = getelementptr inbounds i8, ptr %.077.i, i64 %1
  %.182.i = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.j
  %i.bw = add nsw i32 %.080.i, -1                 ; 2 uses
  %.not86.i = icmp eq i32 %i.bw, 0
  br i1 %.not86.i, label %w_mask_c.exit, label %.lr.ph.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.078.i, i64 %indvars.iv.i
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !10
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.079.i, i64 %indvars.iv.i
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !10
  %i.cc = sext i16 %i.cb to i32                   ; 2 uses
  %i.cd = sub nsw i32 %i.bz, %i.cc                ; 2 uses
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  %i.cf = add nuw nsw i32 %i.ce, 32
  %i.cg = lshr i32 %i.cf, 10
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 26) ; 2 uses
  %i.ci = add nuw nsw i32 %i.ch, 38
  %i.cj = mul nsw i32 %i.ci, %i.cd
  %i.ck = shl nsw i32 %i.cc, 6
  %i.cl = add nsw i32 %i.ck, %i.e
  %i.cm = add nsw i32 %i.cl, %i.cj
  %i.cn = ashr i32 %i.cm, %i.c                    ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  %i.cp = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 %8)
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = select i1 %i.co, i16 0, i16 %i.cq
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.077.i, i64 %indvars.iv.i
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !10
  %i.ct = or disjoint i64 %indvars.iv.i, 1        ; 3 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.078.i, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !10
  %i.cw = sext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.079.i, i64 %i.ct
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !10
  %i.cz = sext i16 %i.cy to i32                   ; 2 uses
  %i.da = sub nsw i32 %i.cw, %i.cz                ; 2 uses
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.da, i1 true)
  %i.dc = add nuw nsw i32 %i.db, 32
  %i.dd = lshr i32 %i.dc, 10
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 26)
  %i.df = add nuw nsw i32 %i.de, 38               ; 2 uses
  %i.dg = mul nsw i32 %i.df, %i.da
  %i.dh = shl nsw i32 %i.cz, 6
  %i.di = add nsw i32 %i.dh, %i.e
  %i.dj = add nsw i32 %i.di, %i.dg
  %i.dk = ashr i32 %i.dj, %i.c                    ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 0
  %i.dm = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %8)
  %i.dn = trunc i32 %i.dm to i16
  %i.do = select i1 %i.dl, i16 0, i16 %i.dn
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.077.i, i64 %i.ct
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !10
  %.reass112.i.reass.reass = add i32 %i.ch, %invariant.op57
  %i.dq = add i32 %.reass112.i.reass.reass, %i.df
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = lshr exact i64 %indvars.iv.i, 1
  %i.du = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.dt
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dv = icmp slt i64 %indvars.iv.next.i, %i.f
  br i1 %i.dv, label %scalar.ph, label %._crit_edge.split.i, !llvm.loop !149

w_mask_c.exit:                                    ; preds = %._crit_edge.split.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @w_mask_420_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, i32 noundef %7, i32 noundef %8) #3 {
bb.a:
  tail call fastcc void @w_mask_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 1, i32 noundef 1, i32 noundef %8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @warp_affine_8x8_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = alloca [120 x i16], align 16             ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = and i64 %3, 1
  %.not.i = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.d = ashr exact i64 %3, 1
  %.idx = mul i64 %i.d, -6
  %i.e = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.f = sub nsw i32 25, %i.b                     ; 9 uses
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = lshr i32 %i.g, 1                         ; 8 uses
  %i.i = load i16, ptr %4, align 2, !tbaa !10
  %i.j = sext i16 %i.i to i32                     ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !10
  %i.m = sext i16 %i.l to i32
  %invariant.op = add nsw i32 %i.j, 512
  br label %.preheader97

.preheader97:                                     ; preds = %bb.a, %.preheader97
  %.088103 = phi ptr [ %i.e, %bb.a ], [ %i.sc, %.preheader97 ] ; 34 uses
  %.091102 = phi i32 [ 0, %bb.a ], [ %i.se, %.preheader97 ]
  %.092101 = phi ptr [ %i.a, %bb.a ], [ %i.sd, %.preheader97 ] ; 9 uses
  %.093100 = phi i32 [ %5, %bb.a ], [ %i.sf, %.preheader97 ] ; 3 uses
  %i.n = add nsw i32 %.093100, 512
  %i.o = ashr i32 %i.n, 10
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.p ; 8 uses
  %i.r = getelementptr i8, ptr %i.q, i64 512
  %i.s = load i8, ptr %i.r, align 8, !tbaa !13
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr i8, ptr %.088103, i64 -6
  %i.v = load i16, ptr %i.u, align 2, !tbaa !10
  %i.w = zext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = getelementptr i8, ptr %i.q, i64 513
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = sext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %.088103, i64 -4
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !10
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.aa
  %i.af = getelementptr i8, ptr %i.q, i64 514
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !13
  %i.ah = sext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %.088103, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ak = zext i16 %i.aj to i32                   ; 2 uses
  %i.al = mul nsw i32 %i.ak, %i.ah
  %i.am = getelementptr i8, ptr %i.q, i64 515
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = sext i8 %i.an to i32
  %i.ap = load i16, ptr %.088103, align 2, !tbaa !10
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = getelementptr i8, ptr %i.q, i64 516
  %i.at = load i8, ptr %i.as, align 4, !tbaa !13
  %i.au = sext i8 %i.at to i32
  %i.av = getelementptr i8, ptr %.088103, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !10
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %i.au
  %i.az = getelementptr i8, ptr %i.q, i64 517
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = sext i8 %i.ba to i32
  %i.bc = getelementptr i8, ptr %.088103, i64 4   ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !10
  %i.be = zext i16 %i.bd to i32                   ; 2 uses
  %i.bf = mul nsw i32 %i.be, %i.bb
  %i.bg = getelementptr i8, ptr %i.q, i64 518
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !13
  %i.bi = sext i8 %i.bh to i32
  %i.bj = getelementptr i8, ptr %.088103, i64 6   ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !10
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %i.bi
  %i.bn = getelementptr i8, ptr %i.q, i64 519
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = sext i8 %i.bo to i32
  %i.bq = getelementptr i8, ptr %.088103, i64 8   ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !10
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = mul nsw i32 %i.bs, %i.bp
  %i.bu = add nsw i32 %i.x, %i.h
  %i.bv = add nsw i32 %i.bu, %i.ae
  %i.bw = add nsw i32 %i.bv, %i.al
  %i.bx = add nsw i32 %i.bw, %i.ar
  %i.by = add nsw i32 %i.bx, %i.ay
  %i.bz = add nsw i32 %i.by, %i.bf
  %i.ca = add nsw i32 %i.bz, %i.bm
  %i.cb = add nsw i32 %i.ca, %i.bt
  %i.cc = ashr i32 %i.cb, %i.f
  %i.cd = trunc i32 %i.cc to i16
  store i16 %i.cd, ptr %.092101, align 16, !tbaa !10
  %i.ce = add nsw i32 %.093100, %i.j              ; 2 uses
  %i.cf = add nsw i32 %i.ce, 512
  %i.cg = ashr i32 %i.cf, 10
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.ch ; 8 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 512
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !13
  %i.cl = sext i8 %i.ck to i32
  %i.cm = mul nsw i32 %i.ad, %i.cl
  %i.cn = getelementptr i8, ptr %i.ci, i64 513
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = sext i8 %i.co to i32
  %i.cq = mul nsw i32 %i.ak, %i.cp
  %i.cr = getelementptr i8, ptr %i.ci, i64 514
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !13
  %i.ct = sext i8 %i.cs to i32
  %i.cu = mul nsw i32 %i.aq, %i.ct
  %i.cv = getelementptr i8, ptr %i.ci, i64 515
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = sext i8 %i.cw to i32
  %i.cy = mul nsw i32 %i.ax, %i.cx
  %i.cz = getelementptr i8, ptr %i.ci, i64 516
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !13
  %i.db = sext i8 %i.da to i32
  %i.dc = mul nsw i32 %i.be, %i.db
  %i.dd = getelementptr i8, ptr %i.ci, i64 517
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = sext i8 %i.de to i32
  %i.dg = mul nsw i32 %i.bl, %i.df
  %i.dh = getelementptr i8, ptr %i.ci, i64 518
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !13
  %i.dj = sext i8 %i.di to i32
  %i.dk = mul nsw i32 %i.bs, %i.dj
  %i.dl = getelementptr i8, ptr %i.ci, i64 519
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = sext i8 %i.dm to i32
  %i.do = getelementptr i8, ptr %.088103, i64 10
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !10
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = mul nsw i32 %i.dq, %i.dn
  %i.ds = add nsw i32 %i.cm, %i.h
  %i.dt = add nsw i32 %i.ds, %i.cq
  %i.du = add nsw i32 %i.dt, %i.cu
  %i.dv = add nsw i32 %i.du, %i.cy
  %i.dw = add nsw i32 %i.dv, %i.dc
  %i.dx = add nsw i32 %i.dw, %i.dg
  %i.dy = add nsw i32 %i.dx, %i.dk
  %i.dz = add nsw i32 %i.dy, %i.dr
  %i.ea = ashr i32 %i.dz, %i.f
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %.092101, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !10
  %i.ed = add nsw i32 %i.ce, %i.j                 ; 2 uses
  %i.ee = add nsw i32 %i.ed, 512
  %i.ef = ashr i32 %i.ee, 10
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.eg ; 8 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 512
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !13
  %i.ek = sext i8 %i.ej to i32
  %i.el = getelementptr i8, ptr %.088103, i64 -2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !10
  %i.en = zext i16 %i.em to i32
  %i.eo = mul nsw i32 %i.en, %i.ek
  %i.ep = getelementptr i8, ptr %i.eh, i64 513
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !13
  %i.er = sext i8 %i.eq to i32
  %i.es = load i16, ptr %.088103, align 2, !tbaa !10
  %i.et = zext i16 %i.es to i32                   ; 2 uses
  %i.eu = mul nsw i32 %i.et, %i.er
  %i.ev = getelementptr i8, ptr %i.eh, i64 514
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !13
  %i.ex = sext i8 %i.ew to i32
  %i.ey = getelementptr i8, ptr %.088103, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !10
  %i.fa = zext i16 %i.ez to i32                   ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.ex
  %i.fc = getelementptr i8, ptr %i.eh, i64 515
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13
  %i.fe = sext i8 %i.fd to i32
  %i.ff = load i16, ptr %i.bc, align 2, !tbaa !10
  %i.fg = zext i16 %i.ff to i32                   ; 2 uses
  %i.fh = mul nsw i32 %i.fg, %i.fe
  %i.fi = getelementptr i8, ptr %i.eh, i64 516
  %i.fj = load i8, ptr %i.fi, align 4, !tbaa !13
  %i.fk = sext i8 %i.fj to i32
  %i.fl = load i16, ptr %i.bj, align 2, !tbaa !10
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = mul nsw i32 %i.fm, %i.fk
  %i.fo = getelementptr i8, ptr %i.eh, i64 517
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = sext i8 %i.fp to i32
  %i.fr = getelementptr i8, ptr %.088103, i64 8
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !10
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = mul nsw i32 %i.ft, %i.fq
  %i.fv = getelementptr i8, ptr %i.eh, i64 518
  %i.fw = load i8, ptr %i.fv, align 2, !tbaa !13
  %i.fx = sext i8 %i.fw to i32
  %i.fy = mul nsw i32 %i.dq, %i.fx
  %i.fz = getelementptr i8, ptr %i.eh, i64 519
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.gb = sext i8 %i.ga to i32
  %i.gc = getelementptr i8, ptr %.088103, i64 12
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !10
  %i.ge = zext i16 %i.gd to i32                   ; 2 uses
  %i.gf = mul nsw i32 %i.ge, %i.gb
  %i.gg = add nsw i32 %i.eo, %i.h
  %i.gh = add nsw i32 %i.gg, %i.eu
  %i.gi = add nsw i32 %i.gh, %i.fb
  %i.gj = add nsw i32 %i.gi, %i.fh
  %i.gk = add nsw i32 %i.gj, %i.fn
  %i.gl = add nsw i32 %i.gk, %i.fu
  %i.gm = add nsw i32 %i.gl, %i.fy
  %i.gn = add nsw i32 %i.gm, %i.gf
  %i.go = ashr i32 %i.gn, %i.f
  %i.gp = trunc i32 %i.go to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %.092101, i64 4
  store i16 %i.gp, ptr %i.gq, align 4, !tbaa !10
  %i.gr = add nsw i32 %i.ed, %i.j                 ; 2 uses
  %i.gs = add nsw i32 %i.gr, 512
  %i.gt = ashr i32 %i.gs, 10
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.gu ; 8 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 512
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !13
  %i.gy = sext i8 %i.gx to i32
  %i.gz = mul nsw i32 %i.et, %i.gy
  %i.ha = getelementptr i8, ptr %i.gv, i64 513
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !13
  %i.hc = sext i8 %i.hb to i32
  %i.hd = mul nsw i32 %i.fa, %i.hc
  %i.he = getelementptr i8, ptr %i.gv, i64 514
  %i.hf = load i8, ptr %i.he, align 2, !tbaa !13
  %i.hg = sext i8 %i.hf to i32
  %i.hh = mul nsw i32 %i.fg, %i.hg
  %i.hi = getelementptr i8, ptr %i.gv, i64 515
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !13
  %i.hk = sext i8 %i.hj to i32
  %i.hl = mul nsw i32 %i.fm, %i.hk
  %i.hm = getelementptr i8, ptr %i.gv, i64 516
  %i.hn = load i8, ptr %i.hm, align 4, !tbaa !13
  %i.ho = sext i8 %i.hn to i32
  %i.hp = mul nsw i32 %i.ft, %i.ho
  %i.hq = getelementptr i8, ptr %i.gv, i64 517
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !13
  %i.hs = sext i8 %i.hr to i32
  %i.ht = getelementptr i8, ptr %.088103, i64 10
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !10
  %i.hv = zext i16 %i.hu to i32                   ; 2 uses
  %i.hw = mul nsw i32 %i.hv, %i.hs
  %i.hx = getelementptr i8, ptr %i.gv, i64 518
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !13
  %i.hz = sext i8 %i.hy to i32
  %i.ia = mul nsw i32 %i.ge, %i.hz
  %i.ib = getelementptr i8, ptr %i.gv, i64 519
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !13
  %i.id = sext i8 %i.ic to i32
  %i.ie = getelementptr i8, ptr %.088103, i64 14
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !10
  %i.ig = zext i16 %i.if to i32                   ; 2 uses
  %i.ih = mul nsw i32 %i.ig, %i.id
  %i.ii = add nsw i32 %i.gz, %i.h
  %i.ij = add nsw i32 %i.ii, %i.hd
  %i.ik = add nsw i32 %i.ij, %i.hh
  %i.il = add nsw i32 %i.ik, %i.hl
  %i.im = add nsw i32 %i.il, %i.hp
  %i.in = add nsw i32 %i.im, %i.hw
  %i.io = add nsw i32 %i.in, %i.ia
  %i.ip = add nsw i32 %i.io, %i.ih
  %i.iq = ashr i32 %i.ip, %i.f
  %i.ir = trunc i32 %i.iq to i16
  %i.is = getelementptr inbounds nuw i8, ptr %.092101, i64 6
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !10
  %i.it = add nsw i32 %i.gr, %i.j                 ; 2 uses
  %i.iu = add nsw i32 %i.it, 512
  %i.iv = ashr i32 %i.iu, 10
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.iw ; 8 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 512
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !13
  %i.ja = sext i8 %i.iz to i32
  %i.jb = getelementptr i8, ptr %.088103, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !10
  %i.jd = zext i16 %i.jc to i32
  %i.je = mul nsw i32 %i.jd, %i.ja
  %i.jf = getelementptr i8, ptr %i.ix, i64 513
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !13
  %i.jh = sext i8 %i.jg to i32
  %i.ji = getelementptr i8, ptr %.088103, i64 4
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !10
  %i.jk = zext i16 %i.jj to i32                   ; 2 uses
  %i.jl = mul nsw i32 %i.jk, %i.jh
  %i.jm = getelementptr i8, ptr %i.ix, i64 514
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !13
  %i.jo = sext i8 %i.jn to i32
  %i.jp = getelementptr i8, ptr %.088103, i64 6
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !10
  %i.jr = zext i16 %i.jq to i32                   ; 2 uses
  %i.js = mul nsw i32 %i.jr, %i.jo
  %i.jt = getelementptr i8, ptr %i.ix, i64 515
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !13
  %i.jv = sext i8 %i.ju to i32
  %i.jw = load i16, ptr %i.bq, align 2, !tbaa !10
  %i.jx = zext i16 %i.jw to i32                   ; 2 uses
  %i.jy = mul nsw i32 %i.jx, %i.jv
  %i.jz = getelementptr i8, ptr %i.ix, i64 516
  %i.ka = load i8, ptr %i.jz, align 4, !tbaa !13
  %i.kb = sext i8 %i.ka to i32
  %i.kc = getelementptr i8, ptr %.088103, i64 10
  %i.kd = mul nsw i32 %i.hv, %i.kb
  %i.ke = getelementptr i8, ptr %i.ix, i64 517
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !13
  %i.kg = sext i8 %i.kf to i32
  %i.kh = getelementptr i8, ptr %.088103, i64 12
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !10
  %i.kj = zext i16 %i.ki to i32                   ; 2 uses
  %i.kk = mul nsw i32 %i.kj, %i.kg
  %i.kl = getelementptr i8, ptr %i.ix, i64 518
  %i.km = load i8, ptr %i.kl, align 2, !tbaa !13
  %i.kn = sext i8 %i.km to i32
  %i.ko = mul nsw i32 %i.ig, %i.kn
  %i.kp = getelementptr i8, ptr %i.ix, i64 519
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !13
  %i.kr = sext i8 %i.kq to i32
  %i.ks = getelementptr i8, ptr %.088103, i64 16
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !10
  %i.ku = zext i16 %i.kt to i32                   ; 2 uses
  %i.kv = mul nsw i32 %i.ku, %i.kr
  %i.kw = add nsw i32 %i.je, %i.h
  %i.kx = add nsw i32 %i.kw, %i.jl
  %i.ky = add nsw i32 %i.kx, %i.js
  %i.kz = add nsw i32 %i.ky, %i.jy
  %i.la = add nsw i32 %i.kz, %i.kd
  %i.lb = add nsw i32 %i.la, %i.kk
  %i.lc = add nsw i32 %i.lb, %i.ko
  %i.ld = add nsw i32 %i.lc, %i.kv
  %i.le = ashr i32 %i.ld, %i.f
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr inbounds nuw i8, ptr %.092101, i64 8
  store i16 %i.lf, ptr %i.lg, align 8, !tbaa !10
  %i.lh = add nsw i32 %i.it, %i.j                 ; 2 uses
  %i.li = add nsw i32 %i.lh, 512
  %i.lj = ashr i32 %i.li, 10
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.lk ; 8 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 512
  %i.ln = load i8, ptr %i.lm, align 8, !tbaa !13
  %i.lo = sext i8 %i.ln to i32
  %i.lp = mul nsw i32 %i.jk, %i.lo
  %i.lq = getelementptr i8, ptr %i.ll, i64 513
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !13
  %i.ls = sext i8 %i.lr to i32
  %i.lt = mul nsw i32 %i.jr, %i.ls
  %i.lu = getelementptr i8, ptr %i.ll, i64 514
  %i.lv = load i8, ptr %i.lu, align 2, !tbaa !13
  %i.lw = sext i8 %i.lv to i32
  %i.lx = mul nsw i32 %i.jx, %i.lw
  %i.ly = getelementptr i8, ptr %i.ll, i64 515
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !13
  %i.ma = sext i8 %i.lz to i32
  %i.mb = load i16, ptr %i.kc, align 2, !tbaa !10
  %i.mc = zext i16 %i.mb to i32                   ; 2 uses
  %i.md = mul nsw i32 %i.mc, %i.ma
  %i.me = getelementptr i8, ptr %i.ll, i64 516
  %i.mf = load i8, ptr %i.me, align 4, !tbaa !13
  %i.mg = sext i8 %i.mf to i32
  %i.mh = getelementptr i8, ptr %.088103, i64 12
  %i.mi = mul nsw i32 %i.kj, %i.mg
  %i.mj = getelementptr i8, ptr %i.ll, i64 517
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !13
  %i.ml = sext i8 %i.mk to i32
  %i.mm = getelementptr i8, ptr %.088103, i64 14
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !10
  %i.mo = zext i16 %i.mn to i32                   ; 2 uses
  %i.mp = mul nsw i32 %i.mo, %i.ml
  %i.mq = getelementptr i8, ptr %i.ll, i64 518
  %i.mr = load i8, ptr %i.mq, align 2, !tbaa !13
  %i.ms = sext i8 %i.mr to i32
  %i.mt = mul nsw i32 %i.ku, %i.ms
  %i.mu = getelementptr i8, ptr %i.ll, i64 519
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !13
  %i.mw = sext i8 %i.mv to i32
  %i.mx = getelementptr i8, ptr %.088103, i64 18
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !10
  %i.mz = zext i16 %i.my to i32                   ; 2 uses
  %i.na = mul nsw i32 %i.mz, %i.mw
  %i.nb = add nsw i32 %i.lp, %i.h
  %i.nc = add nsw i32 %i.nb, %i.lt
  %i.nd = add nsw i32 %i.nc, %i.lx
  %i.ne = add nsw i32 %i.nd, %i.md
  %i.nf = add nsw i32 %i.ne, %i.mi
  %i.ng = add nsw i32 %i.nf, %i.mp
  %i.nh = add nsw i32 %i.ng, %i.mt
  %i.ni = add nsw i32 %i.nh, %i.na
  %i.nj = ashr i32 %i.ni, %i.f
  %i.nk = trunc i32 %i.nj to i16
  %i.nl = getelementptr inbounds nuw i8, ptr %.092101, i64 10
  store i16 %i.nk, ptr %i.nl, align 2, !tbaa !10
  %i.nm = add nsw i32 %i.lh, %i.j                 ; 2 uses
  %i.nn = add nsw i32 %i.nm, 512
  %i.no = ashr i32 %i.nn, 10
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.np ; 8 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 512
  %i.ns = load i8, ptr %i.nr, align 8, !tbaa !13
  %i.nt = sext i8 %i.ns to i32
  %i.nu = getelementptr i8, ptr %.088103, i64 6
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !10
  %i.nw = zext i16 %i.nv to i32
  %i.nx = mul nsw i32 %i.nw, %i.nt
  %i.ny = getelementptr i8, ptr %i.nq, i64 513
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !13
  %i.oa = sext i8 %i.nz to i32
  %i.ob = getelementptr i8, ptr %.088103, i64 8
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !10
  %i.od = zext i16 %i.oc to i32                   ; 2 uses
  %i.oe = mul nsw i32 %i.od, %i.oa
  %i.of = getelementptr i8, ptr %i.nq, i64 514
  %i.og = load i8, ptr %i.of, align 2, !tbaa !13
  %i.oh = sext i8 %i.og to i32
  %i.oi = mul nsw i32 %i.mc, %i.oh
  %i.oj = getelementptr i8, ptr %i.nq, i64 515
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !13
  %i.ol = sext i8 %i.ok to i32
  %i.om = load i16, ptr %i.mh, align 2, !tbaa !10
  %i.on = zext i16 %i.om to i32                   ; 2 uses
  %i.oo = mul nsw i32 %i.on, %i.ol
  %i.op = getelementptr i8, ptr %i.nq, i64 516
  %i.oq = load i8, ptr %i.op, align 4, !tbaa !13
  %i.or = sext i8 %i.oq to i32
  %i.os = getelementptr i8, ptr %.088103, i64 14
  %i.ot = mul nsw i32 %i.mo, %i.or
  %i.ou = getelementptr i8, ptr %i.nq, i64 517
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !13
  %i.ow = sext i8 %i.ov to i32
  %i.ox = getelementptr i8, ptr %.088103, i64 16
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !10
  %i.oz = zext i16 %i.oy to i32                   ; 2 uses
  %i.pa = mul nsw i32 %i.oz, %i.ow
  %i.pb = getelementptr i8, ptr %i.nq, i64 518
  %i.pc = load i8, ptr %i.pb, align 2, !tbaa !13
  %i.pd = sext i8 %i.pc to i32
  %i.pe = mul nsw i32 %i.mz, %i.pd
  %i.pf = getelementptr i8, ptr %i.nq, i64 519
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !13
  %i.ph = sext i8 %i.pg to i32
  %i.pi = getelementptr i8, ptr %.088103, i64 20
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !10
  %i.pk = zext i16 %i.pj to i32                   ; 2 uses
  %i.pl = mul nsw i32 %i.pk, %i.ph
  %i.pm = add nsw i32 %i.nx, %i.h
  %i.pn = add nsw i32 %i.pm, %i.oe
  %i.po = add nsw i32 %i.pn, %i.oi
  %i.pp = add nsw i32 %i.po, %i.oo
  %i.pq = add nsw i32 %i.pp, %i.ot
  %i.pr = add nsw i32 %i.pq, %i.pa
  %i.ps = add nsw i32 %i.pr, %i.pe
  %i.pt = add nsw i32 %i.ps, %i.pl
  %i.pu = ashr i32 %i.pt, %i.f
  %i.pv = trunc i32 %i.pu to i16
  %i.pw = getelementptr inbounds nuw i8, ptr %.092101, i64 12
  store i16 %i.pv, ptr %i.pw, align 4, !tbaa !10
  %.reass = add nsw i32 %i.nm, %invariant.op
  %i.px = ashr i32 %.reass, 10
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.py ; 8 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 512
  %i.qb = load i8, ptr %i.qa, align 8, !tbaa !13
  %i.qc = sext i8 %i.qb to i32
  %i.qd = mul nsw i32 %i.od, %i.qc
  %i.qe = getelementptr i8, ptr %i.pz, i64 513
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !13
  %i.qg = sext i8 %i.qf to i32
  %i.qh = getelementptr i8, ptr %.088103, i64 10
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !10
  %i.qj = zext i16 %i.qi to i32
  %i.qk = mul nsw i32 %i.qj, %i.qg
  %i.ql = getelementptr i8, ptr %i.pz, i64 514
  %i.qm = load i8, ptr %i.ql, align 2, !tbaa !13
  %i.qn = sext i8 %i.qm to i32
  %i.qo = mul nsw i32 %i.on, %i.qn
  %i.qp = getelementptr i8, ptr %i.pz, i64 515
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !13
  %i.qr = sext i8 %i.qq to i32
  %i.qs = load i16, ptr %i.os, align 2, !tbaa !10
  %i.qt = zext i16 %i.qs to i32
  %i.qu = mul nsw i32 %i.qt, %i.qr
  %i.qv = getelementptr i8, ptr %i.pz, i64 516
  %i.qw = load i8, ptr %i.qv, align 4, !tbaa !13
  %i.qx = sext i8 %i.qw to i32
  %i.qy = mul nsw i32 %i.oz, %i.qx
  %i.qz = getelementptr i8, ptr %i.pz, i64 517
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !13
  %i.rb = sext i8 %i.ra to i32
  %i.rc = getelementptr i8, ptr %.088103, i64 18
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !10
  %i.re = zext i16 %i.rd to i32
  %i.rf = mul nsw i32 %i.re, %i.rb
  %i.rg = getelementptr i8, ptr %i.pz, i64 518
  %i.rh = load i8, ptr %i.rg, align 2, !tbaa !13
  %i.ri = sext i8 %i.rh to i32
  %i.rj = mul nsw i32 %i.pk, %i.ri
  %i.rk = getelementptr i8, ptr %i.pz, i64 519
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !13
  %i.rm = sext i8 %i.rl to i32
  %i.rn = getelementptr i8, ptr %.088103, i64 22
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !10
  %i.rp = zext i16 %i.ro to i32
  %i.rq = mul nsw i32 %i.rp, %i.rm
  %i.rr = add nsw i32 %i.qd, %i.h
  %i.rs = add nsw i32 %i.rr, %i.qk
  %i.rt = add nsw i32 %i.rs, %i.qo
  %i.ru = add nsw i32 %i.rt, %i.qu
  %i.rv = add nsw i32 %i.ru, %i.qy
  %i.rw = add nsw i32 %i.rv, %i.rf
  %i.rx = add nsw i32 %i.rw, %i.rj
  %i.ry = add nsw i32 %i.rx, %i.rq
  %i.rz = ashr i32 %i.ry, %i.f
  %i.sa = trunc i32 %i.rz to i16
  %i.sb = getelementptr inbounds nuw i8, ptr %.092101, i64 14
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !10
  %i.sc = getelementptr inbounds i8, ptr %.088103, i64 %3
  %i.sd = getelementptr inbounds nuw i8, ptr %.092101, i64 16
  %i.se = add nuw nsw i32 %.091102, 1             ; 2 uses
  %i.sf = add nsw i32 %.093100, %i.m
  %exitcond.not = icmp eq i32 %i.se, 15
  br i1 %exitcond.not, label %bb.b, label %.preheader97

bb.b:                                             ; preds = %.preheader97
  %i.sg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.sh = add nsw i32 %i.b, -11                   ; 2 uses
  %i.si = shl nuw nsw i32 1, %i.sh
  %i.sj = lshr i32 %i.si, 1
  %i.sk = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.sl = and i64 %1, 1
  %.not.i96 = icmp eq i64 %i.sl, 0
  tail call void @llvm.assume(i1 %.not.i96)
  %i.sm = getelementptr inbounds nuw i8, ptr %4, i64 6
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.d
  %.0109 = phi ptr [ %0, %bb.b ], [ %i.so, %bb.d ] ; 2 uses
  %.087108 = phi i32 [ 0, %bb.b ], [ %i.sp, %bb.d ]
  %.1107 = phi ptr [ %i.sg, %bb.b ], [ %i.sn, %bb.d ] ; 2 uses
  %.094106 = phi i32 [ %6, %bb.b ], [ %i.ss, %bb.d ] ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void

bb.d:                                             ; preds = %bb.e
  %i.sn = getelementptr inbounds nuw i8, ptr %.1107, i64 16
  %i.so = getelementptr inbounds i8, ptr %.0109, i64 %1
  %i.sp = add nuw nsw i32 %.087108, 1             ; 2 uses
  %i.sq = load i16, ptr %i.sm, align 2, !tbaa !10
  %i.sr = sext i16 %i.sq to i32
  %i.ss = add nsw i32 %.094106, %i.sr
  %exitcond113.not = icmp eq i32 %i.sp, 8
  br i1 %exitcond113.not, label %bb.c, label %.preheader

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.085105 = phi i32 [ %.094106, %.preheader ], [ %i.vr, %bb.e ] ; 2 uses
  %i.st = add nsw i32 %.085105, 512
  %i.su = ashr i32 %i.st, 10
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.sv ; 8 uses
  %i.sx = getelementptr i8, ptr %i.sw, i64 512
  %i.sy = load i8, ptr %i.sx, align 8, !tbaa !13
  %i.sz = sext i8 %i.sy to i32
  %i.ta = getelementptr [2 x i8], ptr %.1107, i64 %indvars.iv ; 8 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 -48
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !10
  %i.td = sext i16 %i.tc to i32
  %i.te = mul nsw i32 %i.td, %i.sz
  %i.tf = getelementptr i8, ptr %i.sw, i64 513
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !13
  %i.th = sext i8 %i.tg to i32
  %i.ti = getelementptr i8, ptr %i.ta, i64 -32
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !10
  %i.tk = sext i16 %i.tj to i32
  %i.tl = mul nsw i32 %i.tk, %i.th
  %i.tm = getelementptr i8, ptr %i.sw, i64 514
  %i.tn = load i8, ptr %i.tm, align 2, !tbaa !13
  %i.to = sext i8 %i.tn to i32
  %i.tp = getelementptr i8, ptr %i.ta, i64 -16
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !10
  %i.tr = sext i16 %i.tq to i32
  %i.ts = mul nsw i32 %i.tr, %i.to
  %i.tt = getelementptr i8, ptr %i.sw, i64 515
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !13
  %i.tv = sext i8 %i.tu to i32
  %i.tw = load i16, ptr %i.ta, align 2, !tbaa !10
  %i.tx = sext i16 %i.tw to i32
  %i.ty = mul nsw i32 %i.tx, %i.tv
  %i.tz = getelementptr i8, ptr %i.sw, i64 516
  %i.ua = load i8, ptr %i.tz, align 4, !tbaa !13
  %i.ub = sext i8 %i.ua to i32
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !10
  %i.ue = sext i16 %i.ud to i32
  %i.uf = mul nsw i32 %i.ue, %i.ub
  %i.ug = getelementptr i8, ptr %i.sw, i64 517
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !13
  %i.ui = sext i8 %i.uh to i32
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !10
  %i.ul = sext i16 %i.uk to i32
  %i.um = mul nsw i32 %i.ul, %i.ui
  %i.un = getelementptr i8, ptr %i.sw, i64 518
  %i.uo = load i8, ptr %i.un, align 2, !tbaa !13
  %i.up = sext i8 %i.uo to i32
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ta, i64 48
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !10
  %i.us = sext i16 %i.ur to i32
  %i.ut = mul nsw i32 %i.us, %i.up
  %i.uu = getelementptr i8, ptr %i.sw, i64 519
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !13
  %i.uw = sext i8 %i.uv to i32
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ta, i64 64
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !10
  %i.uz = sext i16 %i.uy to i32
  %i.va = mul nsw i32 %i.uz, %i.uw
  %i.vb = add nsw i32 %i.te, %i.sj
  %i.vc = add nsw i32 %i.vb, %i.tl
  %i.vd = add nsw i32 %i.vc, %i.ts
  %i.ve = add nsw i32 %i.vd, %i.ty
  %i.vf = add nsw i32 %i.ve, %i.uf
  %i.vg = add nsw i32 %i.vf, %i.um
  %i.vh = add nsw i32 %i.vg, %i.ut
  %i.vi = add nsw i32 %i.vh, %i.va
  %i.vj = ashr i32 %i.vi, %i.sh                   ; 2 uses
  %i.vk = icmp slt i32 %i.vj, 0
  %i.vl = tail call i32 @llvm.smin.i32(i32 %i.vj, i32 %7)
  %i.vm = trunc i32 %i.vl to i16
  %i.vn = select i1 %i.vk, i16 0, i16 %i.vm
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %.0109, i64 %indvars.iv
  store i16 %i.vn, ptr %i.vo, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.vp = load i16, ptr %i.sk, align 2, !tbaa !10
  %i.vq = sext i16 %i.vp to i32
  %i.vr = add nsw i32 %.085105, %i.vq
  %exitcond112.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond112.not, label %bb.d, label %bb.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @warp_affine_8x8t_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = alloca [120 x i16], align 16             ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = and i64 %3, 1
  %.not.i = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.d = ashr exact i64 %3, 1
  %.idx = mul i64 %i.d, -6
  %i.e = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.f = sub nsw i32 25, %i.b                     ; 9 uses
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = lshr i32 %i.g, 1                         ; 8 uses
  %i.i = load i16, ptr %4, align 2, !tbaa !10
  %i.j = sext i16 %i.i to i32                     ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !10
  %i.m = sext i16 %i.l to i32
  %invariant.op = add nsw i32 %i.j, 512
  br label %.preheader93

.preheader93:                                     ; preds = %bb.a, %.preheader93
  %.08599 = phi ptr [ %i.e, %bb.a ], [ %i.sc, %.preheader93 ] ; 34 uses
  %.08898 = phi i32 [ 0, %bb.a ], [ %i.se, %.preheader93 ]
  %.08997 = phi ptr [ %i.a, %bb.a ], [ %i.sd, %.preheader93 ] ; 9 uses
  %.09096 = phi i32 [ %5, %bb.a ], [ %i.sf, %.preheader93 ] ; 3 uses
  %i.n = add nsw i32 %.09096, 512
  %i.o = ashr i32 %i.n, 10
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.p ; 8 uses
  %i.r = getelementptr i8, ptr %i.q, i64 512
  %i.s = load i8, ptr %i.r, align 8, !tbaa !13
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr i8, ptr %.08599, i64 -6
  %i.v = load i16, ptr %i.u, align 2, !tbaa !10
  %i.w = zext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = getelementptr i8, ptr %i.q, i64 513
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = sext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %.08599, i64 -4
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !10
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.aa
  %i.af = getelementptr i8, ptr %i.q, i64 514
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !13
  %i.ah = sext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %.08599, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ak = zext i16 %i.aj to i32                   ; 2 uses
  %i.al = mul nsw i32 %i.ak, %i.ah
  %i.am = getelementptr i8, ptr %i.q, i64 515
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = sext i8 %i.an to i32
  %i.ap = load i16, ptr %.08599, align 2, !tbaa !10
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = getelementptr i8, ptr %i.q, i64 516
  %i.at = load i8, ptr %i.as, align 4, !tbaa !13
  %i.au = sext i8 %i.at to i32
  %i.av = getelementptr i8, ptr %.08599, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !10
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %i.au
  %i.az = getelementptr i8, ptr %i.q, i64 517
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = sext i8 %i.ba to i32
  %i.bc = getelementptr i8, ptr %.08599, i64 4    ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !10
  %i.be = zext i16 %i.bd to i32                   ; 2 uses
  %i.bf = mul nsw i32 %i.be, %i.bb
  %i.bg = getelementptr i8, ptr %i.q, i64 518
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !13
  %i.bi = sext i8 %i.bh to i32
  %i.bj = getelementptr i8, ptr %.08599, i64 6    ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !10
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %i.bi
  %i.bn = getelementptr i8, ptr %i.q, i64 519
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = sext i8 %i.bo to i32
  %i.bq = getelementptr i8, ptr %.08599, i64 8    ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !10
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = mul nsw i32 %i.bs, %i.bp
  %i.bu = add nsw i32 %i.x, %i.h
  %i.bv = add nsw i32 %i.bu, %i.ae
  %i.bw = add nsw i32 %i.bv, %i.al
  %i.bx = add nsw i32 %i.bw, %i.ar
  %i.by = add nsw i32 %i.bx, %i.ay
  %i.bz = add nsw i32 %i.by, %i.bf
  %i.ca = add nsw i32 %i.bz, %i.bm
  %i.cb = add nsw i32 %i.ca, %i.bt
  %i.cc = ashr i32 %i.cb, %i.f
  %i.cd = trunc i32 %i.cc to i16
  store i16 %i.cd, ptr %.08997, align 16, !tbaa !10
  %i.ce = add nsw i32 %.09096, %i.j               ; 2 uses
  %i.cf = add nsw i32 %i.ce, 512
  %i.cg = ashr i32 %i.cf, 10
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.ch ; 8 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 512
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !13
  %i.cl = sext i8 %i.ck to i32
  %i.cm = mul nsw i32 %i.ad, %i.cl
  %i.cn = getelementptr i8, ptr %i.ci, i64 513
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = sext i8 %i.co to i32
  %i.cq = mul nsw i32 %i.ak, %i.cp
  %i.cr = getelementptr i8, ptr %i.ci, i64 514
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !13
  %i.ct = sext i8 %i.cs to i32
  %i.cu = mul nsw i32 %i.aq, %i.ct
  %i.cv = getelementptr i8, ptr %i.ci, i64 515
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = sext i8 %i.cw to i32
  %i.cy = mul nsw i32 %i.ax, %i.cx
  %i.cz = getelementptr i8, ptr %i.ci, i64 516
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !13
  %i.db = sext i8 %i.da to i32
  %i.dc = mul nsw i32 %i.be, %i.db
  %i.dd = getelementptr i8, ptr %i.ci, i64 517
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = sext i8 %i.de to i32
  %i.dg = mul nsw i32 %i.bl, %i.df
  %i.dh = getelementptr i8, ptr %i.ci, i64 518
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !13
  %i.dj = sext i8 %i.di to i32
  %i.dk = mul nsw i32 %i.bs, %i.dj
  %i.dl = getelementptr i8, ptr %i.ci, i64 519
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = sext i8 %i.dm to i32
  %i.do = getelementptr i8, ptr %.08599, i64 10
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !10
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = mul nsw i32 %i.dq, %i.dn
  %i.ds = add nsw i32 %i.cm, %i.h
  %i.dt = add nsw i32 %i.ds, %i.cq
  %i.du = add nsw i32 %i.dt, %i.cu
  %i.dv = add nsw i32 %i.du, %i.cy
  %i.dw = add nsw i32 %i.dv, %i.dc
  %i.dx = add nsw i32 %i.dw, %i.dg
  %i.dy = add nsw i32 %i.dx, %i.dk
  %i.dz = add nsw i32 %i.dy, %i.dr
  %i.ea = ashr i32 %i.dz, %i.f
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %.08997, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !10
  %i.ed = add nsw i32 %i.ce, %i.j                 ; 2 uses
  %i.ee = add nsw i32 %i.ed, 512
  %i.ef = ashr i32 %i.ee, 10
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.eg ; 8 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 512
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !13
  %i.ek = sext i8 %i.ej to i32
  %i.el = getelementptr i8, ptr %.08599, i64 -2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !10
  %i.en = zext i16 %i.em to i32
  %i.eo = mul nsw i32 %i.en, %i.ek
  %i.ep = getelementptr i8, ptr %i.eh, i64 513
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !13
  %i.er = sext i8 %i.eq to i32
  %i.es = load i16, ptr %.08599, align 2, !tbaa !10
  %i.et = zext i16 %i.es to i32                   ; 2 uses
  %i.eu = mul nsw i32 %i.et, %i.er
  %i.ev = getelementptr i8, ptr %i.eh, i64 514
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !13
  %i.ex = sext i8 %i.ew to i32
  %i.ey = getelementptr i8, ptr %.08599, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !10
  %i.fa = zext i16 %i.ez to i32                   ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.ex
  %i.fc = getelementptr i8, ptr %i.eh, i64 515
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13
  %i.fe = sext i8 %i.fd to i32
  %i.ff = load i16, ptr %i.bc, align 2, !tbaa !10
  %i.fg = zext i16 %i.ff to i32                   ; 2 uses
  %i.fh = mul nsw i32 %i.fg, %i.fe
  %i.fi = getelementptr i8, ptr %i.eh, i64 516
  %i.fj = load i8, ptr %i.fi, align 4, !tbaa !13
  %i.fk = sext i8 %i.fj to i32
  %i.fl = load i16, ptr %i.bj, align 2, !tbaa !10
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = mul nsw i32 %i.fm, %i.fk
  %i.fo = getelementptr i8, ptr %i.eh, i64 517
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = sext i8 %i.fp to i32
  %i.fr = getelementptr i8, ptr %.08599, i64 8
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !10
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = mul nsw i32 %i.ft, %i.fq
  %i.fv = getelementptr i8, ptr %i.eh, i64 518
  %i.fw = load i8, ptr %i.fv, align 2, !tbaa !13
  %i.fx = sext i8 %i.fw to i32
  %i.fy = mul nsw i32 %i.dq, %i.fx
  %i.fz = getelementptr i8, ptr %i.eh, i64 519
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.gb = sext i8 %i.ga to i32
  %i.gc = getelementptr i8, ptr %.08599, i64 12
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !10
  %i.ge = zext i16 %i.gd to i32                   ; 2 uses
  %i.gf = mul nsw i32 %i.ge, %i.gb
  %i.gg = add nsw i32 %i.eo, %i.h
  %i.gh = add nsw i32 %i.gg, %i.eu
  %i.gi = add nsw i32 %i.gh, %i.fb
  %i.gj = add nsw i32 %i.gi, %i.fh
  %i.gk = add nsw i32 %i.gj, %i.fn
  %i.gl = add nsw i32 %i.gk, %i.fu
  %i.gm = add nsw i32 %i.gl, %i.fy
  %i.gn = add nsw i32 %i.gm, %i.gf
  %i.go = ashr i32 %i.gn, %i.f
  %i.gp = trunc i32 %i.go to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %.08997, i64 4
  store i16 %i.gp, ptr %i.gq, align 4, !tbaa !10
  %i.gr = add nsw i32 %i.ed, %i.j                 ; 2 uses
  %i.gs = add nsw i32 %i.gr, 512
  %i.gt = ashr i32 %i.gs, 10
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.gu ; 8 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 512
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !13
  %i.gy = sext i8 %i.gx to i32
  %i.gz = mul nsw i32 %i.et, %i.gy
  %i.ha = getelementptr i8, ptr %i.gv, i64 513
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !13
  %i.hc = sext i8 %i.hb to i32
  %i.hd = mul nsw i32 %i.fa, %i.hc
  %i.he = getelementptr i8, ptr %i.gv, i64 514
  %i.hf = load i8, ptr %i.he, align 2, !tbaa !13
  %i.hg = sext i8 %i.hf to i32
  %i.hh = mul nsw i32 %i.fg, %i.hg
  %i.hi = getelementptr i8, ptr %i.gv, i64 515
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !13
  %i.hk = sext i8 %i.hj to i32
  %i.hl = mul nsw i32 %i.fm, %i.hk
  %i.hm = getelementptr i8, ptr %i.gv, i64 516
  %i.hn = load i8, ptr %i.hm, align 4, !tbaa !13
  %i.ho = sext i8 %i.hn to i32
  %i.hp = mul nsw i32 %i.ft, %i.ho
  %i.hq = getelementptr i8, ptr %i.gv, i64 517
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !13
  %i.hs = sext i8 %i.hr to i32
  %i.ht = getelementptr i8, ptr %.08599, i64 10
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !10
  %i.hv = zext i16 %i.hu to i32                   ; 2 uses
  %i.hw = mul nsw i32 %i.hv, %i.hs
  %i.hx = getelementptr i8, ptr %i.gv, i64 518
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !13
  %i.hz = sext i8 %i.hy to i32
  %i.ia = mul nsw i32 %i.ge, %i.hz
  %i.ib = getelementptr i8, ptr %i.gv, i64 519
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !13
  %i.id = sext i8 %i.ic to i32
  %i.ie = getelementptr i8, ptr %.08599, i64 14
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !10
  %i.ig = zext i16 %i.if to i32                   ; 2 uses
  %i.ih = mul nsw i32 %i.ig, %i.id
  %i.ii = add nsw i32 %i.gz, %i.h
  %i.ij = add nsw i32 %i.ii, %i.hd
  %i.ik = add nsw i32 %i.ij, %i.hh
  %i.il = add nsw i32 %i.ik, %i.hl
  %i.im = add nsw i32 %i.il, %i.hp
  %i.in = add nsw i32 %i.im, %i.hw
  %i.io = add nsw i32 %i.in, %i.ia
  %i.ip = add nsw i32 %i.io, %i.ih
  %i.iq = ashr i32 %i.ip, %i.f
  %i.ir = trunc i32 %i.iq to i16
  %i.is = getelementptr inbounds nuw i8, ptr %.08997, i64 6
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !10
  %i.it = add nsw i32 %i.gr, %i.j                 ; 2 uses
  %i.iu = add nsw i32 %i.it, 512
  %i.iv = ashr i32 %i.iu, 10
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.iw ; 8 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 512
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !13
  %i.ja = sext i8 %i.iz to i32
  %i.jb = getelementptr i8, ptr %.08599, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !10
  %i.jd = zext i16 %i.jc to i32
  %i.je = mul nsw i32 %i.jd, %i.ja
  %i.jf = getelementptr i8, ptr %i.ix, i64 513
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !13
  %i.jh = sext i8 %i.jg to i32
  %i.ji = getelementptr i8, ptr %.08599, i64 4
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !10
  %i.jk = zext i16 %i.jj to i32                   ; 2 uses
  %i.jl = mul nsw i32 %i.jk, %i.jh
  %i.jm = getelementptr i8, ptr %i.ix, i64 514
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !13
  %i.jo = sext i8 %i.jn to i32
  %i.jp = getelementptr i8, ptr %.08599, i64 6
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !10
  %i.jr = zext i16 %i.jq to i32                   ; 2 uses
  %i.js = mul nsw i32 %i.jr, %i.jo
  %i.jt = getelementptr i8, ptr %i.ix, i64 515
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !13
  %i.jv = sext i8 %i.ju to i32
  %i.jw = load i16, ptr %i.bq, align 2, !tbaa !10
  %i.jx = zext i16 %i.jw to i32                   ; 2 uses
  %i.jy = mul nsw i32 %i.jx, %i.jv
  %i.jz = getelementptr i8, ptr %i.ix, i64 516
  %i.ka = load i8, ptr %i.jz, align 4, !tbaa !13
  %i.kb = sext i8 %i.ka to i32
  %i.kc = getelementptr i8, ptr %.08599, i64 10
  %i.kd = mul nsw i32 %i.hv, %i.kb
  %i.ke = getelementptr i8, ptr %i.ix, i64 517
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !13
  %i.kg = sext i8 %i.kf to i32
  %i.kh = getelementptr i8, ptr %.08599, i64 12
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !10
  %i.kj = zext i16 %i.ki to i32                   ; 2 uses
  %i.kk = mul nsw i32 %i.kj, %i.kg
  %i.kl = getelementptr i8, ptr %i.ix, i64 518
  %i.km = load i8, ptr %i.kl, align 2, !tbaa !13
  %i.kn = sext i8 %i.km to i32
  %i.ko = mul nsw i32 %i.ig, %i.kn
  %i.kp = getelementptr i8, ptr %i.ix, i64 519
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !13
  %i.kr = sext i8 %i.kq to i32
  %i.ks = getelementptr i8, ptr %.08599, i64 16
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !10
  %i.ku = zext i16 %i.kt to i32                   ; 2 uses
  %i.kv = mul nsw i32 %i.ku, %i.kr
  %i.kw = add nsw i32 %i.je, %i.h
  %i.kx = add nsw i32 %i.kw, %i.jl
  %i.ky = add nsw i32 %i.kx, %i.js
  %i.kz = add nsw i32 %i.ky, %i.jy
  %i.la = add nsw i32 %i.kz, %i.kd
  %i.lb = add nsw i32 %i.la, %i.kk
  %i.lc = add nsw i32 %i.lb, %i.ko
  %i.ld = add nsw i32 %i.lc, %i.kv
  %i.le = ashr i32 %i.ld, %i.f
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr inbounds nuw i8, ptr %.08997, i64 8
  store i16 %i.lf, ptr %i.lg, align 8, !tbaa !10
  %i.lh = add nsw i32 %i.it, %i.j                 ; 2 uses
  %i.li = add nsw i32 %i.lh, 512
  %i.lj = ashr i32 %i.li, 10
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.lk ; 8 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 512
  %i.ln = load i8, ptr %i.lm, align 8, !tbaa !13
  %i.lo = sext i8 %i.ln to i32
  %i.lp = mul nsw i32 %i.jk, %i.lo
  %i.lq = getelementptr i8, ptr %i.ll, i64 513
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !13
  %i.ls = sext i8 %i.lr to i32
  %i.lt = mul nsw i32 %i.jr, %i.ls
  %i.lu = getelementptr i8, ptr %i.ll, i64 514
  %i.lv = load i8, ptr %i.lu, align 2, !tbaa !13
  %i.lw = sext i8 %i.lv to i32
  %i.lx = mul nsw i32 %i.jx, %i.lw
  %i.ly = getelementptr i8, ptr %i.ll, i64 515
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !13
  %i.ma = sext i8 %i.lz to i32
  %i.mb = load i16, ptr %i.kc, align 2, !tbaa !10
  %i.mc = zext i16 %i.mb to i32                   ; 2 uses
  %i.md = mul nsw i32 %i.mc, %i.ma
  %i.me = getelementptr i8, ptr %i.ll, i64 516
  %i.mf = load i8, ptr %i.me, align 4, !tbaa !13
  %i.mg = sext i8 %i.mf to i32
  %i.mh = getelementptr i8, ptr %.08599, i64 12
  %i.mi = mul nsw i32 %i.kj, %i.mg
  %i.mj = getelementptr i8, ptr %i.ll, i64 517
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !13
  %i.ml = sext i8 %i.mk to i32
  %i.mm = getelementptr i8, ptr %.08599, i64 14
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !10
  %i.mo = zext i16 %i.mn to i32                   ; 2 uses
  %i.mp = mul nsw i32 %i.mo, %i.ml
  %i.mq = getelementptr i8, ptr %i.ll, i64 518
  %i.mr = load i8, ptr %i.mq, align 2, !tbaa !13
  %i.ms = sext i8 %i.mr to i32
  %i.mt = mul nsw i32 %i.ku, %i.ms
  %i.mu = getelementptr i8, ptr %i.ll, i64 519
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !13
  %i.mw = sext i8 %i.mv to i32
  %i.mx = getelementptr i8, ptr %.08599, i64 18
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !10
  %i.mz = zext i16 %i.my to i32                   ; 2 uses
  %i.na = mul nsw i32 %i.mz, %i.mw
  %i.nb = add nsw i32 %i.lp, %i.h
  %i.nc = add nsw i32 %i.nb, %i.lt
  %i.nd = add nsw i32 %i.nc, %i.lx
  %i.ne = add nsw i32 %i.nd, %i.md
  %i.nf = add nsw i32 %i.ne, %i.mi
  %i.ng = add nsw i32 %i.nf, %i.mp
  %i.nh = add nsw i32 %i.ng, %i.mt
  %i.ni = add nsw i32 %i.nh, %i.na
  %i.nj = ashr i32 %i.ni, %i.f
  %i.nk = trunc i32 %i.nj to i16
  %i.nl = getelementptr inbounds nuw i8, ptr %.08997, i64 10
  store i16 %i.nk, ptr %i.nl, align 2, !tbaa !10
  %i.nm = add nsw i32 %i.lh, %i.j                 ; 2 uses
  %i.nn = add nsw i32 %i.nm, 512
  %i.no = ashr i32 %i.nn, 10
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.np ; 8 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 512
  %i.ns = load i8, ptr %i.nr, align 8, !tbaa !13
  %i.nt = sext i8 %i.ns to i32
  %i.nu = getelementptr i8, ptr %.08599, i64 6
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !10
  %i.nw = zext i16 %i.nv to i32
  %i.nx = mul nsw i32 %i.nw, %i.nt
  %i.ny = getelementptr i8, ptr %i.nq, i64 513
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !13
  %i.oa = sext i8 %i.nz to i32
  %i.ob = getelementptr i8, ptr %.08599, i64 8
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !10
  %i.od = zext i16 %i.oc to i32                   ; 2 uses
  %i.oe = mul nsw i32 %i.od, %i.oa
  %i.of = getelementptr i8, ptr %i.nq, i64 514
  %i.og = load i8, ptr %i.of, align 2, !tbaa !13
  %i.oh = sext i8 %i.og to i32
  %i.oi = mul nsw i32 %i.mc, %i.oh
  %i.oj = getelementptr i8, ptr %i.nq, i64 515
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !13
  %i.ol = sext i8 %i.ok to i32
  %i.om = load i16, ptr %i.mh, align 2, !tbaa !10
  %i.on = zext i16 %i.om to i32                   ; 2 uses
  %i.oo = mul nsw i32 %i.on, %i.ol
  %i.op = getelementptr i8, ptr %i.nq, i64 516
  %i.oq = load i8, ptr %i.op, align 4, !tbaa !13
  %i.or = sext i8 %i.oq to i32
  %i.os = getelementptr i8, ptr %.08599, i64 14
  %i.ot = mul nsw i32 %i.mo, %i.or
  %i.ou = getelementptr i8, ptr %i.nq, i64 517
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !13
  %i.ow = sext i8 %i.ov to i32
  %i.ox = getelementptr i8, ptr %.08599, i64 16
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !10
  %i.oz = zext i16 %i.oy to i32                   ; 2 uses
  %i.pa = mul nsw i32 %i.oz, %i.ow
  %i.pb = getelementptr i8, ptr %i.nq, i64 518
  %i.pc = load i8, ptr %i.pb, align 2, !tbaa !13
  %i.pd = sext i8 %i.pc to i32
  %i.pe = mul nsw i32 %i.mz, %i.pd
  %i.pf = getelementptr i8, ptr %i.nq, i64 519
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !13
  %i.ph = sext i8 %i.pg to i32
  %i.pi = getelementptr i8, ptr %.08599, i64 20
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !10
  %i.pk = zext i16 %i.pj to i32                   ; 2 uses
  %i.pl = mul nsw i32 %i.pk, %i.ph
  %i.pm = add nsw i32 %i.nx, %i.h
  %i.pn = add nsw i32 %i.pm, %i.oe
  %i.po = add nsw i32 %i.pn, %i.oi
  %i.pp = add nsw i32 %i.po, %i.oo
  %i.pq = add nsw i32 %i.pp, %i.ot
  %i.pr = add nsw i32 %i.pq, %i.pa
  %i.ps = add nsw i32 %i.pr, %i.pe
  %i.pt = add nsw i32 %i.ps, %i.pl
  %i.pu = ashr i32 %i.pt, %i.f
  %i.pv = trunc i32 %i.pu to i16
  %i.pw = getelementptr inbounds nuw i8, ptr %.08997, i64 12
  store i16 %i.pv, ptr %i.pw, align 4, !tbaa !10
  %.reass = add nsw i32 %i.nm, %invariant.op
  %i.px = ashr i32 %.reass, 10
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.py ; 8 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 512
  %i.qb = load i8, ptr %i.qa, align 8, !tbaa !13
  %i.qc = sext i8 %i.qb to i32
  %i.qd = mul nsw i32 %i.od, %i.qc
  %i.qe = getelementptr i8, ptr %i.pz, i64 513
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !13
  %i.qg = sext i8 %i.qf to i32
  %i.qh = getelementptr i8, ptr %.08599, i64 10
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !10
  %i.qj = zext i16 %i.qi to i32
  %i.qk = mul nsw i32 %i.qj, %i.qg
  %i.ql = getelementptr i8, ptr %i.pz, i64 514
  %i.qm = load i8, ptr %i.ql, align 2, !tbaa !13
  %i.qn = sext i8 %i.qm to i32
  %i.qo = mul nsw i32 %i.on, %i.qn
  %i.qp = getelementptr i8, ptr %i.pz, i64 515
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !13
  %i.qr = sext i8 %i.qq to i32
  %i.qs = load i16, ptr %i.os, align 2, !tbaa !10
  %i.qt = zext i16 %i.qs to i32
  %i.qu = mul nsw i32 %i.qt, %i.qr
  %i.qv = getelementptr i8, ptr %i.pz, i64 516
  %i.qw = load i8, ptr %i.qv, align 4, !tbaa !13
  %i.qx = sext i8 %i.qw to i32
  %i.qy = mul nsw i32 %i.oz, %i.qx
  %i.qz = getelementptr i8, ptr %i.pz, i64 517
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !13
  %i.rb = sext i8 %i.ra to i32
  %i.rc = getelementptr i8, ptr %.08599, i64 18
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !10
  %i.re = zext i16 %i.rd to i32
  %i.rf = mul nsw i32 %i.re, %i.rb
  %i.rg = getelementptr i8, ptr %i.pz, i64 518
  %i.rh = load i8, ptr %i.rg, align 2, !tbaa !13
  %i.ri = sext i8 %i.rh to i32
  %i.rj = mul nsw i32 %i.pk, %i.ri
  %i.rk = getelementptr i8, ptr %i.pz, i64 519
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !13
  %i.rm = sext i8 %i.rl to i32
  %i.rn = getelementptr i8, ptr %.08599, i64 22
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !10
  %i.rp = zext i16 %i.ro to i32
  %i.rq = mul nsw i32 %i.rp, %i.rm
  %i.rr = add nsw i32 %i.qd, %i.h
  %i.rs = add nsw i32 %i.rr, %i.qk
  %i.rt = add nsw i32 %i.rs, %i.qo
  %i.ru = add nsw i32 %i.rt, %i.qu
  %i.rv = add nsw i32 %i.ru, %i.qy
  %i.rw = add nsw i32 %i.rv, %i.rf
  %i.rx = add nsw i32 %i.rw, %i.rj
  %i.ry = add nsw i32 %i.rx, %i.rq
  %i.rz = ashr i32 %i.ry, %i.f
  %i.sa = trunc i32 %i.rz to i16
  %i.sb = getelementptr inbounds nuw i8, ptr %.08997, i64 14
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !10
  %i.sc = getelementptr inbounds i8, ptr %.08599, i64 %3
  %i.sd = getelementptr inbounds nuw i8, ptr %.08997, i64 16
  %i.se = add nuw nsw i32 %.08898, 1              ; 2 uses
  %i.sf = add nsw i32 %.09096, %i.m
  %exitcond.not = icmp eq i32 %i.se, 15
  br i1 %exitcond.not, label %bb.b, label %.preheader93

bb.b:                                             ; preds = %.preheader93
  %i.sg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.sh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 6
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.d
  %.0105 = phi ptr [ %0, %bb.b ], [ %i.sk, %bb.d ] ; 2 uses
  %.084104 = phi i32 [ 0, %bb.b ], [ %i.sl, %bb.d ]
  %.1103 = phi ptr [ %i.sg, %bb.b ], [ %i.sj, %bb.d ] ; 2 uses
  %.091102 = phi i32 [ %6, %bb.b ], [ %i.so, %bb.d ] ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void

bb.d:                                             ; preds = %bb.e
  %i.sj = getelementptr inbounds nuw i8, ptr %.1103, i64 16
  %i.sk = getelementptr inbounds [2 x i8], ptr %.0105, i64 %1
  %i.sl = add nuw nsw i32 %.084104, 1             ; 2 uses
  %i.sm = load i16, ptr %i.si, align 2, !tbaa !10
  %i.sn = sext i16 %i.sm to i32
  %i.so = add nsw i32 %.091102, %i.sn
  %exitcond109.not = icmp eq i32 %i.sl, 8
  br i1 %exitcond109.not, label %bb.c, label %.preheader

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.082101 = phi i32 [ %.091102, %.preheader ], [ %i.vl, %bb.e ] ; 2 uses
  %i.sp = add nsw i32 %.082101, 512
  %i.sq = ashr i32 %i.sp, 10
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr [8 x i8], ptr @dav1d_mc_warp_filter, i64 %i.sr ; 8 uses
  %i.st = getelementptr i8, ptr %i.ss, i64 512
  %i.su = load i8, ptr %i.st, align 8, !tbaa !13
  %i.sv = sext i8 %i.su to i32
  %i.sw = getelementptr [2 x i8], ptr %.1103, i64 %indvars.iv ; 8 uses
  %i.sx = getelementptr i8, ptr %i.sw, i64 -48
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !10
  %i.sz = sext i16 %i.sy to i32
  %i.ta = mul nsw i32 %i.sz, %i.sv
  %i.tb = getelementptr i8, ptr %i.ss, i64 513
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !13
  %i.td = sext i8 %i.tc to i32
  %i.te = getelementptr i8, ptr %i.sw, i64 -32
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !10
  %i.tg = sext i16 %i.tf to i32
  %i.th = mul nsw i32 %i.tg, %i.td
  %i.ti = getelementptr i8, ptr %i.ss, i64 514
  %i.tj = load i8, ptr %i.ti, align 2, !tbaa !13
  %i.tk = sext i8 %i.tj to i32
  %i.tl = getelementptr i8, ptr %i.sw, i64 -16
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !10
  %i.tn = sext i16 %i.tm to i32
  %i.to = mul nsw i32 %i.tn, %i.tk
  %i.tp = getelementptr i8, ptr %i.ss, i64 515
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !13
  %i.tr = sext i8 %i.tq to i32
  %i.ts = load i16, ptr %i.sw, align 2, !tbaa !10
  %i.tt = sext i16 %i.ts to i32
  %i.tu = mul nsw i32 %i.tt, %i.tr
  %i.tv = getelementptr i8, ptr %i.ss, i64 516
  %i.tw = load i8, ptr %i.tv, align 4, !tbaa !13
  %i.tx = sext i8 %i.tw to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !10
  %i.ua = sext i16 %i.tz to i32
  %i.ub = mul nsw i32 %i.ua, %i.tx
  %i.uc = getelementptr i8, ptr %i.ss, i64 517
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !13
  %i.ue = sext i8 %i.ud to i32
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !10
  %i.uh = sext i16 %i.ug to i32
  %i.ui = mul nsw i32 %i.uh, %i.ue
  %i.uj = getelementptr i8, ptr %i.ss, i64 518
  %i.uk = load i8, ptr %i.uj, align 2, !tbaa !13
  %i.ul = sext i8 %i.uk to i32
  %i.um = getelementptr inbounds nuw i8, ptr %i.sw, i64 48
  %i.un = load i16, ptr %i.um, align 2, !tbaa !10
  %i.uo = sext i16 %i.un to i32
  %i.up = mul nsw i32 %i.uo, %i.ul
  %i.uq = getelementptr i8, ptr %i.ss, i64 519
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !13
  %i.us = sext i8 %i.ur to i32
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sw, i64 64
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !10
  %i.uv = sext i16 %i.uu to i32
  %i.uw = mul nsw i32 %i.uv, %i.us
  %i.ux = add nsw i32 %i.ta, 64
  %i.uy = add nsw i32 %i.ux, %i.th
  %i.uz = add nsw i32 %i.uy, %i.to
  %i.va = add nsw i32 %i.uz, %i.tu
  %i.vb = add nsw i32 %i.va, %i.ub
  %i.vc = add nsw i32 %i.vb, %i.ui
  %i.vd = add nsw i32 %i.vc, %i.up
  %i.ve = add nsw i32 %i.vd, %i.uw
  %i.vf = lshr i32 %i.ve, 7
  %i.vg = trunc i32 %i.vf to i16
  %i.vh = add i16 %i.vg, -8192
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %.0105, i64 %indvars.iv
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.vj = load i16, ptr %i.sh, align 2, !tbaa !10
  %i.vk = sext i16 %i.vj to i32
  %i.vl = add nsw i32 %.082101, %i.vk
  %exitcond108.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond108.not, label %bb.d, label %bb.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @emu_edge_c(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9) #3 {
bb.a:
  %i.a = trunc i64 %5 to i32                      ; 3 uses
  %i.b = trunc i64 %3 to i32
  %i.c = add nsw i32 %i.b, -1
  %i.d = icmp slt i32 %i.a, 0
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %i.c)
  %i.f = select i1 %i.d, i32 0, i32 %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = and i64 %9, 1
  %.not.i = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.i = ashr exact i64 %9, 1
  %i.j = mul nsw i64 %i.i, %i.g
  %i.k = trunc i64 %4 to i32                      ; 3 uses
  %i.l = trunc i64 %2 to i32
  %i.m = add nsw i32 %i.l, -1
  %i.n = icmp slt i32 %i.k, 0
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.m)
  %i.p = select i1 %i.n, i32 0, i32 %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [2 x i8], ptr %8, i64 %i.j
end_hunk_2
begin_hunk_3_@put_8tap_c:bb.a
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %4, 4
  %i.g = sext i32 %6 to i64                       ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %8, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.i
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = and i32 %8, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr i8, ptr %i.p, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.r = phi ptr [ null, %bb.a ], [ %i.l, %bb.c ], [ %i.q, %bb.d ] ; 13 uses
  %.not199 = icmp eq i32 %7, 0
  br i1 %.not199, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp sgt i32 %5, 4
  %i.t = lshr i32 %8, 2                           ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.u
  %i.w = sext i32 %7 to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = and i32 %i.t, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.aa
  %i.ac = sext i32 %7 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 352
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.af = phi ptr [ null, %bb.e ], [ %i.y, %bb.g ], [ %i.ae, %bb.h ] ; 23 uses
  %i.ag = and i64 %1, 1
  %.not.i = icmp eq i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.ah = ashr exact i64 %1, 1
  %i.ai = and i64 %3, 1
  %.not.i211 = icmp eq i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i211)
  %i.aj = ashr exact i64 %3, 1                    ; 7 uses
  %.not200 = icmp eq ptr %i.r, null
  %.not201 = icmp eq ptr %i.af, null              ; 2 uses
  br i1 %.not200, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not201, label %.preheader212, label %bb.k

.preheader212:                                    ; preds = %bb.j
  %i.ak = icmp sgt i32 %4, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.as = add nuw nsw i32 %i.e, 32                ; 2 uses
  br i1 %i.ak, label %.lr.ph223.preheader, label %.loopexit.split

.lr.ph223.preheader:                              ; preds = %.preheader212
  %wide.trip.count239 = zext nneg i32 %4 to i64   ; 4 uses
  %i.at = add i32 %5, -1
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = mul i64 %3, %i.au
  %i.aw = shl nuw nsw i64 %wide.trip.count239, 1  ; 2 uses
  %i.ax = getelementptr i8, ptr %2, i64 %i.av
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.aw
  %scevgep338 = getelementptr i8, ptr %i.ay, i64 8
  %scevgep339 = getelementptr i8, ptr %2, i64 -6
  %scevgep340 = getelementptr i8, ptr %i.r, i64 8
  %i.az = mul i64 %1, %i.au
  %i.ba = getelementptr i8, ptr %0, i64 %i.az
  %scevgep341 = getelementptr i8, ptr %i.ba, i64 %i.aw ; 2 uses
  %min.iters.check343 = icmp ult i32 %4, 8
  %bound0345 = icmp ult ptr %0, %scevgep340
  %bound1346 = icmp ult ptr %i.r, %scevgep341
  %found.conflict347 = and i1 %bound0345, %bound1346
  %stride.check348 = icmp slt i64 %1, 0
  %i.bb = or i1 %found.conflict347, %stride.check348
  %bound0349 = icmp ult ptr %0, %scevgep338
  %bound1350 = icmp ult ptr %scevgep339, %scevgep341
  %found.conflict351 = and i1 %bound0349, %bound1350
  %stride.check352 = icmp slt i64 %3, 0
  %i.bc = or i1 %found.conflict351, %stride.check352
  %conflict.rdx = or i1 %i.bb, %i.bc
  %n.vec354 = and i64 %wide.trip.count239, 2147483640 ; 3 uses
  %broadcast.splatinsert371 = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat372 = shufflevector <8 x i32> %broadcast.splatinsert371, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert373 = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat374 = shufflevector <8 x i32> %broadcast.splatinsert373, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n387 = icmp eq i64 %n.vec354, %wide.trip.count239
  br label %.lr.ph223

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bd = icmp sgt i32 %4, 0
  br i1 %i.bd, label %.split, label %.split220

.split:                                           ; preds = %bb.k
  %.idx208 = mul i64 %i.aj, -6
  %i.be = getelementptr inbounds i8, ptr %2, i64 %.idx208
  %i.bf = add nsw i32 %5, 7
  %i.bg = load <8 x i8>, ptr %i.r, align 1, !tbaa !13
  %i.bh = sext <8 x i8> %i.bg to <8 x i32>        ; 9 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat260 = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat262 = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat264 = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat266 = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat268 = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat270 = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat272 = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert273 = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat274 = shufflevector <8 x i32> %broadcast.splatinsert273, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert275 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat276 = shufflevector <8 x i32> %broadcast.splatinsert275, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.split
  %.0184 = phi ptr [ %i.be, %.split ], [ %i.cv, %._crit_edge ] ; 6 uses
  %.0181 = phi i32 [ %i.bf, %.split ], [ %i.cw, %._crit_edge ]
  %.0180 = phi ptr [ %i.a, %.split ], [ %i.cu, %._crit_edge ] ; 3 uses
  %.pre = load i16, ptr %.0184, align 2, !tbaa !10 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load279, %vector.body ]
  %i.bi = getelementptr [2 x i8], ptr %.0184, i64 %index ; 6 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -6
  %wide.load = load <8 x i16>, ptr %i.bj, align 2, !tbaa !10
  %i.bk = zext <8 x i16> %wide.load to <8 x i32>
  %i.bl = mul nsw <8 x i32> %broadcast.splat, %i.bk
  %i.bm = getelementptr i8, ptr %i.bi, i64 -4
  %wide.load277 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !10
  %i.bn = zext <8 x i16> %wide.load277 to <8 x i32>
  %i.bo = mul nsw <8 x i32> %broadcast.splat260, %i.bn
  %i.bp = getelementptr i8, ptr %i.bi, i64 -2
  %wide.load278 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !10
  %i.bq = zext <8 x i16> %wide.load278 to <8 x i32>
  %i.br = mul nsw <8 x i32> %broadcast.splat262, %i.bq
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.0184, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %wide.load279 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !10 ; 4 uses
  %i.bu = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load279, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bv = zext <8 x i16> %i.bu to <8 x i32>
  %i.bw = mul nsw <8 x i32> %broadcast.splat264, %i.bv
  %i.bx = zext <8 x i16> %wide.load279 to <8 x i32>
  %i.by = mul nsw <8 x i32> %broadcast.splat266, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %wide.load280 = load <8 x i16>, ptr %i.bz, align 2, !tbaa !10
  %i.ca = zext <8 x i16> %wide.load280 to <8 x i32>
  %i.cb = mul nsw <8 x i32> %broadcast.splat268, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %wide.load281 = load <8 x i16>, ptr %i.cc, align 2, !tbaa !10
  %i.cd = zext <8 x i16> %wide.load281 to <8 x i32>
  %i.ce = mul nsw <8 x i32> %broadcast.splat270, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.load282 = load <8 x i16>, ptr %i.cf, align 2, !tbaa !10
  %i.cg = zext <8 x i16> %wide.load282 to <8 x i32>
  %i.ch = mul nsw <8 x i32> %broadcast.splat272, %i.cg
  %i.ci = add nsw <8 x i32> %i.bl, %broadcast.splat274
  %i.cj = add nsw <8 x i32> %i.ci, %i.bo
  %i.ck = add nsw <8 x i32> %i.cj, %i.br
  %i.cl = add nsw <8 x i32> %i.ck, %i.bw
  %i.cm = add nsw <8 x i32> %i.cl, %i.by
  %i.cn = add nsw <8 x i32> %i.cm, %i.cb
  %i.co = add nsw <8 x i32> %i.cn, %i.ce
  %i.cp = add nsw <8 x i32> %i.co, %i.ch
  %i.cq = ashr <8 x i32> %i.cp, %broadcast.splat276
  %i.cr = trunc <8 x i32> %i.cq to <8 x i16>
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.0180, i64 %index
  store <8 x i16> %i.cr, ptr %i.cs, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load279, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i16 [ %.pre, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cu = getelementptr inbounds nuw i8, ptr %.0180, i64 256
  %i.cv = getelementptr inbounds i8, ptr %.0184, i64 %3
  %i.cw = add nsw i32 %.0181, -1                  ; 2 uses
  %.not209 = icmp eq i32 %i.cw, 0
  br i1 %.not209, label %.split215, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.cx = phi i16 [ %i.df, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cy = getelementptr [2 x i8], ptr %.0184, i64 %indvars.iv ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 -6
  %i.da = getelementptr i8, ptr %i.cy, i64 -2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %.0184, i64 %indvars.iv.next ; 2 uses
  %i.dd = load <2 x i16>, ptr %i.cz, align 2, !tbaa !10
  %i.de = load <4 x i16>, ptr %i.dc, align 2, !tbaa !10
  %i.df = load i16, ptr %i.dc, align 2, !tbaa !10
  %i.dg = shufflevector <2 x i16> %i.dd, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.db, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.cx, i64 3
  %i.dj = shufflevector <4 x i16> %i.de, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <8 x i16> %i.di, <8 x i16> %i.dj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dl = zext <8 x i16> %i.dk to <8 x i32>
  %i.dm = mul nsw <8 x i32> %i.dl, %i.bh
  %i.dn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dm)
  %op.rdx538 = add i32 %i.dn, %i.e
  %i.do = ashr i32 %op.rdx538, %i.c
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.0180, i64 %indvars.iv
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !181

.split215:                                        ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 3 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 5 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.af, i64 6 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.af, i64 7 ; 2 uses
  %i.dy = add nsw i32 %i.b, -12                   ; 3 uses
  %i.dz = shl nuw nsw i32 1, %i.dy
  %i.ea = lshr i32 %i.dz, 1                       ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %wide.trip.count234 = zext nneg i32 %4 to i64
  %scevgep = getelementptr i8, ptr %i.af, i64 8
  %i.ec = add i32 %5, -1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = mul i64 %1, %i.ed
  %i.ef = shl nuw nsw i64 %wide.trip.count, 1
  %i.eg = getelementptr i8, ptr %0, i64 %i.ee
  %scevgep284 = getelementptr i8, ptr %i.eg, i64 %i.ef
  %min.iters.check286 = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.af, %scevgep284
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %i.eh = or i1 %found.conflict, %stride.check
  %n.vec288 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert305 = insertelement <8 x i32> poison, i32 %i.ea, i64 0
  %broadcast.splat306 = shufflevector <8 x i32> %broadcast.splatinsert305, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert307 = insertelement <8 x i32> poison, i32 %i.dy, i64 0
  %broadcast.splat308 = shufflevector <8 x i32> %broadcast.splatinsert307, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert309 = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat310 = shufflevector <8 x i32> %broadcast.splatinsert309, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n323 = icmp eq i64 %n.vec288, %wide.trip.count
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.split215, %._crit_edge219
  %.0187 = phi i32 [ %i.gn, %._crit_edge219 ], [ %5, %.split215 ]
  %.0182 = phi ptr [ %i.gm, %._crit_edge219 ], [ %0, %.split215 ] ; 3 uses
  %.1 = phi ptr [ %i.gl, %._crit_edge219 ], [ %i.eb, %.split215 ] ; 3 uses
  %brmerge = select i1 %min.iters.check286, i1 true, i1 %i.eh
  br i1 %brmerge, label %scalar.ph285.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %.lr.ph218
  %i.ei = load i8, ptr %i.af, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert289 = insertelement <8 x i8> poison, i8 %i.ei, i64 0
  %broadcast.splat290 = shufflevector <8 x i8> %broadcast.splatinsert289, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ej = sext <8 x i8> %broadcast.splat290 to <8 x i32>
  %i.ek = load i8, ptr %i.dr, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert291 = insertelement <8 x i8> poison, i8 %i.ek, i64 0
  %broadcast.splat292 = shufflevector <8 x i8> %broadcast.splatinsert291, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.el = sext <8 x i8> %broadcast.splat292 to <8 x i32>
  %i.em = load i8, ptr %i.ds, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert293 = insertelement <8 x i8> poison, i8 %i.em, i64 0
  %broadcast.splat294 = shufflevector <8 x i8> %broadcast.splatinsert293, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.en = sext <8 x i8> %broadcast.splat294 to <8 x i32>
  %i.eo = load i8, ptr %i.dt, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert295 = insertelement <8 x i8> poison, i8 %i.eo, i64 0
  %broadcast.splat296 = shufflevector <8 x i8> %broadcast.splatinsert295, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ep = sext <8 x i8> %broadcast.splat296 to <8 x i32>
  %i.eq = load i8, ptr %i.du, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert297 = insertelement <8 x i8> poison, i8 %i.eq, i64 0
  %broadcast.splat298 = shufflevector <8 x i8> %broadcast.splatinsert297, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.er = sext <8 x i8> %broadcast.splat298 to <8 x i32>
  %i.es = load i8, ptr %i.dv, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert299 = insertelement <8 x i8> poison, i8 %i.es, i64 0
  %broadcast.splat300 = shufflevector <8 x i8> %broadcast.splatinsert299, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.et = sext <8 x i8> %broadcast.splat300 to <8 x i32>
  %i.eu = load i8, ptr %i.dw, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert301 = insertelement <8 x i8> poison, i8 %i.eu, i64 0
  %broadcast.splat302 = shufflevector <8 x i8> %broadcast.splatinsert301, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ev = sext <8 x i8> %broadcast.splat302 to <8 x i32>
  %i.ew = load i8, ptr %i.dx, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert303 = insertelement <8 x i8> poison, i8 %i.ew, i64 0
  %broadcast.splat304 = shufflevector <8 x i8> %broadcast.splatinsert303, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ex = sext <8 x i8> %broadcast.splat304 to <8 x i32>
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph287
  %index312 = phi i64 [ 0, %vector.ph287 ], [ %index.next321, %vector.body311 ] ; 3 uses
  %i.ey = getelementptr [2 x i8], ptr %.1, i64 %index312 ; 8 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -768
  %wide.load313 = load <8 x i16>, ptr %i.ez, align 16, !tbaa !10
  %i.fa = sext <8 x i16> %wide.load313 to <8 x i32>
  %i.fb = mul nsw <8 x i32> %i.fa, %i.ej
  %i.fc = getelementptr i8, ptr %i.ey, i64 -512
  %wide.load314 = load <8 x i16>, ptr %i.fc, align 16, !tbaa !10
  %i.fd = sext <8 x i16> %wide.load314 to <8 x i32>
  %i.fe = mul nsw <8 x i32> %i.fd, %i.el
  %i.ff = getelementptr i8, ptr %i.ey, i64 -256
  %wide.load315 = load <8 x i16>, ptr %i.ff, align 16, !tbaa !10
  %i.fg = sext <8 x i16> %wide.load315 to <8 x i32>
  %i.fh = mul nsw <8 x i32> %i.fg, %i.en
  %wide.load316 = load <8 x i16>, ptr %i.ey, align 16, !tbaa !10
  %i.fi = sext <8 x i16> %wide.load316 to <8 x i32>
  %i.fj = mul nsw <8 x i32> %i.fi, %i.ep
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 256
  %wide.load317 = load <8 x i16>, ptr %i.fk, align 16, !tbaa !10
  %i.fl = sext <8 x i16> %wide.load317 to <8 x i32>
  %i.fm = mul nsw <8 x i32> %i.fl, %i.er
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 512
  %wide.load318 = load <8 x i16>, ptr %i.fn, align 16, !tbaa !10
  %i.fo = sext <8 x i16> %wide.load318 to <8 x i32>
  %i.fp = mul nsw <8 x i32> %i.fo, %i.et
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 768
  %wide.load319 = load <8 x i16>, ptr %i.fq, align 16, !tbaa !10
  %i.fr = sext <8 x i16> %wide.load319 to <8 x i32>
  %i.fs = mul nsw <8 x i32> %i.fr, %i.ev
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ey, i64 1024
  %wide.load320 = load <8 x i16>, ptr %i.ft, align 16, !tbaa !10
  %i.fu = sext <8 x i16> %wide.load320 to <8 x i32>
  %i.fv = mul nsw <8 x i32> %i.fu, %i.ex
  %i.fw = add nsw <8 x i32> %i.fb, %broadcast.splat306
  %i.fx = add nsw <8 x i32> %i.fw, %i.fe
  %i.fy = add nsw <8 x i32> %i.fx, %i.fh
  %i.fz = add nsw <8 x i32> %i.fy, %i.fj
  %i.ga = add nsw <8 x i32> %i.fz, %i.fm
  %i.gb = add nsw <8 x i32> %i.ga, %i.fp
  %i.gc = add nsw <8 x i32> %i.gb, %i.fs
  %i.gd = add nsw <8 x i32> %i.gc, %i.fv
  %i.ge = ashr <8 x i32> %i.gd, %broadcast.splat308 ; 2 uses
  %i.gf = icmp slt <8 x i32> %i.ge, zeroinitializer
  %i.gg = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ge, <8 x i32> %broadcast.splat310)
  %i.gh = trunc <8 x i32> %i.gg to <8 x i16>
  %i.gi = select <8 x i1> %i.gf, <8 x i16> zeroinitializer, <8 x i16> %i.gh
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.0182, i64 %index312
  store <8 x i16> %i.gi, ptr %i.gj, align 2, !tbaa !10, !alias.scope !207, !noalias !206
  %index.next321 = add nuw i64 %index312, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next321, %n.vec288
  br i1 %i.gk, label %middle.block322, label %vector.body311, !llvm.loop !185

middle.block322:                                  ; preds = %vector.body311
  br i1 %cmp.n323, label %._crit_edge219, label %scalar.ph285.preheader

scalar.ph285.preheader:                           ; preds = %.lr.ph218, %middle.block322
  %indvars.iv231.ph = phi i64 [ %n.vec288, %middle.block322 ], [ 0, %.lr.ph218 ]
  br label %scalar.ph285

._crit_edge219:                                   ; preds = %scalar.ph285, %middle.block322
  %i.gl = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.gm = getelementptr inbounds i8, ptr %.0182, i64 %1
  %i.gn = add nsw i32 %.0187, -1                  ; 2 uses
  %.not210 = icmp eq i32 %i.gn, 0
  br i1 %.not210, label %.split220, label %.lr.ph218

scalar.ph285:                                     ; preds = %scalar.ph285.preheader, %scalar.ph285
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %scalar.ph285 ], [ %indvars.iv231.ph, %scalar.ph285.preheader ] ; 3 uses
  %i.go = load i8, ptr %i.af, align 1, !tbaa !13
  %i.gp = sext i8 %i.go to i32
  %i.gq = getelementptr [2 x i8], ptr %.1, i64 %indvars.iv231 ; 8 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 -768
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !10
  %i.gt = sext i16 %i.gs to i32
  %i.gu = mul nsw i32 %i.gt, %i.gp
  %i.gv = load i8, ptr %i.dr, align 1, !tbaa !13
  %i.gw = sext i8 %i.gv to i32
  %i.gx = getelementptr i8, ptr %i.gq, i64 -512
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !10
  %i.gz = sext i16 %i.gy to i32
  %i.ha = mul nsw i32 %i.gz, %i.gw
  %i.hb = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.hc = sext i8 %i.hb to i32
  %i.hd = getelementptr i8, ptr %i.gq, i64 -256
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !10
  %i.hf = sext i16 %i.he to i32
  %i.hg = mul nsw i32 %i.hf, %i.hc
  %i.hh = load i8, ptr %i.dt, align 1, !tbaa !13
  %i.hi = sext i8 %i.hh to i32
  %i.hj = load i16, ptr %i.gq, align 2, !tbaa !10
  %i.hk = sext i16 %i.hj to i32
  %i.hl = mul nsw i32 %i.hk, %i.hi
  %i.hm = load i8, ptr %i.du, align 1, !tbaa !13
  %i.hn = sext i8 %i.hm to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gq, i64 256
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !10
  %i.hq = sext i16 %i.hp to i32
  %i.hr = mul nsw i32 %i.hq, %i.hn
  %i.hs = load i8, ptr %i.dv, align 1, !tbaa !13
  %i.ht = sext i8 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gq, i64 512
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !10
  %i.hw = sext i16 %i.hv to i32
  %i.hx = mul nsw i32 %i.hw, %i.ht
  %i.hy = load i8, ptr %i.dw, align 1, !tbaa !13
  %i.hz = sext i8 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gq, i64 768
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !10
  %i.ic = sext i16 %i.ib to i32
  %i.id = mul nsw i32 %i.ic, %i.hz
  %i.ie = load i8, ptr %i.dx, align 1, !tbaa !13
  %i.if = sext i8 %i.ie to i32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gq, i64 1024
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !10
  %i.ii = sext i16 %i.ih to i32
  %i.ij = mul nsw i32 %i.ii, %i.if
  %i.ik = add nsw i32 %i.gu, %i.ea
  %i.il = add nsw i32 %i.ik, %i.ha
  %i.im = add nsw i32 %i.il, %i.hg
  %i.in = add nsw i32 %i.im, %i.hl
  %i.io = add nsw i32 %i.in, %i.hr
  %i.ip = add nsw i32 %i.io, %i.hx
  %i.iq = add nsw i32 %i.ip, %i.id
  %i.ir = add nsw i32 %i.iq, %i.ij
  %i.is = ashr i32 %i.ir, %i.dy                   ; 2 uses
  %i.it = icmp slt i32 %i.is, 0
  %i.iu = tail call i32 @llvm.smin.i32(i32 %i.is, i32 %9)
  %i.iv = trunc i32 %i.iu to i16
  %i.iw = select i1 %i.it, i16 0, i16 %i.iv
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %.0182, i64 %indvars.iv231
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !10
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %._crit_edge219, label %scalar.ph285, !llvm.loop !186

.split220:                                        ; preds = %._crit_edge219, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit.split

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %._crit_edge224
  %.1188 = phi i32 [ %i.le, %._crit_edge224 ], [ %5, %.lr.ph223.preheader ]
  %.1185 = phi ptr [ %i.ld, %._crit_edge224 ], [ %2, %.lr.ph223.preheader ] ; 4 uses
  %.1183 = phi ptr [ %i.lc, %._crit_edge224 ], [ %0, %.lr.ph223.preheader ] ; 3 uses
  %brmerge540 = select i1 %min.iters.check343, i1 true, i1 %conflict.rdx
  br i1 %brmerge540, label %scalar.ph342.preheader, label %vector.ph353

vector.ph353:                                     ; preds = %.lr.ph223
  %i.iy = load i8, ptr %i.r, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert355 = insertelement <8 x i8> poison, i8 %i.iy, i64 0
  %broadcast.splat356 = shufflevector <8 x i8> %broadcast.splatinsert355, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.iz = sext <8 x i8> %broadcast.splat356 to <8 x i32>
  %i.ja = load i8, ptr %i.al, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert357 = insertelement <8 x i8> poison, i8 %i.ja, i64 0
  %broadcast.splat358 = shufflevector <8 x i8> %broadcast.splatinsert357, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jb = sext <8 x i8> %broadcast.splat358 to <8 x i32>
  %i.jc = load i8, ptr %i.am, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert359 = insertelement <8 x i8> poison, i8 %i.jc, i64 0
  %broadcast.splat360 = shufflevector <8 x i8> %broadcast.splatinsert359, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jd = sext <8 x i8> %broadcast.splat360 to <8 x i32>
  %i.je = load i8, ptr %i.an, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert361 = insertelement <8 x i8> poison, i8 %i.je, i64 0
  %broadcast.splat362 = shufflevector <8 x i8> %broadcast.splatinsert361, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jf = sext <8 x i8> %broadcast.splat362 to <8 x i32>
  %i.jg = load i8, ptr %i.ao, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert363 = insertelement <8 x i8> poison, i8 %i.jg, i64 0
  %broadcast.splat364 = shufflevector <8 x i8> %broadcast.splatinsert363, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jh = sext <8 x i8> %broadcast.splat364 to <8 x i32>
  %i.ji = load i8, ptr %i.ap, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert365 = insertelement <8 x i8> poison, i8 %i.ji, i64 0
  %broadcast.splat366 = shufflevector <8 x i8> %broadcast.splatinsert365, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jj = sext <8 x i8> %broadcast.splat366 to <8 x i32>
  %i.jk = load i8, ptr %i.aq, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert367 = insertelement <8 x i8> poison, i8 %i.jk, i64 0
  %broadcast.splat368 = shufflevector <8 x i8> %broadcast.splatinsert367, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jl = sext <8 x i8> %broadcast.splat368 to <8 x i32>
  %i.jm = load i8, ptr %i.ar, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert369 = insertelement <8 x i8> poison, i8 %i.jm, i64 0
  %broadcast.splat370 = shufflevector <8 x i8> %broadcast.splatinsert369, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jn = sext <8 x i8> %broadcast.splat370 to <8 x i32>
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph353
  %index376 = phi i64 [ 0, %vector.ph353 ], [ %index.next385, %vector.body375 ] ; 4 uses
  %i.jo = getelementptr [2 x i8], ptr %.1185, i64 %index376 ; 7 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 -6
  %wide.load377 = load <8 x i16>, ptr %i.jp, align 2, !tbaa !10, !alias.scope !209
  %i.jq = zext <8 x i16> %wide.load377 to <8 x i32>
  %i.jr = mul nsw <8 x i32> %i.jq, %i.iz
  %i.js = getelementptr i8, ptr %i.jo, i64 -4
  %wide.load378 = load <8 x i16>, ptr %i.js, align 2, !tbaa !10, !alias.scope !209
  %i.jt = zext <8 x i16> %wide.load378 to <8 x i32>
  %i.ju = mul nsw <8 x i32> %i.jt, %i.jb
  %i.jv = getelementptr i8, ptr %i.jo, i64 -2
  %wide.load379 = load <8 x i16>, ptr %i.jv, align 2, !tbaa !10, !alias.scope !209
  %i.jw = zext <8 x i16> %wide.load379 to <8 x i32>
  %i.jx = mul nsw <8 x i32> %i.jw, %i.jd
  %wide.load380 = load <8 x i16>, ptr %i.jo, align 2, !tbaa !10, !alias.scope !209
  %i.jy = zext <8 x i16> %wide.load380 to <8 x i32>
  %i.jz = mul nsw <8 x i32> %i.jy, %i.jf
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.1185, i64 %index376
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %wide.load381 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !10, !alias.scope !209
  %i.kc = zext <8 x i16> %wide.load381 to <8 x i32>
  %i.kd = mul nsw <8 x i32> %i.kc, %i.jh
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %wide.load382 = load <8 x i16>, ptr %i.ke, align 2, !tbaa !10, !alias.scope !209
  %i.kf = zext <8 x i16> %wide.load382 to <8 x i32>
  %i.kg = mul nsw <8 x i32> %i.kf, %i.jj
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jo, i64 6
  %wide.load383 = load <8 x i16>, ptr %i.kh, align 2, !tbaa !10, !alias.scope !209
  %i.ki = zext <8 x i16> %wide.load383 to <8 x i32>
  %i.kj = mul nsw <8 x i32> %i.ki, %i.jl
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %wide.load384 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !10, !alias.scope !209
  %i.kl = zext <8 x i16> %wide.load384 to <8 x i32>
  %i.km = mul nsw <8 x i32> %i.kl, %i.jn
  %i.kn = add nsw <8 x i32> %broadcast.splat372, %i.jr
  %i.ko = add nsw <8 x i32> %i.kn, %i.ju
  %i.kp = add nsw <8 x i32> %i.ko, %i.jx
  %i.kq = add nsw <8 x i32> %i.kp, %i.jz
  %i.kr = add nsw <8 x i32> %i.kq, %i.kd
  %i.ks = add nsw <8 x i32> %i.kr, %i.kg
  %i.kt = add nsw <8 x i32> %i.ks, %i.kj
  %i.ku = add nsw <8 x i32> %i.kt, %i.km
  %i.kv = ashr <8 x i32> %i.ku, splat (i32 6)     ; 2 uses
  %i.kw = icmp slt <8 x i32> %i.kv, zeroinitializer
  %i.kx = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.kv, <8 x i32> %broadcast.splat374)
  %i.ky = trunc <8 x i32> %i.kx to <8 x i16>
  %i.kz = select <8 x i1> %i.kw, <8 x i16> zeroinitializer, <8 x i16> %i.ky
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %.1183, i64 %index376
  store <8 x i16> %i.kz, ptr %i.la, align 2, !tbaa !10, !alias.scope !210, !noalias !211
end_hunk_3
begin_hunk_4_@prep_8tap_c:bb.a
bb.c:                                             ; preds = %.thread216, %bb.b
  %i.l = phi ptr [ null, %.thread216 ], [ %i.i, %bb.b ] ; 11 uses
  %i.m = icmp sgt i32 %4, 4                       ; 2 uses
  %i.n = lshr i32 %7, 2                           ; 2 uses
  %i.o = and i32 %i.n, 1
  %.sink276 = select i1 %i.m, i32 %i.n, i32 %i.o
  %.sink272 = select i1 %i.m, i64 -8, i64 352
  %i.p = zext nneg i32 %.sink276 to i64
  %i.q = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.p
  %i.r = sext i32 %6 to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 %.sink272 ; 10 uses
  %i.u = and i64 %2, 1
  %.not.i = icmp eq i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.v = ashr exact i64 %2, 1                     ; 8 uses
  %.not201 = icmp eq ptr %i.l, null
  %.not202 = icmp eq ptr %i.t, null               ; 2 uses
  br i1 %.not201, label %bb.f, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.w = and i64 %2, 1
  %.not.i212 = icmp eq i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i212)
  %i.x = ashr exact i64 %2, 1                     ; 2 uses
  %.not201213 = icmp eq ptr %i.i, null
  br i1 %.not201213, label %.thread214, label %.preheader220

bb.d:                                             ; preds = %bb.c
  br i1 %.not202, label %.preheader220, label %bb.e

.preheader220:                                    ; preds = %.thread, %bb.d
  %i.y = phi i64 [ %i.v, %bb.d ], [ %i.x, %.thread ] ; 2 uses
  %i.z = phi ptr [ %i.l, %bb.d ], [ %i.i, %.thread ] ; 11 uses
  %i.aa = sext i32 %3 to i64                      ; 2 uses
  %i.ab = icmp sgt i32 %3, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 7
  %i.aj = sub nsw i32 24, %i.b                    ; 3 uses
  %i.ak = shl nuw nsw i32 1, %i.aj
  %i.al = lshr i32 %i.ak, 1                       ; 2 uses
  br i1 %i.ab, label %.lr.ph231.preheader, label %.loopexit.split

.lr.ph231.preheader:                              ; preds = %.preheader220
  %wide.trip.count247 = zext nneg i32 %3 to i64   ; 5 uses
  %i.am = add i32 %4, -1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = mul i64 %i.y, %i.an
  %i.ap = add i64 %i.ao, %wide.trip.count247
  %i.aq = shl i64 %i.ap, 1
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.ar, i64 8
  %scevgep343 = getelementptr i8, ptr %1, i64 -6
  %scevgep344 = getelementptr i8, ptr %i.z, i64 8
  %i.as = mul nuw nsw i64 %i.aa, %i.an
  %i.at = add nuw i64 %i.as, %wide.trip.count247
  %i.au = shl i64 %i.at, 1
  %scevgep345 = getelementptr i8, ptr %0, i64 %i.au ; 2 uses
  %min.iters.check347 = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep344
  %bound1 = icmp ult ptr %i.z, %scevgep345
  %found.conflict = and i1 %bound0, %bound1
  %bound0348 = icmp ult ptr %0, %scevgep
  %bound1349 = icmp ult ptr %scevgep343, %scevgep345
  %found.conflict350 = and i1 %bound0348, %bound1349
  %stride.check = icmp slt i64 %2, 0
  %i.av = or i1 %found.conflict350, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.av
  %n.vec352 = and i64 %wide.trip.count247, 2147483640 ; 3 uses
  %broadcast.splatinsert369 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat370 = shufflevector <8 x i32> %broadcast.splatinsert369, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert371 = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat372 = shufflevector <8 x i32> %broadcast.splatinsert371, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n385 = icmp eq i64 %n.vec352, %wide.trip.count247
  br label %.lr.ph231

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.aw = icmp sgt i32 %3, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 5 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 6 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 7 ; 2 uses
  %i.be = sub nsw i32 24, %i.b                    ; 3 uses
  %i.bf = shl nuw nsw i32 1, %i.be
  %i.bg = lshr i32 %i.bf, 1                       ; 2 uses
  br i1 %i.aw, label %.lr.ph.preheader, label %.split228

.lr.ph.preheader:                                 ; preds = %bb.e
  %.idx209 = mul i64 %i.v, -6
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %.idx209
  %i.bi = add nsw i32 %4, 7
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert279 = insertelement <8 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat280 = shufflevector <8 x i32> %broadcast.splatinsert279, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0184 = phi ptr [ %i.ec, %._crit_edge ], [ %i.bh, %.lr.ph.preheader ] ; 6 uses
  %.0183 = phi i32 [ %i.ed, %._crit_edge ], [ %i.bi, %.lr.ph.preheader ]
  %.0181 = phi ptr [ %i.eb, %._crit_edge ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %.pre = load i16, ptr %.0184, align 2, !tbaa !10 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre, i64 7
  %i.bj = load i8, ptr %i.l, align 1, !tbaa !13
  %broadcast.splatinsert281 = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %broadcast.splat282 = shufflevector <8 x i8> %broadcast.splatinsert281, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bk = sext <8 x i8> %broadcast.splat282 to <8 x i32>
  %i.bl = load i8, ptr %i.ax, align 1, !tbaa !13
  %broadcast.splatinsert283 = insertelement <8 x i8> poison, i8 %i.bl, i64 0
  %broadcast.splat284 = shufflevector <8 x i8> %broadcast.splatinsert283, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bm = sext <8 x i8> %broadcast.splat284 to <8 x i32>
  %i.bn = load i8, ptr %i.ay, align 1, !tbaa !13
  %broadcast.splatinsert286 = insertelement <8 x i8> poison, i8 %i.bn, i64 0
  %broadcast.splat287 = shufflevector <8 x i8> %broadcast.splatinsert286, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bo = sext <8 x i8> %broadcast.splat287 to <8 x i32>
  %i.bp = load i8, ptr %i.az, align 1, !tbaa !13
  %broadcast.splatinsert289 = insertelement <8 x i8> poison, i8 %i.bp, i64 0
  %broadcast.splat290 = shufflevector <8 x i8> %broadcast.splatinsert289, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bq = sext <8 x i8> %broadcast.splat290 to <8 x i32>
  %i.br = load i8, ptr %i.ba, align 1, !tbaa !13
  %broadcast.splatinsert291 = insertelement <8 x i8> poison, i8 %i.br, i64 0
  %broadcast.splat292 = shufflevector <8 x i8> %broadcast.splatinsert291, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bs = sext <8 x i8> %broadcast.splat292 to <8 x i32>
  %i.bt = load i8, ptr %i.bb, align 1, !tbaa !13
  %broadcast.splatinsert294 = insertelement <8 x i8> poison, i8 %i.bt, i64 0
  %broadcast.splat295 = shufflevector <8 x i8> %broadcast.splatinsert294, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bu = sext <8 x i8> %broadcast.splat295 to <8 x i32>
  %i.bv = load i8, ptr %i.bc, align 1, !tbaa !13
  %broadcast.splatinsert297 = insertelement <8 x i8> poison, i8 %i.bv, i64 0
  %broadcast.splat298 = shufflevector <8 x i8> %broadcast.splatinsert297, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bw = sext <8 x i8> %broadcast.splat298 to <8 x i32>
  %i.bx = load i8, ptr %i.bd, align 1, !tbaa !13
  %broadcast.splatinsert300 = insertelement <8 x i8> poison, i8 %i.bx, i64 0
  %broadcast.splat301 = shufflevector <8 x i8> %broadcast.splatinsert300, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.by = sext <8 x i8> %broadcast.splat301 to <8 x i32>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load293, %vector.body ]
  %i.bz = getelementptr [2 x i8], ptr %.0184, i64 %index ; 6 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -6
  %wide.load = load <8 x i16>, ptr %i.ca, align 2, !tbaa !10
  %i.cb = zext <8 x i16> %wide.load to <8 x i32>
  %i.cc = mul nsw <8 x i32> %i.cb, %i.bk
  %i.cd = getelementptr i8, ptr %i.bz, i64 -4
  %wide.load285 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !10
  %i.ce = zext <8 x i16> %wide.load285 to <8 x i32>
  %i.cf = mul nsw <8 x i32> %i.ce, %i.bm
  %i.cg = getelementptr i8, ptr %i.bz, i64 -2
  %wide.load288 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !10
  %i.ch = zext <8 x i16> %wide.load288 to <8 x i32>
  %i.ci = mul nsw <8 x i32> %i.ch, %i.bo
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.0184, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %wide.load293 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !10 ; 4 uses
  %i.cl = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load293, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.cm = zext <8 x i16> %i.cl to <8 x i32>
  %i.cn = mul nsw <8 x i32> %i.cm, %i.bq
  %i.co = zext <8 x i16> %wide.load293 to <8 x i32>
  %i.cp = mul nsw <8 x i32> %i.co, %i.bs
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %wide.load296 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !10
  %i.cr = zext <8 x i16> %wide.load296 to <8 x i32>
  %i.cs = mul nsw <8 x i32> %i.cr, %i.bu
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %wide.load299 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !10
  %i.cu = zext <8 x i16> %wide.load299 to <8 x i32>
  %i.cv = mul nsw <8 x i32> %i.cu, %i.bw
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %wide.load302 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !10
  %i.cx = zext <8 x i16> %wide.load302 to <8 x i32>
  %i.cy = mul nsw <8 x i32> %i.cx, %i.by
  %i.cz = add nsw <8 x i32> %i.cc, %broadcast.splat
  %i.da = add nsw <8 x i32> %i.cz, %i.cf
  %i.db = add nsw <8 x i32> %i.da, %i.ci
  %i.dc = add nsw <8 x i32> %i.db, %i.cn
  %i.dd = add nsw <8 x i32> %i.dc, %i.cp
  %i.de = add nsw <8 x i32> %i.dd, %i.cs
  %i.df = add nsw <8 x i32> %i.de, %i.cv
  %i.dg = add nsw <8 x i32> %i.df, %i.cy
  %i.dh = ashr <8 x i32> %i.dg, %broadcast.splat280
  %i.di = trunc <8 x i32> %i.dh to <8 x i16>
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.0181, i64 %index
  store <8 x i16> %i.di, ptr %i.dj, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load293, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i16 [ %.pre, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dl = load i8, ptr %i.l, align 1, !tbaa !13
  %i.dm = sext i8 %i.dl to i32
  %i.dn = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.do = sext i8 %i.dn to i32
  %i.dp = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.dq = sext i8 %i.dp to i32
  %i.dr = load i8, ptr %i.az, align 1, !tbaa !13
  %i.ds = sext i8 %i.dr to i32
  %i.dt = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.du = sext i8 %i.dt to i32
  %i.dv = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.dw = sext i8 %i.dv to i32
  %i.dx = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.dy = sext i8 %i.dx to i32
  %i.dz = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.ea = sext i8 %i.dz to i32
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.eb = getelementptr inbounds nuw i8, ptr %.0181, i64 256
  %i.ec = getelementptr inbounds i8, ptr %.0184, i64 %2
  %i.ed = add nsw i32 %.0183, -1                  ; 2 uses
  %.not210 = icmp eq i32 %i.ed, 0
  br i1 %.not210, label %.split223, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ee = phi i16 [ %i.ev, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ef = getelementptr [2 x i8], ptr %.0184, i64 %indvars.iv ; 6 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -6
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !10
  %i.ei = zext i16 %i.eh to i32
  %i.ej = mul nsw i32 %i.ei, %i.dm
  %i.ek = getelementptr i8, ptr %i.ef, i64 -4
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !10
  %i.em = zext i16 %i.el to i32
  %i.en = mul nsw i32 %i.em, %i.do
  %i.eo = getelementptr i8, ptr %i.ef, i64 -2
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !10
  %i.eq = zext i16 %i.ep to i32
  %i.er = mul nsw i32 %i.eq, %i.dq
  %i.es = zext i16 %i.ee to i32
  %i.et = mul nsw i32 %i.es, %i.ds
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %.0184, i64 %indvars.iv.next
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !10 ; 2 uses
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul nsw i32 %i.ew, %i.du
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !10
  %i.fa = zext i16 %i.ez to i32
  %i.fb = mul nsw i32 %i.fa, %i.dw
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ef, i64 6
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !10
  %i.fe = zext i16 %i.fd to i32
  %i.ff = mul nsw i32 %i.fe, %i.dy
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !10
  %i.fi = zext i16 %i.fh to i32
  %i.fj = mul nsw i32 %i.fi, %i.ea
  %i.fk = add nsw i32 %i.ej, %i.bg
  %i.fl = add nsw i32 %i.fk, %i.en
  %i.fm = add nsw i32 %i.fl, %i.er
  %i.fn = add nsw i32 %i.fm, %i.et
  %i.fo = add nsw i32 %i.fn, %i.ex
  %i.fp = add nsw i32 %i.fo, %i.fb
  %i.fq = add nsw i32 %i.fp, %i.ff
  %i.fr = add nsw i32 %i.fq, %i.fj
  %i.fs = ashr i32 %i.fr, %i.be
  %i.ft = trunc i32 %i.fs to i16
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.0181, i64 %indvars.iv
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !252

.split223:                                        ; preds = %._crit_edge
  %i.fv = zext nneg i32 %3 to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.fx = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.fz = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %wide.trip.count242 = zext nneg i32 %3 to i64
  %i.ge = load i8, ptr %i.t, align 8, !tbaa !13
  %i.gf = sext i8 %i.ge to i32                    ; 2 uses
  %i.gg = load i8, ptr %i.gc, align 1, !tbaa !13
  %i.gh = sext i8 %i.gg to i32                    ; 2 uses
  %i.gi = load i8, ptr %i.gb, align 2, !tbaa !13
  %i.gj = sext i8 %i.gi to i32                    ; 2 uses
  %i.gk = load i8, ptr %i.ga, align 1, !tbaa !13
  %i.gl = sext i8 %i.gk to i32                    ; 2 uses
  %i.gm = load i8, ptr %i.fz, align 4, !tbaa !13
  %i.gn = sext i8 %i.gm to i32                    ; 2 uses
  %i.go = load i8, ptr %i.fy, align 1, !tbaa !13
  %i.gp = sext i8 %i.go to i32                    ; 2 uses
  %i.gq = load i8, ptr %i.fx, align 2, !tbaa !13
  %i.gr = sext i8 %i.gq to i32                    ; 2 uses
  %i.gs = load i8, ptr %i.fw, align 1, !tbaa !13
  %i.gt = sext i8 %i.gs to i32                    ; 2 uses
  %min.iters.check304 = icmp ult i32 %3, 8
  %n.vec306 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert307 = insertelement <8 x i32> poison, i32 %i.gf, i64 0
  %broadcast.splat308 = shufflevector <8 x i32> %broadcast.splatinsert307, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert309 = insertelement <8 x i32> poison, i32 %i.gh, i64 0
  %broadcast.splat310 = shufflevector <8 x i32> %broadcast.splatinsert309, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert311 = insertelement <8 x i32> poison, i32 %i.gj, i64 0
  %broadcast.splat312 = shufflevector <8 x i32> %broadcast.splatinsert311, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <8 x i32> poison, i32 %i.gl, i64 0
  %broadcast.splat314 = shufflevector <8 x i32> %broadcast.splatinsert313, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert315 = insertelement <8 x i32> poison, i32 %i.gn, i64 0
  %broadcast.splat316 = shufflevector <8 x i32> %broadcast.splatinsert315, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert317 = insertelement <8 x i32> poison, i32 %i.gp, i64 0
  %broadcast.splat318 = shufflevector <8 x i32> %broadcast.splatinsert317, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert319 = insertelement <8 x i32> poison, i32 %i.gr, i64 0
  %broadcast.splat320 = shufflevector <8 x i32> %broadcast.splatinsert319, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert321 = insertelement <8 x i32> poison, i32 %i.gt, i64 0
  %broadcast.splat322 = shufflevector <8 x i32> %broadcast.splatinsert321, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n335 = icmp eq i64 %n.vec306, %wide.trip.count
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.split223, %._crit_edge227
  %.0187 = phi i32 [ %i.ih, %._crit_edge227 ], [ %4, %.split223 ]
  %.1182 = phi ptr [ %i.if, %._crit_edge227 ], [ %i.gd, %.split223 ] ; 3 uses
  %.0178 = phi ptr [ %i.ig, %._crit_edge227 ], [ %0, %.split223 ] ; 3 uses
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.body323

vector.body323:                                   ; preds = %.lr.ph226, %vector.body323
  %index324 = phi i64 [ %index.next333, %vector.body323 ], [ 0, %.lr.ph226 ] ; 3 uses
  %i.gu = getelementptr [2 x i8], ptr %.1182, i64 %index324 ; 8 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 -768
  %wide.load325 = load <8 x i16>, ptr %i.gv, align 16, !tbaa !10
  %i.gw = sext <8 x i16> %wide.load325 to <8 x i32>
  %i.gx = mul nsw <8 x i32> %broadcast.splat308, %i.gw
  %i.gy = getelementptr i8, ptr %i.gu, i64 -512
  %wide.load326 = load <8 x i16>, ptr %i.gy, align 16, !tbaa !10
  %i.gz = sext <8 x i16> %wide.load326 to <8 x i32>
  %i.ha = mul nsw <8 x i32> %broadcast.splat310, %i.gz
  %i.hb = getelementptr i8, ptr %i.gu, i64 -256
  %wide.load327 = load <8 x i16>, ptr %i.hb, align 16, !tbaa !10
  %i.hc = sext <8 x i16> %wide.load327 to <8 x i32>
  %i.hd = mul nsw <8 x i32> %broadcast.splat312, %i.hc
  %wide.load328 = load <8 x i16>, ptr %i.gu, align 16, !tbaa !10
  %i.he = sext <8 x i16> %wide.load328 to <8 x i32>
  %i.hf = mul nsw <8 x i32> %broadcast.splat314, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 256
  %wide.load329 = load <8 x i16>, ptr %i.hg, align 16, !tbaa !10
  %i.hh = sext <8 x i16> %wide.load329 to <8 x i32>
  %i.hi = mul nsw <8 x i32> %broadcast.splat316, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gu, i64 512
  %wide.load330 = load <8 x i16>, ptr %i.hj, align 16, !tbaa !10
  %i.hk = sext <8 x i16> %wide.load330 to <8 x i32>
  %i.hl = mul nsw <8 x i32> %broadcast.splat318, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gu, i64 768
  %wide.load331 = load <8 x i16>, ptr %i.hm, align 16, !tbaa !10
  %i.hn = sext <8 x i16> %wide.load331 to <8 x i32>
  %i.ho = mul nsw <8 x i32> %broadcast.splat320, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gu, i64 1024
  %wide.load332 = load <8 x i16>, ptr %i.hp, align 16, !tbaa !10
  %i.hq = sext <8 x i16> %wide.load332 to <8 x i32>
  %i.hr = mul nsw <8 x i32> %broadcast.splat322, %i.hq
  %i.hs = add nsw <8 x i32> %i.gx, splat (i32 32)
  %i.ht = add nsw <8 x i32> %i.hs, %i.ha
  %i.hu = add nsw <8 x i32> %i.ht, %i.hd
  %i.hv = add nsw <8 x i32> %i.hu, %i.hf
  %i.hw = add nsw <8 x i32> %i.hv, %i.hi
  %i.hx = add nsw <8 x i32> %i.hw, %i.hl
  %i.hy = add nsw <8 x i32> %i.hx, %i.ho
  %i.hz = add nsw <8 x i32> %i.hy, %i.hr
  %i.ia = lshr <8 x i32> %i.hz, splat (i32 6)
  %i.ib = trunc <8 x i32> %i.ia to <8 x i16>
  %i.ic = add <8 x i16> %i.ib, splat (i16 -8192)
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %.0178, i64 %index324
  store <8 x i16> %i.ic, ptr %i.id, align 2, !tbaa !10
  %index.next333 = add nuw i64 %index324, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next333, %n.vec306
  br i1 %i.ie, label %middle.block334, label %vector.body323, !llvm.loop !253

middle.block334:                                  ; preds = %vector.body323
  br i1 %cmp.n335, label %._crit_edge227, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %.lr.ph226, %middle.block334
  %indvars.iv239.ph = phi i64 [ 0, %.lr.ph226 ], [ %n.vec306, %middle.block334 ]
  br label %scalar.ph303

._crit_edge227:                                   ; preds = %scalar.ph303, %middle.block334
  %i.if = getelementptr inbounds nuw i8, ptr %.1182, i64 256
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %.0178, i64 %i.fv
  %i.ih = add nsw i32 %.0187, -1                  ; 2 uses
  %.not211 = icmp eq i32 %i.ih, 0
  br i1 %.not211, label %.split228, label %.lr.ph226

scalar.ph303:                                     ; preds = %scalar.ph303.preheader, %scalar.ph303
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %scalar.ph303 ], [ %indvars.iv239.ph, %scalar.ph303.preheader ] ; 3 uses
  %i.ii = getelementptr [2 x i8], ptr %.1182, i64 %indvars.iv239 ; 8 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 -768
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !10
  %i.il = sext i16 %i.ik to i32
  %i.im = mul nsw i32 %i.il, %i.gf
  %i.in = getelementptr i8, ptr %i.ii, i64 -512
  %i.io = load i16, ptr %i.in, align 2, !tbaa !10
  %i.ip = sext i16 %i.io to i32
  %i.iq = mul nsw i32 %i.ip, %i.gh
  %i.ir = getelementptr i8, ptr %i.ii, i64 -256
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !10
  %i.it = sext i16 %i.is to i32
  %i.iu = mul nsw i32 %i.it, %i.gj
  %i.iv = load i16, ptr %i.ii, align 2, !tbaa !10
  %i.iw = sext i16 %i.iv to i32
  %i.ix = mul nsw i32 %i.iw, %i.gl
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ii, i64 256
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !10
  %i.ja = sext i16 %i.iz to i32
  %i.jb = mul nsw i32 %i.ja, %i.gn
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ii, i64 512
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !10
  %i.je = sext i16 %i.jd to i32
  %i.jf = mul nsw i32 %i.je, %i.gp
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ii, i64 768
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !10
  %i.ji = sext i16 %i.jh to i32
  %i.jj = mul nsw i32 %i.ji, %i.gr
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ii, i64 1024
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !10
  %i.jm = sext i16 %i.jl to i32
  %i.jn = mul nsw i32 %i.jm, %i.gt
  %i.jo = add nsw i32 %i.im, 32
  %i.jp = add nsw i32 %i.jo, %i.iq
  %i.jq = add nsw i32 %i.jp, %i.iu
  %i.jr = add nsw i32 %i.jq, %i.ix
  %i.js = add nsw i32 %i.jr, %i.jb
  %i.jt = add nsw i32 %i.js, %i.jf
  %i.ju = add nsw i32 %i.jt, %i.jj
  %i.jv = add nsw i32 %i.ju, %i.jn
  %i.jw = ashr i32 %i.jv, 6                       ; 2 uses
  %i.jx = add nsw i32 %i.jw, 24576
  %or.cond = icmp ult i32 %i.jx, 65536
  tail call void @llvm.assume(i1 %or.cond)
  %i.jy = trunc i32 %i.jw to i16
  %i.jz = add i16 %i.jy, -8192
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.0178, i64 %indvars.iv239
  store i16 %i.jz, ptr %i.ka, align 2, !tbaa !10
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %._crit_edge227, label %scalar.ph303, !llvm.loop !254

.split228:                                        ; preds = %._crit_edge227, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit.split

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %._crit_edge232
  %.1188 = phi i32 [ %i.mf, %._crit_edge232 ], [ %4, %.lr.ph231.preheader ]
  %.1185 = phi ptr [ %i.me, %._crit_edge232 ], [ %1, %.lr.ph231.preheader ] ; 4 uses
  %.1 = phi ptr [ %i.md, %._crit_edge232 ], [ %0, %.lr.ph231.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check347, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph346.preheader, label %vector.ph351

vector.ph351:                                     ; preds = %.lr.ph231
  %i.kb = load i8, ptr %i.z, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert353 = insertelement <8 x i8> poison, i8 %i.kb, i64 0
  %broadcast.splat354 = shufflevector <8 x i8> %broadcast.splatinsert353, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.kc = sext <8 x i8> %broadcast.splat354 to <8 x i32>
  %i.kd = load i8, ptr %i.ac, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert355 = insertelement <8 x i8> poison, i8 %i.kd, i64 0
  %broadcast.splat356 = shufflevector <8 x i8> %broadcast.splatinsert355, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ke = sext <8 x i8> %broadcast.splat356 to <8 x i32>
  %i.kf = load i8, ptr %i.ad, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert357 = insertelement <8 x i8> poison, i8 %i.kf, i64 0
  %broadcast.splat358 = shufflevector <8 x i8> %broadcast.splatinsert357, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.kg = sext <8 x i8> %broadcast.splat358 to <8 x i32>
  %i.kh = load i8, ptr %i.ae, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert359 = insertelement <8 x i8> poison, i8 %i.kh, i64 0
  %broadcast.splat360 = shufflevector <8 x i8> %broadcast.splatinsert359, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ki = sext <8 x i8> %broadcast.splat360 to <8 x i32>
  %i.kj = load i8, ptr %i.af, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert361 = insertelement <8 x i8> poison, i8 %i.kj, i64 0
  %broadcast.splat362 = shufflevector <8 x i8> %broadcast.splatinsert361, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.kk = sext <8 x i8> %broadcast.splat362 to <8 x i32>
  %i.kl = load i8, ptr %i.ag, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert363 = insertelement <8 x i8> poison, i8 %i.kl, i64 0
  %broadcast.splat364 = shufflevector <8 x i8> %broadcast.splatinsert363, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.km = sext <8 x i8> %broadcast.splat364 to <8 x i32>
  %i.kn = load i8, ptr %i.ah, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert365 = insertelement <8 x i8> poison, i8 %i.kn, i64 0
  %broadcast.splat366 = shufflevector <8 x i8> %broadcast.splatinsert365, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ko = sext <8 x i8> %broadcast.splat366 to <8 x i32>
  %i.kp = load i8, ptr %i.ai, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert367 = insertelement <8 x i8> poison, i8 %i.kp, i64 0
  %broadcast.splat368 = shufflevector <8 x i8> %broadcast.splatinsert367, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.kq = sext <8 x i8> %broadcast.splat368 to <8 x i32>
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph351
  %index374 = phi i64 [ 0, %vector.ph351 ], [ %index.next383, %vector.body373 ] ; 4 uses
  %i.kr = getelementptr [2 x i8], ptr %.1185, i64 %index374 ; 7 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -6
  %wide.load375 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !10, !alias.scope !274
  %i.kt = zext <8 x i16> %wide.load375 to <8 x i32>
  %i.ku = mul nsw <8 x i32> %i.kt, %i.kc
  %i.kv = getelementptr i8, ptr %i.kr, i64 -4
  %wide.load376 = load <8 x i16>, ptr %i.kv, align 2, !tbaa !10, !alias.scope !274
  %i.kw = zext <8 x i16> %wide.load376 to <8 x i32>
  %i.kx = mul nsw <8 x i32> %i.kw, %i.ke
  %i.ky = getelementptr i8, ptr %i.kr, i64 -2
  %wide.load377 = load <8 x i16>, ptr %i.ky, align 2, !tbaa !10, !alias.scope !274
  %i.kz = zext <8 x i16> %wide.load377 to <8 x i32>
  %i.la = mul nsw <8 x i32> %i.kz, %i.kg
  %wide.load378 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !10, !alias.scope !274
  %i.lb = zext <8 x i16> %wide.load378 to <8 x i32>
  %i.lc = mul nsw <8 x i32> %i.lb, %i.ki
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %.1185, i64 %index374
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %wide.load379 = load <8 x i16>, ptr %i.le, align 2, !tbaa !10, !alias.scope !274
  %i.lf = zext <8 x i16> %wide.load379 to <8 x i32>
  %i.lg = mul nsw <8 x i32> %i.lf, %i.kk
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %wide.load380 = load <8 x i16>, ptr %i.lh, align 2, !tbaa !10, !alias.scope !274
  %i.li = zext <8 x i16> %wide.load380 to <8 x i32>
  %i.lj = mul nsw <8 x i32> %i.li, %i.km
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kr, i64 6
  %wide.load381 = load <8 x i16>, ptr %i.lk, align 2, !tbaa !10, !alias.scope !274
  %i.ll = zext <8 x i16> %wide.load381 to <8 x i32>
  %i.lm = mul nsw <8 x i32> %i.ll, %i.ko
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %wide.load382 = load <8 x i16>, ptr %i.ln, align 2, !tbaa !10, !alias.scope !274
  %i.lo = zext <8 x i16> %wide.load382 to <8 x i32>
  %i.lp = mul nsw <8 x i32> %i.lo, %i.kq
  %i.lq = add nsw <8 x i32> %i.ku, %broadcast.splat370
  %i.lr = add nsw <8 x i32> %i.lq, %i.kx
  %i.ls = add nsw <8 x i32> %i.lr, %i.la
  %i.lt = add nsw <8 x i32> %i.ls, %i.lc
  %i.lu = add nsw <8 x i32> %i.lt, %i.lg
  %i.lv = add nsw <8 x i32> %i.lu, %i.lj
  %i.lw = add nsw <8 x i32> %i.lv, %i.lm
  %i.lx = add nsw <8 x i32> %i.lw, %i.lp
  %i.ly = ashr <8 x i32> %i.lx, %broadcast.splat372
  %i.lz = trunc <8 x i32> %i.ly to <8 x i16>
  %i.ma = add <8 x i16> %i.lz, splat (i16 -8192)
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %index374
  store <8 x i16> %i.ma, ptr %i.mb, align 2, !tbaa !10, !alias.scope !275, !noalias !276
  %index.next383 = add nuw i64 %index374, 8       ; 2 uses
  %i.mc = icmp eq i64 %index.next383, %n.vec352
  br i1 %i.mc, label %middle.block384, label %vector.body373, !llvm.loop !259

middle.block384:                                  ; preds = %vector.body373
  br i1 %cmp.n385, label %._crit_edge232, label %scalar.ph346.preheader

scalar.ph346.preheader:                           ; preds = %.lr.ph231, %middle.block384
  %indvars.iv244.ph = phi i64 [ %n.vec352, %middle.block384 ], [ 0, %.lr.ph231 ]
  br label %scalar.ph346

._crit_edge232:                                   ; preds = %scalar.ph346, %middle.block384
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %i.aa
  %i.me = getelementptr inbounds [2 x i8], ptr %.1185, i64 %i.y
  %i.mf = add nsw i32 %.1188, -1                  ; 2 uses
  %.not208 = icmp eq i32 %i.mf, 0
  br i1 %.not208, label %.loopexit.split, label %.lr.ph231

scalar.ph346:                                     ; preds = %scalar.ph346.preheader, %scalar.ph346
end_hunk_4
